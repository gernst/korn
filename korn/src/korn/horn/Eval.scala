package korn.horn

import korn.c._
import korn.smt._

class Eval(unit: Unit) {
  import unit._
  import unit.sig._

  def bool(prop: Prop) = {
    prop match {
      case _ => Pure.bool(prop)
    }
  }

  def truth(pure: Pure) = {
    pure match {
      case Pure.bool(prop) => prop
      case _               => Prop.truth(pure)
    }
  }

  def index(arg1: Pure, arg2: Pure) = {
    arg1 select arg2
  }

  def preop(op: String, arg: Pure): Pure = {
    op match {
      case "+" => arg
      case "-" => -arg
      case "!" => bool(!truth(arg))
    }
  }

  def binop(op: String, arg1: Pure, arg2: Pure): Pure = {
    op match {
      case "+"  => arg1 + arg2
      case "-"  => arg1 - arg2
      case "*"  => arg1 * arg2
      case "/"  => arg1 / arg2
      case "%"  => arg1 % arg2
      case "==" => bool(arg1 === arg2)
      case "!=" => bool(arg1 !== arg2)
      case "<"  => bool(arg1 < arg2)
      case "<=" => bool(arg1 <= arg2)
      case ">"  => bool(arg1 > arg2)
      case ">=" => bool(arg1 >= arg2)
    }
  }

  def nondet_int(name: String, typ: Type, st1: State): (Pure, State) = {
    val bound = Pure.one << (Type.sizeof(typ) * 8 - 1)
    val min = -bound
    val max = bound - 1
    nondet_int(name, min, max, st1)
  }

  def nondet_uint(name: String, typ: Type, st1: State): (Pure, State) = {
    val bound = Pure.one << (Type.sizeof(typ) * 8)
    val min = Pure.zero
    val max = bound - 1
    nondet_int(name, min, max, st1)
  }

  def nondet_int(name: String, min: Pure, max: Pure, st1: State): (Pure, State) = {
    var x = fresh("$" + name, Sort.int)
    if (korn.Main.unbounded) {
      (x, st1)
    } else {
      val bounds = (min <= x) and (x <= max)
      val st2 = st1 and bounds
      (x, st2)
    }
  }

  def value_test(expr: Expr, st: State) = {
    truth(value(expr, st))
  }

  def value(expr: Expr, st: State): Pure = {
    expr match {
      case Id(name) if st contains name =>
        st(name)

      case Id(name) if consts contains name =>
        consts(name)

      case Lit(value: Int) =>
        Pure.const(value)

      case Lit(value: Long) =>
        Pure.const(value)

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
        _base select _index

      case PreOp("&", Index(base, index)) =>
        val expr = BinOp("+", base, index)
        value(expr, st)

      case PreOp(op, arg) =>
        val _arg = value(arg, st)
        preop(op, _arg)

      case BinOp(op, arg1, arg2) =>
        val _arg1 = value(arg1, st)
        val _arg2 = value(arg2, st)
        binop(op, _arg1, _arg2)

      case Question(test, left, right) =>
        val _test = value_test(test, st)
        val _left = value(left, st)
        val _right = value(right, st)
        _test ? (_left, _right)

      case _ =>
        korn.error("cannot evaluate: " + expr)
    }
  }

  class scoped(proc: Proc) {
    import proc._

    def assign(lhs: Expr, rhs: Expr, st0: Origin, st1: State): (Pure, Pure, State) = {
      lhs match {
        case Id(name) if st1 contains name =>
          val _old = st1(name)
          val (_rhs, st2) = rval(rhs, st0, st1)
          (_old, _rhs, st2 + (name -> _rhs))

        case Index(Id(name), idx) if st1 contains name =>
          val _old = st1(name)
          val (_rhs, st2) = rval(rhs, st0, st1)
          val (_idx, st3) = rval(idx, st0, st2)
          val _new = _old store (_idx, _rhs)
          (_old select _idx, _rhs, st3 + (name -> _new))

        // XXX: hacky way to support 2-dimensional arrays
        case Index(Index(Id(name), idx1), idx2) if st1 contains name =>
          val _old0 = st1(name)
          val (_rhs, st2) = rval(rhs, st0, st1)
          val (_idx1, st3) = rval(idx1, st0, st2)
          val (_idx2, st4) = rval(idx2, st0, st3)
          val _old1 = _old0 select _idx1
          val _old2 = _old1 select _idx2
          val _new1 = _old1 store (_idx2, _rhs)
          val _new0 = _old0 store (_idx1, _new1)
          (_old2, _rhs, st3 + (name -> _new0))

        /* case PreOp("*", ptr) =>
        for (
          (_rhs, st2) <- rval(rhs, st1);
          (_ptr, st3) <- rval(ptr, st2)
        )
          yield {
            // val (_sec, _old, st4) = st3 store (_ptr, _rhs)
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
            // val (_sec, _old, st4) = st3 store (_ptr_field, _rhs)
            // (_old, _rhs, st4)
            ???
          } */
      }
    }

    def rval_test(expr: Expr, st0: Origin, st1: State): (Prop, State) = {
      val (_res, st2) = rval(expr, st0, st1)
      (truth(_res), st2)
    }

    def rvals(exprs: List[Expr], st0: Origin, st1: State): (List[Pure], State) = {
      exprs match {
        case Nil =>
          (Nil, st1)

        case expr :: rest => // XXX: right-to-left, should be parallel
          val (xs, st2) = rvals(rest, st0, st1)
          val (x, st3) = rval(expr, st0, st2)
          (x :: xs, st3)
      }
    }

    def rval(expr: Expr, st0: Origin, st1: State): (Pure, State) = {
      expr match {
        case BinOp(",", fst, snd) =>
          val (_fst, st2) = rval(fst, st0, st1)
          val (_snd, st3) = rval(fst, st0, st2)
          (_snd, st3)

        case Id(name) if st1 contains name =>
          (st1(name), st1)

        case Id(name) if consts contains name =>
          (consts(name), st1)

        case Id(name) =>
          korn.error("unknown identifier: " + name)

        case Lit(value: Int) =>
          (Pure.const(value), st1)

        case Lit(value: Long) =>
          (Pure.const(value), st1)

        case Lit(value) =>
          korn.error("unknown constant: " + value + " of type " + value.getClass())

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
          (index(_arg1, _arg2), st3)

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
          (bool(_arg1 or _arg2), st3)

        case BinOp("&&", arg1, arg2) if !Expr.hasEffects(arg2) =>
          val (_arg1, st2) = rval_test(arg1, st0, st1)
          val (_arg2, st3) = rval_test(arg2, st0, st2)
          (bool(_arg1 and _arg2), st3)

        // shortcut evaluation yields two states
        case BinOp("||", arg1, arg2) =>
          val (_arg1, st2) = rval_test(arg1, st0, st1)
          val (_arg2, st3) = rval_test(arg2, st0, st2 and !_arg1)
          val st4 = join(st0, st2, "or left", st3, "or right")
          (bool(_arg1 or _arg2), st4)

        case BinOp("&&", arg1, arg2) =>
          val (_arg1, st2) = rval_test(arg1, st0, st1)
          val (_arg2, st3) = rval_test(arg2, st0, st2 and _arg1)
          val st4 = join(st0, st2, "and left", st3, "and right")
          (bool(_arg1 and _arg2), st4)

        case PreOp(op, arg) =>
          val (_arg, st2) = rval(arg, st0, st1)
          (preop(op, _arg), st2)

        case BinOp(op, arg1, arg2) =>
          val (_arg1, st2) = rval(arg1, st0, st1)
          val (_arg2, st3) = rval(arg2, st0, st2)
          (binop(op, _arg1, _arg2), st3)

        /* case Question(test, left, right) =>
        val _test_st = rval_test(test, st1)

        val _true =
          val
            (_test, st2) = _test_st;
            st2_true = st2 and _test;
            (_left, st3) = rval(left, st2_true)
          )
            yield (_left, st3)

        val _false =
          val
            (_test, st2) = _test_st;
            st2_false = st2 and !_test;
            (_right, st3) = rval(right, st2_false)
          )
            yield (_right, st3)

        _true ++ _false */

        case stdlib.exit() =>
          (null, st1 and False)

        case stdlib.abort() =>
          // clause(st1, False, "abort")
          (null, st1 and False)

        case stdlib.assert(phi) =>
          val (_phi, st2) = rval_test(phi, st0, st1)
          goal(st2, _phi, "assert " + _phi)
          (null, st2)

        case stdlib.assume(phi) =>
          val (_phi, st2) = rval_test(phi, st0, st1)
          val st3 = st2 and _phi
          (null, st3)

        case __VERIFIER.assume(cond) =>
          val (_cond, st2) = rval_test(cond, st0, st1)
          (null, st2 and _cond)

        case __VERIFIER.error() =>
          clause(st1, False, "error")
          (null, st1)

        case __VERIFIER.reach_error() =>
          clause(st1, False, "error")
          (null, st1)

        case __VERIFIER.nondet_bool() =>
          var x = fresh("$bool", Sort.int)
          val bounds = (x === Pure.zero) or (x === Pure.one)
          val st2 = st1 and bounds
          (x, st2)

        // signed integers
        case __VERIFIER.nondet_char() =>
          nondet_int("char", Signed._char, st1)

        case __VERIFIER.nondet_short() =>
          nondet_int("short", Signed._short, st1)

        case __VERIFIER.nondet_int() =>
          nondet_int("int", Signed._int, st1)

        case __VERIFIER.nondet_long() =>
          nondet_int("long", Signed._long, st1)

        case __VERIFIER.nondet_longlong() =>
          nondet_int("longlong", Signed._long_long, st1)

        // unsigned integers
        case __VERIFIER.nondet_uchar() =>
          nondet_uint("uchar", Unsigned._char, st1)

        case __VERIFIER.nondet_ushort() =>
          nondet_uint("ushort", Unsigned._short, st1)

        case __VERIFIER.nondet_uint() =>
          nondet_uint("uint", Unsigned._int, st1)

        case __VERIFIER.nondet_ulong() =>
          nondet_uint("ulong", Unsigned._long, st1)

        case __VERIFIER.nondet_ulonglong() =>
          nondet_uint("ulonglong", Unsigned._long_long, st1)

        // nonstandard
        case __VERIFIER.nondet_unsigned_char() =>
          nondet_uint("uchar", Unsigned._char, st1)

        case __VERIFIER.nondet_unsigned() =>
          nondet_uint("int", Signed._int, st1)

        case __VERIFIER.nondet_unsigned_int() =>
          nondet_uint("int", Unsigned._int, st1)

        case __VERIFIER.nondet_unsigned_long() =>
          nondet_uint("ulong", Unsigned._long, st1)

        // explicit size
        case __VERIFIER.nondet_u8() =>
          nondet_uint("uchar", Unsigned._char, st1)

        case __VERIFIER.nondet_u16() =>
          nondet_uint("ushort", Unsigned._short, st1)

        case __VERIFIER.nondet_u32() =>
          nondet_uint("uint", Unsigned._int, st1)

        case expr @ FunCall(name, args) =>
          korn.avoid(name startsWith "__VERIFIER_nondet", "unsupported function: " + name)

          val pre = pres(name)
          val (post, sort) = posts(name)
          val (ret, _) = funs(name)

          val (_in, st2) = rvals(args, st0, st1)

          val (_ret, _out, st3) = sort match {
            case Some(sort) =>
              var x = fresh("$result", sort)
              (x, List(x), st2)
            case None =>
              (null, Nil, st2)
          }

          // XXX: need to return the modifed heap
          val _pre = pre(_in)
          val _call = post(_in ++ _out)

          clause(st3, _pre, name + " precondition")

          (_ret, st3 and _call)

        case Cast(typ, expr) =>
          rval(expr, st0, st1)

        case _ =>
          korn.error("cannot compute: " + expr)
      }
    }
  }
}
