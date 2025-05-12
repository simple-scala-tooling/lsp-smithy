package smithytraitcodegen

import mill._
import mill.scalalib._
import os._

object SmithyTraitCodegenPlugin extends mill.define.ExternalModule {
  def millDiscover = mill.define.Discover[this.type]

  trait SmithyTraitCodegenSettings extends ScalaModule {
    def smithySourcesDir: T[PathRef]
    def smithyDependencies: T[Seq[os.Path]] = T(Seq.empty[os.Path])

    def generatedSources = Task {
      val args = smithytraitcodegen.Args(
        targetDir = T.dest,
        smithySourcesDir = smithySourcesDir().path,
        dependencies = smithyDependencies(),
      )
      val output = smithytraitcodegen.SmithyTraitCodegenImpl.generate(args)
      super.generatedSources() ++ Seq(PathRef(output.javaDir))
    }
  }
}
