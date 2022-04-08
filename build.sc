import mill._
import mill.scalalib._

object korn extends ScalaModule {
  def scalaVersion = "2.13.7"
  def mainClass = Some("korn.Main")

  def ivyDeps = Agg(ivy"com.lihaoyi::sourcecode:0.2.7")

  def unmanagedClasspath =
    T {
      if (!os.exists(millSourcePath / "lib")) Agg()
      else Agg.from(os.list(millSourcePath / "lib").map(PathRef(_)))
    }
}
