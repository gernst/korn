package korn


sealed trait Stmt

object Stmt {
  def modifies(expr: Expr): Set[String] =
    expr match {
      case _: Id                                 => Set()
      case _: Lit                                => Set()
      case PreOp("++", Id(name))                 => Set(name)
      case PreOp("--", Id(name))                 => Set(name)
      case PostOp("++", Id(name))                => Set(name)
      case PostOp("--", Id(name))                => Set(name)
      case BinOp("=", Id(name), arg)             => Set(name) ++ modifies(arg)
      case BinOp("=", Index(Id(name), idx), arg) => Set(name) ++ modifies(idx) ++ modifies(arg)
      case PreOp(op, arg)                        => modifies(arg)
      case PostOp(op, arg)                       => modifies(arg)
      case BinOp(op, arg1, arg2)                 => modifies(arg1) ++ modifies(arg2)
      case Index(arg1, arg2)                     => modifies(arg1) ++ modifies(arg2)
      case Question(test, left, right)           => modifies(test) ++ modifies(left) ++ modifies(right)
      case Cast(typ, expr)                       => modifies(expr)
      case SizeOfExpr(expr)                      => Set() // compile time
      case SizeOfType(typ)                       => Set()
      case Arrow(expr, field)                    => modifies(expr)
      case Dot(expr, field)                      => modifies(expr)
      case FunCall(name, args)                   => Set() ++ (args flatMap modifies)
      case Init(values)                          => Set() ++ (values flatMap { case (_, expr) => modifies(expr) })
    }

  def modifies(stmt: Stmt): Set[String] =
    stmt match {
      case Block(stmts)          => ???
      case Group(stmts)          => Set(stmts flatMap modifies: _*)
      case Atomic(Some(expr))    => modifies(expr)
      case Return(Some(expr))    => modifies(expr)
      case If(test, left, right) => modifies(test) ++ modifies(left) ++ modifies(right)
      case While(test, body)     => modifies(test) ++ modifies(body)
      case DoWhile(body, test)   => modifies(test) ++ modifies(body)
      // case For(init, test, inc, body) =>
      //   modifies(init) ++ modifies(test) ++ modifies(inc) ++ modifies(body)
      case _ => Set()
    }

  def norm(stmt: Stmt): (List[Formal], Stmt) = {
    val (formals, stmt_, _) = norm(stmt, Map())
    (formals, stmt_)
  }

  def norm(
      stmts: List[Stmt],
      re0: Map[String, String]): (List[Formal], List[Stmt], Map[String, String]) =
    stmts match {
      case Nil =>
        (Nil, Nil, re0)

      case first :: rest =>
        val (formals1, first_, re1) = norm(first, re0)
        val (formals2, rest_, re2) = norm(rest, re1)
        (formals1 ++ formals2, first_ :: rest_, re2)
    }

  def norm(stmt: Stmt, re0: Map[String, String]): (List[Formal], Stmt, Map[String, String]) =
    stmt match {
      case Group(stmts) =>
        val (formals, stmts_, re1) = norm(stmts, re0)
        (formals, Group(stmts_), re1)

      case Block(stmts) =>
        val (formals, stmts_, re1) = norm(stmts, re0)
        (formals, Group(stmts_), re0) // NOTE: extended renaming in the block should not propagate

      case Atomic(None) =>
        (Nil, stmt, re0)

      case Atomic(Some(expr)) =>
        (Nil, Atomic(Some(expr rename re0)), re0)

      case Break =>
        (Nil, stmt, re0)

      case Continue =>
        (Nil, stmt, re0)

      case Return(None) =>
        (Nil, stmt, re0)

      case Return(Some(expr)) =>
        (Nil, Return(Some(expr rename re0)), re0)

      case Label(label) =>
        (Nil, stmt, re0)

      case Goto(label) =>
        (Nil, stmt, re0)

      case If(test, left, right) =>
        val test_ = test rename re0
        val (formals1, left_, re1) = norm(left, re0)
        val (formals2, right_, re2) = norm(right, re1)
        (formals1 ++ formals2, If(test_, left_, right_), re2)

      case While(test, body) =>
        val test_ = test rename re0
        val (formals, body_, re1) = norm(body, re0)
        (formals, While(test_, body_), re1)

      case DoWhile(body, test) =>
        val test_ = test rename re0
        val (formals, body_, re1) = norm(body, re0)
        (formals, DoWhile(body_, test_), re1)

      case For(vars, init, test, inc, body) =>
        val init_ = Expr.comma(init)
        val test_ = Expr.comma(test) getOrElse Lit(1)
        val inc_ = Expr.comma(inc)
        val body_ = Block(List(body, Atomic(inc_)))
        val loop_ = While(test_, body_)
        val stmt_ = Block(List(Group(vars), Atomic(init_), loop_))
        norm(stmt_, re0)

      case VarDef(Formal(typ, name), None) =>
        val name_ = Id.fresh(name)
        val formal_ = Formal(typ, name_)
        (List(formal_), Atomic.none, re0 + (name -> name_))

      case VarDef(Formal(typ, name), Some(init)) =>
        val name_ = Id.fresh(name)
        val id_ = Id(name_)
        val formal_ = Formal(typ, name_)
        val init_ = init rename re0
        // (List(formal_), id_ := init_, re0 + (name -> name_))
        (List(formal_), Assume(id_, init_, typ), re0 + (name -> name_))

      case _ =>
        error("cannot normalize: " + stmt)
    }
}

case class Block(stmts: List[Stmt]) extends Stmt {
  def this(stmts: Array[Stmt]) = this(stmts.toList)
}

object Group {
  val empty = Block(Nil)
}

// like block but no scoping
// used for variable declarations
case class Group(stmts: List[Stmt]) extends Stmt {
  def this(stmts: Array[Stmt]) = this(stmts.toList)
}

case class Atomic(expr: Option[Expr]) extends Stmt {
  def this(expr: Expr) = this(Some(expr))
}

object Atomic {
  val none = Atomic(None)
  // def assume(expr: Expr) = Atomic(Some(__VERIFIER.assume(expr)))
}

case class Label(label: String) extends Stmt

case class Case(const: Int) extends Stmt

case class Goto(label: String) extends Stmt

case object Break extends Stmt {
  def self = this
}

case object Continue extends Stmt {
  def self = this
}

case class Assume(id: Id, expr: Expr, typ: Type) extends Stmt

case class Return(expr: Option[Expr]) extends Stmt {
  def this(expr: Expr) = this(Some(expr))
}

object Return {
  val none = Return(None)
}

case class If(test: Expr, left: Stmt, right: Stmt) extends Stmt {
  def this(test: Expr, left: Stmt) = this(test, left, Group.empty)
}

case class While(test: Expr, body: Stmt) extends Stmt

case class DoWhile(body: Stmt, test: Expr) extends Stmt

case class For(vars: List[VarDef], init: List[Expr], test: List[Expr], inc: List[Expr], body: Stmt)
    extends Stmt {

  def this(init: Array[Expr], test: Array[Expr], inc: Array[Expr], body: Stmt) = {
    this(Nil, init.toList, test.toList, inc.toList, body)
  }

  def this(vars: Array[VarDef], test: Array[Expr], inc: Array[Expr], body: Stmt) = {
    this(vars.toList, Nil, test.toList, inc.toList, body)
  }
}

case class TypeDef(typ: Type, name: String) extends Stmt {}

case class StructDef(name: String, fields: List[Field]) extends Stmt {
  def this(name: String, fields: Array[Field]) = this(name, fields.toList)
}

case class UnionDef(name: String, fields: List[Field]) extends Stmt {
  def this(name: String, fields: Array[Field]) = this(name, fields.toList)
}

case class EnumDef(name: Option[String], consts: List[String]) extends Stmt {
  def this(consts: Array[String]) = this(None, consts.toList)
  def this(name: String, consts: Array[String]) = this(Some(name), consts.toList)
}

case class StructDecl(name: String) extends Stmt
case class UnionDecl(name: String) extends Stmt
case class EnumDecl(name: String) extends Stmt

case class Switch(expr: Expr, body: Stmt) extends Stmt {}

case class VarDef(formal: Formal, init: Option[Expr]) extends Stmt {
  def this(formal: Formal) = this(formal, None)
  def this(formal: Formal, init: Expr) = this(formal, Some(init))
}

case class FunDecl(ret: Type, name: String, types: List[Type]) extends Stmt {
  def this(ret: Type, name: String) = {
    this(ret, name, Nil)
  }

  def this(ret: Type, name: String, params: Array[Type]) = {
    this(ret, name, params.toList)
  }
}

case class FunDef(ret: Type, name: String, formals: List[Formal], body: Stmt) extends Stmt {
  def this(ret: Type, name: String, body: Stmt) = {
    this(ret, name, Nil, body)
  }

  def this(ret: Type, name: String, formals: Array[Formal], body: Stmt) = {
    this(ret, name, formals.toList, body)
  }
}
