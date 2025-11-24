package korn.witness

import korn.smt._

object Witness {
  var escape: Boolean = true
  var quant: Boolean = false

  def c(param: Param): String = {
    param match {
      case Param(x, Sort.int) =>
        "int " + x
      case Param(x, Sort.array(Sort.int, Sort.int)) =>
        "int " + x + "[]"
    }
  }

  def c(params: List[Param]): String = {
    val strs = params map c
    strs mkString ", "
  }

  def c(a: String, b: String) = {
    if (escape) b else a
  }

  def c(pure: Pure, env: Map[String, String], neg: Boolean): String = {
    pure match {
      case True =>
        "1"
      case False =>
        "0"
      case x: Var =>
        val name = x.toString
        korn.ensure(env contains name, "unknown variable " + name + " in " + env.mkString(" "))
        env(name)

      case c: Pure.const =>
        c.toString
      case Pure.times(arg1, arg2) =>
        "(" + c(arg1, env, neg) + " * " + c(arg2, env, neg) + ")"
      case Pure.divBy(arg1, arg2) =>
        "(" + c(arg1, env, neg) + " / " + c(arg2, env, neg) + ")"
      case Pure.mod(arg1, arg2) =>
        "(" + c(arg1, env, neg) + " % " + c(arg2, env, neg) + ")"

      case Pure.uminus(arg) =>
        "- " + c(arg, env, neg)
      case Pure.plus(arg1, arg2) =>
        "(" + c(arg1, env, neg) + " + " + c(arg2, env, neg) + ")"
      case Pure.minus(arg1, arg2) =>
        "(" + c(arg1, env, neg) + " - " + c(arg2, env, neg) + ")"

      case Pure.lt(arg1, arg2) =>
        "(" + c(arg1, env, neg) + c(" < ", " &lt; ") + c(arg2, env, neg) + ")"
      case Pure.le(arg1, arg2) =>
        "(" + c(arg1, env, neg) + c(" <= ", " &lt;= ") + c(arg2, env, neg) + ")"
      case Pure.gt(arg1, arg2) =>
        "(" + c(arg1, env, neg) + c(" > ", " &gt; ") + c(arg2, env, neg) + ")"
      case Pure.ge(arg1, arg2) =>
        "(" + c(arg1, env, neg) + c(" >= ", " &gt;= ") + c(arg2, env, neg) + ")"

      case Pure.not(arg) =>
        "! " + c(arg, env, !neg)
      case Pure.and(arg1, arg2) =>
        "(" + c(arg1, env, neg) + c(" && ", " &amp;&amp; ") + c(arg2, env, neg) + ")"
      case Pure.or(arg1, arg2) =>
        "(" + c(arg1, env, neg) + " || " + c(arg2, env, neg) + ")"
      case Pure.imp(arg1, arg2) =>
        "(! " + c(arg1, env, neg) + " || " + c(arg2, env, neg) + ")"

      case Pure.eqn(arg1, arg2) =>
        "(" + c(arg1, env, neg) + " == " + c(arg2, env, neg) + ")"
      case Pure.ite(arg1, arg2, arg3) =>
        "( " + c(arg1, env, neg) + " ? " + c(arg2, env, neg) + " : " + c(arg2, env, neg) + ")"

      case Pure.select(x: Var, arg2) =>
        c(x, env, neg) + "[" + c(arg2, env, neg) + "]"

      case Pure.select(arg1, arg2) =>
        "*(" + c(arg1, env, neg) + " + " + c(arg2, env, neg) + ")"
      case Pure.let(eqs, body) =>
        val su = Map(eqs: _*)
        c(body subst su, env, neg)

      case _: Bind if !quant =>
        if (neg) "false" else "true"
      // korn.info("unsupported quantifier in invariant: " + pure)
      case Ex(params, body) =>
        "(exists " + c(params) + ". " + body + ")"
      case All(params, body) =>
        "(forall " + c(params) + ". " + body + ")"

      case _ =>
        korn.error("unsupported in invariant: " + pure)
    }
  }

}
