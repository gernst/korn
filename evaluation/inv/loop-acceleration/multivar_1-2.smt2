(set-logic HORN)

(declare-fun $main_sum100 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_if484 (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv100 (Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond12960 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond12960))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if484 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond12961 Int))
    (=> (and ($__VERIFIER_assert_if484 cond12961))
        (__VERIFIER_assert cond12961))))

; loop entry $main_inv100
(assert
  (forall (($x410 Int) ($y411 Int) ($uint12962 Int))
    (=> (and (= $y411 (+ $x410 1))
             (= $x410 $uint12962)
             (<= 0 $uint12962)
             (<= $uint12962 4294967295))
        ($main_inv100 $x410 $y411))))

; loop term $main_sum100
(assert
  (forall (($x41012963 Int) ($y41112964 Int))
    (=> (and (not (< $x41012963 1024))
             ($main_inv100 $x41012963 $y41112964))
        ($main_sum100 $x41012963 $y41112964))))

; forwards $main_inv100
(assert
  (forall (($x41012963 Int) ($y41112964 Int))
    (=> (and (< $x41012963 1024)
             ($main_inv100 $x41012963 $y41112964))
        ($main_inv100 (+ $x41012963 1) (+ $y41112964 1)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x41012965 Int) ($y41112966 Int))
    (=> (and ($main_sum100 $x41012965 $y41112966))
        ($__VERIFIER_assert_pre (ite (= $x41012965 $y41112966) 1 0)))))

(check-sat)
