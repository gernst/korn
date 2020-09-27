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

  def nondet_int(name: String, typ: Type, st0: State): (Pure, State) = {
    val bound = Pure.one << (Type.sizeof(typ) * 8 - 1)
    val min = -bound
    val max = bound - 1
    nondet_int(name, min, max, st0)
  }

  def nondet_uint(name: String, typ: Type, st0: State): (Pure, State) = {
    val bound = Pure.one << (Type.sizeof(typ) * 8)
    val min = Pure.zero
    val max = bound - 1
    nondet_int(name, min, max, st0)
  }

  def nondet_int(name: String, min: Pure, max: Pure, st0: State): (Pure, State) = {
    var x = fresh("$" + name, Sort.int)
    val bounds = (min <= x) and (x <= max)
    val st1 = st0 and bounds
    (x, st1)
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

    def assign(lhs: Expr, rhs: Expr, st0: State): (Pure, Pure, State) = {
      lhs match {
        case Id(name) if st0 contains name =>
          val _old = st0(name)
          val (_rhs, st1) = rval(rhs, st0)
          (_old, _rhs, st1 + (name -> _rhs))

        case Index(Id(name), idx) if st0 contains name =>
          val _old = st0(name)
          val (_rhs, st1) = rval(rhs, st0)
          val (_idx, st2) = rval(idx, st1)
          val _new = _old store (_idx, _rhs)
          (_old select _idx, _rhs, st2 + (name -> _new))

        // XXX: hacky way to support 2-dimensional arrays
        case Index(Index(Id(name), idx1), idx2) if st0 contains name =>
          val _old0 = st0(name)
          val (_rhs, st1) = rval(rhs, st0)
          val (_idx1, st2) = rval(idx1, st1)
          val (_idx2, st3) = rval(idx2, st2)
          val _old1 = _old0 select _idx1
          val _old2 = _old1 select _idx2
          val _new1 = _old1 store (_idx2, _rhs)
          val _new0 = _old0 store (_idx1, _new1)
          (_old2, _rhs, st2 + (name -> _new0))

        /* case PreOp("*", ptr) =>
        for (
          (_rhs, st1) <- rval(rhs, st0);
          (_ptr, st2) <- rval(ptr, st1)
        )
          yield {
            // val (_sec, _old, st3) = st2 store (_ptr, _rhs)
            // (_old, _rhs, st3)
            ???
          }

      case Arrow(ptr, field) =>
        for (
          (_rhs, st1) <- rval(rhs, st0);
          (_ptr, st2) <- rval(ptr, st1)
        )
          yield {
            // val _ptr_field = ctx arrow (_ptr, field)
            // val (_sec, _old, st3) = st2 store (_ptr_field, _rhs)
            // (_old, _rhs, st3)
            ???
          } */
      }
    }

    def rval_test(expr: Expr, st0: State): (Prop, State) = {
      val (_res, st1) = rval(expr, st0)
      (truth(_res), st1)
    }

    def rvals(exprs: List[Expr], st0: State): (List[Pure], State) = {
      exprs match {
        case Nil =>
          (Nil, st0)

        case expr :: rest => // XXX: right-to-left, should be parallel
          val (xs, st1) = rvals(rest, st0)
          val (x, st2) = rval(expr, st1)
          (x :: xs, st2)
      }
    }

    def rval(expr: Expr, st0: State): (Pure, State) = {
      expr match {
        case BinOp(",", fst, snd) =>
          val (_fst, st1) = rval(fst, st0)
          val (_snd, st2) = rval(fst, st1)
          (_snd, st2)

        case Id(name) if st0 contains name =>
          (st0(name), st0)

        case Id(name) if consts contains name =>
          (consts(name), st0)

        case Id(name) =>
          korn.error("unknown identifier: " + name)

        case Lit(value: Int) =>
          (Pure.const(value), st0)

        case Lit(value: Long) =>
          (Pure.const(value), st0)

        case Lit(value) =>
          korn.error("unknown constant: " + value + " of type " + value.getClass())

        case PreOp("&", id: Id) =>
          korn.error("cannot take address of variable: " + expr)

        case PreOp("&", PreOp("*", ptr)) =>
          rval(ptr, st0)

        case PreOp("&", Index(base, index)) =>
          val expr = BinOp("+", base, index)
          rval(expr, st0)

        case Index(arg1, arg2) =>
          val (_arg1, st1) = rval(arg1, st0)
          val (_arg2, st2) = rval(arg2, st1)
          (index(_arg1, _arg2), st2)

        /* case PreOp("&", Arrow(ptr, field)) =>
        for ((_ptr, st1) = rval(ptr, st0))
          yield {
            val _ptr_field = st1 arrow (_ptr, field)
            (_ptr_field, st1)
          }

      case PreOp("*", ptr) =>
      for ((_ptr, st1) = rval(ptr, st0)) yield {
        val (_sec, _res) = st1 load _ptr
        (_res, st1)
      }

    case Arrow(ptr, field) =>
      for ((_ptr, st1) = rval(ptr, st0)) yield {
        val _ptr_field = ctx arrow (_ptr, field)
        val (_sec, _res) = st1 load _ptr_field
        (_res, st1)
        ???
      } */

        case PreOp("++", arg) =>
          val (_, _rhs, st1) = assign(arg, BinOp("+", arg, Lit(1)), st0)
          (_rhs, st1)
        case PreOp("--", arg) =>
          val (_, _rhs, st1) = assign(arg, BinOp("-", arg, Lit(1)), st0)
          (_rhs, st1)

        case PostOp("++", arg) =>
          val (_val, _, st1) = assign(arg, BinOp("+", arg, Lit(1)), st0)
          (_val, st1)
        case PostOp("--", arg) =>
          val (_val, _, st1) = assign(arg, BinOp("-", arg, Lit(1)), st0)
          (_val, st1)

        case BinOp("=", lhs, rhs) =>
          val (_, _rhs, st1) = assign(lhs, rhs, st0)
          (_rhs, st1)

        // don't fork if the rhs has no side effects
        case BinOp("||", arg1, arg2) if !Expr.hasEffects(arg2) =>
          val (_arg1, st1) = rval_test(arg1, st0)
          val (_arg2, st2) = rval_test(arg2, st1)
          (bool(_arg1 or _arg2), st2)

        case BinOp("&&", arg1, arg2) if !Expr.hasEffects(arg2) =>
          val (_arg1, st1) = rval_test(arg1, st0)
          val (_arg2, st2) = rval_test(arg2, st1)
          (bool(_arg1 and _arg2), st2)

        // shortcut evaluation yields two states
        case BinOp("||", arg1, arg2) =>
          val (_arg1, st1) = rval_test(arg1, st0)
          val (_arg2, st2) = rval_test(arg2, st1 and !_arg1)
          val st3 = join(st1, "or left", st2, "or right")
          (bool(_arg1 or _arg2), st3)

        case BinOp("&&", arg1, arg2) =>
          val (_arg1, st1) = rval_test(arg1, st0)
          val (_arg2, st2) = rval_test(arg2, st1 and _arg1)
          val st3 = join(st1, "and left", st2, "and right")
          (bool(_arg1 and _arg2), st3)

        case PreOp(op, arg) =>
          val (_arg, st1) = rval(arg, st0)
          (preop(op, _arg), st1)

        case BinOp(op, arg1, arg2) =>
          val (_arg1, st1) = rval(arg1, st0)
          val (_arg2, st2) = rval(arg2, st1)
          (binop(op, _arg1, _arg2), st2)

        /* case Question(test, left, right) =>
        val _test_st = rval_test(test, st0)

        val _true =
          val
            (_test, st1) = _test_st;
            st1_true = st1 and _test;
            (_left, st2) = rval(left, st1_true)
          )
            yield (_left, st2)

        val _false =
          val
            (_test, st1) = _test_st;
            st1_false = st1 and !_test;
            (_right, st2) = rval(right, st1_false)
          )
            yield (_right, st2)

        _true ++ _false */

        case stdlib.exit() =>
          (null, st0 and False)

        case stdlib.abort() =>
          // clause(st0, False, "abort")
          (null, st0 and False)

        case stdlib.assert(phi) =>
          val (_phi, st1) = rval_test(phi, st0)
          goal(st1, _phi, "assert " + _phi)
          (null, st1)

        case stdlib.assume(phi) =>
          val (_phi, st1) = rval_test(phi, st0)
          val st2 = st1 and _phi
          (null, st2)

        case __VERIFIER.assume(cond) =>
          val (_cond, st1) = rval_test(cond, st0)
          (null, st1 and _cond)

        case __VERIFIER.error() =>
          clause(st0, False, "error")
          (null, st0)

        case __VERIFIER.reach_error() =>
          clause(st0, False, "error")
          (null, st0)

        case __VERIFIER.nondet_bool() =>
          var x = fresh("$bool", Sort.int)
          val bounds = (x === Pure.zero) or (x === Pure.one)
          val st1 = st0 and bounds
          (x, st1)

        // signed integers
        case __VERIFIER.nondet_char() =>
          nondet_int("char", Signed._char, st0)

        case __VERIFIER.nondet_short() =>
          nondet_int("short", Signed._short, st0)

        case __VERIFIER.nondet_int() =>
          nondet_int("int", Signed._int, st0)

        case __VERIFIER.nondet_long() =>
          nondet_int("long", Signed._long, st0)

        case __VERIFIER.nondet_longlong() =>
          nondet_int("longlong", Signed._long_long, st0)

        // unsigned integers
        case __VERIFIER.nondet_uchar() =>
          nondet_uint("uchar", Unsigned._char, st0)

        case __VERIFIER.nondet_ushort() =>
          nondet_uint("ushort", Unsigned._short, st0)

        case __VERIFIER.nondet_uint() =>
          nondet_uint("uint", Unsigned._int, st0)

        case __VERIFIER.nondet_ulong() =>
          nondet_uint("ulong", Unsigned._long, st0)

        case __VERIFIER.nondet_ulonglong() =>
          nondet_uint("ulonglong", Unsigned._long_long, st0)

        // nonstandard
        case __VERIFIER.nondet_unsigned_char() =>
          nondet_uint("uchar", Unsigned._char, st0)

        case __VERIFIER.nondet_unsigned() =>
          nondet_uint("int", Signed._int, st0)

        case __VERIFIER.nondet_unsigned_int() =>
          nondet_uint("int", Unsigned._int, st0)

        case __VERIFIER.nondet_unsigned_long() =>
          nondet_uint("ulong", Unsigned._long, st0)

        // explicit size
        case __VERIFIER.nondet_u8() =>
          nondet_uint("uchar", Unsigned._char, st0)

        case __VERIFIER.nondet_u16() =>
          nondet_uint("ushort", Unsigned._short, st0)

        case __VERIFIER.nondet_u32() =>
          nondet_uint("uint", Unsigned._int, st0)

        case expr @ FunCall(name, args) =>
          korn.avoid(name startsWith "__VERIFIER_nondet", "unsupported function: " + name)

          val pre = pres(name)
          val (post, sort) = posts(name)
          val (ret, _) = funs(name)

          val (_in, st1) = rvals(args, st0)

          val (_ret, _out, st2) = sort match {
            case Some(sort) =>
              var x = fresh("$result", sort)
              (x, List(x), st1)
            case None =>
              (null, Nil, st1)
          }

          // XXX: need to return the modifed heap
          val _pre = pre(_in)
          val _call = post(_in ++ _out)

          clause(st2, _pre, name + " precondition")

          (_ret, st2 and _call)

        case Cast(typ, expr) =>
          rval(expr, st0)

        case _ =>
          korn.error("cannot compute: " + expr)
      }
    }
  }
}
