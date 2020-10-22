(set-logic HORN)

(declare-fun $main_sum112 (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv112 (Int) Bool)
(declare-fun $__VERIFIER_assert_if502 (Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13033 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13033))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if502 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13034 Int))
    (=> (and ($__VERIFIER_assert_if502 cond13034))
        (__VERIFIER_assert cond13034))))

; loop entry $main_inv112
(assert
  (forall (($x425 Int) ($uint13035 Int))
    (=> (and (= $x425 $uint13035)
             (<= 0 $uint13035)
             (<= $uint13035 4294967295))
        ($main_inv112 $x425))))

; loop term $main_sum112
(assert
  (forall (($x42513036 Int))
    (=> (and (not (< $x42513036 268435455))
             ($main_inv112 $x42513036))
        ($main_sum112 $x42513036))))

; forwards $main_inv112
(assert
  (forall (($x42513036 Int))
    (=> (and (< $x42513036 268435455)
             ($main_inv112 $x42513036))
        ($main_inv112 (+ $x42513036 1)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x42513037 Int))
    (=> (and ($main_sum112 $x42513037))
        ($__VERIFIER_assert_pre (ite (>= $x42513037 268435455) 1 0)))))

(check-sat)
