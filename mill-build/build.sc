import mill._
import mill.main.BuildInfo.millVersion
import mill.scalalib._

object `package` extends MillBuildRootModule {

  // Depend on `mill-dist` so we can compile against Mill APIs
  def ivyDeps = Agg(
    ivy"software.amazon.smithy:smithy-model:1.56.0",
    ivy"software.amazon.smithy:smithy-build:1.56.0",
    ivy"software.amazon.smithy:smithy-trait-codegen:1.56.0",
    ivy"com.goyeau::mill-scalafix::0.5.0",
    ivy"com.disneystreaming.smithy4s::smithy4s-mill-codegen-plugin::0.18.0-8-0c1ad4d",
  )

}
