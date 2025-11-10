package korn.tool

import scala.concurrent.duration.Duration
import korn.horn.Unit

object Fuzz extends Tool {
  import Tool._

  def how = "fuzz (zeroes)"
  def backend = how
  def write = false

  def check(unit: Unit, smt2: String, expected: Option[String]): Result = {
    /* random sampling for given number of seconds */
    val start = System.currentTimeMillis()

    val bin = "./fuzz"
    val ok = compile(bin, unit.file, "__VERIFIER.c", "__VERIFIER_zero.c")

    if (ok) {
      val (in, out, err, proc) = pipe(bin)
      val status = proc.waitFor()

      val result = Backend.read(out, unit.file, expected)

      result match {
        case _: Incorrect =>
          return result
        case _ =>
      }
    }

    return Result.unknown
  }
}

case class Fuzz(timeout: Duration) extends Tool {
  import Tool._

  def how = "fuzz (" + timeout.toSeconds + "s)"
  def backend = how

  def write = false

  def check(unit: Unit, smt2: String, expected: Option[String]): Result = {
    val (_, result) = fuzz(unit.file, expected)
    result
  }

  def fuzz(file: String, expected: Option[String]): (Int, Result) = {
    /* random sampling for given number of seconds */
    val start = System.currentTimeMillis()

    val bin = "./fuzz"
    val ok = compile(bin, file, "__VERIFIER.c", "__VERIFIER_random.c")

    var rounds: Int = 0

    while (ok) {
      val now = System.currentTimeMillis()
      val remaining = now - start

      if (remaining > timeout.toMillis)
        return (rounds, Result.unknown)

      rounds += 1
      val (in, out, err, proc) = pipe(bin)
      val status = proc.waitFor()

      val result = Backend.read(out, file, expected)

      result match {
        case _: Incorrect =>
          return (rounds, result)
        case _ =>
      }
    }

    return (rounds, Result.unknown)
  }
}
