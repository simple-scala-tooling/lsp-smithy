import com.goyeau.mill.scalafix.ScalafixModule
import coursier.core.Repository
import coursier.maven.MavenRepository
import mill._
import mill.define.Sources
import mill.scalalib._
import scalalib._
import smithy4s.codegen.mill._
import smithytraitcodegen.SmithyTraitCodegenPlugin

import $meta._

val jsonrpcVersion     = "0.0.8+41-0a28e99d-SNAPSHOT"
val langoustineVersion = "0.0.24"
val smithyVersion      = "1.57.1"

trait CommonScalaModule extends ScalaModule with ScalafixModule {
  override def repositoriesTask: Task[Seq[Repository]] = T.task {
    Seq(
      MavenRepository("https://s01.oss.sonatype.org/content/repositories/snapshots"),
      MavenRepository("https://s01.oss.sonatype.org/content/repositories/releases"),
    ) ++ super.repositoriesTask()
  }

  def scalaVersion = "3.3.6"
}

object lspSmithy extends CommonScalaModule with SmithyTraitCodegenPlugin.SmithyTraitCodegenSettings {
  def smithySourcesDir = T.source(PathRef(millSourcePath / "resources"))

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
    Map("TARGET_PATH" -> (os.pwd / "target").toString)
  }

  def mainClass = Some("org.scala.abusers.lspsmithy.main")

  def ivyDeps = Agg(
    ivy"tech.neander::langoustine-meta::$langoustineVersion",
    ivy"com.lihaoyi::os-lib:0.11.4",
    ivy"software.amazon.smithy:smithy-model:$smithyVersion",
    ivy"software.amazon.smithy:smithy-diff:$smithyVersion",
    ivy"tech.neander:jsonrpclib-smithy:$jsonrpcVersion",
    ivy"com.disneystreaming.alloy:alloy-core:0.3.20",
  )

  def scalacOptions = Seq(
    "-Wunused:all"
  )

  object test extends ScalaTests {
    def ivyDeps = Agg(
      ivy"com.disneystreaming::weaver-cats:0.8.4"
    )
    def testFramework = "weaver.framework.CatsEffect"
  }
}

object exampleClientSmithy extends CommonScalaModule with Smithy4sModule {

  override def smithy4sAllowedNamespaces: T[Option[Set[String]]] = T(Some(Set("lsp")))

  override def moduleDeps: Seq[JavaModule] = Seq(lspSmithy)

  def smithy4sInputDirs: Target[Seq[PathRef]] = T.sources {
    super.smithy4sInputDirs() ++ Seq(PathRef(millSourcePath / os.up / "target"))
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
