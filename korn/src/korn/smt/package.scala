package korn

package object smt {
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
