package smithytraitcodegen

import os.Path
import software.amazon.smithy.build.FileManifest
import software.amazon.smithy.build.PluginContext
import software.amazon.smithy.model.node.ArrayNode
import software.amazon.smithy.model.node.ObjectNode
import software.amazon.smithy.model.Model
import software.amazon.smithy.traitcodegen.TraitCodegenPlugin
import upickle.default._

import java.io.File

case class Args(targetDir: Path, smithySourcesDir: Path, dependencies: Seq[Path])
case class Output(metaDir: Path, javaDir: Path)

object Output {
  implicit val osPathRW: ReadWriter[os.Path] =
    readwriter[String].bimap[os.Path](_.toString, os.Path(_))
  implicit def rw: upickle.default.ReadWriter[Output] =
    upickle.default.macroRW

}

object SmithyTraitCodegenImpl {
  def generate(args: Args): Output = {
    val outputDir = args.targetDir
    val genDir    = outputDir / "java"
    val metaDir   = outputDir / "meta"
    os.remove.all(outputDir)
    List(outputDir, genDir, genDir / "META-INF", metaDir).foreach(os.makeDir.all(_))

    val manifest = FileManifest.create(genDir.toNIO)

    val assembler = args.dependencies
      .foldLeft(Model.assembler().addImport(args.smithySourcesDir.toNIO))((acc, dep) => acc.addImport(dep.toNIO))

    val model = assembler.assemble().unwrap()

    val context = PluginContext
      .builder()
      .model(model)
      .fileManifest(manifest)
      .settings(
        ObjectNode
          .builder()
          .withMember("package", "lsp")
          .withMember("namespace", "lsp")
          .withMember("header", ArrayNode.builder.build())
          .withMember("excludeTags", ArrayNode.builder.withValue("nocodegen").build())
          .build()
      )
      .build()

    val plugin = new TraitCodegenPlugin()
    plugin.execute(context)

    os.move(genDir / "META-INF", metaDir / "META-INF")
    Output(metaDir = metaDir, javaDir = genDir)
  }
}
