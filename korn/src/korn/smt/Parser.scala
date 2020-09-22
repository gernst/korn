package korn.smt

import arse._
import arse.implicits._
import java.io.File

class Parseable[+A](p: Parser[A]) {
  def from(text: String): A = {
    import Parser.whitespace
    p.parseAll(text)
  }
}

object Parser {
  var funs: Map[String, Fun] = Map()
  var preds: Map[String, Pred] = Map()

  implicit val whitespace: Whitespace = {
    new Whitespace("(\\s|(\\s*;.*(\\n|$)))*")
  }

  def parens[A](p: Parser[A]) = {
    "(" ~ p ~ ")"
  }

  // https://github.com/smtlib/jSMTLIB
  // SMT/src/org/smtlib/spure/Lexer.java
  val simple = S("[a-zA-Z_~!@$%^&*+=<>.?/\\-][0-9a-zA-Z_~!@$%^&*+=<>.?/\\-]*")
  val quoted = S("\\|[0-9a-zA-Z_~!@$%^&*+=<>.?/\"'(),:;{}#`\\[\\] \t\r\n\\-]*\\|") map { str =>
    str.substring(1, str.length - 1)
  }

  val name = simple | quoted
  val kw = S(":[0-9a-zA-Z_~!@$%^&*+=<>.?/\\-]+")
  val op = L("-") | L("+") | L("<=") | L("<") | L(">=") | L(">")

  val typ: Parser[Sort] = P(sort | parens(array_))
  val types = typ.*

  val sort = P(Sort.base(name))
  val array_ = P(Sort.array("Array" ~ typ ~ typ))

  val fun = name collect {
    case name if funs contains name =>
      funs(name)
  }

  val pred = name collect {
    case name if preds contains name =>
      preds(name)
  }

  val pure: Parser[Pure] = P(const | id | num | parens(ite_ | let_ | select_ | store_ | app_))
  val prop: Parser[Prop] = P(t | f | parens(not_ | and_ | or_ | imp_ | eqv_ | papp_))

  val id = P(Var(name | op))
  val pair = P(parens(id ~ pure))
  val const = P(Pure.app(fun ~ ret(Nil)))

  val num = P(Pure.const(bigint))
  val ite_ = P(Pure.ite("ite" ~ prop ~ pure ~ pure))
  val let_ = P(Pure.let("let" ~ parens(pair.+) ~ pure))
  val select_ = P(Pure.select("select" ~ pure ~ pure))
  val store_ = P(Pure.store("store" ~ pure ~ pure ~ pure))
  val app_ = P(Pure.app(fun ~ pure.+))

  val t = P(True("true"))
  val f = P(True("false"))
  val not_ = P(Prop.not("not" ~ prop))
  val and_ = P(Prop.ands("and" ~ prop.*))
  val or_ = P(Prop.ors("or" ~ prop.*))
  val imp_ = P(Prop.imp("=>" ~ prop ~ prop))
  val eqv_ = P(Prop.eqv("=" ~ prop ~ prop))
  val papp_ = P(Prop.app(pred ~ pure.+))

  val formal = P(parens(id ~ sort))
  val fundef = P(parens("define-fun" ~ name ~ (parens(formal.+) ~ pure)))
  val fundefs = fundef.*
  val model = P(parens(Model("model" ~ fundefs)))

  val sat = P(Sat("sat"))
  val unsat = P(Unsat("unsat"))
  val unknown = P(Unknown("unknown"))
  val status: Parser[Status] = P(sat | unsat | unknown)

  // val error = P(Error("error" ~ ret("unknown")))
  // val error_ = P(Error("error" ~ string))

  // val pair = P(Pair(parens(id ~ pure)))
  // val pairs = P(pair.*)

  // val attr_ = P(Attr(kw ~ name.?))
  // val note_ = P(Note(pure ~ attr_.+))

  // val as_ = P(As("as" ~ id ~ sort))
  // val old_ = P(Old("old" ~ pure))
  // val distinct_ = P(Distinct("distinct" ~ pure.*))
  // val let_ = P(Let("let" ~ parens(pairs) ~ pure))

  // val cs = P(parens(Case(pat ~ pure)))
  // val match_ = P(Match("match" ~ pure ~ cs.*))

  // val app_ = P(Pure.apps(pure.+))
  // val unapp_ = P(UnApps(id.+))

  // val forall = Forall("forall")
  // val exists = Exists("exists")
  // val quant = P(forall | exists)

  // val formal = P(Formal(parens(id ~ typ)))
  // val formals = P(formal.*)
  // val bind_ = P(Bind(quant ~ parens(formals) ~ pure))

  /* val success = P(Success("success"))
  val unsupported = P(Unsupported("unsupported"))


  // Note: explicit types prevent some complication weirdness about cyclic references
  val ack: Parser[Ack] = P(success | unsupported | error | parens(error_))
  val is_sat: Parser[IsSat] = P(sat | unsat | unknown)
  val res: Parser[Res] = P(ack | is_sat)

  val int_0 = int | ret(0)
  val int_1 = int | ret(1)

  val push_ = P(Push("push" ~ int_1))
  val pop_ = P(Pop("pop" ~ int_1))

  val check_sat_ = P(CheckSat("check-sat"))

  val assert_ = P(Assert("assert" ~ pure))
  val verify_ = P(CounterExample("assert-counterexample" ~ pure ~ prog ~ pure))

  val get_assertions_ = P(GetAssertions("get-assertions"))

  val declare_sort_ = P(DeclareSort("declare-sort" ~ sort ~ int_0))
  val declare_const_ = P(DeclareFun("declare-const" ~ id ~ ret(Nil) ~ typ))
  val declare_fun_ = P(DeclareFun("declare-fun" ~ id ~ parens(types) ~ typ))
  val define_fun_ = P(DefineFun("define-fun" ~ id ~ parens(formals) ~ typ ~ pure))
  val define_fun_rec_ = P(DefineFunRec("define-fun-rec" ~ id ~ parens(formals) ~ typ ~ pure))

  // LL1 sucks
  val locals_ = "local" ~ formals
  val _progs = ret(Nil) ~ ((prog_ ~ ")") :: prog.*)
  val _locals_progs = locals_ ~ ")" ~ prog.+
  val body_ = "(" ~ (_locals_progs | _progs)
  val body = P(Body(body_))
  val proc_ = P(Proc(parens(formals) ~ parens(formals) ~ body.? ~ pre.? ~ post.?))
  val define_proc_ = P(DefineProc("define-proc" ~ id ~ proc_))

  val obj_init = parens("init" ~ proc_)
  val obj_op = parens(id ~ proc_)
  val obj_ = Obj(parens(formals) ~ obj_init ~ obj_op.*)
  val define_class_ = P(DefineClass("define-class" ~ sort ~ obj_))

  val verify_proc_ = P(VerifyProc("verify-proc" ~ id))

  val recipe = Recipe.output("output") | Recipe.precondition("precondition") | Recipe.consumer("consumer") | Recipe.producer("producer")
  val synth = ":synthesize" ~ recipe.*
  val refine_by_fun_ = VerifyRefinement(sort ~ sort ~ Sim.byFun(id ~ synth.?.map(_.getOrElse(Nil))))
  val refine_by_pure_ = parens(sort ~ formals) ~ parens(sort ~ formals) ~ pure map {
    case (((spec, as), (impl, cs)), phi) =>
      VerifyRefinement(spec, impl, Sim.byPure(as, cs, phi))
  }

  val verify_refinement_ = ("verify-refinement" ~ (refine_by_fun_ | refine_by_pure_))

  val sel = P(Sel(parens(id ~ typ)))
  val constr = P(parens(Constr(id ~ sel.*)))
  val datatype_ = P(Datatype("par" ~ parens(sort.+) ~ constr.+))
  val param_datatype_ = P(Datatype(ret(Nil) ~ constr.+))
  val datatype = parens(param_datatype_ | datatype_)
  val arity = P(Arity(parens(sort ~ int)))
  val declare_dts_ = P(DeclareDatatypes("declare-datatypes" ~ parens(arity.*) ~ parens(datatype.*)))

  val dfn_ = P(define_fun_ | define_fun_rec_)
  val dfn = parens(dfn_)

  val assertions_ = P(Assertions(pure.*))
  val assertions: Parser[Assertions] = parens(assertions_)

  val model_ = P(Model("model" ~ dfn.*))
  val model: Parser[Model] = parens(model_)

  val cmds = P(cmd.*)
  val script = P(cmds.$) */
}
