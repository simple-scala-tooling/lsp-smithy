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
    ivy"com.goyeau::mill-git::0.2.7",
    // hardcoding mill version instead of using the dynamically resolved one
    // due to the following bug in 0.12 series: https://github.com/com-lihaoyi/mill/issues/4390
    ivy"com.disneystreaming.smithy4s::smithy4s-mill-codegen-plugin_mill0.12:0.18.37",
  )

}
