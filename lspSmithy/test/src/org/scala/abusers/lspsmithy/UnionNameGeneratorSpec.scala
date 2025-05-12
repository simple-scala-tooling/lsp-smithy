package org.scala.abusers.lspsmithy

import langoustine.meta.*
import weaver.SimpleIOSuite

import SmithyConverter.unionNameFor

object UnionNameGeneratorSpec extends SimpleIOSuite:
  pureTest("unionNameFor returns AOrB for 2 types") {
    val input = Vector(
      Type.ReferenceType(TypeName("Foo")),
      Type.ReferenceType(TypeName("Bar")),
    )
    expect(unionNameFor(input) == "FooOrBar")
  }

  pureTest("unionNameFor returns common PascalCase prefix + Union for ≥3 types") {
    val input = Vector(
      Type.ReferenceType(TypeName("DocumentDiagnosticReport")),
      Type.ReferenceType(TypeName("UnchangedDocumentDiagnosticReport")),
      Type.ReferenceType(TypeName("FullDocumentDiagnosticReport")),
    )
    expect(unionNameFor(input) == "DocumentDiagnosticReportUnion")
  }

  pureTest("unionNameFor returns AnonymousUnion if no shared subsequence") {
    val input = Vector(
      Type.ReferenceType(TypeName("Alpha")),
      Type.ReferenceType(TypeName("Beta")),
      Type.ReferenceType(TypeName("Gamma")),
    )
    expect(unionNameFor(input) == "AnonymousUnion")
  }

  pureTest("unionNameFor skips empty extracted names") {
    val input = Vector(
      Type.StringLiteralType("abc"),
      Type.BooleanLiteralType(false),
      Type.ReferenceType(TypeName("ImportantCase")),
    )
    expect(unionNameFor(input) == "LiteralOrImportantCase")
  }

  pureTest("unionNameFor handles MapType and BaseType correctly") {
    val input = Vector(
      Type.MapType(Type.BaseType(BaseTypes.string), Type.BaseType(BaseTypes.integer)),
      Type.BaseType(BaseTypes.string),
    )
    expect(unionNameFor(input) == "StringUnion")
  }

  pureTest("unionNameFor handles nested ArrayType correctly") {
    val input = Vector(
      Type.ArrayType(Type.ReferenceType(TypeName("Foo"))),
      Type.ReferenceType(TypeName("Bar")),
    )
    expect(unionNameFor(input) == "ListOfFooOrBar")
  }

  pureTest("unionNameFor returns LiteralUnion when only literals present") {
    val input = Vector(
      Type.BooleanLiteralType(true),
      Type.StringLiteralType("ok"),
    )
    expect(unionNameFor(input) == "LiteralUnion")
  }
