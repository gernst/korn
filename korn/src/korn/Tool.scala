package korn

import java.io.PrintStream

case class Result(status: String, witness: Option[Witness])

object Result {
  val unknown = Result("unknown", None)
  def error(msg: String) = Result(msg, None)
  def correct(witness: Proof) = Result("sat", Some(witness))
  def incorrect(witness: Violation) = Result("unsat", Some(witness))
}

trait Tool[A] {
  def run(file: String, extra: A): Result
}

object Tool {
  def run(cmd: String*) = {
    val process = new ProcessBuilder(cmd: _*)
    val status = process.start.waitFor()
    status
  }

  def pipe(cmd: String*) = {
    val builder = new ProcessBuilder(cmd: _*)
    val proc = builder.start()
    val in = new PrintStream(proc.getOutputStream())
    val out = proc.getInputStream()
    val err = proc.getErrorStream()
    (in, out, err)
  }

  def compile(bin: String, files: String*) {
    val gcc = List("gcc", "-o", bin)
    val cmd = gcc ++ files
    val status = run(cmd: _*)
    korn.ensure(status == 0, "compilation failed: " + cmd.mkString(" "))
  }
}
