package korn.c

case class Dims(ptr: Boolean, bounds: List[Expr]) {
  def this(ptr: Boolean, bounds: Array[Expr]) = this(ptr, bounds.toList)
}

object Dims {
  val empty = Dims(false, Nil)
}

case class ParamSpec(typ: Type, name: Option[String], dims: Dims) {
  def this(typ: Type, dims: Dims) = this(typ, None, dims)
  def this(typ: Type, name: String) = this(typ, Some(name), Dims.empty)
  def this(typ: Type, name: String, dims: Dims) = this(typ, Some(name), dims)
}

case class VarSpec(ptrs: Int, name: String, dims: Dims, init: Option[Expr]) {
  def this(ptrs: Int, name: String, dims: Dims) = this(ptrs, name, dims, None)
  def this(ptrs: Int, name: String, dims: Dims, init: Expr) = this(ptrs, name, dims, Some(init))
}

case class FieldSpec(ptrs: Int, name: String, dims: Dims) {
  def this(ptrs: Int, name: String) = this(ptrs, name, Dims.empty)
}

trait MemberSpecs
case class FieldsSpec(typ: Type, fields: Array[FieldSpec]) extends MemberSpecs
case class FlatUnionSpec(fields: Array[MemberSpecs]) extends MemberSpecs

object Parsing {
  def unescape0(xs: List[Char]): List[Char] = {
    xs match {
      case '\"' :: Nil       => Nil
      case '\\' :: x :: rest => x :: unescape0(rest)
      case x :: rest         => x :: unescape0(rest)
      case _                 => korn.error("nonterminated string: " + xs)
    }
  }

  def unescape(xs: List[Char]): List[Char] = {
    xs match {
      case '\"' :: rest => unescape0(rest)
      case _            => korn.error("nonterminated string")
    }
  }

  def ch(s: String): Char = {
    s.toList match {
      case List('\'', '\\', x, '\'') => x
      case List('\'', x, '\'')       => x
      case _                         => korn.error("invalid character: " + s)
    }
  }

  def str(s: String): String = {
    val xs = unescape(s.toList)
    xs.mkString
  }

  def wrap(typ: Type, n: Int): Type = {
    if (n <= 0) typ
    else wrap(PtrType(typ), n - 1)
  }

  def params(specs: Array[ParamSpec]) =
    specs match {
      case Array(ParamSpec(Type._void, None, Dims.empty)) =>
        Array[Type]()
      case _ =>
        for (spec <- specs)
          yield {
            val ParamSpec(typ, _, dims) = spec
            typ withDims dims
          }
    }

  def formals(specs: Array[ParamSpec]) =
    specs match {
      case Array(ParamSpec(Type._void, None, Dims.empty)) =>
        Array[Formal]()
      case _ =>
        for (spec <- specs)
          yield {
            val ParamSpec(typ, Some(name), dims) = spec
            Formal(typ withDims dims, name)
          }
    }

  def flatten(group: MemberSpecs): Array[Field] = {
    group match {
      case f: FieldsSpec    => fields(f)
      case u: FlatUnionSpec => flatunion(u)
    }
  }

  def members(groups: Array[MemberSpecs]) = {
    for (
      group <- groups;
      field <- flatten(group)
    )
      yield field
  }

  def fields(group: FieldsSpec) = {
    for (field <- group.fields)
      yield {
        val FieldSpec(ptrs, name, dims) = field
        Field(wrap(group.typ withDims dims, ptrs), name)
      }
  }

  def flatunion(group: FlatUnionSpec) = {
    for (
      stuff <- group.fields;
      field <- flatten(stuff)
    ) yield field
  }

  def vars(typ: Type, group: Array[VarSpec]) = {
    for (vars <- group)
      yield {
        val VarSpec(ptrs, name, dims, init) = vars
        VarDef(Formal(wrap(typ withDims dims, ptrs), name), init)
      }
  }
}

sealed trait Stmt {
  var loc: Option[korn.Loc] =  None

  def here(line: Int, column: Int) = {
    loc = Some(korn.Loc(line, column))
    this
  }
}

object Stmt {
  def modifies(expr: Expr): Set[String] = {
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
  }

  def modifies(stmt: Stmt): Set[String] = {
    stmt match {
      case Block(stmts)          => ???
      case Group(stmts)          => Set(stmts flatMap modifies: _*)
      case Atomic(Some(expr))    => modifies(expr)
      case Return(Some(expr))    => modifies(expr)
      case If(test, left, right) => modifies(test) ++ modifies(left) ++ modifies(right)
      case While(test, body)     => modifies(test) ++ modifies(body)
      case _                     => Set()
    }
  }

  def uses(expr: Expr): Set[String] = {
    expr match {
      case Id(name)                    => Set(name)
      case _: Lit                      => Set()
      case PreOp(_, arg)               => uses(arg)
      case PostOp(_, arg)              => uses(arg)
      case BinOp(_, arg1, arg2)        => uses(arg1) ++ uses(arg2)
      case Index(arg1, arg2)           => uses(arg1) ++ uses(arg2)
      case Question(test, left, right) => uses(test) ++ uses(left) ++ uses(right)
      case Cast(typ, expr)             => uses(expr)
      case SizeOfExpr(expr)            => Set() // compile time
      case SizeOfType(typ)             => Set()
      case Arrow(expr, field)          => uses(expr)
      case Dot(expr, field)            => uses(expr)
      case FunCall(name, args)         => Set() ++ (args flatMap uses)
      case Init(values)                => Set() ++ (values flatMap { case (_, expr) => uses(expr) })
    }
  }

  def uses(stmt: Stmt): Set[String] = {
    stmt match {
      case Block(stmts)                => ???
      case Group(stmts)                => Set(stmts flatMap uses: _*)
      case Atomic(Some(expr))          => uses(expr)
      case Assume(id, Some(init), typ) => uses(init)
      case Return(Some(expr))          => uses(expr)
      case Label(label, stmt)          => Set(label) ++ uses(stmt)
      case If(test, left, right)       => uses(test) ++ uses(left) ++ uses(right)
      case While(test, body)           => uses(test) ++ uses(body)
      case _                           => Set()
    }
  }

  def labels(stmt: Stmt): Set[String] = {
    stmt match {
      case Block(stmts)          => ???
      case Group(stmts)          => Set(stmts flatMap labels: _*)
      case Label(label, stmt)    => Set(label) ++ labels(stmt)
      case If(test, left, right) => labels(left) ++ labels(right)
      case While(test, body)     => labels(body)
      case _                     => Set()
    }
  }

  def norm(stmt: Stmt): (List[Formal], Stmt) = {
    val (formals, stmt_, _) = norm(stmt, Map())
    (formals, stmt_)
  }

  def norm(stmts: List[Stmt], re0: Map[String, String]): (List[Formal], List[Stmt], Map[String, String]) =
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

      case Label(label, stmt) =>
        val (formals, stmt_, re1) = norm(stmt, re0)
        (formals, Label(label, stmt_), re1)

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
        val loop_ = While(test_, body_)
        loop_.loc = stmt.loc
        (formals, loop_, re1)

      case DoWhile(body, test) =>
        val test_ = test rename re0
        val (formals, body_, re1) = norm(body, re0)
        val loop_ = DoWhile(body_, test_)
        loop_.loc = stmt.loc
        (formals, loop_, re1)

      case For(vars, init, test, inc, body) =>
        val init_ = Expr.comma(init)
        val test_ = Expr.comma(test) getOrElse Lit(1)
        val inc_ = Expr.comma(inc)
        val body_ = Block(List(body, Atomic(inc_)))
        val loop_ = While(test_, body_)
        loop_.loc = stmt.loc
        val stmt_ = Block(List(Group(vars), Atomic(init_), loop_))
        norm(stmt_, re0)

      case VarDef(Formal(typ, name), init) if re0 contains name =>
        val name_ = Id.fresh(name)
        val id_ = Id(name_)
        val formal_ = Formal(typ, name_)
        val init_ = init map (_ rename re0)
        (List(formal_), Assume(id_, init_, typ), re0 + (name -> name_))

      case VarDef(formal@Formal(typ, name), init) =>
        val id = Id(name)
        val init_ = init map (_ rename re0)
        (List(formal), Assume(id, init_, typ), re0)

      case _ =>
        korn.error("cannot normalize: " + stmt)
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
  def this(first: Stmt, second: Stmt) = this(List(first, second))
  def this(stmts: Array[Stmt]) = this(stmts.toList)
}

case class Atomic(expr: Option[Expr]) extends Stmt {
  def this(expr: Expr) = this(Some(expr))
}

object Atomic {
  val none = Atomic(None)
  // def assume(expr: Expr) = Atomic(Some(__VERIFIER.assume(expr)))
}

case class Label(label: String, stmt: Stmt) extends Stmt

case class Case(const: Any, stmt: Stmt) extends Stmt

case class Goto(label: String) extends Stmt

case object Break extends Stmt {
  def self = this
}

case object Continue extends Stmt {
  def self = this
}

case class Assume(id: Id, init: Option[Expr], typ: Type) extends Stmt

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

case class For(vars: List[VarDef], init: List[Expr], test: List[Expr], inc: List[Expr], body: Stmt) extends Stmt {

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
