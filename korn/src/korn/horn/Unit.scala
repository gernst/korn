package korn.horn

import scala.collection.mutable

import korn.c._
import korn.smt._
import korn.Loc
import korn.horn.is_nondet

class Unit(val file: String, val stmts: List[Stmt]) {

  /** global data types */
  val typedefs = mutable.Map[String, Type]()
  val structs = mutable.Map[String, Option[List[Field]]]()
  val unions = mutable.Map[String, Option[List[Field]]]()
  val enums = mutable.Map[String, Option[List[Const]]]()

  /** global C variables and functions */
  var globals: List[Formal] = Nil
  val vars = mutable.Map[String, Type]()
  val funs = mutable.Map[String, (Type, List[Type])]()
  val fundefs = mutable.Map[String, Stmt]()
  var pointers = false

  /** numeric constants defined by enums */
  val consts = mutable.Map[String, Val]()

  /** collected predicates and clauses */
  val pres = mutable.Map[String, Pre]()
  val posts = mutable.Map[String, Post]()

  var preds = mutable.Set[Pred]()
  val clauses = mutable.Buffer[Clause]()

  var witness = mutable.Map[String, (Proc, Loc, Pred, List[String], String)]()

  /** types of additional logical variables */
  var typing = mutable.Map[String, Sort]()

  /** symbolic state with global variables */
  var state: State = State.empty

  object sig extends Sig(this)
  object eval extends Eval(this)

  def isLinear = {
    val funs = preds map (_.fun)
    clauses forall (_ isLinear funs)
  }

  def clause(st: State, phi: Pure, reason: String) {
    val f = (st.path contains False)
    val t = (st.path contains phi) || (phi == True)

    if (!t && !f)
      clauses += Clause(st.path, phi, reason)
  }

  def goal(st: State, phi: Pure, reason: String) {
    clause(st and !phi, False, reason)
  }

  def enum(cases: List[Const]) = {
    var index = 0

    cases foreach {
      case Const(name, None) =>
        consts += name -> Val(Pure.const(index), Signed._int)
        index += 1

      case Const(name, Some(next)) =>
        index = next
        consts += name -> Val(Pure.const(index), Signed._int)
        index += 1
    }
  }

  def run() {
    run(stmts, static)
    run(stmts, signature)
    run(stmts, dynamic)
  }

  def run(stmts: List[Stmt], action: Stmt => Any) {
    stmts foreach action
  }

  // Collect global declarations but defer functions to a later stage
  def static(stmt: Stmt) {
    import sig._
    import eval._

    stmt match {
      case Group(stmts) =>
        // use case: groups of variable declarations
        run(stmts, static)
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
      case VarDef(formal @ Formal(typ, name), _) =>
        globals ++= List(formal)
        vars += name -> typ
      case _: FunDecl | _: FunDef =>
      // declare functions later when global variables are known
      case _ =>
        korn.error("unsupported global statement: " + stmt)
    }
  }

  // Collect function signatures, including global variables
  def signature(stmt: Stmt) {
    import sig._
    import eval._

    stmt match {
      case Group(stmts) =>
        // use case: groups of function declarations (possible?)
        run(stmts, signature)
      case FunDecl(ret, name, types) =>
        declare(name, ret, types)
      case FunDef(ret, "reach_error", formals, body) =>
      // built-in
      case FunDef(ret, name, formals, body) =>
        val types = formals map (_.typ)
        declare(name, ret, types)
      case _ =>
      // nothing to do
    }
  }

  // Set up initial state for main, and define all functions
  def dynamic(stmt: Stmt) {
    import sig._
    import eval._

    stmt match {
      case Group(stmts) =>
        // use case: groups of variable declarations
        run(stmts, dynamic)

      // global variables are implicitly zeroed
      case VarDef(formal @ Formal(typ, name), None) =>
        var x = zero(typ)
        state += name -> x

      case VarDef(formal @ Formal(typ, name), Some(init)) =>
        var x = zero(typ)
        state += name -> x
        val y = value(init, state)
        state += name -> y

      case FunDef(ret, "reach_error", formals, body) =>
      // built-in

      case stmt @ FunDef(ret, name, formals, body) =>
        val loc = korn.unpack(stmt.loc, "no location for while loop")
        define(loc, name, formals, ret, body)

      case FunDecl(ret, name, types) if is_nondet(name) =>
        define_nondet(name, ret)

      case _ =>
      // nothing to do
    }
  }

  def define_nondet(name: String, typ: Type) {
    import sig._

    val (x, _, v) = nondet("arg", typ)
    val sort = resolve(typ)
    val call = "$" + name
    val fun = Fun(call, List(sort), Sort.bool)
    val pred = CEX(fun)
    preds += pred
    val c = pred(x)

    clauses += Clause(Nil, c, "nondet functions are unconstrained")
  }

  def define(loc: Loc, name: String, params: List[Formal], ret: Type, body: Stmt) {
    import sig._
    fundefs += (name -> body)

    val (locals, stmt) = Stmt.norm(body)

    val contract = Contract(name)
    val config = Config(korn.Main.config)
    object proc extends Proc(this, loc, name, params, ret, locals, stmt, contract, config)

    proc.run()
  }
}
