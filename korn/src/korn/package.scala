package object korn {
  type Store = Map[String, Pure]
  // type Heap = Map[Pure, Chunk]

  object Store {
    def apply(keys: List[String], values: List[Pure]) = {
      Map(keys zip values: _*)
    }
  }

  val known = Set(
    "main",
    "__VERIFIER_nondet_int",
    "__VERIFIER_assume",
    "__VERIFIER_error"
  )

  object stdlib {
    object assume extends FunCall.unary("assume")
    object assert extends FunCall.unary("assert")
    object malloc extends FunCall.unary("malloc")
  }

  object __VERIFIER {
    object error extends FunCall.nullary("__VERIFIER_error")
    object nondet_int extends FunCall.nullary("__VERIFIER_nondet_int")
    object assume extends FunCall.unary("__VERIFIER_assume")
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

  def sexpr(arg0: Any, args: Any*) = {
    if (args.isEmpty)
      "(" + arg0 + ")"
    else
      "(" + arg0 + " " + args.mkString(" ") + ")"
  }

  def sexpr(args: Iterable[Any]) = {
    args mkString ("(", " ", ")")
  }
}
