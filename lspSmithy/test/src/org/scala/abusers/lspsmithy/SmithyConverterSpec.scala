package org.scala.abusers.lspsmithy

import langoustine.meta.*
import langoustine.meta.json.given
import software.amazon.smithy.model.shapes.ShapeId
import software.amazon.smithy.model.validation.Severity
import upickle.default.*
import weaver.SimpleIOSuite

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

    val result = SmithyConverter(metaModel)
    val error  = result.getValidationEvents().asScala.toList.find(_.getSeverity == Severity.ERROR)
    expect(error == None)
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

    val result = SmithyConverter(metaModel)
    val error  = result.getValidationEvents().asScala.toList.find(_.getSeverity == Severity.ERROR)
    expect(error == None)
  }

  pureTest("structure using mixins and extends compiles") {
    val base = Structure(
      name = StructureName("BaseStruct"),
      properties = Vector(Property(PropertyName("x"), `type` = Type.BaseType(BaseTypes.string))),
    )
    val metaModel = MetaModel(
      structures = Vector(
        base,
        Structure(
          name = StructureName("ChildStruct"),
          `extends` = Vector(Type.ReferenceType(TypeName("BaseStruct"))),
          mixins = Vector(Type.ReferenceType(TypeName("BaseStruct"))),
          properties = Vector(),
        ),
      ),
      typeAliases = Vector.empty,
      enumerations = Vector.empty,
      requests = Vector.empty,
      notifications = Vector.empty,
    )

    val result = SmithyConverter(metaModel)
    val error  = result.getValidationEvents().asScala.toList.find(_.getSeverity == Severity.ERROR)
    expect(error == None)
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

    val result = SmithyConverter(metaModel)
    val error  = result.getValidationEvents().asScala.toList.find(_.getSeverity == Severity.ERROR)
    expect(error == None)
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

    val result = SmithyConverter(metaModel)
    val error  = result.getValidationEvents().asScala.toList.find(_.getSeverity == Severity.ERROR)
    expect(error == None)
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

    val result = SmithyConverter(metaModel)
    val error  = result.getValidationEvents().asScala.toList.find(_.getSeverity == Severity.ERROR)
    expect(error == None)
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

    val result = SmithyConverter(metaModel)
    val error  = result.getValidationEvents().asScala.toList.find(_.getSeverity == Severity.ERROR)
    expect(error == None)
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
    val result = SmithyConverter(metaModel)
    val error  = result.getValidationEvents().asScala.find(_.getSeverity == Severity.ERROR)
    expect(error == None)
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
    val result = SmithyConverter(metaModel)
    val error  = result.getValidationEvents().asScala.find(_.getSeverity == Severity.ERROR)
    expect(error == None)
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
    val result      = SmithyConverter(metaModel)
    val enumShape   = result.unwrap().expectShape(ShapeId.from("lsp#Status")).asEnumShape().asScala.get
    val memberNames = enumShape.members().asScala.map(m => m.getMemberName).toSet
    expect(memberNames == Set("OK"))
  }

  pureTest("enum with lowercase value gets uppercased") {
    val metaModel = MetaModel(
      enumerations = Vector(
        Enumeration(
          name = EnumerationName("InsertMode"),
          `type` = EnumerationType("base", EnumerationTypeName.string),
          values = Vector(
            EnumerationEntry(EnumerationItemName("adjustIndentation"), EnumerationItem("adjustIndentation"))
          ),
        )
      ),
      structures = Vector.empty,
      typeAliases = Vector.empty,
      requests = Vector.empty,
      notifications = Vector.empty,
    )
    val result      = SmithyConverter(metaModel)
    val enumShape   = result.unwrap().expectShape(ShapeId.from("lsp#InsertMode")).asEnumShape().asScala.get
    val memberNames = enumShape.members().asScala.map(m => m.getMemberName).toSet
    expect(memberNames == Set("ADJUST_INDENTATION"))
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
    val result        = SmithyConverter(metaModel)
    val exampleStruct = result.unwrap().expectShape(ShapeId.from("lsp#Example")).asStructureShape().asScala.get
    val dataMember    = exampleStruct.members().asScala.toSet.head

    val documentType = ShapeId.from("smithy.api#Document")
    expect(dataMember.getTarget == documentType)
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
    val result        = SmithyConverter(metaModel)
    val exampleStruct = result.unwrap().expectShape(ShapeId.from("lsp#LiteralWrapper")).asStructureShape().asScala.get
    val strShape      = ShapeId.from("smithy.api#String")
    val booleanShape  = ShapeId.from("smithy.api#Boolean")

    expect(exampleStruct.getMember("str").get.getTarget == strShape) && expect(
      exampleStruct.getMember("bool").get.getTarget == booleanShape
    )
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
    val result = SmithyConverter(metaModel)
    val error  = result.getValidationEvents().asScala.find(_.getSeverity == Severity.ERROR)
    expect(error == None)
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
                    Property(PropertyName("a"), `type` = Type.BaseType(BaseTypes.integer))
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
    val result = SmithyConverter(metaModel)
    val error  = result.getValidationEvents().asScala.find(_.getSeverity == Severity.ERROR)
    expect(error == None)
  }

  pureTest("ArrayType and MapType compile correctly") {
    val metaModel = MetaModel(
      structures = Vector(
        Structure(
          name = StructureName("Complex"),
          properties = Vector(
            Property(PropertyName("listOfStrings"), `type` = Type.ArrayType(Type.BaseType(BaseTypes.string))),
            Property(
              PropertyName("mapOfInts"),
              `type` = Type.MapType(Type.BaseType(BaseTypes.string), Type.BaseType(BaseTypes.integer)),
            ),
          ),
        )
      ),
      typeAliases = Vector.empty,
      enumerations = Vector.empty,
      requests = Vector.empty,
      notifications = Vector.empty,
    )
    val result = SmithyConverter(metaModel)
    val error  = result.getValidationEvents().asScala.find(_.getSeverity == Severity.ERROR)
    expect(error == None)
  }
}
