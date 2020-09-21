package korn

import scala.collection.mutable
import java.io.Reader
import java.io.File
import java.io.FileReader
import scala.annotation.tailrec
import java.io.PrintStream
import java.io.InputStream
import java.io.OutputStream
import java.io.FileOutputStream

object Main {
  var dry = false
  var sum = false
  var debug = false
  var model = false
  var write = false
  var timeout = 10
  var arch64 = false
  var prove: Seq[String] = Seq()

  var files = mutable.Buffer[String]()
  var out = System.out

  def pipe(cmd: String*) = {
    val builder = new ProcessBuilder(cmd: _*)
    val proc = builder.start()
    val in = new PrintStream(proc.getOutputStream())
    val out = proc.getInputStream()
    val err = proc.getErrorStream()
    (in, out, err)
  }

  def dump(path: String) = {
    val out = new PrintStream(new FileOutputStream(path))
    out
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

      case ("-w" | "-write") :: rest =>
        write = true
        configure(rest)

      case ("-d" | "-debug") :: rest =>
        debug = true
        configure(rest)

      case ("-t" | "-timeout") :: arg :: rest =>
        timeout = arg.toInt
        configure(rest)

      case "-z3" :: rest =>
        prove = Seq("z3", "-t:" + timeout)
        write = true
        configure(rest)

      case "-eld" :: rest if model =>
        prove = Seq("eld", "-t:" + timeout, "-ssol")
        model = false
        write = true
        configure(rest)

      case "-eld" :: rest =>
        prove = Seq("eld", "-t:" + timeout)
        write = true
        configure(rest)

      case "-32" :: rest =>
        arch64 = false
        configure(rest)

      case "-64" :: rest =>
        arch64 = true
        configure(rest)

      case "--" :: rest =>
        prove = rest

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

  def smt(path: String) = {
    ensure((path endsWith ".c") || (path endsWith ".i"), "unrecognized file ending: " + path)
    (path dropRight 2) + ".smt2"
  }

  def run(files: List[String]) {
    for (path <- files) {
      try {
        System.out.flush()
        System.err.flush()

        if (debug) System.err.println(path)
        val stmts = parse(path)

        if (!dry) {
          object unit extends Unit(stmts)
          unit.run()

          if (prove.isEmpty) {
            if (write) {
              val to = smt(path)
              if (debug) System.err.println(to)
              print(unit, dump(to))
            } else {
              print(unit, System.out)
            }
          } else {
            if (write) {
              if (debug) System.err.println(smt(path))
              val to = smt(path)
              print(unit, dump(to))
              val (_, out, err) = pipe(prove ++ List(to): _*)
              cat(out, System.out)
              cat(err, System.err)
            } else {
              val (in, out, err) = pipe(prove: _*)
              print(unit, in)
              in.println("(exit)")
              in.flush()
              cat(out, System.out)
              cat(err, System.err)
              in.close()
            }
          }
        }
      } catch {
        case e: beaver.Parser.Exception =>
          System.err.println("parser error")
          System.out.println("parser")
        case e: NotImplementedError =>
          val st = e.getStackTrace()(1)
          val file = st.getFileName + ":" + st.getLineNumber
          val code = st.getClassName + "." + st.getMethodName
          val where = code + " (" + file + ")"
          System.err.println("not implemented: " + where)
          System.out.println("unsupported")
        case e: Error =>
          System.err.println(e.msg)
          System.out.println("error")
        case e: Throwable =>
          System.err.println("error: " + e.getMessage)
          e.printStackTrace()
          System.out.println("error")
      }
    }
  }

  def print(unit: Unit, out: PrintStream) {
    out.println(sexpr("set-logic", "HORN"))

    if (model)
      out.println(sexpr("set-option", ":produce-models", "true"))

    out.println()

    out.println(sexpr("declare-sort", "Pointer", "1"))
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

    out.flush()
  }

  def bind(vars: Iterable[Var]): String = {
    sexpr(vars map { x => sexpr(x, x.typ) })
  }

  def main(args: Array[String]) {
    configure(args.toList)
    run(files.toList)
  }
}
