(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv112 (Int) Bool)
(declare-fun $main_sum112 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if502 (Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond13840 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond13840))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if502 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13841 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if502 cond cond13841))
        (__VERIFIER_assert cond13841))))

; loop entry $main_inv112
(assert
  (forall (($x425 Int) ($uint13842 Int))
    (=> (and (= $x425 $uint13842)
             (<= 0 $uint13842)
             (<= $uint13842 4294967295))
        ($main_inv112 $x425))))

; loop term $main_sum112
(assert
  (forall (($x42513843 Int))
    (=> (and (not (< $x42513843 268435455)))
        ($main_sum112 $x42513843 $x42513843))))

; forwards $main_inv112
(assert
  (forall (($x42513843 Int))
    (=> (and (< $x42513843 268435455)
             ($main_inv112 $x42513843))
        ($main_inv112 (+ $x42513843 1)))))

; backwards $main_sum112
(assert
  (forall (($x42513843 Int) ($x42513844 Int))
    (=> (and ($main_sum112 (+ $x42513843 1) $x42513844)
             (< $x42513843 268435455))
        ($main_sum112 $x42513843 $x42513844))))

; __VERIFIER_assert precondition
(assert
  (forall (($x42513845 Int) ($x425 Int) ($uint13842 Int))
    (=> (and ($main_sum112 $x425 $x42513845)
             (= $x425 $uint13842)
             (<= 0 $uint13842)
             (<= $uint13842 4294967295))
        ($__VERIFIER_assert_pre (ite (>= $x42513845 268435455) 1 0)))))

(check-sat)
