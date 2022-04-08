package korn.smt

// sealed trait Status
// case class Sat(model: Model) extends Status
// case object Unsat extends Status   { def self = this }
// case object Unknown extends Status { def self = this }

case class Def(name: String, args: List[Param], ret: Sort, body: Pure) {
  def this(name: String, body: Pure) =
    this(name, Nil, Sort.bool, body)

  def this(name: String, args: Array[Var], body: Pure) =
    this(name, List(args map { Param(_, null) }: _*), Sort.bool, body)

  def this(name: String, args: Array[Param], ret: Sort, body: Pure) =
    this(name, args.toList, ret, body)

  override def toString = sexpr("define-fun", name, sexpr(args), ret, body)
}

case class Model(defs: List[Def]) {
  def this(defs: Array[Def]) = this(defs.toList)
  override def toString = sexpr("model", defs: _*)
}
