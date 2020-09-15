package korn

import scala.collection.mutable
import java.io.Reader
import java.io.File
import java.io.FileReader
import scala.annotation.tailrec
import java.io.PrintStream
import java.io.InputStream
import java.io.OutputStream

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

  def cat(in: InputStream, out: OutputStream) {
    in.transferTo(out)
    out.flush()
  }

  @tailrec
  def configure(args: List[String]) {
    args match {
      case Nil =>

      case ("-s" | "-summaries") :: rest =>
        sum = true
        configure(rest)

      case ("-i" | "-invariants") :: rest =>
        sum = false
        configure(rest)

      case ("-m" | "-model") :: rest =>
        model = true
        configure(rest)

      case ("-p" | "-parse") :: rest =>
        dry = true
        configure(rest)

      case ("-d" | "-debug") :: rest =>
        debug = true
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
        System.out.flush()
        System.err.flush()

        System.out.println(path)
        val stmts = parse(path)
        if (!dry) {
          object unit extends Unit(stmts)
          unit.run()
          print(unit, System.out)
        }
      } catch {
        case e: beaver.Parser.Exception =>
          System.out.println("parser error")
        case e: NotImplementedError =>
          val st = e.getStackTrace()(1)
          val file = st.getFileName + ":" + st.getLineNumber
          val code = st.getClassName + "." + st.getMethodName
          val where = code + " (" + file + ")"
          System.out.println("not implemented: " + where)
        case e: Throwable =>
          System.out.println("error: " + e.getMessage)
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
