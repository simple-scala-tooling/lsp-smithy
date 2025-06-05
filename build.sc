import com.goyeau.mill.git.GitVersionedPublishModule
import com.goyeau.mill.scalafix.ScalafixModule
import coursier.core.Repository
import coursier.maven.MavenRepository
import mill._
import mill.define.Sources
import mill.javalib.publish._
import mill.scalalib._
import mill.scalalib.SonatypeCentralPublishModule
import scalalib._
import smithy4s.codegen.mill._
import smithytraitcodegen.SmithyTraitCodegenPlugin

import $meta._

val jsonrpcVersion     = "0.0.8+41-0a28e99d-SNAPSHOT"
val langoustineVersion = "0.0.24"
val smithyVersion      = "1.57.1"

trait CommonJavaModule extends JavaModule {
  override def repositoriesTask: Task[Seq[Repository]] = T.task {
    Seq(
      MavenRepository("https://s01.oss.sonatype.org/content/repositories/snapshots"),
      MavenRepository("https://s01.oss.sonatype.org/content/repositories/releases"),
    ) ++ super.repositoriesTask()
  }

}

trait CommonScalaModule extends ScalaModule with CommonJavaModule with ScalafixModule {

  def scalaVersion = "3.3.6"
}

object lspSmithy extends CommonScalaModule with SmithyTraitCodegenPlugin.SmithyTraitCodegenSettings {
  def smithySourcesDir = T.source(PathRef(moduleDir / "resources"))

  def updateModelFiles = T.task {
    val version = "3.18"
    def baseUrl(file: String) =
      s"https://raw.githubusercontent.com/microsoft/language-server-protocol/gh-pages/_specifications/lsp/$version/metaModel/$file"

    val schemaFile = "metaModel.schema.json"
    val modelFile  = "metaModel.json"

    val downloadDir = resources().head.path
    val schemaPath  = downloadDir / schemaFile
    val modelPath   = downloadDir / modelFile

    T.log.info(s"Downloading $schemaFile")
    os.write(schemaPath, scala.io.Source.fromURL(baseUrl(schemaFile)).mkString, createFolders = true)

    T.log.info(s"Downloading $modelFile")
    os.write(modelPath, scala.io.Source.fromURL(baseUrl(modelFile)).mkString, createFolders = true)

    downloadDir
  }

  override def forkEnv: T[Map[String, String]] = T {
    Map("TARGET_PATH" -> (moduleDir / os.up / "target" / "META-INF" / "smithy").toString)
  }

  def mainClass = Some("org.scala.abusers.lspsmithy.main")

  def ivyDeps: Target[Agg[Dep]] = Agg(
    ivy"tech.neander::langoustine-meta::$langoustineVersion",
    ivy"com.lihaoyi::os-lib:0.11.4",
    ivy"software.amazon.smithy:smithy-model:$smithyVersion",
    ivy"tech.neander:jsonrpclib-smithy:$jsonrpcVersion",
    ivy"com.disneystreaming.alloy:alloy-core:0.3.20",
  )

  def scalacOptions = Seq(
    "-Wunused:all"
  )

  object test extends ScalaTests {
    def ivyDeps = Agg(
      ivy"com.disneystreaming::weaver-cats:0.8.4",
      ivy"software.amazon.smithy:smithy-diff:$smithyVersion",
    )
    def testFramework = "weaver.framework.CatsEffect"
  }
}

object lspSmithyDefinitions extends CommonJavaModule with SonatypeCentralPublishModule with GitVersionedPublishModule {

  def artifactName = "lsp-smithy-definitions"

  def pomSettings = PomSettings(
    description = "Smithy definitions for Language Server Protocol",
    organization = "io.github.simple-scala-tooling",
    url = "https://github.com/simple-scala-tooling/lsp-smithy",
    licenses = Seq(License.`Apache-2.0`),
    versionControl = VersionControl.github("simple-scala-tooling", "lsp-smithy"),
    developers = Seq(
      Developer(
        id = "ghostbuster91",
        name = "Kasper Kondzielski",
        url = "https://github.com/ghostbuster91",
      ),
      Developer(
        id = "kubukoz",
        name = "Jakub Kozłowski",
        url = "https://github.com/kubukoz",
      ),
    ),
  )
  def resources = T {
    Seq(PathRef(moduleDir / os.up / "target"))
  }

  override def ivyDeps = Agg(
    ivy"tech.neander:jsonrpclib-smithy:$jsonrpcVersion",
    ivy"com.disneystreaming.alloy:alloy-core:0.3.20",
  )
}

object exampleClientSmithy extends CommonScalaModule with Smithy4sModule {

  override def smithy4sAllowedNamespaces: T[Option[Set[String]]] = T(Some(Set("lsp")))

  override def moduleDeps: Seq[JavaModule] = Seq(lspSmithyDefinitions)

  def smithy4sInputDirs: Target[Seq[PathRef]] = T.sources {
    super.smithy4sInputDirs() ++ Seq(PathRef(moduleDir / os.up / "target"))
  }
  override def ivyDeps = Agg(
    ivy"com.disneystreaming.smithy4s::smithy4s-core:${smithy4sVersion()}",
    ivy"tech.neander::jsonrpclib-smithy4s:$jsonrpcVersion",
  )
}

object exampleClient extends CommonScalaModule with Smithy4sModule {

  override def moduleDeps: Seq[JavaModule] = Seq(exampleClientSmithy, lspSmithy)

  override def ivyDeps = Agg(
    ivy"tech.neander::jsonrpclib-smithy4s:$jsonrpcVersion",
    ivy"tech.neander::jsonrpclib-fs2:$jsonrpcVersion",
    ivy"co.fs2::fs2-io:3.12.0",
  )

  override def forkEnv: T[Map[String, String]] = T {
    Map("SERVER_JAR" -> dummyServer.assembly().path.toString)
  }

}

object dummyServer extends CommonScalaModule {
  override def ivyDeps = Agg(
    ivy"tech.neander::langoustine-lsp::$langoustineVersion",
    ivy"tech.neander::langoustine-app::$langoustineVersion",
  )

}
