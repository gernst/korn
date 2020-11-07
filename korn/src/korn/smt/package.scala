package korn

package object smt {
  val True = Pure.app(Fun.t, Nil)
  val False = Pure.app(Fun.f, Nil)

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
