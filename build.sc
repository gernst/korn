import mill._
import mill.scalalib._

object korn extends ScalaModule {
    def scalaVersion = "2.13.2"
    def mainClass = Some("korn.Main")
    def unmanagedClasspath = T {
        if (!ammonite.ops.exists(millSourcePath / "lib")) Agg()
        else Agg.from(ammonite.ops.ls(millSourcePath / "lib").map(PathRef(_)))
    }
}