package org.scala.abusers.lspsmithy

import cats.Show
import langoustine.meta.*
import langoustine.meta.json.given
import software.amazon.smithy.diff.ModelDiff
import software.amazon.smithy.model.shapes.SmithyIdlModelSerializer
import software.amazon.smithy.model.validation.Severity
import software.amazon.smithy.model.validation.ValidationEvent
import software.amazon.smithy.model.Model
import upickle.default.*
import weaver.*

import java.nio.file.Paths
import scala.io.Source
import scala.jdk.CollectionConverters.*
import scala.jdk.OptionConverters.*

object SmithyConverterSpec extends SimpleIOSuite {

  pureTest("Should produce valid smithy model") {
    val stream    = this.getClass.getResourceAsStream("/metaModel.json")
    val jsonStr   = Source.fromInputStream(stream).mkString
    val metaModel = read[MetaModel](jsonStr)
    val result    = SmithyConverter.apply(metaModel)
    val error = result.getValidationEvents().asScala.toList.filter(ve => ve.getSeverity == Severity.ERROR).headOption

    expect(error == None)
  }

  pureTest("simple base type alias compiles") {
    val metaModel = MetaModel(
      typeAliases = Vector(
        TypeAlias(TypeAliasName("MyString"), Type.BaseType(BaseTypes.string))
      ),
      structures = Vector.empty,
      enumerations = Vector.empty,
      requests = Vector.empty,
      notifications = Vector.empty,
    )

    val expected = """$version: "2.0"
                     |
                     |namespace lsp
                     |
                     |string MyString
                     |""".stripMargin

    assertSmithyModelEquals(metaModel, expected)
  }

  pureTest("simple structure with single field compiles") {
    val metaModel = MetaModel(
      structures = Vector(
        Structure(
          name = StructureName("MyStruct"),
          properties = Vector(
            Property(
              name = PropertyName("id"),
              `type` = Type.BaseType(BaseTypes.integer),
            )
          ),
        )
      ),
      typeAliases = Vector.empty,
      enumerations = Vector.empty,
      requests = Vector.empty,
      notifications = Vector.empty,
    )

    val expected =
      """$version: "2.0"
        |
        |namespace lsp
        |
        |structure MyStruct {
        |    @required
        |    id: Integer
        |}
        |""".stripMargin

    assertSmithyModelEquals(metaModel, expected)
  }

  pureTest("structure using mixins and extends compiles") {
    val base = Structure(
      name = StructureName("BaseStruct"),
      properties = Vector(
        Property(
          PropertyName("x"),
          `type` = Type.BaseType(BaseTypes.string),
        )
      ),
    )

    val metaModel = MetaModel(
      structures = Vector(
        base,
        Structure(
          name = StructureName("ChildStruct"),
          `extends` = Vector(Type.ReferenceType(TypeName("BaseStruct"))),
          mixins = Vector(Type.ReferenceType(TypeName("BaseStruct"))),
          properties = Vector.empty,
        ),
      ),
      typeAliases = Vector.empty,
      enumerations = Vector.empty,
      requests = Vector.empty,
      notifications = Vector.empty,
    )

    val expected =
      """$version: "2.0"
        |
        |namespace lsp
        |
        |@mixin
        |structure BaseStruct {
        |    @required
        |    x: String
        |}
        |
        |@mixin
        |structure BaseStructBase {
        |    @required
        |    x: String
        |}
        |
        |structure ChildStruct with [
        |    BaseStruct, 
        |    BaseStructBase
        |]{}
        |
        |apply ChildStruct$x @required
        |""".stripMargin

    assertSmithyModelEquals(metaModel, expected)
  }

  pureTest("simple enumeration compiles") {
    val metaModel = MetaModel(
      enumerations = Vector(
        Enumeration(
          name = EnumerationName("Color"),
          `type` = EnumerationType("base", EnumerationTypeName.string),
          values = Vector(
            EnumerationEntry(name = EnumerationItemName("red"), value = EnumerationItem("red")),
            EnumerationEntry(name = EnumerationItemName("green"), value = EnumerationItem("green")),
          ),
        )
      ),
      structures = Vector.empty,
      typeAliases = Vector.empty,
      requests = Vector.empty,
      notifications = Vector.empty,
    )
    val expected =
      """$version: "2.0"
        |
        |namespace lsp
        |
        |enum Color {
        |    RED = "red"
        |    GREEN = "green"
        |}
        |""".stripMargin

    assertSmithyModelEquals(metaModel, expected)
  }

  pureTest("union as alias compiles as full shape") {
    val metaModel = MetaModel(
      typeAliases = Vector(
        TypeAlias(
          name = TypeAliasName("MyUnion"),
          `type` = Type.OrType(
            Vector(
              Type.ReferenceType(TypeName("A")),
              Type.ReferenceType(TypeName("B")),
            )
          ),
        )
      ),
      structures = Vector(
        Structure(name = StructureName("A")),
        Structure(name = StructureName("B")),
      ),
      enumerations = Vector.empty,
      requests = Vector.empty,
      notifications = Vector.empty,
    )

    val expected =
      """$version: "2.0"
        |
        |namespace lsp
        |
        |structure A {}
        |
        |structure B {}
        |
        |union AOrB {
        |    case0: A
        |    case1: B
        |}
        |
        |union MyUnion {
        |    case0: A
        |    case1: B
        |}
        |""".stripMargin

    assertSmithyModelEquals(metaModel, expected)
  }

  pureTest("request with input and output compiles") {
    val metaModel = MetaModel(
      requests = Vector(
        Request(
          method = RequestMethod("ping"),
          params = ParamsType.Single(Type.BaseType(BaseTypes.string)),
          result = Type.BaseType(BaseTypes.boolean),
        )
      ),
      structures = Vector.empty,
      enumerations = Vector.empty,
      typeAliases = Vector.empty,
      notifications = Vector.empty,
    )

    val expected =
      """$version: "2.0"
        |
        |namespace lsp
        |
        |operation PingOp {
        |    input := {
        |        @required
        |        params: String
        |    }
        |    output := {
        |        result: Boolean
        |    }
        |}
        |""".stripMargin

    assertSmithyModelEquals(metaModel, expected)
  }

  pureTest("notification with input only compiles") {
    val metaModel = MetaModel(
      notifications = Vector(
        Notification(
          method = RequestMethod("notify"),
          params = ParamsType.Single(Type.BaseType(BaseTypes.string)),
        )
      ),
      structures = Vector.empty,
      enumerations = Vector.empty,
      typeAliases = Vector.empty,
      requests = Vector.empty,
    )

    val expected =
      """$version: "2.0"
        |
        |namespace lsp
        |
        |operation Notify {
        |    input := {
        |        @required
        |        params: String
        |    }
        |}
        |""".stripMargin

    assertSmithyModelEquals(metaModel, expected)
  }

  pureTest("enum with non-unique values gets deduplicated") {
    val metaModel = MetaModel(
      enumerations = Vector(
        Enumeration(
          name = EnumerationName("Status"),
          `type` = EnumerationType("base", EnumerationTypeName.string),
          values = Vector(
            EnumerationEntry(EnumerationItemName("ok"), EnumerationItem("ok")),
            EnumerationEntry(EnumerationItemName("success"), EnumerationItem("ok")),
          ),
        )
      ),
      structures = Vector.empty,
      requests = Vector.empty,
      notifications = Vector.empty,
      typeAliases = Vector.empty,
    )

    val expected =
      """$version: "2.0"
        |
        |namespace lsp
        |
        |enum Status {
        |    OK = "ok"
        |}
        |""".stripMargin

    assertSmithyModelEquals(metaModel, expected)
  }

  pureTest("enum with empty value gets filtered out") {
    val metaModel = MetaModel(
      enumerations = Vector(
        Enumeration(
          name = EnumerationName("State"),
          `type` = EnumerationType("base", EnumerationTypeName.string),
          values = Vector(
            EnumerationEntry(EnumerationItemName("valid"), EnumerationItem("valid")),
            EnumerationEntry(EnumerationItemName(""), EnumerationItem("")),
          ),
        )
      ),
      structures = Vector.empty,
      typeAliases = Vector.empty,
      requests = Vector.empty,
      notifications = Vector.empty,
    )

    val expected =
      """$version: "2.0"
        |
        |namespace lsp
        |
        |enum State {
        |    VALID = "valid"
        |}
        |""".stripMargin

    assertSmithyModelEquals(metaModel, expected)
  }

  pureTest("LspAny type alias gets replaced with smithy.api#document") {
    val metaModel = MetaModel(
      structures = Vector(
        Structure(
          name = StructureName("Example"),
          properties = Vector(
            Property(PropertyName("data"), `type` = Type.ReferenceType(TypeName("LSPAny")))
          ),
        )
      ),
      typeAliases = Vector(
        TypeAlias(TypeAliasName("LSPAny"), Type.BaseType(BaseTypes.string))
      ),
      enumerations = Vector.empty,
      requests = Vector.empty,
      notifications = Vector.empty,
    )

    val expected =
      """$version: "2.0"
        |
        |namespace lsp
        |
        |structure Example {
        |    @required
        |    data: Document
        |}
        |""".stripMargin

    assertSmithyModelEquals(metaModel, expected)
  }

  pureTest("StringLiteralType and BooleanLiteralType are replaced with base types") {
    val metaModel = MetaModel(
      structures = Vector(
        Structure(
          name = StructureName("LiteralWrapper"),
          properties = Vector(
            Property(PropertyName("str"), `type` = Type.StringLiteralType("abc")),
            Property(PropertyName("bool"), `type` = Type.BooleanLiteralType(true)),
          ),
        )
      ),
      typeAliases = Vector.empty,
      enumerations = Vector.empty,
      requests = Vector.empty,
      notifications = Vector.empty,
    )

    val expected =
      """$version: "2.0"
        |
        |namespace lsp
        |
        |structure LiteralWrapper {
        |    @required
        |    str: String
        |
        |    @required
        |    bool: Boolean
        |}
        |""".stripMargin

    assertSmithyModelEquals(metaModel, expected)
  }

  pureTest("TupleType with homogeneous types compiles as list") {
    val metaModel = MetaModel(
      structures = Vector(
        Structure(
          name = StructureName("Pair"),
          properties = Vector(
            Property(
              PropertyName("pair"),
              `type` = Type.TupleType(
                Vector(
                  Type.BaseType(BaseTypes.integer),
                  Type.BaseType(BaseTypes.integer),
                )
              ),
            )
          ),
        )
      ),
      typeAliases = Vector.empty,
      enumerations = Vector.empty,
      requests = Vector.empty,
      notifications = Vector.empty,
    )

    val expected =
      """$version: "2.0"
        |
        |namespace lsp
        |
        |@trait(
        |    selector: "structure:not(> member:not([trait|required]))"
        |)
        |structure tuple {}
        |
        |structure Pair {
        |    @required
        |    pair: TupleOfIntegerInteger
        |}
        |
        |@tuple
        |structure TupleOfIntegerInteger {
        |    @required
        |    first: Integer
        |    @required
        |    second: Integer
        |}
        |""".stripMargin

    assertSmithyModelEquals(metaModel, expected)
  }

  pureTest("StructureLiteralType compiles as inline structure") {
    val metaModel = MetaModel(
      structures = Vector(
        Structure(
          name = StructureName("InlineHolder"),
          properties = Vector(
            Property(
              PropertyName("inline"),
              `type` = Type.StructureLiteralType(
                StructureLiteral(
                  Vector(
                    Property(
                      PropertyName("a"),
                      `type` = Type.BaseType(BaseTypes.integer),
                    )
                  )
                )
              ),
            )
          ),
        )
      ),
      typeAliases = Vector.empty,
      enumerations = Vector.empty,
      requests = Vector.empty,
      notifications = Vector.empty,
    )

    val expected =
      """$version: "2.0"
        |
        |namespace lsp
        |
        |@trait(
        |    selector: "structure:not(> member:not([trait|required]))"
        |)
        |structure tuple {}
        |
        |structure InlineHolder {
        |    @required
        |    inline: InlineStruct2067068085
        |}
        |
        |structure InlineStruct2067068085 {
        |    @required
        |    a: Integer
        |}
        |""".stripMargin

    assertSmithyModelEquals(metaModel, expected)
  }

  pureTest("ArrayType and MapType compile correctly") {
    val metaModel = MetaModel(
      structures = Vector(
        Structure(
          name = StructureName("Complex"),
          properties = Vector(
            Property(
              PropertyName("listOfStrings"),
              `type` = Type.ArrayType(Type.BaseType(BaseTypes.string)),
            ),
            Property(
              PropertyName("mapOfInts"),
              `type` = Type.MapType(
                Type.BaseType(BaseTypes.string),
                Type.BaseType(BaseTypes.integer),
              ),
            ),
          ),
        )
      ),
      typeAliases = Vector.empty,
      enumerations = Vector.empty,
      requests = Vector.empty,
      notifications = Vector.empty,
    )

    val expected =
      """$version: "2.0"
        |
        |namespace lsp
        |
        |@trait(
        |    selector: "structure:not(> member:not([trait|required]))"
        |)
        |structure tuple {}
        |
        |structure Complex {
        |    @required
        |    listOfStrings: ListOfString
        |    @required
        |    mapOfInts: MapOfString2Integer
        |}
        |
        |list ListOfString {
        |    member: String
        |}
        |
        |map MapOfString2Integer {
        |    key: String
        |    value: Integer
        |}
        |""".stripMargin

    assertSmithyModelEquals(metaModel, expected)
  }

  // for debug purpose only
  def debug(metaModel: MetaModel) = {
    val smithyModel = SmithyConverter(metaModel)
    val outputMap   = SmithyIdlModelSerializer.builder().build().serialize(smithyModel.unwrap()).asScala.toMap
    println(outputMap(Paths.get("lsp.smithy")))
  }

  def assertSmithyModelEquals(metaModel: MetaModel, expectedModel: String): Expectations = {
    val actualModel = SmithyConverter(metaModel).unwrap()

    val expected = Model
      .assembler()
      .discoverModels()
      .addUnparsedModel("test.smithy", expectedModel)
      .assemble()
      .unwrap()

    val diff = ModelDiff
      .compare(expected, actualModel)
      .asScala
      .toList
      .filter(f =>
        f.getSeverity() == Severity.DANGER || f.getSeverity() == Severity.ERROR || f.getSeverity() == Severity.WARNING
      )
      .filter(v => v.getShapeId().toScala.fold(true)(s => s.getNamespace() == "lsp"))

    given Show[ValidationEvent] = Show[ValidationEvent] { ve =>
      s"""
         |id: ${ve.getId}
         |msg: ${ve.getMessage}
         |sId: ${ve.getShapeId}
         |hint: ${ve.getHint()}
         |loc: ${ve.getSourceLocation()}
         |${ve.getSeverity()}
         |##########
         |""".stripMargin
    }

    expect.same(Nil, diff)
  }
}
