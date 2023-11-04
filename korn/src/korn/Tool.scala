package korn

import java.io.PrintStream
import java.io.File
import java.io.BufferedReader
import java.io.InputStreamReader

import korn.horn.Unit
import korn.smt.Model

sealed trait Result
case class Unknown(status: String) extends Result
case class Correct(model: Model) extends Result
case class Incorrect(trace: List[(String, BigInt)]) extends Result

object Result {
  val unknown = Unknown("unknown")
}

case class Tool(timeout: Int, model: Boolean, write: Boolean, cmd: String*) {
  override def toString = cmd.mkString(" ")
}

object Tool {

  object killall extends Thread {
    var procs: Set[Process] = Set()

    override def run() {
      for (proc <- procs)
        proc.destroyForcibly()
    }
  }

  Runtime.getRuntime().addShutdownHook(killall)

  def run(cmd: String*) = {
    val process = new ProcessBuilder(cmd: _*)
    val status = process.start.waitFor()
    status
  }

  def pipe(cmd: String*) = {
    val builder = new ProcessBuilder(cmd: _*)
    val proc = builder.start()
    killall.procs += proc

    val in = new PrintStream(proc.getOutputStream())
    val out = new BufferedReader(new InputStreamReader(proc.getInputStream()))
    val err = proc.getErrorStream()
    (in, out, err, proc)
  }

  def compile(bin: String, files: String*) = {
    val gcc = List("gcc", "-m" + c.bits, "-o", bin, "-lm")
    val cmd = gcc ++ files
    val status = run(cmd: _*)
    Main.debug(cmd.mkString(" "))
    if (status != 0)
      Main.info("compilation failed: " + cmd.mkString(" "))
    status == 0
  }

  def confirm(file: String, trace: List[(String, BigInt)]) = {
    // Main.debug("confirming " + trace)

    val cex = "__VERIFIER_counterexample.c"
    val out = new PrintStream(new File(cex))

    out println "#include <stdio.h>"
    out println "#include <stdlib.h>"
    out.println()

    // out println "void assume(int cond) {"
    // out println "    if(!cond) {"
    // out println "        printf(\"unknown\\n\");"
    // out println "        exit(0);"
    // out println "    }"
    // out println "}"

    // out println "void assert(int cond) {"
    // out println "    if(!cond) {"
    // out println "        printf(\"unsat\\n\");"
    // out println "        exit(0);"
    // out println "    }"
    // out println "}"

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
    val ok = compile(bin, file, cex, "__VERIFIER.c")

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

  def check(file: String): Result = {
    /* random sampling for given number of seconds */
    val start = System.currentTimeMillis()

    val bin = "./fuzz"
    val ok = compile(bin, file, "__VERIFIER.c", "__VERIFIER_zero.c")

    if (ok) {
      val (in, out, err, proc) = pipe(bin)
      val status = proc.waitFor()

      val result = Backend.read(out, file)

      result match {
        case _: Incorrect =>
          return result
        case _ =>
      }
    }

    return Result.unknown
  }

  def fuzz(file: String, timeout: Int): (Int, Result) = {
    /* random sampling for given number of seconds */
    val start = System.currentTimeMillis()

    val bin = "./fuzz"
    val ok = compile(bin, file, "__VERIFIER.c", "__VERIFIER_random.c")

    var rounds: Int = 0

    while (ok) {
      val now = System.currentTimeMillis()
      val remaining = now - start

      if (remaining > timeout * 1000)
        return (rounds, Result.unknown)

      rounds += 1
      val (in, out, err, proc) = pipe(bin)
      val status = proc.waitFor()

      val result = Backend.read(out, file)

      result match {
        case _: Incorrect =>
          return (rounds, result)
        case _ =>
      }
    }

    return (rounds, Result.unknown)
  }

  def hash(file: String) = {
    import java.nio.file.Files
    import java.nio.file.Paths
    val md = java.security.MessageDigest.getInstance("SHA-256")
    val hash = md.digest(Files.readAllBytes(Paths.get(file))).map("%02x".format(_)).mkString
    hash
  }

  def parse(file: String) {
    val stmts = korn.c.parse(file)
  }

  def translate(file: String) = {
    val stmts = korn.c.parse(file)
    object unit extends Unit(file, stmts)
    unit.run()
    unit
  }

  def horn(unit: Unit, model: Boolean, expect: Option[String], out: PrintStream) = {
    Backend.write(unit, model, expect, out)
  }

  def solve(file: String, tool: Tool, expect: Option[String], write: Option[String]): Result = {
    val unit = translate(file)
    solve(unit, tool, expect, write)
  }

  def solve(unit: Unit, tool: Tool, expect: Option[String], write: Option[String]): Result = {
    val Tool(timeout, model, _, cmd @ _*) = tool
    solve(unit, timeout, model, expect, write, cmd)
  }

  def solve(
      unit: Unit,
      timeout: Int,
      model: Boolean,
      expect: Option[String],
      write: Option[String],
      cmd: Seq[String]): Result = {

    write match {
      case None =>
        val (out, in, err, proc) = pipe(cmd: _*)
        Backend.write(unit, model, expect, out)
        try {
          Backend.readWithTimeout(timeout, in, unit.file)
        } finally {
          proc.destroy()
        }

      case Some(smt) =>
        val out = new PrintStream(new File(smt))
        // Note: do not refactor the two cases into one, need to write before calling the solver
        Backend.write(unit, model, expect, out)
        val (_, in, err, proc) = pipe(cmd ++ Seq(smt): _*)
        try {
          Backend.readWithTimeout(timeout, in, unit.file)
        } finally {
          proc.destroy()
        }
    }
  }
}
