package object korn {
  import korn.c._
  import korn.smt._

  type Typing = Map[String, Sort]
  type Store = Map[String, Pure]

  object Store {
    def apply(keys: List[String], values: List[Pure]) = {
      Map(keys zip values: _*)
    }
  }

  def now() = {
    import java.text.SimpleDateFormat
    import java.util.Date
    val df = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssXXX")
    df.format(new Date())
  }

  def log() = {
    System.err.println()
  }

  def log(msg: String) = {
    System.err.println(msg)
  }

  def error(msg: => String) = {
    throw new Error(msg)
  }

  def ensure(phi: Boolean, msg: => String) {
    if (!phi) error(msg)
  }

  def avoid(phi: Boolean, msg: => String) {
    if (phi) error(msg)
  }

  def unpack[A](a: Option[A], msg: => String) = {
    a getOrElse error(msg)
  }
}
