package korn

package object horn {
  import korn.c._
  import korn.smt._

  type Typing = Map[String, Sort]
  type Store = Map[String, Val]

  def is_nondet(name: String) = {
    name startsWith "__VERIFIER_nondet"
  }

  val known = Set(
    "main",
    "abort",
    "exit",
    "__VERIFIER_assume",
    "__VERIFIER_error"
  )

  object stdlib {
    object abort extends FunCall.nullary("abort")
    object exit extends FunCall.nullary("exit")
    object exit_with_result extends FunCall.unary("exit")
    object assume extends FunCall.unary("assume")
    object assert extends FunCall.unary("assert")
    object malloc extends FunCall.unary("malloc")
    object __assert_fail extends FunCall.nary("__assert_fail")
  }

  object __VERIFIER {
    object assume extends FunCall.unary("__VERIFIER_assume")
    object assert extends FunCall.unary("__VERIFIER_assert")
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
    object nondet_unsigned_short extends FunCall.nullary("__VERIFIER_nondet_unsigned_short")
    object nondet_unsigned extends FunCall.nullary("__VERIFIER_nondet_unsigned")
    object nondet_unsigned_int extends FunCall.nullary("__VERIFIER_nondet_unsigned_int")
    object nondet_unsigned_long extends FunCall.nullary("__VERIFIER_nondet_unsigned_long")



    object nondet_float extends FunCall.nullary("__VERIFIER_nondet_float")
    object nondet_double extends FunCall.nullary("__VERIFIER_nondet_double")
  }
}
