package korn.horn

import scala.collection.mutable

import korn.c._
import korn.smt._
import korn.Loc

class Unit(stmts: List[Stmt]) {

  /** global data types */
  val typedefs = mutable.Map[String, Type]()
  val structs = mutable.Map[String, Option[List[Field]]]()
  val unions = mutable.Map[String, Option[List[Field]]]()
  val enums = mutable.Map[String, Option[List[String]]]()

  /** global C variables and functions */
  var globals: List[Formal] = Nil
  val vars = mutable.Map[String, Type]()
  val funs = mutable.Map[String, (Type, List[Type])]()
  var pointers = false

  /** numeric constants defined by enums */
  val consts = mutable.Map[String, Val]()

  /** collected predicates and clauses */
  val pres = mutable.Map[String, Pre]()
  val posts = mutable.Map[String, Post]()

  var preds = mutable.Set[Pred]()
  val clauses = mutable.Buffer[Clause]()

  var witness = mutable.Map[String, (Proc, Loc, Step, String)]()

  /** types of additional logical variables */
  var typing = mutable.Map[String, Sort]()

  /** symbolic state with global variables */
  var state: State = State.empty

  object sig extends Sig(this)
  object eval extends Eval(this)

  def clause(st: State, phi: Pure, reason: String) {
    val f = (st.path contains False)
    val t = (st.path contains phi) || (phi == True)

    if (!t && !f)
      clauses += Clause(st.path, phi, reason)
  }

  def goal(st: State, phi: Pure, reason: String) {
    clause(st and !phi, False, reason)
  }

  def enum(cases: List[String]) = {
    for ((name, index) <- cases.zipWithIndex)
      consts += name -> Val(Pure.const(index), Signed._int)
  }

  def run() {
    global(stmts)
  }

  def global(stmts: List[Stmt]) {
    for (stmt <- stmts)
      global(stmt)
  }

  def global(stmt: Stmt) {
    import sig._
    import eval._

    stmt match {
      case Group(stmts) =>
        global(stmts)
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
      case VarDef(formal @ Formal(typ, name), None) =>
        globals ++= List(formal)
        vars += name -> typ
        var (_, _, x) = nondet(name, typ)
        state += (name -> x)
      case VarDef(formal @ Formal(typ, name), Some(init)) =>
        globals ++= List(formal)
        vars += name -> typ
        var (_, _, x) = nondet(name, typ)
        state += (name -> x)
        val y = value(init, state)
        state += name -> y
      case FunDecl(ret, name, types) =>
        declare(name, ret, types)
      case FunDef(ret, "reach_error", formals, body) =>
        // ignore this
      case FunDef(ret, name, formals, body) =>
        val types = formals map (_.typ)
        declare(name, ret, types)
        define(name, formals, body)
      case _ =>
        korn.error("unsupported global statement: " + stmt)
    }
  }

  def define(name: String, params: List[Formal], body: Stmt) {
    import sig._

    val (locals, stmt) = Stmt.norm(body)

    val contract = Contract(name)
    val config = Config(korn.Main.config)
    object proc extends Proc(this, name, params, locals, stmt, contract, config)

    proc.run()
  }
}
