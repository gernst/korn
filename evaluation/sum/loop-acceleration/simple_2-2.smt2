(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $__VERIFIER_assert_if503 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum113 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv113 (Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond13846 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond13846))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if503 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13847 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if503 cond cond13847))
        (__VERIFIER_assert cond13847))))

; loop entry $main_inv113
(assert
  (forall (($x426 Int) ($uint13848 Int))
    (=> (and (= $x426 $uint13848)
             (<= 0 $uint13848)
             (<= $uint13848 4294967295))
        ($main_inv113 $x426))))

; loop term $main_sum113
(assert
  (forall (($x42613849 Int))
    (=> (and (not (< $x42613849 268435455)))
        ($main_sum113 $x42613849 $x42613849))))

; forwards $main_inv113
(assert
  (forall (($x42613849 Int))
    (=> (and (< $x42613849 268435455)
             ($main_inv113 $x42613849))
        ($main_inv113 (+ $x42613849 1)))))

; backwards $main_sum113
(assert
  (forall (($x42613849 Int) ($x42613850 Int))
    (=> (and ($main_sum113 (+ $x42613849 1) $x42613850)
             (< $x42613849 268435455))
        ($main_sum113 $x42613849 $x42613850))))

; __VERIFIER_assert precondition
(assert
  (forall (($x42613851 Int) ($x426 Int) ($uint13848 Int))
    (=> (and ($main_sum113 $x426 $x42613851)
             (= $x426 $uint13848)
             (<= 0 $uint13848)
             (<= $uint13848 4294967295))
        ($__VERIFIER_assert_pre (ite (> $x42613851 268435455) 1 0)))))

(check-sat)
