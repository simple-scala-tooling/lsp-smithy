package org.scala.abusers.lspsmithy

import cats.data.State
import cats.syntax.all.*
import langoustine.meta.*
import software.amazon.smithy.model.node.Node
import software.amazon.smithy.model.shapes.*
import software.amazon.smithy.model.traits.EnumValueTrait
import software.amazon.smithy.model.traits.RequiredTrait
import software.amazon.smithy.model.validation.ValidatedResult
import software.amazon.smithy.model.Model

object SmithyConverter:

  type ShapeState[A] = State[Map[ShapeId, Shape], A]

  private val namespace: String = "lsp"

  def apply(meta: MetaModel): ValidatedResult[Model] =
    val shapes = (for
      _ <- convertTypeAliases(meta.typeAliases)
      _ <- convertStructures(meta.structures)
      _ <- convertEnums(meta.enumerations)
      _ <- convertRequests(meta.requests)
    yield ()).run(Map.empty).value._1.values

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
    if strings.nonEmpty then
      val tokenLists = strings.map(splitPascal)
      tokenLists.reduceLeft { (acc, next) =>
        acc.intersect(next)
      }
    else Nil

  private def convertEnums(enumerations: Vector[Enumeration]): ShapeState[Unit] =
    // Enums
    val smithyEnums = enumerations.map { enum_ =>
      val shapeId = ShapeId.fromParts(namespace, enum_.name.value)
      val enumShape = enum_.values.map(t => t.value).head match
        case _: Int =>
          val builder = IntEnumShape.builder().id(shapeId)
          enum_.values
            .distinctBy(_.value)
            .map(convertEnumValues(shapeId, _))
            .foldLeft(builder) { case (acc, item) => acc.addMember(item) }
            .build()
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
            .foldLeft(builder) { case (acc, item) => acc.addMember(item) }
            .build()

      shapeId -> enumShape
    }
    State.modify(shapes => shapes ++ smithyEnums)

  private def convertEnumValues(shapeId: ShapeId, entry: EnumerationEntry) =
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

  private def smithyType(t: Type, namespace: String): ShapeState[ShapeId] =
    import Type.*
    import java.util.UUID

    def uniqueShapeId(prefix: String): ShapeId =
      ShapeId.fromParts(namespace, s"${prefix}_${UUID.randomUUID().toString.replace("-", "")}")

    t match
      case BaseType(BaseTypes.string)   => ShapeId.from("smithy.api#String").pure
      case BaseType(BaseTypes.integer)  => ShapeId.from("smithy.api#Integer").pure
      case BaseType(BaseTypes.uinteger) => ShapeId.from("smithy.api#Integer").pure
      case BaseType(BaseTypes.decimal)  => ShapeId.from("smithy.api#Float").pure
      case BaseType(BaseTypes.boolean)  => ShapeId.from("smithy.api#Boolean").pure
      case BaseType(BaseTypes.NULL)     => ShapeId.from("smithy.api#Unit").pure
      case BaseType(_)                  => ShapeId.from("smithy.api#String").pure

      case ReferenceType(name) => ShapeId.fromParts(namespace, name.value).pure

      case ArrayType(element) =>
        smithyType(element, namespace)
          .flatMap { innerId =>
            val listId = ShapeId.fromParts(namespace, s"ListOf_${innerId.getName}")
            State { shapes =>
              val listShape = ListShape
                .builder()
                .id(listId)
                .member(MemberShape.builder().id(listId.withMember("member")).target(innerId).build())
                .build()

              (shapes + (listId -> listShape), listId)
            }
          }

      case MapType(key, value) =>
        for
          keyId   <- smithyType(key, namespace)
          valueId <- smithyType(value, namespace)
          mapId = ShapeId.fromParts(namespace, s"MapOf_${keyId.getName}_to_${valueId.getName}")
          result <- State[Map[ShapeId, Shape], ShapeId] { shapes =>
            val mapShape = MapShape
              .builder()
              .id(mapId)
              .key(MemberShape.builder().id(mapId.withMember("key")).target(keyId).build())
              .value(MemberShape.builder().id(mapId.withMember("value")).target(valueId).build())
              .build()
            (shapes + (mapId -> mapShape), mapId)
          }
        yield result

      case StringLiteralType(_) | BooleanLiteralType(_) =>
        ShapeId.from("smithy.api#String").pure // literal values treated as base

      case TupleType(items) =>
        for
          items_ <- items.traverse(t => smithyType(t, namespace))
          unifiedType = items_.distinct match
            case Seq(one) => one
            case _        => ShapeId.from("smithy.api#String") // TODO: fallback
          listId = ShapeId.fromParts(namespace, s"Tuple_of_${unifiedType.getName}")
          result <- State[Map[ShapeId, Shape], ShapeId] { shapes =>
            val listShape = ListShape
              .builder()
              .id(listId)
              .member(MemberShape.builder().id(listId.withMember("member")).target(unifiedType).build())
              .build()
            (shapes + (listId -> listShape), listId)
          }
        yield result

      case OrType(items) =>
        val id = ShapeId.fromParts(namespace, unionNameFor(items))
        items.zipWithIndex
          .traverse { case (tpe, idx) =>
            smithyType(tpe, namespace).map { target =>
              MemberShape
                .builder()
                .id(id.withMember(s"case$idx"))
                .target(target)
                .build()
            }
          }
          .map(_.foldLeft(UnionShape.builder().id(id)) { case (acc, item) => acc.addMember(item) }.build())
          .flatMap { unionShape =>
            State(shapes => (shapes + (id -> unionShape), id))
          }

      case StructureLiteralType(StructureLiteral(properties, _)) =>
        val id = uniqueShapeId("InlineStruct")
        properties
          .traverse { prop =>
            val memberId = id.withMember(prop.name.value)
            smithyType(prop.tpe, namespace).map { target =>
              val member = MemberShape
                .builder()
                .id(memberId)
                .target(target)
              val memberOpt =
                if prop.optional.no then
                  member.addTrait(new RequiredTrait.Provider().createTrait(RequiredTrait.ID, Node.objectNode))
                else member

              memberOpt.build()
            }
          }
          .map(_.foldLeft(StructureShape.builder().id(id)) { case (acc, item) => acc.addMember(item) }.build())
          .flatMap { structureShape =>
            State(shapes => (shapes + (id -> structureShape), id))
          }

      case AndType(_) =>
        // No Smithy equivalent — fallback to string
        ShapeId.from("smithy.api#String").pure

  def convertTypeAliases(typeAliases: Vector[TypeAlias]): ShapeState[Unit] =
    State.modify { shapes =>
      val aliases = typeAliases.map { alias =>
        val shapeId = ShapeId.fromParts(namespace, alias.name.value)
        // val targetId = smithyType(alias.`type`, namespace, shapes)
        val aliasShape = StringShape
          .builder()
          .id(shapeId)
          .build()
        aliasShape
      }
      shapes ++ aliases.groupBy(_.getId).mapValues(_.head).toMap
    }

  def convertStructures(structures: Vector[Structure]): ShapeState[Unit] =
    structures.traverse { struct =>
      val shapeId = ShapeId.fromParts(namespace, struct.name.value)
      struct.properties
        .traverse { prop =>
          val memberId = shapeId.withMember(prop.name.value)
          smithyType(prop.tpe, namespace).map { target =>
            val member = MemberShape
              .builder()
              .id(memberId)
              .target(target)
            val memberOpt =
              if prop.optional.no then
                member.addTrait(new RequiredTrait.Provider().createTrait(RequiredTrait.ID, Node.objectNode))
              else member
            memberOpt.build()
          }
        }
        .map(_.foldLeft(StructureShape.builder().id(shapeId)) { case (acc, item) => acc.addMember(item) }.build())
        .flatMap { structureShape =>
          State.modify(shapes => shapes + (structureShape.getId -> structureShape))
        }
    }.void

  private def sanitizeMethodName(m: RequestMethod): String =
    m.value.split("/").toList.map(_.capitalize).mkString

  private def structureFromParams(
      params: ParamsType,
      shapeId: ShapeId,
      namespace: String,
  ): ShapeState[ShapeId] =
    val builder = StructureShape.builder().id(shapeId)

    val inputStruct: ShapeState[StructureShape] = params match
      case ParamsType.None =>
        builder.build().pure
      case ParamsType.Single(tpe) =>
        smithyType(tpe, namespace).map { target =>
          builder
            .addMember(
              MemberShape
                .builder()
                .id(shapeId.withMember("params"))
                .target(target)
                .build()
            )
            .build()
        }
      case ParamsType.Many(vs) =>
        vs.zipWithIndex
          .traverse { case (tpe, i) =>
            smithyType(tpe, namespace).map { target =>
              MemberShape
                .builder()
                .id(shapeId.withMember(s"param$i"))
                .target(target)
                .build()
            }
          }
          .map(_.foldLeft(builder) { case (acc, item) => acc.addMember(item) }.build())

    inputStruct.flatMap { inputShape =>
      State(shapes => (shapes + (inputShape.getId -> inputShape), inputShape.getId))

    }

  def convertRequests(requests: Vector[Request]): ShapeState[Unit] =
    requests.traverse { req =>
      val opId          = ShapeId.fromParts(namespace, sanitizeMethodName(req.method) + "Op")
      val inputShapeId  = ShapeId.fromParts(namespace, s"${opId.getName}Input")
      val outputShapeId = ShapeId.fromParts(namespace, s"${opId.getName}Output")

      for
        inputShapeId   <- structureFromParams(req.params, inputShapeId, namespace)
        outputTargetId <- smithyType(req.result, namespace)
        _ <- State.modify[Map[ShapeId, Shape]] { shapes =>
          val outputShape =
            if outputTargetId != ShapeId.from("smithy.api#Unit") then
              StructureShape
                .builder()
                .id(outputShapeId)
                .addMember(
                  MemberShape
                    .builder()
                    .id(outputShapeId.withMember("result"))
                    .target(outputTargetId)
                    .build()
                )
                .build()
            else
              StructureShape
                .builder()
                .id(outputShapeId)
                .build()

          val opShape = OperationShape
            .builder()
            .id(opId)
            .input(inputShapeId)
            .output(outputShapeId)
            .build()
          shapes ++ Map(opId -> opShape, outputShapeId -> outputShape)
        }
      yield ()
    }.void
