package korn

import scala.collection.mutable
import java.io.Reader
import java.io.File
import java.io.FileReader
import scala.annotation.tailrec
import java.io.PrintStream

object Main {
  var dry = false
  var sum = false
  var debug = false
  var model = false

  var files = mutable.Buffer[String]()
  var out = System.out

  def pipe(cmd: String*) = {
    val builder = new ProcessBuilder(cmd: _*)
    val proc = builder.start()
    val in = proc.getOutputStream()
    val out = proc.getInputStream()
    val err = proc.getErrorStream()
    // out.transferTo(in)
    (in, out, err)
  }

  @tailrec
  def configure(args: List[String]) {
    args match {
      case Nil =>
      case "-dry" :: rest =>
        dry = true
        configure(rest)

      case "-sum" :: rest =>
        sum = true
        configure(rest)

      case "-inv" :: rest =>
        sum = false
        configure(rest)

      case "-debug" :: rest =>
        debug = true
        configure(rest)

      case "-model" :: rest =>
        model = true
        configure(rest)

      case file :: rest =>
        files += file
        configure(rest)
    }
  }

  def parse(path: String): List[Stmt] = {
    parse(new FileReader(path), path)
  }

  def parse(file: File): List[Stmt] = {
    parse(new FileReader(file), file.getPath)
  }

  def parse(reader: Reader, path: String): List[Stmt] = {
    val scanner = new Scanner(reader)
    val parser = new Parser()

    val types = new java.util.HashSet[String]
    scanner.types = types
    parser.types = types

    val Block(stmts) = parser parse scanner
    stmts
  }

  def run(files: List[String]) {
    for (path <- files) {
      try {
        val stmts = parse(path)
        object unit extends Unit(stmts)
        unit.run()
        print(unit, System.out)
      } catch {
        case e: Throwable =>
          e.printStackTrace()
      }
    }
  }

  def print(unit: Unit, out: PrintStream) {
    out.println(sexpr("set-logic", "HORN"))

    if (model)
      out.println(sexpr("set-option", ":produce-models", "true"))

    out.println()

    for (pred <- unit.preds) {
      val Pred(name, args) = pred
      val defn = sexpr("declare-fun", name, sexpr(args), "Bool")
      out.println(defn)
    }
    out.println()

    for (clause <- unit.clauses) {
      val Clause(path, head, reason) = clause
      val bound = clause.free

      out.println("; " + reason)
      out.println("(assert")
      if (bound.nonEmpty)
        out.println("  (forall " + bind(bound))

      if (path.nonEmpty) {
        out.println(path.mkString("    (=> (and ", "\n             ", ")"))
      }

      out.print("        " + head)

      if (path.nonEmpty)
        out.print(")")

      if (bound.nonEmpty)
        out.print(")")

      out.println(")")
      out.println()
    }

    out.println(sexpr("check-sat"))

    if (model)
      out.println(sexpr("get-model"))
  }

  def bind(vars: Iterable[Var]): String = {
    sexpr(vars map { x => sexpr(x, x.typ) })
  }

  def main(args: Array[String]) {
    configure(args.toList)
    run(files.toList)
  }
}
