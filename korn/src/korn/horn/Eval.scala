package korn.horn

import korn.c._
import korn.smt._

object Eval {
  var useVerifierAssert = false
}

class Eval(unit: Unit) {
  import unit._
  import unit.sig._

  def nondet_bounded(name: String, typ: Type, st: State): (Val, State) = {
    val (x, _, v) = nondet("$" + name, typ)
    val b = bounds(x, typ)

    val sort = resolve(typ)
    val call = "$__VERIFIER_nondet_" + name
    val fun = Fun(call, List(sort), Sort.bool)
    val pred = CEX(fun)
    preds += pred
    val c = pred(x)
    clause(st, c, "counterexample trace")

    // korn.avoid(st.path contains False, "nondet choice in unreachable state")

    (v, st and b and c)
  }

  def value_test(expr: Expr, st: State) = {
    Val.truth(value(expr, st))
  }

  def value(expr: Expr, st: State): Val = {
    expr match {
      case Id(name) if st contains name =>
        st(name)

      case Id(name) if consts contains name =>
        consts(name)

      case Lit(value: Char) =>
        Val(Pure.const(value), Signed._char)

      case Lit(value: Int) =>
        Val(Pure.const(value), Signed._int)

      case Lit(value: Long) =>
        Val(Pure.const(value), Signed._long)

      case Lit(value) =>
        korn.error("unknown constant: " + value + " of type " + value.getClass())

      case PreOp("&", PreOp("*", ptr)) =>
        value(ptr, st)

      /* case Dot(base, field) =>
        val _base = eval(base, st)
        st dot (_base, field)

      case PreOp("&", Arrow(ptr, field)) =>
        val _ptr = eval(ptr, st)
        st arrow (_ptr, field) */

      case Index(base, index) =>
        val _base = value(base, st)
        val _index = value(index, st)
        Val.select(_base, _index)

      case PreOp("&", Index(base, index)) =>
        val expr = BinOp("+", base, index)
        value(expr, st)

      case PreOp(op, arg) =>
        val _arg = value(arg, st)
        Val.preop(op, _arg)

      case BinOp(op, arg1, arg2) =>
        val _arg1 = value(arg1, st)
        val _arg2 = value(arg2, st)
        Val.binop(op, _arg1, _arg2)

      case Question(test, left, right) =>
        val _test = value_test(test, st)
        val _left = value(left, st)
        val _right = value(right, st)
        Val.question(_test, _left, _right)

      case Cast(typ, expr) =>
        value(expr, st)

      case _ =>
        korn.error("cannot evaluate: " + expr)
    }
  }

  class scoped(proc: Proc) {
    import proc._

    def assign(lhs: Expr, rhs: Expr, st0: State, st1: State): (Val, Val, State) = {
      lhs match {
        case Id(name) if st1 contains name =>
          val _old = st1(name)
          val (_rhs, st2) = rval(rhs, st0, st1)
          (_old, _rhs, st2 + (name -> _rhs))

        case Id(name) =>
          korn.error("no such variable: " + name + " in " + st1)

        case Index(Id(name), idx) if st1 contains name =>
          val _old = st1(name)
          val (_rhs, st2) = rval(rhs, st0, st1)
          val (_idx, st3) = rval(idx, st0, st2)
          val _new = Val.store(_old, _idx, _rhs)
          (Val.select(_old, _idx), _rhs, st3 + (name -> _new))

        // XXX: hacky way to support 2-dimensional arrays
        case Index(Index(Id(name), idx1), idx2) if st1 contains name =>
          val _old0 = st1(name)
          val (_rhs, st2) = rval(rhs, st0, st1)
          val (_idx1, st3) = rval(idx1, st0, st2)
          val (_idx2, st4) = rval(idx2, st0, st3)
          val _old1 = Val.select(_old0, _idx1)
          val _old2 = Val.select(_old1, _idx2)
          val _new1 = Val.store(_old1, _idx2, _rhs)
          val _new0 = Val.store(_old0, _idx1, _new1)
          (_old2, _rhs, st4 + (name -> _new0))

        /* case PreOp("*", ptr) =>
        for (
          (_rhs, st2) <- rval(rhs, st1);
          (_ptr, st3) <- rval(ptr, st2)
        )
          yield {
            // val (_sec, _old, st4) = st3 Val.store (_ptr, _rhs)
            // (_old, _rhs, st4)
            ???
          }

      case Arrow(ptr, field) =>
        for (
          (_rhs, st2) <- rval(rhs, st1);
          (_ptr, st3) <- rval(ptr, st2)
        )
          yield {
            // val _ptr_field = ctx arrow (_ptr, field)
            // val (_sec, _old, st4) = st3 Val.store (_ptr_field, _rhs)
            // (_old, _rhs, st4)
            ???
          } */
      }
    }

    def rval_test(expr: Expr, st0: State, st1: State): (Pure, State) = {
      val (_res, st2) = rval(expr, st0, st1)
      (Val.truth(_res), st2)
    }

    def rvals(exprs: List[Expr], st0: State, st1: State): (List[Val], State) = {
      exprs match {
        case Nil =>
          (Nil, st1)

        case expr :: rest => // XXX: right-to-left, should be parallel
          val (xs, st2) = rvals(rest, st0, st1)
          val (x, st3) = rval(expr, st0, st2)
          (x :: xs, st3)
      }
    }

    def sizeof(typ: Type, st: State): Pure = {
      typ match {
        case ArrayType(elem, dim) =>
          val k = sizeof(elem, st)
          val Val(n, _) = value(dim, st)
          k * n
        case _ =>
          val k = Type.sizeof(typ)
          Pure.const(k)
      }
    }

    def rval(expr: Expr, st0: State, st1: State): (Val, State) = {
      expr match {
        case BinOp(",", fst, snd) =>
          val (_fst, st2) = rval(fst, st0, st1)
          val (_snd, st3) = rval(fst, st0, st2)
          (_snd, st3)

        case id: Id =>
          (value(id, st1), st1)

        case lit: Lit =>
          (value(lit, st1), st1)

        case PreOp("&", id: Id) =>
          korn.error("cannot take address of variable: " + expr)

        case PreOp("&", PreOp("*", ptr)) =>
          rval(ptr, st0, st1)

        case PreOp("&", Index(base, index)) =>
          val expr = BinOp("+", base, index)
          rval(expr, st0, st1)

        case Index(arg1, arg2) =>
          val (_arg1, st2) = rval(arg1, st0, st1)
          val (_arg2, st3) = rval(arg2, st0, st2)
          (Val.select(_arg1, _arg2), st3)

        /* case PreOp("&", Arrow(ptr, field)) =>
        for ((_ptr, st2) = rval(ptr, st1))
          yield {
            val _ptr_field = st2 arrow (_ptr, field)
            (_ptr_field, st2)
          }

      case PreOp("*", ptr) =>
      for ((_ptr, st2) = rval(ptr, st1)) yield {
        val (_sec, _res) = st2 load _ptr
        (_res, st2)
      }

    case Arrow(ptr, field) =>
      for ((_ptr, st2) = rval(ptr, st1)) yield {
        val _ptr_field = ctx arrow (_ptr, field)
        val (_sec, _res) = st2 load _ptr_field
        (_res, st2)
        ???
      } */

        case PreOp("++", arg) =>
          val (_, _rhs, st2) = assign(arg, BinOp("+", arg, Lit(1)), st0, st1)
          (_rhs, st2)
        case PreOp("--", arg) =>
          val (_, _rhs, st2) = assign(arg, BinOp("-", arg, Lit(1)), st0, st1)
          (_rhs, st2)

        case PostOp("++", arg) =>
          val (_val, _, st2) = assign(arg, BinOp("+", arg, Lit(1)), st0, st1)
          (_val, st2)
        case PostOp("--", arg) =>
          val (_val, _, st2) = assign(arg, BinOp("-", arg, Lit(1)), st0, st1)
          (_val, st2)

        case BinOp("=", lhs, rhs) =>
          val (_, _rhs, st2) = assign(lhs, rhs, st0, st1)
          (_rhs, st2)

        // don't fork if the rhs has no side effects
        case BinOp("||", arg1, arg2) if !Expr.hasEffects(arg2) =>
          val (_arg1, st2) = rval_test(arg1, st0, st1)
          val (_arg2, st3) = rval_test(arg2, st0, st2)
          (Val.bool(_arg1 or _arg2), st3)

        case BinOp("&&", arg1, arg2) if !Expr.hasEffects(arg2) =>
          val (_arg1, st2) = rval_test(arg1, st0, st1)
          val (_arg2, st3) = rval_test(arg2, st0, st2)
          (Val.bool(_arg1 and _arg2), st3)

        // shortcut evaluation yields two states
        case BinOp("||", arg1, arg2) =>
          val (_arg1, st2) = rval_test(arg1, st0, st1)
          val (_arg2, st3) = rval_test(arg2, st0, st2 and !_arg1)
          val (res4, st4) = branch.join(st0, Sort.bool, st2 and _arg1, True, "or left", st3, _arg2, "or right", proc)
          (Val.bool(res4), st4)

        case BinOp("&&", arg1, arg2) =>
          val (_arg1, st2) = rval_test(arg1, st0, st1)
          val (_arg2, st3) = rval_test(arg2, st0, st2 and _arg1)
          val (res4, st4) = branch.join(st0, Sort.bool, st2 and !_arg1, False, "and left", st3, _arg2, "and right", proc)
          (Val.bool(res4), st4)

        case PreOp(op, arg) =>
          val (_arg, st2) = rval(arg, st0, st1)
          (Val.preop(op, _arg), st2)

        case BinOp(op, arg1, arg2) =>
          val (_arg1, st2) = rval(arg1, st0, st1)
          val (_arg2, st3) = rval(arg2, st0, st2)
          (Val.binop(op, _arg1, _arg2), st3)

        case Question(test, arg1, arg2) =>
          val (_test, st2) = rval_test(test, st0, st1)
          val (_arg1, sty) = rval(arg1, st0, st2 and _test)
          val (_arg2, stn) = rval(arg2, st0, st2 and !_test)

          if (false && st2.store == sty.store && st2.store == stn.store) {
            (Val.question(_test, _arg1, _arg2), st2)
          } else {
            val st3 = branch.join(st0, sty, "ite left", stn, "ite right", proc)
            (Val.question(_test, _arg1, _arg2), st3)
          }

        case stdlib.exit() =>
          (Val.unit, st1 and False)

        case stdlib.abort() =>
          // clause(st1, False, "abort")
          (Val.unit, st1 and False)

        case stdlib.__assert_fail(args) =>
          // ignore arguments
          (Val.unit, st1 and False)

        case stdlib.assert(phi) =>
          val (_phi, st2) = rval_test(phi, st0, st1)
          goal(st2, _phi, "assert " + _phi)
          (Val.unit, st2)

        case stdlib.assume(phi) =>
          val (_phi, st2) = rval_test(phi, st0, st1)
          val st3 = st2 and _phi
          (Val.unit, st3)

        case __VERIFIER.assume(cond) =>
          val (_cond, st2) = rval_test(cond, st0, st1)
          (Val.unit, st2 and _cond)

        case __VERIFIER.assert(phi) if Eval.useVerifierAssert =>
          val (_phi, st2) = rval_test(phi, st0, st1)
          goal(st2, _phi, "VERIFIER_assert " + _phi)
          (Val.unit, st2)

        case __VERIFIER.error() =>
          clause(st1, False, "error")
          (Val.unit, st1)

        case __VERIFIER.reach_error() =>
          clause(st1, False, "error")
          (Val.unit, st1)

        case __VERIFIER.nondet_bool() =>
          nondet_bounded("bool", Type._Bool, st1)

        // signed integers
        case __VERIFIER.nondet_char() =>
          nondet_bounded("char", Signed._char, st1)

        case __VERIFIER.nondet_short() =>
          nondet_bounded("short", Signed._short, st1)

        case __VERIFIER.nondet_int() =>
          nondet_bounded("int", Signed._int, st1)

        case __VERIFIER.nondet_long() =>
          nondet_bounded("long", Signed._long, st1)

        case __VERIFIER.nondet_longlong() =>
          nondet_bounded("longlong", Signed._long_long, st1)

        // unsigned integers
        case __VERIFIER.nondet_uchar() =>
          nondet_bounded("uchar", Unsigned._char, st1)

        case __VERIFIER.nondet_ushort() =>
          nondet_bounded("ushort", Unsigned._short, st1)

        case __VERIFIER.nondet_uint() =>
          nondet_bounded("uint", Unsigned._int, st1)

        case __VERIFIER.nondet_ulong() =>
          nondet_bounded("ulong", Unsigned._long, st1)

        case __VERIFIER.nondet_ulonglong() =>
          nondet_bounded("ulonglong", Unsigned._long_long, st1)

        case __VERIFIER.nondet_float() =>
          nondet_bounded("float", Type._float, st1)

        case __VERIFIER.nondet_double() =>
          nondet_bounded("double", Type._double, st1)

        // nonstandard
        case __VERIFIER.nondet_unsigned_char() =>
          nondet_bounded("uchar", Unsigned._char, st1)

        case __VERIFIER.nondet_unsigned_short() =>
          nondet_bounded("ushort", Unsigned._short, st1)

        case __VERIFIER.nondet_unsigned() =>
          nondet_bounded("int", Signed._int, st1)

        case __VERIFIER.nondet_unsigned_int() =>
          nondet_bounded("int", Unsigned._int, st1)

        case __VERIFIER.nondet_unsigned_long() =>
          nondet_bounded("ulong", Unsigned._long, st1)

        // explicit size
        case __VERIFIER.nondet_u8() =>
          nondet_bounded("uchar", Unsigned._char, st1)

        case __VERIFIER.nondet_u16() =>
          nondet_bounded("ushort", Unsigned._short, st1)

        case __VERIFIER.nondet_u32() =>
          nondet_bounded("uint", Unsigned._int, st1)

        // a bit hackish
        case SizeOfExpr(expr) =>
          val Val(_, typ) = value(expr, st1)
          val n = sizeof(typ, st1)
          val v = Val(n, Unsigned._int)
          (v, st1)

        case SizeOfType(typ) =>
          val n = sizeof(typ, st1)
          val v = Val(n, Unsigned._int)
          (v, st1)

        case expr @ FunCall(name, args) =>
          korn.avoid(name startsWith "__VERIFIER_nondet", "unsupported function: " + name)

          val pre = pres(name)
          val post = posts(name)
          val (ret, _) = funs(name)

          val (_in, st2) = rvals(args, st0, st1)

          val (_ret, _out) = ret match {
            case Type._void =>
              (Val.unit, None)
            case _ =>
              var (_, _, x) = nondet("$result", ret)
              (x, Some(x))
          }

          call.pre(st0, st2, name, pre, _in, proc)
          val st3 = call.post(st0, st2, name, post, _in, _out, proc)

          (_ret, st3)

        case Cast(typ, expr) =>
          rval(expr, st0, st1)

        case _ =>
          korn.error("cannot compute: " + expr)
      }
    }
  }
}
