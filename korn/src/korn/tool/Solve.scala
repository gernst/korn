package korn.tool

import java.io.BufferedReader
import java.io.PrintStream
import java.io.File
import scala.concurrent.duration.Duration

import korn.horn.Unit
import korn.smt.Model

abstract class Solve extends Tool {
  import Tool._

  def timeout: Duration
  def model: Boolean
  def write: Boolean
  def expect: Option[String]
  def cmd: Seq[String]

  def how = cmd.mkString(" ")

  def readModel(in: BufferedReader, unit: Unit): Model = {
    Tool.model(in)
  }

  def readTrace(in: BufferedReader, unit: Unit): List[(String, BigInt)] = {
    Nil
  }

  def write(out: PrintStream, unit: Unit) = {
    Backend.write(unit, model, expect, out)
  }

  def read(in: BufferedReader, unit: Unit) = {
    val status = in.readLine()

    status match {
      case "sat" =>
        val model = readModel(in, unit)
        Correct(model)

      case "unsat" =>
        var trace = readTrace(in, unit)
        Incorrect(trace)

      case _ =>
        Unknown(status)
    }
  }

  def readWithTimeout(in: BufferedReader, unit: Unit): Result = {
    import scala.concurrent.ExecutionContext.Implicits.global
    import scala.concurrent._
    import scala.concurrent.duration._

    try {
      Await.result(Future(read(in, unit)), timeout)
    } catch {
      case _: TimeoutException | _: InterruptedException =>
        Unknown("timeout")
    }
  }

  def check(unit: Unit, smt2: String) = {
    if (!write) {
      val (out, in, err, proc) = pipe(cmd: _*)
      write(out, unit)
      try {
        readWithTimeout(in, unit)
      } finally {
        proc.destroy()
      }
    } else {
      val out = new PrintStream(new File(smt2))
      // Note: do not refactor the two cases into one, need to write before calling the solver
      write(out, unit)
      val (_, in, err, proc) = pipe(cmd ++ Seq(smt2): _*)
      try {
        readWithTimeout(in, unit)
      } finally {
        proc.destroy()
      }
    }
  }
}

case class Z3(timeout: Duration, model: Boolean, write: Boolean, expect: Option[String], options: Seq[String] = Nil)
    extends Solve {

  val cmd = Seq("z3", "-t:" + timeout.toMillis) ++ options
}

case class Eldarica(
    timeout: Duration,
    model: Boolean,
    _write: Boolean,
    expect: Option[String],
    options: Seq[String] = Nil)
    extends Solve {

  def write = true

  val cmd =
    if (model)
      Seq("eld", "-t:" + timeout.toSeconds, "-ssol", "-cex") ++ options
    else
      Seq("eld", "-t:" + timeout.toSeconds) ++ options

  override def write(out: PrintStream, unit: Unit) = {
    Backend.write(unit, model = false, expect, out)
  }

  override def readTrace(in: BufferedReader, unit: Unit) = {
    var trace: List[(String, BigInt)] = Nil
    var line = in.readLine()
    while (line != null) {
      val pos = line indexOf "__VERIFIER_nondet_"
      if (pos >= 0) {
        line = line drop pos
        val lp = line indexOf "("
        val rp = line indexOf ")"
        val fun = line take lp
        val res = line drop (lp + 1) take (rp - lp - 1)
        trace = (fun, BigInt(res)) :: trace
      }
      line = in.readLine()
    }
    trace
  }
}

case class Golem(
    timeout: Duration,
    model: Boolean,
    write: Boolean,
    expect: Option[String],
    engine: String = "spacer",
    options: Seq[String] = Nil)
    extends Solve {

  val cmd =
    if (model)
      Seq("golem", "-l", "QF_LIA", "-e", engine, "--print-witness") ++ options
    else
      Seq("golem", "-l", "QF_LIA", "-e", engine) ++ options

  def readInt(str: String) =
    str.trim match {
      case str if str.startsWith("(-") && str.endsWith(")") =>
        val inner = str.substring(2, str.length - 1)
        -BigInt(inner.trim)
      case str =>
        BigInt(str)
    }

  override def readTrace(in: BufferedReader, unit: Unit) = {
    var trace: List[(String, BigInt)] = Nil
    var line = in.readLine()
    while (line != null) {
      val pos = line indexOf "__VERIFIER_nondet_"
      if (pos >= 0) {
        line = line drop pos
        val lp = line indexOf " "
        val rp = line indexOf ")"
        val fun = line take lp
        val res = line drop (lp + 1) take (rp - lp)
        trace = (fun, readInt(res)) :: trace
      }
      line = in.readLine()
    }
    trace.reverse
  }
}
