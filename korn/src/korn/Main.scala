package korn

import scala.collection.mutable

object Main {
  var dry = false
  var quiet = false

  var files = mutable.Buffer[String]()

  def configure(args: List[String]) {
    args match {
      case Nil =>
        ???
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

  def run(files: List[String]) {
    for (file <- files) {
      try {
        object korn extends Korn(file)
        korn.run()
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
