package korn.tool

import java.io.BufferedReader
import java.io.InputStreamReader
import java.io.PrintStream
import korn.Main
import korn.smt.Model
import korn.horn
import scala.concurrent.duration.Duration

sealed trait Result
case class Unknown(status: String) extends Result
case class Correct(model: Model) extends Result
case class Incorrect(trace: List[(String, BigInt)]) extends Result

object Result {
  val unknown = Unknown("unknown")
}

trait Tool {
  def check(file: String): Result
}

object Tool {
  import Main.info
  import Main.debug

  object killall extends Thread {
    var procs: Set[Process] = Set()

    override def run() {
      for (proc <- procs)
        proc.destroyForcibly()
    }
  }

  Runtime.getRuntime().addShutdownHook(killall)

  case class generic(timeout: Duration, model: Boolean, expect: Option[String], write: Option[String], cmd: Seq[String])
      extends Solve

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
    val gcc = List("gcc", "-m" + korn.c.bits, "-o", bin, "-lm")
    val cmd = gcc ++ files
    val status = run(cmd: _*)
    debug(cmd.mkString(" "))

    if (status != 0)
      info("compilation failed: " + cmd.mkString(" "))
    status == 0
  }

  def parse(file: String) {
    val stmts = korn.c.parse(file)
  }

  def translate(file: String) = {
    val stmts = korn.c.parse(file)
    object unit extends horn.Unit(file, stmts)
    unit.run()
    unit
  }
}
