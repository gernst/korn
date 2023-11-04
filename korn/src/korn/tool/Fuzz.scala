package korn.tool

import scala.concurrent.duration.Duration
import korn.horn.Unit

object Fuzz extends Tool {
  import Tool._

  def how = "fuzz (zeroes)"
  def write = false

  def check(unit: Unit, smt2: String): Result = {
    /* random sampling for given number of seconds */
    val start = System.currentTimeMillis()

    val bin = "./fuzz"
    val ok = compile(bin, unit.file, "__VERIFIER.c", "__VERIFIER_zero.c")

    ???

    // if (ok) {
    //   val (in, out, err, proc) = pipe(bin)
    //   val status = proc.waitFor()

    //   val result = Backend.read(out, file)

    //   result match {
    //     case _: Incorrect =>
    //       return result
    //     case _ =>
    //   }
    // }

    // return Result.unknown
  }
}

case class Fuzz(timeout: Duration) extends Tool {
  import Tool._

  def how = "fuzz (" + timeout.toSeconds + "s)"
  def write = false

  def check(unit: Unit, smt2: String): Result = {
    val (_, result) = fuzz(unit.file)
    result
  }

  def fuzz(file: String): (Int, Result) = {
    /* random sampling for given number of seconds */
    val start = System.currentTimeMillis()

    val bin = "./fuzz"
    val ok = compile(bin, file, "__VERIFIER.c", "__VERIFIER_random.c")

    var rounds: Int = 0
    ???

    // while (ok) {
    //   val now = System.currentTimeMillis()
    //   val remaining = now - start

    //   if (remaining > timeout * 1000)
    //     return (rounds, Result.unknown)

    //   rounds += 1
    //   val (in, out, err, proc) = pipe(bin)
    //   val status = proc.waitFor()

    //   val result = Backend.read(out, file)

    //   result match {
    //     case _: Incorrect =>
    //       return (rounds, result)
    //     case _ =>
    //   }
    // }

    // return (rounds, Result.unknown)
  }
}
