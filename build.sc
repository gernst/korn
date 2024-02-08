import mill._
import mill.scalalib._

object korn extends ScalaModule {
  def scalaVersion = "2.13.12"
  def mainClass = Some("korn.Main")

  def unmanagedClasspath =
    T {
      if (!os.exists(millSourcePath / "lib")) Agg()
      else Agg.from(os.list(millSourcePath / "lib").map(PathRef(_)))
    }
}
