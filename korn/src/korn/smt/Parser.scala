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

  val pure: Parser[Pure] = P(t | f | const | id | num | parens(open))
  val pures = pure.*

  val open = P(not_ | and_ | or_ | imp_ |ite_ | let_ | select_ | store_ | bind_ | app_)

  val id = P(Var(name | op))
  val pair = P(parens(id ~ pure))
  val const = P(Pure.app(fun ~ ret(Nil)))
  val formal = P(parens(Param(id ~ sort)))
  val formals = formal.*
  val num = P(Pure.const(bigint))
  val ite_ = P(Pure.ite("ite" ~ pure ~ pure ~ pure))
  val let_ = P(Pure.let("let" ~ parens(pair.+) ~ pure))
  val select_ = P(Pure.select("select" ~ pure ~ pure))
  val store_ = P(Pure.store("store" ~ pure ~ pure ~ pure))
  val app_ = P(Pure.app(fun ~ pure.+))

  val t = P(True("true"))
  val f = P(True("false"))
  val eqn = P(Pure.eqn("=" ~ pure ~ pure))
  val not_ = P(Pure.not("not" ~ pure))
  val and_ = P(Pure.ands("and" ~ pures))
  val or_ = P(Pure.ors("or" ~ pures))
  val imp_ = P(Pure.imp("=>" ~ pure ~ pure))
  val forall = All("forall")
  val exists = Ex("exists")
  val quant = P(forall | exists)
  val bind_ = P(Bind(quant ~ parens(formals) ~ pure))

  val def_ = Def(parens(formals) ~ pure)
  val fundef = P(parens("define-fun" ~ name ~ def_))
  val fundefs = fundef.*
  val model = P(parens(Model("model" ~ fundefs)))

  val sat = P(Sat("sat"))
  val unsat = P(Unsat("unsat"))
  val unknown = P(Unknown("unknown"))
  val status: Parser[Status] = P(sat | unsat | unknown)
}
