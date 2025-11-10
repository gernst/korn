package korn.tool

import java.io.BufferedReader
import java.io.InputStreamReader
import java.io.PrintStream
import korn.Main
import korn.horn.Unit
import korn.smt.Model
import scala.concurrent.duration.Duration
import korn.smt.Scanner
import korn.smt.Parser

sealed trait Result
case class Unknown(status: String) extends Result
case class Correct(model: Model) extends Result
case class Incorrect(trace: List[(String, BigInt)]) extends Result

object Result {
  val unknown = Unknown("unknown")
}

trait Tool {
  def check(unit: Unit, smt2: String, expect: Option[String]): Result
  def how: String
  def backend: String
  def write: Boolean
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

  case class generic(timeout: Duration, model: Boolean, write: Boolean, expect: Option[String], cmd: Seq[String])
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

  def parse(file: String) = {
    korn.c.parse(file)
  }

  def translate(file: String, stmts: List[korn.c.Stmt]) = {
    new korn.horn.Unit(file, stmts)
  }
  
  def model(in: BufferedReader): Model = {
    val scanner = new Scanner(in)
    val parser = new Parser()
    val res = parser.parse(scanner)
    val model = res.asInstanceOf[Model]
    model
  }
}
