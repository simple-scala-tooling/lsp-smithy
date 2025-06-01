package org.scala.abusers.lspsmithy

import langoustine.meta.json.given
import langoustine.meta.MetaModel
import software.amazon.smithy.model.shapes.SmithyIdlModelSerializer
import upickle.default.*

import java.nio.file.Paths
import scala.io.Source
import scala.jdk.CollectionConverters.*

@main
def main() = {
  val stream      = this.getClass.getResourceAsStream("/metaModel.json")
  val jsonStr     = Source.fromInputStream(stream).mkString
  val metaModel   = read[MetaModel](jsonStr)
  val smithyModel = SmithyConverter(metaModel)
  val outputMap   = SmithyIdlModelSerializer.builder().build().serialize(smithyModel.unwrap()).asScala.toMap

  val targetDir = os.Path(sys.env("TARGET_PATH"))
  os.remove.all(targetDir)

  outputMap.get(Paths.get("lsp.smithy")).foreach { content =>
    val outputPath = targetDir / "lsp.smithy"
    os.write.over(outputPath, content, createFolders = true)
  }
}
