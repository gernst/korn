package object korn {
  val False = App(Fun.f)
  val True = App(Fun.t)

  object stdlib {
    object assert extends FunCall.unary("assert")
    object malloc extends FunCall.unary("malloc")
  }

  object __VERIFIER {
    object error extends FunCall.nullary("__VERIFIER_error")
    object nondet_int extends FunCall.nullary("__VERIFIER_nondet_int")
    object assume extends FunCall.unary("__VERIFIER_assume")
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

  def sexpr(arg0: String, args: Any*) = {
    if (args.isEmpty)
      "(" + arg0 + ")"
    else
      "(" + arg0 + " " + args.mkString(" ") + ")"
  }

  def sexpr(args: Iterable[Any]) = {
    args mkString ("(", " ", ")")
  }
}
