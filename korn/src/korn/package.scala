package object korn {
  import korn.c._
  import korn.smt._

  type Typing = Map[String, Sort]
  type Store = Map[String, Pure]

  object Store {
    def apply(keys: List[String], values: List[Pure]) = {
      Map(keys zip values: _*)
    }
  }

  val known = Set(
    "main",
    "abort",
    "exit",
    "__VERIFIER_nondet_int",
    "__VERIFIER_assume",
    "__VERIFIER_error"
  )

  object stdlib {
    object abort extends FunCall.nullary("abort")
    object exit extends FunCall.nullary("exit")
    object assume extends FunCall.unary("assume")
    object assert extends FunCall.unary("assert")
    object malloc extends FunCall.unary("malloc")
  }

  object __VERIFIER {
    object assume extends FunCall.unary("__VERIFIER_assume")
    object error extends FunCall.nullary("__VERIFIER_error")
    object reach_error extends FunCall.nullary("reach_error")

    object nondet_bool extends FunCall.nullary("__VERIFIER_nondet_bool")

    object nondet_char extends FunCall.nullary("__VERIFIER_nondet_char")
    object nondet_short extends FunCall.nullary("__VERIFIER_nondet_short")
    object nondet_int extends FunCall.nullary("__VERIFIER_nondet_int")
    object nondet_long extends FunCall.nullary("__VERIFIER_nondet_long")
    object nondet_longlong extends FunCall.nullary("__VERIFIER_nondet_longlong")

    object nondet_uchar extends FunCall.nullary("__VERIFIER_nondet_uchar")
    object nondet_ushort extends FunCall.nullary("__VERIFIER_nondet_ushort")
    object nondet_uint extends FunCall.nullary("__VERIFIER_nondet_uint")
    object nondet_ulong extends FunCall.nullary("__VERIFIER_nondet_ulong")
    object nondet_ulonglong extends FunCall.nullary("__VERIFIER_nondet_ulonglong")

    object nondet_u8 extends FunCall.nullary("__VERIFIER_nondet_u8")
    object nondet_u16 extends FunCall.nullary("__VERIFIER_nondet_u16")
    object nondet_u32 extends FunCall.nullary("__VERIFIER_nondet_u32")

    object nondet_unsigned_char extends FunCall.nullary("__VERIFIER_nondet_unsigned_char")
    object nondet_unsigned extends FunCall.nullary("__VERIFIER_nondet_unsigned")
    object nondet_unsigned_int extends FunCall.nullary("__VERIFIER_nondet_unsigned_int")
    object nondet_unsigned_long extends FunCall.nullary("__VERIFIER_nondet_unsigned_long")
  }

  def log() = {
    System.err.println()
  }

  def log(msg: String) = {
    System.err.println(msg)
  }

  def error(msg: => String) = {
    throw new Error(msg)
  }

  def ensure(phi: Boolean, msg: => String) {
    if (!phi) error(msg)
  }

  def avoid(phi: Boolean, msg: => String) {
    if (phi) error(msg)
  }

  def unpack[A](a: Option[A], msg: => String) = {
    a getOrElse error(msg)
  }
}
