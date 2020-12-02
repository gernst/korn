package korn

import scala.collection.mutable
import scala.annotation.tailrec

import java.io.Reader
import java.io.File
import java.io.FileReader
import java.io.PrintStream
import java.io.InputStream
import java.io.OutputStream
import java.io.FileOutputStream
import java.io.InputStreamReader
import java.io.BufferedReader
import java.io.FileWriter

object Main {
  val version = "0.3"

  var dry = false
  var config = "default"
  var debug = false
  var quiet = false
  var model = false
  var float = false
  var random = 0
  var witness = false
  var witness_graphml = None: Option[String]
  var witness_quant = false
  var write = false
  var timeout = 900 // SV-COMP default
  var tools = mutable.Buffer[Tool]()

  var files = mutable.Buffer[String]()
  var out = System.out
  var err = System.err

  def note(line: String) {
    if (quiet) {
      out.println(line)
      out.flush()
    }
  }

  def info(line: String) {
    if (!quiet) {
      out.println(line)
      out.flush()
    }
  }

  def debug(line: String) {
    if (debug) {
      err.println(line)
      err.flush()
    }
  }

  // def dump(path: String) = {
  //   val out = new PrintStream(new FileOutputStream(path))
  //   out
  // }

  // def read(in: BufferedReader, out: OutputStream) = {
  //   val status = in.readLine()
  //   in.transferTo(???)
  //   out.flush()
  //   status
  // }

  // def cat(in: InputStream, out: OutputStream) = {
  //   in.transferTo(out)
  //   out.flush()
  // }

  @tailrec
  def configure(args: List[String]) {
    args match {
      case Nil =>

      case ("-s" | "-summaries") :: rest =>
        config = "summaries"
        configure(rest)

      case ("-s0" | "-summaries-only") :: rest =>
        config = "summaries-only"
        configure(rest)

      case ("-m" | "-model") :: rest =>
        model = true
        witness = true
        configure(rest)

      case ("-p" | "-parse") :: rest =>
        dry = true
        configure(rest)

      case ("-w" | "-write") :: rest =>
        write = true
        configure(rest)

      case ("-r" | "-random") :: n :: rest =>
        random = n.toInt
        configure(rest)

      case ("-d" | "-debug") :: rest =>
        debug = true
        configure(rest)

      case ("-q" | "-quiet") :: rest =>
        quiet = true
        configure(rest)

      case ("-t" | "-timeout") :: arg :: rest =>
        timeout = arg.toInt
        configure(rest)

      case "-z3" :: rest =>
        // somehow piping is not working
        tools += Tool(model, true, "z3", "-t:" + (timeout * 1000))
        configure(rest)

      case "-eld" :: rest if model =>
        tools += Tool(false, true, "eld", "-t:" + timeout, "-ssol", "-cex")
        configure(rest)

      case "-eld" :: rest =>
        tools += Tool(false, true, "eld", "-t:" + timeout)
        configure(rest)

      case "-float" :: rest =>
        float = true
        configure(rest)

      case "-witness" :: file :: rest =>
        witness_graphml = Some(file)
        configure(rest)

      case "-32" :: rest =>
        c.bits = 32
        configure(rest)

      case "-64" :: rest =>
        c.bits = 64
        configure(rest)

      case "--" :: rest =>
        tools += Tool(model, write, rest: _*)

      case file :: rest =>
        files += file
        configure(rest)
    }
  }

  def smt(path: String) = {
    ensure((path endsWith ".c") || (path endsWith ".i"), "unrecognized file ending: " + path)
    (path dropRight 2) + ".smt2"
  }

  def graphml(path: String) = {
    ensure((path endsWith ".c") || (path endsWith ".i"), "unrecognized file ending: " + path)
    (path dropRight 2) + ".graphml"
  }

  def run(file: String) {
    info("program:      " + file)

    if (dry) {
      Tool.parse(file)
    } else {
      if (random > 0) {
        debug("running:      random (" + random + "s)")
        val result = Tool.fuzz(file, random)

        result match {
          case Incorrect(trace) =>
            note("unsat")
            info("status:       incorrect")
            info("backend:      random")
            debug("trace:        " + trace)

            if (witness) {
              val dest = witness_graphml getOrElse graphml(file)
              val out = new PrintStream(new File(dest))
              Witness.cex(file, trace, out)
              info("witness:      " + dest)
            }

            return

          case _ =>
          // continue
        }
      }

      if (tools.isEmpty) {
        if (write) {
          val to = smt(file)
          val out = new PrintStream(new File(to))
          info("clauses:      " + to)
          Tool.horn(file, model, out)
        } else {
          Tool.horn(file, model, out)
        }
      }

      import scala.util.control.Breaks._

      breakable {
        for (tool <- tools) {
          // Note: local variables shadow class attribute
          val Tool(model, write, cmd @ _*) = tool

          debug("running:      " + cmd.mkString(" "))

          val (unit, result) = if (write) {
            val to = smt(file)
            info("clauses:      " + to)
            Tool.solve(file, model, Some(to), cmd)
          } else {
            Tool.solve(file, model, None, cmd)
          }

          try {
            result match {
              case Unknown(message) =>
                note("unknown")
                info("status:       " + message)

              case Correct(_model) =>
                note("sat")

                info("status:       correct")
                info("backend:      " + cmd.mkString(" "))

                if (_model.defs.nonEmpty)
                  debug("model:")
                for (df <- _model.defs)
                  debug("  " + df)

                if (witness) {
                  val dest = witness_graphml getOrElse graphml(file)
                  val out = new PrintStream(new File(dest))
                  Witness.proof(file, _model, unit, out)
                  info("witness:      " + dest)
                }

                break

              case Incorrect(trace) =>
                note("unsat")

                info("status:       incorrect")
                info("backend:      " + cmd.mkString(" "))
                debug("trace:        " + trace)

                if (witness) {
                  val dest = witness_graphml getOrElse graphml(file)
                  val out = new PrintStream(new File(dest))
                  Witness.cex(file, trace, out)
                  info("witness:      " + dest)
                }

                break
            }
          } catch {
            case err: Error =>
              if (Main.debug)
                throw err
            // witness cannot be translated
          }
        }
      }
    }
  }

  def run(files: List[String]) {
    for (path <- files) {
      try {
        run(path)
      } catch {
        case e: beaver.Parser.Exception =>
          note("error")
          info("error:        " + e.getMessage())
          if (debug) e.printStackTrace()
        case e: NotImplementedError =>
          note("error")
          val st = e.getStackTrace()(1)
          val file = st.getFileName + ":" + st.getLineNumber
          val code = st.getClassName + "." + st.getMethodName
          val where = code + " (" + file + ")"
          info("error:        not implemented " + where)
          if (debug) e.printStackTrace()
        case e: Error =>
          note("error")
          info("error:        " + e.msg)
          if (debug) e.printStackTrace()
        case e: Throwable =>
          note("error")
          info("error:        " + e.getMessage())
          if (debug) e.printStackTrace()
      }
    }
  }

  def main(args: Array[String]) {
    args.toList match {
      case List("-v") | List("-version") | List("--version") =>
        System.out.println(version)
        System.out.flush()
      case args =>
        configure(args)
        run(files.toList)
    }
  }
}
