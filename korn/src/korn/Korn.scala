package korn

import scala.collection.mutable

case class Clause(path: List[Prop], head: Prop, reason: String) {
  def free = head.free ++ path.flatMap(_.free)
  override def toString = path.mkString(", ") + " ==> " + head + " # " + reason
}

object Clause {
  def query(path: List[Prop], head: Prop, reason: String) = {
    Clause(!head :: path, False, reason)
  }
}

case class Pred(name: String, types: List[Sort]) {
  def apply(args: List[Pure]) = In(name, args)
  def apply(args: List[Pure], res: Pure) = In(name, args ++ List(res))
}

case class State(path: List[Prop], store: Store) {
  def arbitrary = State(Nil, store)
  def and(that: Prop) = State(that :: path, store)
  // def just(that: Pure) = State(List(that), store)

  def contains(name: String) = store contains name
  def apply(name: String) = store(name)
  def apply(names: List[String]) = names map store
  def +(that: (String, Pure)) = State(path, store + that)
  def ++(that: Iterable[(String, Pure)]) = State(path, store ++ that)
}

case class Scope(names: List[String], types: List[Sort]) {
  def ++(that: Scope) = Scope(this.names ++ that.names, this.types ++ that.types)
  def vars = Vars(names, types)

  def names(some: Set[String]): List[String] = {
    this.names filter some
  }

  def types(some: Set[String]): List[Sort] = {
    for ((name, typ) <- (this.names zip this.types) if some contains name)
      yield typ
  }

  def fresh(some: Set[String]) = {
    for ((name, typ) <- (this.names zip this.types) if some contains name)
      yield (name -> Var.fresh(name, typ))
  }
}

class Unit(stmts: List[Stmt]) {

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
  val pres = mutable.Map[String, Pred]()
  val posts = mutable.Map[String, (Pred, Option[Sort])]()

  var preds = mutable.Set[Pred]()
  val clauses = mutable.Buffer[Clause]()

  /** symbolic value of global variables */
  var store: Store = Map()

  def run() {
    for (stmt <- stmts)
      global(stmt)
  }

  def newPred(name: String, args: List[Sort]): Pred = {
    val res = Pred(name, args)
    preds += res
    res
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
        ???
      // st_ havoc name
      case VarDef(Formal(typ, name), Some(init)) =>
        vars += name -> typ
        ???
      // val _init = eval(init, st = Nil)
      // st_ assign (name, _init)
      case FunDecl(ret, name, types) =>
        declare(name, ret, types)
      case FunDef(ret, name, formals, body) =>
        val types = formals map (_.typ)
        declare(name, ret, types)
        define(name, formals, body)
      case _ =>
        error("unsupported global statement: " + stmt)
    }
  }

  def declare(name: String, ret: Type, args: List[Type]) {
    funs += (name -> (ret, args))

    val pre = "$" + name + "_pre"
    val post = name

    val _args = resolve(args)
    val _ret = resolve(ret)

    if (!known(name)) {
      if (_ret != null) {
        pres += (name -> newPred(pre, _args))
        posts += (name -> (newPred(post, _args ++ List(_ret)), Some(_ret)))
      } else {
        pres += (name -> newPred(pre, _args))
        posts += (name -> (newPred(post, _args), None))
      }
    }
  }

  def define(name: String, params: List[Formal], body: Stmt) {
    val (locals, stmt) = Stmt.norm(body)

    val names1 = params map (_.name)
    val types1 = resolve(params map (_.typ))

    val names2 = locals map (_.name)
    val types2 = resolve(locals map (_.typ))

    val names = names1 ++ names2
    val types = types1 ++ types2

    val sig = Scope(names1, types1)
    val env = Scope(names, types)

    val entry = if (name == "main") {
      State(Nil, Store(names, env.vars))
    } else {
      val pre = pres(name)
      val phi = pre(sig.vars)
      State(List(phi), Store(names, env.vars))
    }

    val exit = State(Nil, Store(names, env.vars map (_.prime)))

    val post = if (name == "main") {
      None
    } else {
      Some(posts(name))
    }

    object define extends Function(name, post, sig, env, entry, exit, stmt)
    define.run()
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
      case PtrType(elem)       => Sort.pointer(resolve(elem))
      case ArrayType(typ, dim) => Sort.array(Sort.int, resolve(typ))
    }
  }

  def index(arg1: Pure, arg2: Pure) = {
    arg1 select arg2
  }

  def bool(prop: Prop): Pure = {
    prop match {
      case _ => prop ? (Num.one, Num.zero)
    }
  }

  def truth(arg: Pure): Prop = {
    arg match {
      case Num(value)                   => if (value == 0) False else True
      case Pure._eq(arg1, arg2)         => Eq(arg1, arg2)
      case Pure.not(arg1)               => !truth(arg1)
      case Pure.and(arg1, arg2)         => truth(arg1) and truth(arg2)
      case Pure.or(arg1, arg2)          => truth(arg1) or truth(arg2)
      case Pure.lt(arg1, arg2)          => Prop.lt(arg1, arg2)
      case Pure.le(arg1, arg2)          => Prop.le(arg1, arg2)
      case Pure.gt(arg1, arg2)          => Prop.gt(arg1, arg2)
      case Pure.ge(arg1, arg2)          => Prop.ge(arg1, arg2)
      case Ite(test, Num.one, Num.zero) => test
      case Ite(test, Num.zero, Num.one) => !test
      case pure: Pure                   => !Eq(pure, Num.zero)
    }
  }

  def preop(op: String, arg: Pure): Pure = {
    op match {
      case "+" => arg
      case "-" => -arg
      case "!" => bool(!truth(arg))
    }
  }

  def binop(op: String, arg1: Pure, arg2: Pure): Pure = {
    op match {
      case "+"  => arg1 + arg2
      case "-"  => arg1 - arg2
      case "*"  => arg1 * arg2
      case "/"  => arg1 / arg2
      case "%"  => arg1 % arg2
      case "==" => bool(Eq(arg1, arg2))
      case "!=" => bool(!Eq(arg1, arg2))
      case "<"  => bool(Prop.lt(arg1, arg2))
      case "<=" => bool(Prop.le(arg1, arg2))
      case ">"  => bool(Prop.gt(arg1, arg2))
      case ">=" => bool(Prop.ge(arg1, arg2))
    }
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

  class Function(
      name: String,
      post: Option[(Pred, Option[Sort])],
      sig: Scope,
      env: Scope,
      entry: State,
      exit: State,
      body: Stmt) {
    val any = entry.arbitrary

    def clause(st: State, phi: Prop, reason: String) {
      clauses += Clause(st.path, phi, reason)
    }

    def goal(st: State, phi: Prop, reason: String) {
      clauses += Clause.query(st.path, phi, reason)
    }

    object $if extends Counter {
      def newLabel = "$" + name + "_if" + next
    }

    object $inv extends Counter {
      def newLabel = "$" + name + "_inv" + next
    }

    object $sum extends Counter {
      def newLabel = "$" + name + "_sum" + next
    }

    def run() {
      val out = local(body, entry)

      for (exit <- out; (cond, ret) <- post) {
        if (ret.nonEmpty)
          result(cond, exit, Num.zero, "post " + name)
        else
          result(cond, exit, "post " + name)
      }
    }

    def here(label: String) = {
      val types0 = env.types
      newPred(label, types0)
    }

    def here(label: String, dup: Set[String]) = {
      val types0 = env.types
      val types1 = env types dup
      newPred(label, types0 ++ types1)
    }

    def eval(pred: Pred, st: State) = {
      val names0 = env.names
      pred(st(names0))
    }

    def eval(pred: Pred, st0: State, st1: State, dup: Set[String]) = {
      val names0 = env.names
      val names1 = env names dup
      pred(st0(names0) ++ st1(names1))
    }

    def now(pred: Pred, st: State, reason: String) {
      val cond = eval(pred, st)
      clause(st, cond, reason)
    }

    def now(pred: Pred, st: State, dup: Set[String], reason: String) {
      val cond = eval(pred, st, st, dup)
      clause(st, cond, reason)
    }

    def result(pred: Pred, st: State, reason: String) {
      val cond = pred(st(sig.names))
      clause(st, cond, reason)
    }

    def result(pred: Pred, st: State, res: Pure, reason: String) {
      val cond = pred(st(sig.names), res)
      clause(st, cond, reason)
    }

    def from(pred: Pred) = {
      val st = any
      val cond = eval(pred, st)
      st and cond
    }

    def from(pred: Pred, st0: State, dup: Set[String]) = {
      val st = any
      val cond = eval(pred, st0, st, dup)
      st and cond
    }

    def generalize(pred: Pred, st: State, reason: String) = {
      now(pred, st, reason)
      from(pred)
    }

    def join(
        st1: Option[State],
        reason1: String,
        st2: Option[State],
        reason2: String): Option[State] = {
      (st1, st2) match {
        case (None, None) =>
          None
        case (Some(st1), None) =>
          Some(st1)
        case (None, Some(st2)) =>
          Some(st2)
        case (Some(st1), Some(st2)) =>
          val pred = here($if.newLabel)
          now(pred, st1, reason1)
          now(pred, st2, reason2)
          val st = from(pred)
          Some(st)
      }
    }

    def local(stmts: List[Stmt], st0: Option[State]): Option[State] = {
      st0 match {
        case None      => local(stmts)
        case Some(st0) => local(stmts, st0)
      }
    }

    def local(stmt: Stmt, st0: Option[State]): Option[State] = {
      st0 match {
        case None      => local(stmt)
        case Some(st0) => local(stmt, st0)
      }
    }

    def local(stmts: List[Stmt]): Option[State] = {
      stmts match {
        case Nil =>
          None
        case first :: rest =>
          val st1 = local(first)
          val st2 = local(rest, st1)
          st2
      }
    }

    def local(stmts: List[Stmt], st0: State): Option[State] = {
      stmts match {
        case Nil =>
          Some(st0)
        case first :: rest =>
          if (Main.debug) {
            log("execute " + first)
            log("state   " + st0)
            log()
          }
          val st1 = local(first, st0)
          val st2 = local(rest, st1)
          st2
      }
    }

    def local(stmt: Stmt): Option[State] = {
      stmt match {
        case Group(stmts) =>
          local(stmts)

        case Label(label) =>
          val pred = here(label)
          val st = from(pred)
          Some(st)

        case If(test, left, right) =>
          val st1 = local(left)
          val st2 = local(right)
          join(st1, "if then", st2, "if else")

        case While(test, body) =>
          local(body)

        case _ =>
          None
      }
    }

    def local(stmt: Stmt, st0: State): Option[State] = {
      stmt match {
        case Group(stmts) =>
          local(stmts, st0)

        case Assume(Id(name), expr, typ) =>
          val (_expr, st1) = rval(expr, st0)
          val _typ = resolve(typ)
          val x = Var(name, _typ)
          val eq = Eq(x, _expr)
          val st2 = st1 and eq
          Some(st2)

        case Atomic(None) =>
          Some(st0)

        case Atomic(Some(stdlib.assert(phi))) =>
          val (_phi, st1) = rval_test(phi, st0)
          goal(st0, _phi, "assert " + _phi)
          Some(st1)

        case Atomic(Some(stdlib.assume(phi))) =>
          val (_phi, st1) = rval_test(phi, st0)
          val st2 = st1 and _phi
          Some(st2)

        case Atomic(Some(expr)) =>
          val (_, st1) = rval(expr, st0)
          Some(st1)

        case Return(None) =>
          for ((cond, _) <- post) {
            result(cond, st0, "return " + name)
          }
          None

        case Return(Some(res)) =>
          val (_res, st1) = rval(res, st0)
          for ((cond, _) <- post) {
            result(cond, st0, _res, "return " + name)
          }
          None

        case Label(label) =>
          val pred = here(label)
          val st1 = generalize(pred, st0, "label " + label)
          Some(st1)

        case Goto(label) =>
          val pred = here(label)
          now(pred, st0, "goto " + label)
          None // successor states not immediately reachable

        case If(test, left, right) =>
          val (_test, st) = rval_test(test, st0)
          val st1 = local(left, st and _test)
          val st2 = local(right, st and !_test)
          join(st1, "if then", st2, "if else")

        case While(test, body) if !Main.sum =>
          val inv = here($inv.newLabel)

          val st1 = generalize(inv, st0, inv.name + " entry ")
          val (_test, st2) = rval_test(test, st1)

          val st = st2 and _test
          for (st_ <- local(body, st)) {
            now(inv, st_, inv.name + " preserved")
          }

          val st3 = st2 and !_test
          Some(st3)

        case While(test, body) if Main.sum =>
          val mod = Stmt.modifies(body)

          val inv = here($inv.newLabel)
          val sum = here($sum.newLabel, mod)

          now(inv, st0, inv.name + " entry")

          val sti = from(inv)
          val (_test, st1) = rval_test(test, sti)

          val sty = st1 and _test
          val stn = st1 and !_test

          val step = eval(sum, sty, exit, mod)

          for (st_ <- local(body, sty)) {
            now(inv, st_, inv.name + " forwards")

            val hyp = eval(sum, st_, exit, mod)
            clause(st_ and hyp, step, sum.name + " backwards")
          }

          now(sum, stn, mod, sum.name + " exit")

          val re = env fresh mod
          val st2 = st0 ++ re
          val cond = eval(sum, st0, st2, mod)
          val st3 = st2 and cond
          Some(st3)
      }
    }

    def assign(lhs: Expr, rhs: Expr, st0: State): (Pure, Pure, State) = {
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

        // XXX: hacky way to support 2-dimensional arrays
        case Index(Index(Id(name), idx1), idx2) if st0 contains name =>
          val _old0 = st0(name)
          val (_rhs, st1) = rval(rhs, st0)
          val (_idx1, st2) = rval(idx1, st1)
          val (_idx2, st3) = rval(idx2, st2)
          val _old1 = _old0 select _idx1
          val _old2 = _old1 select _idx2
          val _new1 = _old1 store (_idx2, _rhs)
          val _new0 = _old0 store (_idx1, _new1)
          (_old2, _rhs, st2 + (name -> _new0))

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
    }

    def rval_test(expr: Expr, st0: State): (Prop, State) = {
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
          (bool(_arg1 or _arg2), st2)

        case BinOp("&&", arg1, arg2) if !Expr.hasEffects(arg2) =>
          val (_arg1, st1) = rval_test(arg1, st0)
          val (_arg2, st2) = rval_test(arg2, st1)
          (bool(_arg1 and _arg2), st2)

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
          var x = Var.fresh("$int", Sort.int)
          (x, st0)

        case __VERIFIER.assume(cond) =>
          val (_cond, st1) = rval_test(cond, st0)
          (null, st1 and _cond)

        case __VERIFIER.error() =>
          clause(st0, False, "error")
          (null, st0)

        case expr @ FunCall(name, args) =>
          val pre = pres(name)
          val (post, sort) = posts(name)
          val (ret, _) = funs(name)

          val (_in, st1) = rvals(args, st0)

          val (_ret, _out) = sort match {
            case Some(sort) =>
              var x = Var.fresh("$result", sort)
              (x, List(x))
            case None =>
              (null, List())
          }

          // XXX: need to return the modifed heap
          val _pre = pre(_in)
          val _call = post(_in ++ _out)

          clause(st1, _pre, name + " precondition")

          (_ret, st1 and _call)

        case _ =>
          error("cannot compute: " + expr)
      }
    }
  }
}
