package korn

import korn.c._
import korn.smt._
import korn.horn._
import java.io.PrintStream
import java.text.SimpleDateFormat
import java.util.Date
import java.io.File

sealed trait Witness

object Witness {
  val N0 = "N0"
  val NV = "NV"

  def c(param: Param): String = {
    val Param(x, Sort.int) = param
    "int " + x
  }

  def c(params: List[Param]): String = {
    val strs = params map c
    strs mkString ", "
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
        "(" + c(arg1, env, neg) + " &lt; " + c(arg2, env, neg) + ")"
      case Pure.le(arg1, arg2) =>
        "(" + c(arg1, env, neg) + " &lt;= " + c(arg2, env, neg) + ")"
      case Pure.gt(arg1, arg2) =>
        "(" + c(arg1, env, neg) + " &gt; " + c(arg2, env, neg) + ")"
      case Pure.ge(arg1, arg2) =>
        "(" + c(arg1, env, neg) + " &gt;= " + c(arg2, env, neg) + ")"

      case Pure.not(arg) =>
        "! " + c(arg, env, !neg)
      case Pure.and(arg1, arg2) =>
        "(" + c(arg1, env, neg) + " &amp;&amp; " + c(arg2, env, neg) + ")"
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

      case _: Bind if !Main.witness_quant =>
        if (neg) "false" else "true"
      case Ex(params, body) =>
        "(exists " + c(params) + ". " + body + ")"
      case All(params, body) =>
        "(forall " + c(params) + ". " + body + ")"

      case _ =>
        korn.error("unsupported in C: " + pure)
    }
  }

  def hash(file: String) = {
    import java.nio.file.Files
    import java.nio.file.Paths
    val md = java.security.MessageDigest.getInstance("SHA-256")
    val hash = md.digest(Files.readAllBytes(Paths.get(file))).map("%02x".format(_)).mkString
    hash
  }

  def proof(df: Def, unit: Unit, out: PrintStream) {
    val Def(name, args, ret, body) = df

    if ((name contains "inv") && (unit.witness contains name)) {
      val (proc, loc, pred, msg) = unit witness name
      val from = args map (_.x.toString)
      val to = pred.names
      val env = Map(from zip to: _*)
      val inv = c(body, env, neg = false)

      val nd = "N-" + loc.line + "-" + loc.column

      out println graph.enter(N0, nd, loc)
      out println graph.loop(nd, inv)
      out println graph.leave(nd, N0)

      println(msg + " for " + proc.name + " at " + loc.line + ":" + loc.column)
      println("  " + inv)
    }
  }

  def proof(file: String, model: Model, unit: Unit, out: PrintStream) {
    out println header(file)

    val df = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss")
    val time = df.format(new Date());

    try {
      out println graph.header(file, time, hash(file), bits, "correctness_witness")
      out println graph.entry(N0)

      for (df <- model.defs)
        proof(df, unit, out)

      if (Main.debug)
        println("finished writing correctness witness for " + file)
    } finally {
      out println graph.footer
      out println footer
    }
  }

  def cex(fun: String, arg: BigInt, i: Int, out: PrintStream) {
    val Ni = "N" + i // current state
    val Nj = "N" + (i + 1) // successor state
    out println graph.node(Nj)
    out println graph.call(fun, arg, Ni, Nj)
  }

  def cex(file: String, trace: List[(String, BigInt)], unit: Unit, out: PrintStream) {
    out println header(file)

    val df = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss")
    val time = df.format(new Date());

    try {
      out println graph.header(file, time, hash(file), bits, "violation_witness")
      out println graph.entry(N0)

      for (((call, arg), index) <- trace.zipWithIndex)
        cex(call, arg, index, out)

      val n = trace.length
      out println graph.violation(NV)
      out println graph.call("reach_error", "N" + n, NV)

      if (Main.debug)
        println("finished writing violation witness for " + file)
    } finally {
      out println graph.footer
      out println footer
    }
  }

  def confirm(file: String, trace: List[BigInt]): Boolean = {
    val harness = "__VERIFIER_counterexample.c"
    val out = new PrintStream(new File(harness))

    out println "unsigned long long __VERIFIER_counterexample[] = {"
    for (arg <- trace)
      out println ("    (unsigned long long) " + arg + ",")
    out println "};"

    out.println()

    out println "static unsigned int __VERIFIER_index = 0;"
    out println "unsigned long long __VERIFIER_next_nondet(unsigned int sign, unsigned int bits, const char *fn) {"
    out println "    return __VERIFIER_counterexample[__VERIFIER_index++];"
    out println "}"

    out.flush()
    out.close()

    val bin = "./confirm"
    val compile = Array("gcc", file, harness, "__VERIFIER.c", "-o", bin)
    val gcc = new ProcessBuilder(compile: _*)
    val gcc_? = gcc.start.waitFor()
    if (gcc_? != 0) return false // compilation failed

    val run = Array(bin)
    val a = new ProcessBuilder(run: _*)
    val a_? = a.start.waitFor()
    if (a_? == 0) return false // no assertion triggered

    return true
  }

  // copied from https://github.com/sosy-lab/sv-witnesses/blob/master/multivar_true-unreach-call1.graphml
  def header(file: String) =
    s"""<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<graphml xmlns="http://graphml.graphdrawing.org/xmlns" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
 <key attr.name="originFileName" attr.type="string" for="edge" id="originfile">
  <default>${file}</default>
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
 <key attr.name="creationtime" attr.type="string" for="graph" id="creationtime"/>
"""

  val footer =
    """</graphml>
"""

  object graph {
    def header(file: String, time: String, hash: String, bits: Int, typ: String) =
      s""" <graph edgedefault="directed">
  <data key="witness-type">${typ}</data>
  <data key="creationtime">${time}</data>
  <data key="sourcecodelang">C</data>
  <data key="producer">Korn ${Main.version}</data>
  <data key="specification">CHECK( init(main()), LTL(G ! call(reach_error())) )</data>
  <data key="programfile">${file}</data>
  <data key="programhash">${hash}</data>
  <data key="architecture">${bits}bit</data>
"""

    def entry(id: String) =
      s"""  <node id="${id}">
   <data key="entry">true</data>
  </node>
"""

    def violation(id: String) =
      s"""  <node id="${id}">
   <data key="violation">true</data>
  </node>
"""

    def node(id: String) =
      s"""  <node id="${id}"></node>
"""

    def loop(id: String, inv: String) =
      s"""  <node id="${id}">
   <data key="invariant">${inv}</data>
  </node>
"""
    def loop(id: String, inv: String, scope: String) =
      s"""  <node id="${id}">
   <data key="invariant">${inv}</data>
   <data key="invariant.scope">${scope}</data>
  </node>
"""

    def call(fun: String, src: String, dst: String) =
      s"""  <edge source="${src}" target="${dst}">
   <data key="enterFunction">${fun}</data>
  </edge>
"""

    def call(fun: String, res: BigInt, src: String, dst: String) =
      s"""  <edge source="${src}" target="${dst}">
   <data key="assumption">\\result == ${res}</data>
   <data key="assumption.resultfunction">${fun}</data>
  </edge>
"""

    def enter(src: String, dst: String, loc: Loc) =
      s"""  <edge source="${src}" target="${dst}">
   <data key="enterLoopHead">true</data>
   <data key="startline">${loc.line}</data>
  </edge>
"""

    def leave(src: String, dst: String) =
      s"""  <edge source="${src}" target="${dst}">
  </edge>
"""

    def footer = """ </graph>
"""
  }
}
