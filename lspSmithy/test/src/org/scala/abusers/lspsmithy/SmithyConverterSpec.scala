package org.scala.abusers.lspsmithy

import langoustine.meta.json.given
import langoustine.meta.MetaModel
import software.amazon.smithy.model.validation.Severity
import upickle.default.*
import weaver.SimpleIOSuite

import scala.io.Source
import scala.jdk.CollectionConverters.*;

object SmithyConverterSpec extends SimpleIOSuite:

  pureTest("Should produce valid smithy model") {
    val stream    = this.getClass.getResourceAsStream("/metaModel.json")
    val jsonStr   = Source.fromInputStream(stream).mkString
    val metaModel = read[MetaModel](jsonStr)
    val result    = SmithyConverter.apply(metaModel)
    val error = result.getValidationEvents().asScala.toList.filter(ve => ve.getSeverity == Severity.ERROR).headOption

    expect(error == None)
  }
