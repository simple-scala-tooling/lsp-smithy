package org.scala.abusers.lspsmithy

import alloy.UntaggedUnionTrait
import cats.data.State
import cats.syntax.all.*
import jsonrpclib.JsonNotificationTrait
import jsonrpclib.JsonRequestTrait
import langoustine.meta.*
import lsp.TupleTrait
import software.amazon.smithy.model.node.Node
import software.amazon.smithy.model.shapes.*
import software.amazon.smithy.model.traits.DocumentationTrait
import software.amazon.smithy.model.traits.MixinTrait
import software.amazon.smithy.model.traits.RequiredTrait
import software.amazon.smithy.model.traits.SinceTrait
import software.amazon.smithy.model.validation.ValidatedResult
import software.amazon.smithy.model.Model

import scala.jdk.CollectionConverters.*
import scala.util.chaining.*
import scala.util.hashing.MurmurHash3

object SmithyConverter:

  type ShapeState[A] = State[Set[Shape], A]

  private val namespace: String = "lsp"

  def apply(meta: MetaModel): ValidatedResult[Model] =
    val referencedAsMixin: Set[String] = meta.structures
      .flatMap(s =>
        s.mixins.collect { // TODO add extendz?
          case Type.ReferenceType(name) => name
        }
      )
      .map(_.value)
      .toSet
    val shapes = (for
      _ <- convertStructures(meta.structures.filterNot(_.proposed), referencedAsMixin)
      _ <- convertEnums(meta.enumerations.filterNot(_.proposed))
      _ <- convertRequests(meta.requests.filterNot(_.proposed))
      _ <- convertNotifications(meta.notifications.filterNot(_.proposed))
      _ <- convertTypeAliases(meta.typeAliases.filterNot(_.proposed).filterNot(_.name.value == "LSPAny"))
    yield ()).run(Set.empty).value._1

    val assembler = Model.assembler()
    shapes.foreach(assembler.addShape)
    assembler.assemble()

  private[lspsmithy] def unionNameFor(types: Vector[Type]): String =
    val names = types.map(extractTypeName).filter(_.nonEmpty).distinct

    val suffix = longestCommonPascalSubsequence(names)
    if suffix.nonEmpty && suffix.length >= 2 then suffix.mkString + "Union"
    else if names.length == 2 then s"${names(0)}Or${names(1)}"
    else
      // heurystyka "all but one" → wspólna sekwencja
      val candidates =
        names.indices
          .map { i =>
            val subset = names.patch(i, Nil, 1)
            val common = longestCommonPascalSubsequence(subset)
            (i, common)
          }
          .filter(_._2.nonEmpty)

      if candidates.length == 1 then
        val (missingIdx, common) = candidates.head
        val outlier              = names(missingIdx)
        val parts                = List(common.mkString, outlier).sorted
        s"${parts(0)}Or${parts(1)}"
      else if suffix.nonEmpty then suffix.mkString + "Union"
      else s"Union_${Math.abs(MurmurHash3.indexedSeqHash(types, 0))}"

  private def extractTypeName(t: Type): String = t match
    case Type.ReferenceType(name)                               => name.value
    case Type.BaseType(base)                                    => base.toString.capitalize
    case Type.ArrayType(inner)                                  => s"ListOf${extractTypeName(inner)}"
    case Type.MapType(k, v)                                     => s"MapOf${extractTypeName(k)}To${extractTypeName(v)}"
    case Type.StringLiteralType(_) | Type.BooleanLiteralType(_) => "Literal"
    case Type.StructureLiteralType(StructureLiteral(props, _)) =>
      s"Literal${Math.abs(MurmurHash3.indexedSeqHash(props, 0))}"
    case _ => ""

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
    val smithyEnums = enumerations.map { enum_ =>
      val shapeId = ShapeId.fromParts(namespace, enum_.name.value)
      val enumShape = enum_.values.map(t => t.value).head match
        case _: Int =>
          val builder = IntEnumShape
            .builder()
            .id(shapeId)
            .tap(maybeAddDocs(enum_.documentation.toOption.map(_.value), enum_.since.toOption))
          enum_.values
            .distinctBy(_.value)
            .filterNot(_.proposed)
            .foldLeft(builder) { case (acc, entry) =>
              acc.addMember(
                toUpperSnakeCase(entry.name.value),
                entry.value.intValue,
                _.tap(maybeAddDocs(entry.documentation.toOption.map(_.value), entry.since.toOption)),
              )
            }
            .build()
        case _: String =>
          val builder = EnumShape.builder().id(shapeId)
          enum_.values
            .distinctBy(_.value)
            .filterNot(_.proposed)
            // Smithy doesn't allow enum values: https://github.com/smithy-lang/smithy/issues/2626
            .filter(_.value.stringValue.nonEmpty)
            .foldLeft(builder) { case (acc, entry) =>
              acc.addMember(
                toUpperSnakeCase(entry.name.value),
                entry.value.stringValue,
                _.tap(maybeAddDocs(entry.documentation.toOption.map(_.value), entry.since.toOption)),
              )
            }
            .build()

      enumShape
    }
    State.modify(shapes => shapes ++ smithyEnums)

  private def toUpperSnakeCase(s: String): String =
    s.replaceAll("([a-z])([A-Z])", "$1_$2")
      .replaceAll("([A-Z])([A-Z][a-z])", "$1_$2")
      .toUpperCase

  private def smithyType(t: Type, namespace: String): ShapeState[ShapeId] = {
    import Type.*

    t match
      case BaseType(BaseTypes.string)   => ShapeId.from("smithy.api#String").pure
      case BaseType(BaseTypes.integer)  => ShapeId.from("smithy.api#Integer").pure
      case BaseType(BaseTypes.uinteger) => ShapeId.from("smithy.api#Integer").pure
      case BaseType(BaseTypes.decimal)  => ShapeId.from("smithy.api#Float").pure
      case BaseType(BaseTypes.boolean)  => ShapeId.from("smithy.api#Boolean").pure
      case BaseType(BaseTypes.NULL)     => ShapeId.from("smithy.api#Unit").pure
      case BaseType(_)                  => ShapeId.from("smithy.api#String").pure

      case ReferenceType(name) =>
        if name.value == "LSPAny" then ShapeId.from("smithy.api#Document").pure
        else ShapeId.fromParts(namespace, name.value).pure

      case ArrayType(element) =>
        smithyType(element, namespace)
          .flatMap { innerId =>
            val listId = ShapeId.fromParts(namespace, s"ListOf${innerId.getName}")
            State { shapes =>
              val listShape = ListShape
                .builder()
                .id(listId)
                .member(MemberShape.builder().id(listId.withMember("member")).target(innerId).build())
                .build()

              (shapes + listShape, listId)
            }
          }

      case MapType(key, value) =>
        for
          keyId   <- smithyType(key, namespace)
          valueId <- smithyType(value, namespace)
          mapId = ShapeId.fromParts(namespace, s"MapOf${keyId.getName}2${valueId.getName}")
          result <- State[Set[Shape], ShapeId] { shapes =>
            val mapShape = MapShape
              .builder()
              .id(mapId)
              .key(MemberShape.builder().id(mapId.withMember("key")).target(keyId).build())
              .value(MemberShape.builder().id(mapId.withMember("value")).target(valueId).build())
              .build()
            (shapes + mapShape, mapId)
          }
        yield result

      case StringLiteralType(_) =>
        ShapeId.from("smithy.api#String").pure // literal values treated as base

      case BooleanLiteralType(_) =>
        ShapeId.from("smithy.api#Boolean").pure

      case TupleType(items) =>
        def idxToText(idx: Int) =
          idx match
            case 0     => "first"
            case 1     => "second"
            case 2     => "third"
            case 3     => "fourth"
            case 4     => "fifth"
            case 5     => "sixth"
            case 6     => "seventh"
            case 7     => "eighth"
            case 8     => "ninth"
            case 9     => "tenth"
            case other => sys.error(s"Unsupported arity: $other")

        for
          items_ <- items.traverse(t => smithyType(t, namespace))
          tupleId = ShapeId.fromParts(namespace, s"TupleOf${items_.map(_.getName).mkString}")
          result <- State[Set[Shape], ShapeId] { shapes =>
            val tupleBuilder = StructureShape
              .builder()
              .id(tupleId)
              .addTrait(TupleTrait.builder().build())

            items_.zipWithIndex.foreach { case (m, i) =>
              tupleBuilder.addMember(
                MemberShape
                  .builder()
                  .id(tupleId.withMember(idxToText(i)))
                  .target(m)
                  .addTrait(
                    new RequiredTrait.Provider().createTrait(RequiredTrait.ID, Node.objectNode)
                  )
                  .build()
              )
            }

            (shapes + tupleBuilder.build(), tupleId)
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
          .map(
            _.foldLeft(
              UnionShape
                .builder()
                .id(id)
                .addTrait(new UntaggedUnionTrait.Provider().createTrait(UntaggedUnionTrait.ID, Node.objectNode))
            ) { case (acc, item) =>
              // TODO: this shape gets filtered out as it is marked as proposed
              if item.getTarget.toString == "lsp#SnippetTextEdit" then acc
              else acc.addMember(item)
            }.build()
          )
          .flatMap { unionShape =>
            State(shapes => (shapes + unionShape, id))
          }

      case StructureLiteralType(StructureLiteral(properties, false)) =>
        val id = ShapeId.fromParts(namespace, s"InlineStruct${Math.abs(MurmurHash3.indexedSeqHash(properties, 0))}")
        structureMembers(id, properties)
          .map(_.foldLeft(StructureShape.builder().id(id)) { case (acc, item) => acc.addMember(item) }.build())
          .flatMap { structureShape =>
            State(shapes => (shapes + structureShape, id))
          }

      case StructureLiteralType(StructureLiteral(properties, true)) => sys.error("this should not happen")

      case AndType(_) =>
        // No Smithy equivalent — fallback to string
        ShapeId.from("smithy.api#String").pure
  }

  private def simpleShapeOfType(shapeId: ShapeId, shapeType: ShapeType): Shape =
    shapeType match
      case ShapeType.STRING      => StringShape.builder().id(shapeId).build()
      case ShapeType.INTEGER     => IntegerShape.builder().id(shapeId).build()
      case ShapeType.LONG        => LongShape.builder().id(shapeId).build()
      case ShapeType.SHORT       => ShortShape.builder().id(shapeId).build()
      case ShapeType.BYTE        => ByteShape.builder().id(shapeId).build()
      case ShapeType.FLOAT       => FloatShape.builder().id(shapeId).build()
      case ShapeType.DOUBLE      => DoubleShape.builder().id(shapeId).build()
      case ShapeType.BIG_INTEGER => BigIntegerShape.builder().id(shapeId).build()
      case ShapeType.BIG_DECIMAL => BigDecimalShape.builder().id(shapeId).build()
      case ShapeType.BOOLEAN     => BooleanShape.builder().id(shapeId).build()
      case ShapeType.BLOB        => BlobShape.builder().id(shapeId).build()
      case ShapeType.TIMESTAMP   => TimestampShape.builder().id(shapeId).build()
      case ShapeType.DOCUMENT    => DocumentShape.builder().id(shapeId).build()
      case _ =>
        throw new IllegalArgumentException(s"Unsupported shape type for alias: $shapeType")

  def convertTypeAliases(typeAliases: Vector[TypeAlias]): ShapeState[Unit] =
    typeAliases.traverse { alias =>
      val aliasId = ShapeId.fromParts(namespace, alias.name.value)
      alias.`type` match
        case t @ Type.ReferenceType(_) =>
          smithyType(t, namespace).flatMap { targetShapeId =>
            State.modify { shapes =>
              shapes.map(s => s.getId -> s).toMap.get(targetShapeId) match
                case Some(shape) =>
                  // Rename the shape to alias name
                  val renamed             = Shape.shapeToBuilder(shape): AbstractShapeBuilder[?, ?]
                  val anotherVarForUpcast = renamed.id(aliasId): AbstractShapeBuilder[?, ?]
                  val s: Shape            = anotherVarForUpcast.build().asInstanceOf[Shape]
                  shapes + s
                case None =>
                  sys.error(s"Shape not found: $targetShapeId")
            }
          }

        case base @ Type.BaseType(_) =>
          val baseShapeType = base match
            case Type.BaseType(BaseTypes.string)   => ShapeType.STRING
            case Type.BaseType(BaseTypes.integer)  => ShapeType.INTEGER
            case Type.BaseType(BaseTypes.uinteger) => ShapeType.INTEGER
            case Type.BaseType(BaseTypes.decimal)  => ShapeType.FLOAT
            case Type.BaseType(BaseTypes.boolean)  => ShapeType.BOOLEAN
            case _                                 => ShapeType.STRING
          val s = simpleShapeOfType(aliasId, baseShapeType)
          State.modify[Set[Shape]] { shapes =>
            shapes + s
          }

        case complex =>
          // Generate the actual shape under alias name
          smithyType(complex, namespace).flatMap { targetShapeId =>
            State.modify { shapes =>
              shapes.map(s => s.getId -> s).toMap.get(targetShapeId) match
                case Some(shape) =>
                  // Rename the shape to alias name
                  val renamed             = Shape.shapeToBuilder(shape): AbstractShapeBuilder[?, ?]
                  val anotherVarForUpcast = renamed.id(aliasId): AbstractShapeBuilder[?, ?]
                  val s: Shape            = anotherVarForUpcast.build().asInstanceOf[Shape]
                  shapes + s
                case None =>
                  sys.error(s"Shape not found: $targetShapeId")
            }
          }

    }.void

  def convertStructures(structures: Vector[Structure], referencedAsMixin: Set[String]): ShapeState[Unit] =
    def addMixinTrait(name: String)(b: StructureShape.Builder) =
      if referencedAsMixin.contains(name) then b.addTrait(MixinTrait.builder().build())
      else b

    def addMixins(shapes: Set[Shape], mixinIds: Set[ShapeId])(b: StructureShape.Builder) =
      val shapeMap = shapes.map(s => s.getId -> s).toMap
      mixinIds.flatMap(shapeMap.get).foreach(b.addMixin)
      b

    structures.traverse { struct =>
      val shapeId = ShapeId.fromParts(namespace, struct.name.value)

      for
        members <- structureMembers(shapeId, struct.properties)
        // mixins: both `extends` and `mixins`
        mixinIds <- struct.mixins // TODO add exteds?
          .filterNot(_.isInstanceOf[Type.BaseType])
          .traverse(t => smithyType(t, namespace))
          .map(_.toSet)

        result <- State.apply[Set[Shape], ShapeId] { shapes =>
          val shape =
            StructureShape
              .builder()
              .id(shapeId)
              .tap(maybeAddDocs(struct.documentation.toOption.map(_.value), struct.since.toOption))
              .tap(addMixinTrait(struct.name.value))
              .tap(addMixins(shapes, mixinIds))
              .tap(b => members.foreach(b.addMember))
              .build()

          (shapes + shape, shapeId)
        }
      yield result
    }.void

  private def maybeAddDocs[B <: AbstractShapeBuilder[B, S], S <: Shape](
      text: Option[String],
      since: Option[String],
  )(
      b: B
  ): Unit =
    b.addTraits(
      List
        .concat(
          // technically we could try to strip the text of `since` if present
          // but in some cases there's more than one @since, and only one `since` property (though there should be multiple sinceTags).
          // so we just leave it be for simplicity, it's just docstrings
          // example: https://github.com/microsoft/language-server-protocol/blob/5500ef8fb35925106ee222173a95c57595882b0a/_specifications/lsp/3.18/metaModel/metaModel.json#L7234-L7235
          text.map(new DocumentationTrait(_)),
          since.map(new SinceTrait(_)),
        )
        .asJava
    )

  private def sanitizeMethodName(m: RequestMethod): String =
    m.value.split("/").toList.map(_.capitalize).mkString.replaceAll("\\$", "")

  private def structureFromParams(
      params: ParamsType,
      shapeId: ShapeId,
      namespace: String,
  ): ShapeState[ShapeId] = {
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
                .addTrait(new RequiredTrait.Provider().createTrait(RequiredTrait.ID, Node.objectNode))
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
                .addTrait(new RequiredTrait.Provider().createTrait(RequiredTrait.ID, Node.objectNode))
                .build()
            }
          }
          .map(_.foldLeft(builder) { case (acc, item) => acc.addMember(item) }.build())

    inputStruct.flatMap { inputShape =>
      State(shapes => (shapes + inputShape, inputShape.getId))
    }
  }

  private def structureMembers(id: ShapeId, properties: Vector[Property]): ShapeState[Vector[MemberShape]] = {
    def makeRequired(prop: Property): MemberShape.Builder => Unit =
      if prop.optional.no then _.addTrait(new RequiredTrait.Provider().createTrait(RequiredTrait.ID, Node.objectNode))
      else identity

    properties
      .filterNot(_.proposed)
      .traverse { prop =>
        val memberId = id.withMember(prop.name.value)
        smithyType(prop.tpe, namespace).map { target =>
          MemberShape
            .builder()
            .id(memberId)
            .target(target)
            .tap(makeRequired(prop))
            .tap(maybeAddDocs(prop.documentation.toOption.map(_.value), prop.since.toOption))
            .build()
        }
      }
  }

  def convertRequests(requests: Vector[Request]): ShapeState[Unit] =
    requests.traverse { req =>
      val opId          = ShapeId.fromParts(namespace, sanitizeMethodName(req.method) + "Op")
      val inputShapeId  = ShapeId.fromParts(namespace, s"${opId.getName}Input")
      val outputShapeId = ShapeId.fromParts(namespace, s"${opId.getName}Output")

      for
        inputShapeId   <- structureFromParams(req.params, inputShapeId, namespace)
        outputTargetId <- smithyType(req.result, namespace)
        _ <- State.modify[Set[Shape]] { shapes =>
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
            .addTrait(new JsonRequestTrait.Provider().createTrait(JsonRequestTrait.ID, Node.from(req.method.value)))
            .build()
          shapes ++ Set(opShape, outputShape)
        }
      yield ()
    }.void

  def convertNotifications(notifications: Vector[Notification]): ShapeState[Unit] =
    notifications.traverse { notif =>
      val opId    = ShapeId.fromParts(namespace, sanitizeMethodName(notif.method))
      val builder = OperationShape.builder().id(opId)

      // --- Input ---
      val inputShapeId = ShapeId.fromParts(namespace, s"${opId.getName}Input")
      structureFromParams(notif.params, inputShapeId, namespace).flatMap { inputShapeId =>
        builder.input(inputShapeId)

        builder.output(ShapeId.from("smithy.api#Unit"))
        val notifiShapeOp = builder
          .addTrait(
            new JsonNotificationTrait.Provider().createTrait(JsonNotificationTrait.ID, Node.from(notif.method.value))
          )
          .build()

        State.modify(shapes => shapes + notifiShapeOp)
      }
    }.void
