package korn

import scala.collection.mutable

case class Clause(path: List[Pure], head: Pure, reason: String) {
  def free = head.free ++ path.flatMap(_.free)
  override def toString = path.mkString(", ") + " ==> " + head
}

object Clause {
  def query(path: List[Pure], head: Pure, reason: String) = {
    Clause(!head :: path, False, reason)
  }
}

case class State(path: List[Pure], store: Store) {
  def ==>(that: Pure, reason: String) = Clause(path, that, reason)
  def and(that: Pure) = State(that :: path, store)

  def contains(name: String) = store contains name
  def apply(name: String) = store(name)
  def +(that: (String, Pure)) = State(path, store + that)
}

class Korn(stmts: List[Stmt]) {

  /** global data types */
  val typedefs = mutable.Map[String, Type]()
  val structs = mutable.Map[String, Option[List[Field]]]()
  val unions = mutable.Map[String, Option[List[Field]]]()
  val enums = mutable.Map[String, Option[List[String]]]()

  /** global C variables and functions */
  val vars = mutable.Map[String, Type]()
  val funs = mutable.Map[String, (Type, List[Type])]()

  /** numeric constants defined by enums */
  val consts = mutable.Map[String, Pure]()

  /** collected predicates and clauses */
  val preds = mutable.Map[String, (Fun, Fun)]()
  val decls = mutable.Buffer[(Fun, List[Sort])]()
  val clauses = mutable.Buffer[Clause]()

  /** symbolic value of global variables */
  var store: Store = Map()

  def run() {
    for (stmt <- stmts)
      global(stmt)
  }

  def enum(cases: List[String]) = {
    for ((name, index) <- cases.zipWithIndex)
      consts += name -> Num(index)
  }

  def global(stmt: Stmt) {
    stmt match {
      // Declarations
      case StructDecl(name) =>
        structs += name -> None
      case UnionDecl(name) =>
        unions += name -> None
      case EnumDecl(name) =>
        enums += name -> None
      case TypeDef(typ, name) =>
        typedefs += name -> typ
      case StructDef(name, fields) =>
        structs += name -> Some(fields)
      case UnionDef(name, fields) =>
        unions += name -> Some(fields)
      case EnumDef(None, cases) =>
        enum(cases)
      case EnumDef(Some(name), cases) =>
        enum(cases)
        enums += name -> Some(cases)
      // Definitions
      case VarDef(Formal(typ, name), None) =>
        vars += name -> typ
      // st_ havoc name
      case VarDef(Formal(typ, name), Some(init)) =>
        vars += name -> typ
      // val _init = eval(init, st = Nil)
      // st_ assign (name, _init)
      case FunDecl(ret, name, types) =>
        declare(name, ret, types)
      case FunDef(ret, name, formals, body) =>
        val types = formals map (_.typ)
        declare(name, ret, types)
        define(name, ret, formals, body)
      case _ =>
        error("unsupported global statement: " + stmt)
    }
  }

  def declare(name: String, ret: Type, args: List[Type]) {
    funs += (name -> (ret, args))

    val pre = Fun("$" + name + "_pre")
    val fun = Fun("$" + name)
    preds += (name -> (pre, fun))

    val _args = resolve(args)
    val _ret = resolve(ret)

    if (_ret != null) {
      decls += ((pre, _args))
      decls += ((fun, _args))
    } else {
      decls += ((pre, _args))
      decls += ((fun, _args ++ List(_ret)))
    }
  }

  def define(name: String, ret: Type, params: List[Formal], body: Stmt) {
    val (pre, fun) = preds(name)
    val (locals, stmt) = Stmt.norm(body)
  }

  def resolve(types: List[Type]): List[Sort] = {
    types map resolve
  }

  def resolve(typ: Type): Sort = {
    typ match {
      case Type._void          => null
      case Type._Bool          => Sort.int
      case _: Signed           => Sort.int
      case _: Unsigned         => Sort.int
      case ArrayType(typ, dim) => Sort.array(Sort.int, resolve(typ))
    }
  }

  def index(arg1: Pure, arg2: Pure) = {
    arg1 select arg2
  }

  def assign(lhs: Expr, rhs: Expr, st0: State): (Pure, Pure, State) =
    lhs match {
      case Id(name) if st0 contains name =>
        val _old = st0(name)
        val (_rhs, st1) = rval(rhs, st0)
        (_old, _rhs, st1 + (name -> _rhs))

      case Index(Id(name), idx) if st0 contains name =>
        val _old = st0(name)
        val (_rhs, st1) = rval(rhs, st0)
        val (_idx, st2) = rval(idx, st1)
        val _new = _old store (_idx, _rhs)
        (_old select _idx, _rhs, st2 + (name -> _new))

      /* case PreOp("*", ptr) =>
        for (
          (_rhs, st1) <- rval(rhs, st0);
          (_ptr, st2) <- rval(ptr, st1)
        )
          yield {
            // val (_sec, _old, st3) = st2 store (_ptr, _rhs)
            // (_old, _rhs, st3)
            ???
          }

      case Arrow(ptr, field) =>
        for (
          (_rhs, st1) <- rval(rhs, st0);
          (_ptr, st2) <- rval(ptr, st1)
        )
          yield {
            // val _ptr_field = ctx arrow (_ptr, field)
            // val (_sec, _old, st3) = st2 store (_ptr_field, _rhs)
            // (_old, _rhs, st3)
            ???
          } */
    }

  def preop(op: String, arg: Pure): Pure = {
    op match {
      case "+" => arg
      case "-" => -arg
      case "!" => !arg
    }
  }

  def binop(op: String, arg1: Pure, arg2: Pure): Pure = {
    op match {
      case "+"  => arg1 + arg2
      case "-"  => arg1 - arg2
      case "==" => arg1 === arg2
      case "!=" => arg1 !== arg2
      case "*"  => arg1 * arg2
      case "/"  => arg1 / arg2
      case "%"  => arg1 % arg2
      case "<"  => arg1 < arg2
      case "<=" => arg1 <= arg2
      case ">"  => arg1 > arg2
      case ">=" => arg1 >= arg2
    }
  }

  def truth(arg: Pure): Pure = {
    arg !== Num(0)
  }

  def eval_test(expr: Expr, st: State) = {
    truth(eval(expr, st))
  }

  def eval(expr: Expr, st: State): Pure = {
    expr match {
      case Id(name) if st contains name =>
        st(name)

      case Id(name) if consts contains name =>
        consts(name)

      case Lit(value: Int) =>
        Num(value)

      case PreOp("&", PreOp("*", ptr)) =>
        eval(ptr, st)

      /* case Dot(base, field) =>
        val _base = eval(base, st)
        st dot (_base, field)

      case PreOp("&", Arrow(ptr, field)) =>
        val _ptr = eval(ptr, st)
        st arrow (_ptr, field) */

      case Index(base, index) =>
        val _base = eval(base, st)
        val _index = eval(index, st)
        _base select _index

      case PreOp("&", Index(base, index)) =>
        val expr = BinOp("+", base, index)
        eval(expr, st)

      case PreOp(op, arg) =>
        val _arg = eval(arg, st)
        preop(op, _arg)

      case BinOp(op, arg1, arg2) =>
        val _arg1 = eval(arg1, st)
        val _arg2 = eval(arg2, st)
        binop(op, _arg1, _arg2)

      case Question(test, left, right) =>
        val _test = eval_test(test, st)
        val _left = eval(left, st)
        val _right = eval(right, st)
        _test ? (_left, _right)

      case _ =>
        error("cannot evaluate: " + expr)
    }
  }

  def rval_test(expr: Expr, st0: State): (Pure, State) = {
    val (_res, st1) = rval(expr, st0)
    (truth(_res), st1)
  }

  def rvals(exprs: List[Expr], st0: State): (List[Pure], State) = {
    exprs match {
      case Nil =>
        (Nil, st0)

      case expr :: rest => // XXX: right-to-left, should be parallel
        val (xs, st1) = rvals(rest, st0)
        val (x, st2) = rval(expr, st1)
        (x :: xs, st2)
    }
  }

  def rval(expr: Expr, st0: State): (Pure, State) = {
    expr match {
      case BinOp(",", fst, snd) =>
        val (_fst, st1) = rval(fst, st0)
        val (_snd, st2) = rval(fst, st1)
        (_snd, st2)

      case Id(name) if st0 contains name =>
        (st0(name), st0)

      case Id(name) if consts contains name =>
        (consts(name), st0)

      case Lit(value: Int) =>
        (Num(value), st0)

      case PreOp("&", id: Id) =>
        error("cannot take address of variable: " + expr)

      case PreOp("&", PreOp("*", ptr)) =>
        rval(ptr, st0)

      case PreOp("&", Index(base, index)) =>
        val expr = BinOp("+", base, index)
        rval(expr, st0)

      case Index(arg1, arg2) =>
        val (_arg1, st1) = rval(arg1, st0)
        val (_arg2, st2) = rval(arg2, st1)
        (index(_arg1, _arg2), st2)

      /* case PreOp("&", Arrow(ptr, field)) =>
        for ((_ptr, st1) = rval(ptr, st0))
          yield {
            val _ptr_field = st1 arrow (_ptr, field)
            (_ptr_field, st1)
          }

      case PreOp("*", ptr) =>
      for ((_ptr, st1) = rval(ptr, st0)) yield {
        val (_sec, _res) = st1 load _ptr
        (_res, st1)
      }

    case Arrow(ptr, field) =>
      for ((_ptr, st1) = rval(ptr, st0)) yield {
        val _ptr_field = ctx arrow (_ptr, field)
        val (_sec, _res) = st1 load _ptr_field
        (_res, st1)
        ???
      } */

      case PreOp("++", arg) =>
        val (_, _rhs, st1) = assign(arg, BinOp("+", arg, Lit(1)), st0)
        (_rhs, st1)
      case PreOp("--", arg) =>
        val (_, _rhs, st1) = assign(arg, BinOp("-", arg, Lit(1)), st0)
        (_rhs, st1)

      case PostOp("++", arg) =>
        val (_val, _, st1) = assign(arg, BinOp("+", arg, Lit(1)), st0)
        (_val, st1)
      case PostOp("--", arg) =>
        val (_val, _, st1) = assign(arg, BinOp("-", arg, Lit(1)), st0)
        (_val, st1)

      case BinOp("=", lhs, rhs) =>
        val (_, _rhs, st1) = assign(lhs, rhs, st0)
        (_rhs, st1)

      // don't fork if the rhs has no side effects
      case BinOp("||", arg1, arg2) if !Expr.hasEffects(arg2) =>
        val (_arg1, st1) = rval_test(arg1, st0)
        val (_arg2, st2) = rval_test(arg2, st1)
        (_arg1 or _arg2, st2)

      case BinOp("&&", arg1, arg2) if !Expr.hasEffects(arg2) =>
        val (_arg1, st1) = rval_test(arg1, st0)
        val (_arg2, st2) = rval_test(arg2, st1)
        (_arg1 and _arg2, st2)

      /*
      // shortcut evaluation yields two states
      case BinOp("||", arg1, arg2) =>
        val _arg1_st = rval_test(arg1, st0)

        val _true =
          val
            (_arg1, st1) = _arg1_st;
            st1_true = st1 and _arg1
          )
            yield (_arg1, st1_true)

        val _false =
          val
            (_arg1, st1) = _arg1_st;
            st1_false = st1 and !_arg1;
            (_arg2, st2) = rval(arg2, st1_false)
          )
            yield (_arg2, st2)

        _true ++ _false

      // shortcut evaluation yields two states
      case BinOp("&&", arg1, arg2) =>
        val _arg1_st = rval_test(arg1, st0)

        val _false =
          val
            (_arg1, st1) = _arg1_st;
            st1_false = st1 and !_arg1
          )
            yield (!_arg1, st1_false)

        val _true =
          val
            (_arg1, st1) = _arg1_st;
            st1_true = st1 and _arg1;
            (_arg2, st2) = rval(arg2, st1_true)
          )
            yield (_arg2, st2)

        _false ++ _true
       */

      case PreOp(op, arg) =>
        val (_arg, st1) = rval(arg, st0)
        (preop(op, _arg), st1)

      case BinOp(op, arg1, arg2) =>
        val (_arg1, st1) = rval(arg1, st0)
        val (_arg2, st2) = rval(arg2, st1)
        (binop(op, _arg1, _arg2), st2)

      /* case Question(test, left, right) =>
        val _test_st = rval_test(test, st0)

        val _true =
          val
            (_test, st1) = _test_st;
            st1_true = st1 and _test;
            (_left, st2) = rval(left, st1_true)
          )
            yield (_left, st2)

        val _false =
          val
            (_test, st1) = _test_st;
            st1_false = st1 and !_test;
            (_right, st2) = rval(right, st1_false)
          )
            yield (_right, st2)

        _true ++ _false */

      case __VERIFIER.nondet_int() =>
        var x = Var.fresh("$int")
        (x, st0)

      case __VERIFIER.assume(cond) =>
        val (_cond, st1) = rval_test(cond, st0)
        (null, st1 and _cond)

      case expr @ FunCall(name, args) =>
        val (pre, fun) = preds(name)
        val (ret, _) = funs(name)

        val (_in, st1) = rvals(args, st0)

        val (_ret, _out) = ret match {
          case Type._void =>
            (null, List())
          case _ =>
            var x = Var.fresh("$result")
            (x, List(x))
        }

        // XXX: need to return the modifed heap
        val _pre = App(pre, _in)
        val _call = App(fun, _in ++ _out)

        val safe = st1 ==> (_pre, name + " precondition")
        clauses += safe

        (_ret, st1 and _call)

      case _ =>
        error("cannot evaluate: " + expr)
    }
  }
}
