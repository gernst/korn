(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if503 (Int) Bool)
(declare-fun $main_inv113 (Int) Bool)
(declare-fun $main_sum113 (Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13038 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13038))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if503 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13039 Int))
    (=> (and ($__VERIFIER_assert_if503 cond13039))
        (__VERIFIER_assert cond13039))))

; loop entry $main_inv113
(assert
  (forall (($x426 Int) ($uint13040 Int))
    (=> (and (= $x426 $uint13040)
             (<= 0 $uint13040)
             (<= $uint13040 4294967295))
        ($main_inv113 $x426))))

; loop term $main_sum113
(assert
  (forall (($x42613041 Int))
    (=> (and (not (< $x42613041 268435455))
             ($main_inv113 $x42613041))
        ($main_sum113 $x42613041))))

; forwards $main_inv113
(assert
  (forall (($x42613041 Int))
    (=> (and (< $x42613041 268435455)
             ($main_inv113 $x42613041))
        ($main_inv113 (+ $x42613041 1)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x42613042 Int))
    (=> (and ($main_sum113 $x42613042))
        ($__VERIFIER_assert_pre (ite (> $x42613042 268435455) 1 0)))))

(check-sat)
