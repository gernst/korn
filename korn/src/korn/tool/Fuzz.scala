package korn.tool

import scala.concurrent.duration.Duration
import korn.horn.Unit
import java.io.BufferedReader

case class Fuzz(timeout: Duration, mode: String) extends Tool {
  import Tool._

  def read(in: BufferedReader, file: String, expect: Option[String]) = {
    val status = in.readLine()

    status match {
      case "unsat" =>
        Backend.isExpected(status, expect)
        val trace = Backend.counterexample(in)
        Incorrect(trace)

      case _ =>
        Unknown(status)
    }
  }

  def how = "fuzz (" + timeout.toSeconds + "s)"
  def backend = how

  def write = false

  def check(unit: Unit, smt2: String, expect: Option[String]): Result = {
    val (_, result) = fuzz(unit.file, expect)
    result
  }

  def fuzz(file: String, expect: Option[String]): (Int, Result) = {
    /* random sampling for given number of seconds */
    val start = System.currentTimeMillis()

    val bin = "./fuzz"
    val fuzz_c = mode match {
      case "zero"   => "__VERIFIER_zero.c"
      case "random" => "__VERIFIER_random.c"
    }

    var ok = compile(bin, file, "__VERIFIER.c", fuzz_c)

    var rounds: Int = 0

    while (ok) {
      rounds += 1
      val (in, out, err, proc) = pipe(bin)
      val status = proc.waitFor()

      val result = read(out, file, expect)

      result match {
        case _: Incorrect =>
          return (rounds, result)
        case _ =>
      }

      // at least one round!
      val now = System.currentTimeMillis()
      val remaining = now - start

      ok = remaining <= timeout.toMillis
    }

    Backend.isExpected("unknown", expect)
    return (rounds, Result.unknown)
  }
}
