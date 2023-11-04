package korn.tool

import korn.Main
import java.io.PrintStream
import java.io.File
import korn.horn.Unit

case class Confirm(tool: Tool) extends Tool {
  def how = tool.how + " (with counterexample confirmation)"
  def backend = tool.backend
  def write = tool.write

  def check(unit: Unit, smt2: String) = {
    tool.check(unit, smt2) match {
      case Incorrect(trace) =>
        Confirm.confirm(unit, trace)

      case result =>
        result
    }
  }
}

object Confirm {
  import Tool._

  def confirm(unit: Unit, trace: List[(String, BigInt)]) = {
    // Main.debug("confirming " + trace)

    val cex = "__VERIFIER_counterexample.c"
    val out = new PrintStream(new File(cex))

    out println "#include <stdio.h>"
    out println "#include <stdlib.h>"
    out.println()

    if (!(unit.funs contains "assume")) {
      out println "void assume(int cond) {"
      out println "    if(!cond) {"
      out println "        printf(\"unknown\\n\");"
      out println "        exit(0);"
      out println "    }"
      out println "}"
    }

    if (!(unit.funs contains "assert")) {
      out println "void assert(int cond) {"
      out println "    if(!cond) {"
      out println "        printf(\"unsat\\n\");"
      out println "        exit(0);"
      out println "    }"
      out println "}"
    }

    out println "void __assert_fail(const char * assertion, const char * file, unsigned int line, const char * function) {"
    out println "    printf(\"unsat\\n\");"
    out println "    exit(0);"
    out println "}"

    out.println()

    out println "static unsigned long long trace[] = {"
    for ((_, arg) <- trace)
      out println ("    (unsigned long long) " + arg + ",")
    out println "};"

    out.println()

    out println "static unsigned int index = 0;"
    out println "unsigned long long __VERIFIER_next_nondet(unsigned int sign, unsigned int bits, const char *fn) {"
    out println "    return trace[index++];"
    out println "}"

    out.println()

    out.flush()
    out.close()

    val bin = "./confirm"
    val ok = compile(bin, unit.file, cex, "__VERIFIER.c")

    if (ok) {
      val (_, res, _, proc) = pipe(bin)

      res.readLine() match {
        case "unsat" =>
          Incorrect(trace)
        case line =>
          Result.unknown
      }
    } else {
      Result.unknown
    }
  }

}
