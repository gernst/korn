package korn.tool

import java.io.BufferedReader
import java.io.PrintStream
import java.io.File
import scala.concurrent.duration.Duration

import korn.horn.Unit
import korn.smt.Model
import java.util.concurrent.TimeUnit

abstract class Solve extends Tool {
  import Tool._

  def timeout: Duration
  def model: Boolean
  def write: Boolean
  def expect: Option[String]
  def cmd: Seq[String]

  def how = cmd.mkString(" ")
  def backend = how

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
    unit.run()

    val (in, err, proc) = if (write) {
      val out = new PrintStream(new File(smt2))
      write(out, unit)
      val (_, in, err, proc) = pipe(cmd ++ Seq(smt2): _*)
      (in, err, proc)
    } else {
      val (out, in, err, proc) = pipe(cmd: _*)
      write(out, unit)
      (in, err, proc)
    }

    try {
      readWithTimeout(in, unit)
    } finally {
      import korn.Main.info
      import korn.Main.debug

      if (!proc.isAlive()) {
        val exit = proc.exitValue()
        if (exit != 0) {
          info("exit code:    " + exit)
          val txt = new String(err.readAllBytes(), "UTF-8")
          debug(txt)
        }
      } else {
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

  def readInt(str: String) = {
    str.trim match {
      case str if str.startsWith("(-") && str.endsWith(")") =>
        val inner = str.substring(2, str.length - 1)
        -BigInt(inner.trim)
      case str =>
        BigInt(str)
    }
  }

  def readTrace_(in: BufferedReader, unit: Unit) = {
    var trace: List[(String, BigInt)] = Nil
    var line = in.readLine()
    while (line != null) {
      val pos = line indexOf "__VERIFIER_nondet_"
      if (pos >= 0) {
        line = line drop pos
        val lp = line indexOf " "
        val rp = line lastIndexOf ")"
        val fun = line take lp
        val res = line drop (lp + 1) take (rp - lp - 1)
        trace = (fun, readInt(res)) :: trace
      }
      line = in.readLine()
    }
    // trace.reverse
    trace
  }

  override def readTrace(in: BufferedReader, unit: Unit) = {
    var graph: Map[Int, (String, List[Int])] = Map()

    var last: Int = 0

    var line = in.readLine()
    assert(line == "0:\ttrue")
    graph += (0 -> ("true", Nil))

    line = in.readLine()
    while (line != null) {
      if (line.trim.nonEmpty) {
        val colon = line indexOf ":"
        val arrow = line indexOf "->"

        val part1 = line take colon
        val part2 = line substring (colon + 1, arrow)
        val part3 = line drop arrow + 2

        val here = part1.toInt
        val call = part2.trim // parsed later
        val prems = part3.trim.split(" ") map (_.toInt)

        graph += (here -> (call, prems.toList))
        last = here
      }

      line = in.readLine()
    }

    analyze(last, graph)
  }

  def analyze(last: Int, graph: Map[Int, (String, List[Int])]) = {
    var todo = List(last)
    var trace: List[(String, BigInt)] = Nil

    while (todo.nonEmpty) {
      val next :: rest = todo
      todo = rest

      val (call, prems) = graph(next)
      // println(next, call, prems)

      val kept = if (call contains "%") {
        val a = call indexOf "%"
        val b = call indexOf " "
        val name = call substring (a + 1, b)
        val pre = "$" + name + "_pre"

        prems filter {
          case prem =>
            val (call_, _) = graph(prem)

            val a = call_ indexOf "$"
            val b = call_ indexOf " "
            val name_ = call_ substring (a + 1, b)
            val pre_ = "$" + name_

            val ok = pre_ != pre
            // if (ok)
            //   println("keep: " + next + " " + name + " -> " + prem + " " + pre_ + " != " + pre)
            // else
            //   println("drop: " + next + " " + name + " -> " + prem + " " + pre_)
            ok
        }
      } else {
        prems
      }

      // println("keeping: " + kept)
      todo = kept.reverse ++ todo

      if (call contains "__VERIFIER_nondet") {
        val pos = call indexOf "__VERIFIER_nondet_"
        val rest = call drop pos
        val lp = rest indexOf " "
        val rp = rest lastIndexOf ")"
        val fun = rest take lp
        val res = rest drop (lp + 1) take (rp - lp - 1)
        trace = (fun, readInt(res)) :: trace
      }
    }

    trace
  }
}
