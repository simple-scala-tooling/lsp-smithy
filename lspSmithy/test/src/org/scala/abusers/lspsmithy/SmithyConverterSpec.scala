package org.scala.abusers.lspsmithy

import langoustine.meta.json.given
import langoustine.meta.MetaModel
import upickle.default.*
import weaver.SimpleIOSuite

import scala.io.Source

object SmithyConverterSpec extends SimpleIOSuite:

  pureTest("Should produce valid smithy model") {
    val stream    = this.getClass.getResourceAsStream("/metaModel.json")
    val jsonStr   = Source.fromInputStream(stream).mkString
    val metaModel = read[MetaModel](jsonStr)
    val result    = SmithyConverter.apply(metaModel)

    expect(result.isBroken() == false)
  }

