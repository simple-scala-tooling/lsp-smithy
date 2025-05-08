package org.scala.abusers.lspsmithy

import langoustine.meta.json.given
import langoustine.meta.MetaModel
import upickle.default.*

import scala.io.Source

@main
def main() =
  val stream    = this.getClass.getResourceAsStream("/metaModel.json")
  val jsonStr   = Source.fromInputStream(stream).mkString
  val metaModel = read[MetaModel](jsonStr)
  val outputMap = SmithySerializer.render(metaModel)
  val targetDir = os.Path("/home/kghost/workspace/sst/lsp-smithy/target")

  os.remove.all(targetDir)

  for (path, content) <- outputMap do
    val outputPath = targetDir / path.toString
    os.write.over(outputPath, content, createFolders = true)
