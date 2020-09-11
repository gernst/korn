package korn

import scala.collection.mutable
import java.io.Reader
import java.io.File
import java.io.FileReader
import scala.annotation.tailrec

object Main {
  var dry = false
  var quiet = false

  var files = mutable.Buffer[String]()

  @tailrec
  def configure(args: List[String]) {
    args match {
      case Nil =>
      case "-dry" :: rest =>
        dry = true
        configure(rest)
      case "-quiet" :: rest =>
        quiet = true
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
      } catch {
        case e: Throwable =>
          e.printStackTrace()
      }
    }
  }

  def main(args: Array[String]) {
    configure(args.toList)
    run(files.toList)
  }
}
