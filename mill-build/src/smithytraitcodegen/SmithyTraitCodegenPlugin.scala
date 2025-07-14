package smithytraitcodegen

import mill._
import mill.scalalib._
import os._

object SmithyTraitCodegenPlugin extends mill.define.ExternalModule {
  def millDiscover = mill.define.Discover[this.type]

  trait SmithyTraitCodegenSettings extends ScalaModule {
    def smithySourcesDir: T[PathRef]
    def smithyDependencies: T[Seq[os.Path]] = T(Seq.empty[os.Path])

    def generateSmithy = T.task {
      val args = smithytraitcodegen.Args(
        targetDir = T.dest,
        smithySourcesDir = smithySourcesDir().path,
        dependencies = smithyDependencies(),
      )
      val output = smithytraitcodegen.SmithyTraitCodegenImpl.generate(args)
      output
    }

    def generatedSources = T.task {
      val output = generateSmithy()
      super.generatedSources() ++ Seq(PathRef(output.javaDir))
    }

    override def resources: T[Seq[PathRef]] = T {
      val output = generateSmithy()
      super.resources() ++ Seq(smithySourcesDir(), PathRef(output.metaDir))
    }
  }
}
