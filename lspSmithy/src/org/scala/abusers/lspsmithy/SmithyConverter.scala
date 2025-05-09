package org.scala.abusers.lspsmithy

import langoustine.meta.*
import software.amazon.smithy.model.node.Node
import software.amazon.smithy.model.shapes.*
import software.amazon.smithy.model.traits.EnumValueTrait
import software.amazon.smithy.model.traits.RequiredTrait
import software.amazon.smithy.model.validation.ValidatedResult
import software.amazon.smithy.model.Model

import scala.collection.mutable.ListBuffer

object SmithyConverter:

  private val namespace: String = "lsp"

  def apply(meta: MetaModel): ValidatedResult[Model] =
    val shapes = ListBuffer[Shape]()

    // Type Aliases
    shapes.addAll(convertTypeAliases(meta.typeAliases))

    // Structures
    for struct <- meta.structures do
      val shapeId = ShapeId.fromParts(namespace, struct.name.value)
      val builder = StructureShape.builder().id(shapeId)
      for prop <- struct.properties do
        val memberId = shapeId.withMember(prop.name.value)
        val member = MemberShape
          .builder()
          .id(memberId)
          .target(smithyType(prop.tpe, namespace, shapes))
        if prop.optional.no then
          member.addTrait(new RequiredTrait.Provider().createTrait(RequiredTrait.ID, Node.objectNode))
        builder.addMember(member.build())
      shapes.addOne(builder.build())

    def convertEnumValues(shapeId: ShapeId, entry: EnumerationEntry) =
      val memberId = shapeId.withMember(entry.name.value)
      val memberBuilder = MemberShape
        .builder()
        .id(memberId)
        .target("smithy.api#Unit")

      val enumValueTrait = entry.value match
        case i: Int    => EnumValueTrait.builder().intValue(i).build()
        case s: String => EnumValueTrait.builder().stringValue(s).build()

      memberBuilder.addTrait(enumValueTrait)
      memberBuilder.build()
    // Enums
    for enum_ <- meta.enumerations do
      val shapeId = ShapeId.fromParts(namespace, enum_.name.value)

      val enumShape = enum_.values.map(t => t.value).head match
        case _: Int =>
          val builder = IntEnumShape.builder().id(shapeId)
          for entry <- enum_.values.distinctBy(_.value) do
            val member = convertEnumValues(shapeId, entry)
            builder.addMember(member)
          builder.build()
        case _: String =>
          val builder = EnumShape.builder().id(shapeId)
          enum_.values
            .distinctBy(_.value)
            .filter {
              _.value match
                case _: Int      => true
                case str: String => str.nonEmpty
            }
            .map(convertEnumValues(shapeId, _))
            .foreach(m => builder.addMember(m))
          builder.build()

      shapes.addOne(enumShape)

    // Final model and serialization
    val assembler = Model.assembler()

    shapes.foreach(assembler.addShape)

    assembler.assemble()

  private def unionNameFor(types: Vector[Type]): String =
    val names = types.map(extractTypeName).filter(_.nonEmpty).distinct

    val commonSeq = longestCommonPascalSubsequence(names)
    if commonSeq.nonEmpty then commonSeq.mkString + "Union"
    else
      names match
        case Seq(a, b) => s"${a}Or${b}"
        case _         => "AnonymousUnion"

  private def extractTypeName(t: Type): String = t match
    case Type.ReferenceType(name)                               => name.value
    case Type.BaseType(base)                                    => base.toString.capitalize
    case Type.ArrayType(inner)                                  => s"ListOf${extractTypeName(inner)}"
    case Type.MapType(k, v)                                     => s"MapOf${extractTypeName(k)}To${extractTypeName(v)}"
    case Type.StringLiteralType(_) | Type.BooleanLiteralType(_) => "Literal"
    case _                                                      => ""

  private def splitPascal(s: String): List[String] =
    s.split("(?=[A-Z])").filter(_.nonEmpty).toList

  private def longestCommonPascalSubsequence(strings: Seq[String]): List[String] =
    if strings.isEmpty then return Nil
    val tokenLists = strings.map(splitPascal)
    tokenLists.reduceLeft { (acc, next) =>
      acc.intersect(next)
    }

  private def smithyType(t: Type, namespace: String, shapes: ListBuffer[Shape]): ShapeId =
    import Type.*
    import java.util.UUID

    def uniqueShapeId(prefix: String): ShapeId =
      ShapeId.fromParts(namespace, s"${prefix}_${UUID.randomUUID().toString.replace("-", "")}")

    t match
      case BaseType(BaseTypes.string)   => ShapeId.from("smithy.api#String")
      case BaseType(BaseTypes.integer)  => ShapeId.from("smithy.api#Integer")
      case BaseType(BaseTypes.uinteger) => ShapeId.from("smithy.api#Integer")
      case BaseType(BaseTypes.decimal)  => ShapeId.from("smithy.api#Float")
      case BaseType(BaseTypes.boolean)  => ShapeId.from("smithy.api#Boolean")
      case BaseType(BaseTypes.NULL)     => ShapeId.from("smithy.api#Unit")
      case BaseType(_)                  => ShapeId.from("smithy.api#String")

      case ReferenceType(name) => ShapeId.fromParts(namespace, name.value)

      case ArrayType(element) =>
        val innerId = smithyType(element, namespace, shapes)
        val listId  = ShapeId.fromParts(namespace, s"ListOf_${innerId.getName}")
        if !shapes.exists(_.getId == listId) then
          val listShape = ListShape
            .builder()
            .id(listId)
            .member(MemberShape.builder().id(listId.withMember("member")).target(innerId).build())
            .build()
          shapes.addOne(listShape)
        listId

      case MapType(key, value) =>
        val keyId   = smithyType(key, namespace, shapes)
        val valueId = smithyType(value, namespace, shapes)
        val mapId   = ShapeId.fromParts(namespace, s"MapOf_${keyId.getName}_to_${valueId.getName}")
        if !shapes.exists(_.getId == mapId) then
          val mapShape = MapShape
            .builder()
            .id(mapId)
            .key(MemberShape.builder().id(mapId.withMember("key")).target(keyId).build())
            .value(MemberShape.builder().id(mapId.withMember("value")).target(valueId).build())
            .build()
          shapes.addOne(mapShape)
        mapId

      case StringLiteralType(_) | BooleanLiteralType(_) =>
        ShapeId.from("smithy.api#String") // literal values treated as base

      case TupleType(items) =>
        val unifiedType = items.map(t => smithyType(t, namespace, shapes)).distinct match
          case Seq(one) => one
          case _        => ShapeId.from("smithy.api#String") // TODO: fallback
        val listId = ShapeId.fromParts(namespace, s"Tuple_of_${unifiedType.getName}")
        val listShape = ListShape
          .builder()
          .id(listId)
          .member(MemberShape.builder().id(listId.withMember("member")).target(unifiedType).build())
          .build()
        shapes.addOne(listShape)
        listId

      case OrType(items) =>
        val id      = ShapeId.fromParts(namespace, unionNameFor(items))
        val builder = UnionShape.builder().id(id)
        items.zipWithIndex.foreach { case (tpe, idx) =>
          val target = smithyType(tpe, namespace, shapes)
          builder.addMember(
            MemberShape
              .builder()
              .id(id.withMember(s"case$idx"))
              .target(target)
              .build()
          )
        }
        val unionShape = builder.build()
        shapes.addOne(unionShape)
        id

      case StructureLiteralType(StructureLiteral(properties, _)) =>
        val id      = uniqueShapeId("InlineStruct")
        val builder = StructureShape.builder().id(id)
        for prop <- properties do
          val memberId = id.withMember(prop.name.value)
          val member = MemberShape
            .builder()
            .id(memberId)
            .target(smithyType(prop.tpe, namespace, shapes))
          if prop.optional.no then
            member.addTrait(new RequiredTrait.Provider().createTrait(RequiredTrait.ID, Node.objectNode))
          builder.addMember(member.build())
        val structShape = builder.build()
        shapes.addOne(structShape)
        id

      case AndType(_) =>
        // No Smithy equivalent — fallback to string
        ShapeId.from("smithy.api#String")

  def convertTypeAliases(typeAliases: Vector[TypeAlias]) =
    typeAliases.map { alias =>
      val shapeId = ShapeId.fromParts(namespace, alias.name.value)
      // val targetId = smithyType(alias.`type`, namespace, shapes)
      val aliasShape = StringShape
        .builder()
        .id(shapeId)
        .build()
      aliasShape
    }
