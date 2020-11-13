package korn

import korn.smt._
import korn.horn._

sealed trait Witness

object Witness {
  def c(pure: Pure, env: Map[String, String]): String = {
    pure match {
      case x: Var =>
        env(x.toString)
      case c: Pure.const =>
        c.toString
      case Pure.times(arg1, arg2) =>
        "(" + c(arg1, env) + " * " + c(arg2, env) + ")"
      case Pure.divBy(arg1, arg2) =>
        "(" + c(arg1, env) + " / " + c(arg2, env) + ")"
      case Pure.mod(arg1, arg2) =>
        "(" + c(arg1, env) + " % " + c(arg2, env) + ")"

      case Pure.uminus(arg) =>
        "- " + c(arg, env)
      case Pure.plus(arg1, arg2) =>
        "(" + c(arg1, env) + " + " + c(arg2, env) + ")"
      case Pure.minus(arg1, arg2) =>
        "(" + c(arg1, env) + " - " + c(arg2, env) + ")"

      case Pure.lt(arg1, arg2) =>
        "(" + c(arg1, env) + " < " + c(arg2, env) + ")"
      case Pure.le(arg1, arg2) =>
        "(" + c(arg1, env) + " <= " + c(arg2, env) + ")"
      case Pure.gt(arg1, arg2) =>
        "(" + c(arg1, env) + " > " + c(arg2, env) + ")"
      case Pure.ge(arg1, arg2) =>
        "(" + c(arg1, env) + " >= " + c(arg2, env) + ")"

      case Pure.not(arg) =>
        "! " + c(arg, env)
      case Pure.and(arg1, arg2) =>
        "(" + c(arg1, env) + " && " + c(arg2, env) + ")"
      case Pure.or(arg1, arg2) =>
        "(" + c(arg1, env) + " || " + c(arg2, env) + ")"
      case Pure.imp(arg1, arg2) =>
        "(! " + c(arg1, env) + " || " + c(arg2, env) + ")"

      case Pure.eqn(arg1, arg2) =>
        "(" + c(arg1, env) + " == " + c(arg2, env) + ")"
      case Pure.ite(arg1, arg2, arg3) =>
        "( " + c(arg1, env) + " ? " + c(arg2, env) + " : " + c(arg2, env) + ")"

      case Pure.select(x: Var, arg2) =>
        c(x, env) + "[" + c(arg2, env) + "]"

      case Pure.select(arg1, arg2) =>
        "*(" + c(arg1, env) + " + " + c(arg2, env) + ")"
      case Pure.let(eqs, body) =>
        val su = Map(eqs: _*)
        c(body subst su, env)

      case _ =>
        korn.error("unsupported in C: " + pure)
    }
  }

  def dump(df: Def, unit: Unit) {
    val Def(name, args, ret, body) = df

    if (unit.witness contains name) {
      val (proc, loc, pred, msg) = unit witness name
      val from = args map (_.x.toString)
      val to = pred.names
      val env = Map(from zip to: _*)
      val res = c(body, env)
      println(msg + " for " + proc.name + " at " + loc.line + ":" + loc.column)
      println("  " + res)
    }
  }

  def dump(model: Model, unit: Unit) {
    for (df <- model.defs)
      dump(df, unit)
  }

  // copied from https://github.com/sosy-lab/sv-witnesses/blob/master/multivar_true-unreach-call1.graphml
  val header =
    """<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<graphml xmlns="http://graphml.graphdrawing.org/xmlns" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
 <key attr.name="originFileName" attr.type="string" for="edge" id="originfile">
  <default>/home/dangl/sv-witnesses/multivar_true-unreach-call1.i</default>
 </key>
 <key attr.name="invariant" attr.type="string" for="node" id="invariant"/>
 <key attr.name="invariant.scope" attr.type="string" for="node" id="invariant.scope"/>
 <key attr.name="namedValue" attr.type="string" for="node" id="named"/>
 <key attr.name="nodeType" attr.type="string" for="node" id="nodetype">
  <default>path</default>
 </key>
 <key attr.name="isFrontierNode" attr.type="boolean" for="node" id="frontier">
  <default>false</default>
 </key>
 <key attr.name="isViolationNode" attr.type="boolean" for="node" id="violation">
  <default>false</default>
 </key>
 <key attr.name="isEntryNode" attr.type="boolean" for="node" id="entry">
  <default>false</default>
 </key>
 <key attr.name="isSinkNode" attr.type="boolean" for="node" id="sink">
  <default>false</default>
 </key>
 <key attr.name="enterLoopHead" attr.type="boolean" for="edge" id="enterLoopHead">
  <default>false</default>
 </key>
 <key attr.name="violatedProperty" attr.type="string" for="node" id="violatedProperty"/>
 <key attr.name="threadId" attr.type="string" for="edge" id="threadId"/>
 <key attr.name="sourcecodeLanguage" attr.type="string" for="graph" id="sourcecodelang"/>
 <key attr.name="programFile" attr.type="string" for="graph" id="programfile"/>
 <key attr.name="programHash" attr.type="string" for="graph" id="programhash"/>
 <key attr.name="specification" attr.type="string" for="graph" id="specification"/>
 <key attr.name="architecture" attr.type="string" for="graph" id="architecture"/>
 <key attr.name="producer" attr.type="string" for="graph" id="producer"/>
 <key attr.name="sourcecode" attr.type="string" for="edge" id="sourcecode"/>
 <key attr.name="startline" attr.type="int" for="edge" id="startline"/>
 <key attr.name="startoffset" attr.type="int" for="edge" id="startoffset"/>
 <key attr.name="lineColSet" attr.type="string" for="edge" id="lineCols"/>
 <key attr.name="control" attr.type="string" for="edge" id="control"/>
 <key attr.name="assumption" attr.type="string" for="edge" id="assumption"/>
 <key attr.name="assumption.resultfunction" attr.type="string" for="edge" id="assumption.resultfunction"/>
 <key attr.name="assumption.scope" attr.type="string" for="edge" id="assumption.scope"/>
 <key attr.name="enterFunction" attr.type="string" for="edge" id="enterFunction"/>
 <key attr.name="returnFromFunction" attr.type="string" for="edge" id="returnFrom"/>
 <key attr.name="predecessor" attr.type="string" for="edge" id="predecessor"/>
 <key attr.name="successor" attr.type="string" for="edge" id="successor"/>
 <key attr.name="witness-type" attr.type="string" for="graph" id="witness-type"/>
"""

  val footer =
    """</graphml>
"""
}
