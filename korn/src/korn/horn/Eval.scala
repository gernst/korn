package korn.horn

import korn.c._
import korn.smt._

class Eval(unit: Unit) {
  import unit._
  import unit.sig._

  def nondet_bounded(name: String, typ: Type, st: State): List[(Val, State)] = {
    val (x, _, v) = nondet("$" + name, typ)
    val b = bounds(x, typ)

    val sort = resolve(typ)
    val call = "$__VERIFIER_nondet_" + name
    val fun = Fun(call, List(sort), Sort.bool)
    val pred = CEX(fun)
    preds += pred
    val c = pred(x)
    goal(st, c, "counterexample trace")

    korn.avoid(st.path contains False, "nondet choice in unreachable state")

    List((v, st and b and c))
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

      case _ =>
        korn.error("cannot evaluate: " + expr)
    }
  }

  class scoped(proc: Proc) {
    import proc._

    def assign(lhs: Expr, rhs: Expr, st1: State): List[(Val, Val, State)] = {
      lhs match {
        case Id(name) if st1 contains name =>
          val _old = st1(name)
          for ((_rhs, st2) <- rval(rhs, st1))
            yield (_old, _rhs, st2 + (name -> _rhs))

        case Id(name) =>
          korn.error("no such variable: " + name + " in " + st1)

        case Index(Id(name), idx) if st1 contains name =>
          val _old = st1(name)
          for (
            (_rhs, st2) <- rval(rhs, st1);
            (_idx, st3) <- rval(idx, st2)
          )
            yield {
              val _new = Val.store(_old, _idx, _rhs)
              (Val.select(_old, _idx), _rhs, st3 + (name -> _new))
            }

        // XXX: hacky way to support 2-dimensional arrays
        case Index(Index(Id(name), idx1), idx2) if st1 contains name =>
          val _old0 = st1(name)
          for (
            (_rhs, st2) <- rval(rhs, st1);
            (_idx1, st3) <- rval(idx1, st2);
            (_idx2, st4) <- rval(idx2, st3)
          )
            yield {
              val _old1 = Val.select(_old0, _idx1)
              val _old2 = Val.select(_old1, _idx2)
              val _new1 = Val.store(_old1, _idx2, _rhs)
              val _new0 = Val.store(_old0, _idx1, _new1)
              (_old2, _rhs, st4 + (name -> _new0))
            }

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

    def rval_test(expr: Expr, st1: State): List[(Pure, State)] = {
      for ((_res, st2) <- rval(expr, st1))
        yield (Val.truth(_res), st2)
    }

    def rvals(exprs: List[Expr], st1: State): List[(List[Val], State)] = {
      exprs match {
        case Nil =>
          List((Nil, st1))

        case expr :: rest => // XXX: right-to-left, should be parallel
          for (
            (xs, st2) <- rvals(rest, st1);
            (x, st3) <- rval(expr, st2)
          )
            yield (x :: xs, st3)
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

    def rval(expr: Expr, st1: State): List[(Val, State)] = {
      expr match {
        case BinOp(",", fst, snd) =>
          for (
            (_fst, st2) <- rval(fst, st1);
            (_snd, st3) <- rval(snd, st2)
          )
            yield (_snd, st3)

        case id: Id =>
          List((value(id, st1), st1))

        case lit: Lit =>
          List((value(lit, st1), st1))

        case PreOp("&", id: Id) =>
          korn.error("cannot take address of variable: " + expr)

        case PreOp("&", PreOp("*", ptr)) =>
          rval(ptr, st1)

        case PreOp("&", Index(base, index)) =>
          val expr = BinOp("+", base, index)
          rval(expr, st1)

        case Index(arg1, arg2) =>
          for (
            (_arg1, st2) <- rval(arg1, st1);
            (_arg2, st3) <- rval(arg2, st2)
          )
            yield (Val.select(_arg1, _arg2), st3)

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
          for ((_, _rhs, st2) <- assign(arg, BinOp("+", arg, Lit(1)), st1))
            yield (_rhs, st2)
        case PreOp("--", arg) =>
          for ((_, _rhs, st2) <- assign(arg, BinOp("-", arg, Lit(1)), st1))
            yield (_rhs, st2)

        case PostOp("++", arg) =>
          for ((_val, _, st2) <- assign(arg, BinOp("+", arg, Lit(1)), st1))
            yield (_val, st2)
        case PostOp("--", arg) =>
          for ((_val, _, st2) <- assign(arg, BinOp("-", arg, Lit(1)), st1))
            yield (_val, st2)

        case BinOp("=", lhs, rhs) =>
          for ((_, _rhs, st2) <- assign(lhs, rhs, st1))
            yield (_rhs, st2)

        // don't fork if the rhs has no side effects
        case BinOp("||", arg1, arg2) if !Expr.hasEffects(arg2) =>
          for (
            (_arg1, st2) <- rval_test(arg1, st1);
            (_arg2, st3) <- rval_test(arg2, st2)
          )
            yield (Val.bool(_arg1 or _arg2), st3)

        case BinOp("&&", arg1, arg2) if !Expr.hasEffects(arg2) =>
          for (
            (_arg1, st2) <- rval_test(arg1, st1);
            (_arg2, st3) <- rval_test(arg2, st2)
          )
            yield (Val.bool(_arg1 and _arg2), st3)

        // shortcut evaluation yields two states
        case BinOp("||", arg1, arg2) =>
          val _arg1_st = rval_test(arg1, st1)

          val left =
            for ((_arg1, st2) <- _arg1_st)
              yield (Val.bool(True), st2 and _arg1)

          val right =
            for (
              (_arg1, st2) <- _arg1_st;
              (_arg2, st3) <- rval_test(arg2, st2 and !_arg1)
            )
              yield (Val.bool(_arg2), st3)

          // val st4 = branch.join(st2, "or left", st3, "or right", proc)
          left ++ right

        case BinOp("&&", arg1, arg2) =>
          val _arg1_st = rval_test(arg1, st1)

          val left =
            for ((_arg1, st2) <- _arg1_st)
              yield (Val.bool(False), st2 and !_arg1)

          val right =
            for (
              (_arg1, st2) <- _arg1_st;
              (_arg2, st3) <- rval_test(arg2, st2 and _arg1)
            )
              yield (Val.bool(_arg2), st3)

          // val st4 = branch.join(st2, "or left", st3, "or right", proc)
          left ++ right

        case PreOp(op, arg) =>
          for ((_arg, st2) <- rval(arg, st1))
            yield (Val.preop(op, _arg), st2)

        case BinOp(op, arg1, arg2) =>
          for (
            (_arg1, st2) <- rval(arg1, st1);
            (_arg2, st3) <- rval(arg2, st2)
          )
            yield (Val.binop(op, _arg1, _arg2), st3)

        case Question(test, arg1, arg2) =>
          val _test_st = rval_test(test, st1)

          val left =
            for (
              (_test, st2) <- _test_st;
              (_arg1, sty) <- rval(arg1, st2 and _test)
            )
              yield (_arg1, sty)

          val right =
            for (
              (_test, st2) <- _test_st;
              (_arg2, stn) <- rval(arg2, st2 and !_test)
            )
              yield (_arg2, stn)

          left ++ right

        /*
          val (_arg2, stn) = rval(arg2, st2 and !_test)

          if (false && st2.store == sty.store && st2.store == stn.store) {
            (Val.question(_test, _arg1, _arg2), st2)
          } else {
            val st3 = branch.join(sty, "ite left", stn, "ite right", proc)
            (Val.question(_test, _arg1, _arg2), st3)
          } */

        case stdlib.exit() =>
          List((Val.unit, st1 and False))

        case stdlib.abort() =>
          // clause(st1, False, "abort")
          List((Val.unit, st1 and False))

        case stdlib.__assert_fail(args) =>
          // ignore arguments
          List((Val.unit, st1 and False))

        case stdlib.assert(phi) =>
          for ((_phi, st2) <- rval_test(phi, st1))
            yield {
              goal(st2, _phi, "assert " + _phi)
              (Val.unit, st2)
            }

        case stdlib.assume(phi) =>
          for ((_phi, st2) <- rval_test(phi, st1))
            yield (Val.unit, st2 and _phi)

        case __VERIFIER.assume(phi) =>
          for ((_phi, st2) <- rval_test(phi, st1))
            yield (Val.unit, st2 and _phi)

        case __VERIFIER.error() =>
          clause(st1, False, "error")
          List((Val.unit, st1))

        case __VERIFIER.reach_error() =>
          clause(st1, False, "error")
          List((Val.unit, st1))

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
          List((v, st1))

        case SizeOfType(typ) =>
          val n = sizeof(typ, st1)
          val v = Val(n, Unsigned._int)
          List((v, st1))

        case expr @ FunCall(name, args) =>
          korn.avoid(name startsWith "__VERIFIER_nondet", "unsupported function: " + name)

          val pre = pres(name)
          val post = posts(name)
          val (ret, _) = funs(name)

          val (_ret, _out) = ret match {
            case Type._void =>
              (Val.unit, None)
            case _ =>
              var (_, _, x) = nondet("$result", ret)
              (x, Some(x))
          }

          for ((_in, st2) <- rvals(args, st1))
            yield {
              // XXX: need to return the modifed heap
              val _pre = pre(st2, toplevel.names, _in)
              clause(st2, _pre, "pre " + name)

              val st3 = st2 ++ toplevel.havoc
              val _call = post(st2, st3, toplevel.names, _in, _out)
              (_ret, st3 and _call)
            }

        case Cast(typ, expr) =>
          rval(expr, st1)

        case _ =>
          korn.error("cannot compute: " + expr)
      }
    }
  }
}
