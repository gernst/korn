(set-logic HORN)

(declare-fun $main_sum100 (Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv100 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if484 (Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond13748 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond13748))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if484 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13749 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if484 cond cond13749))
        (__VERIFIER_assert cond13749))))

; loop entry $main_inv100
(assert
  (forall (($x410 Int) ($y411 Int) ($uint13750 Int))
    (=> (and (= $y411 (+ $x410 1))
             (= $x410 $uint13750)
             (<= 0 $uint13750)
             (<= $uint13750 4294967295))
        ($main_inv100 $x410 $y411))))

; loop term $main_sum100
(assert
  (forall (($x41013751 Int) ($y41113752 Int))
    (=> (and (not (< $x41013751 1024)))
        ($main_sum100 $x41013751 $y41113752 $x41013751 $y41113752))))

; forwards $main_inv100
(assert
  (forall (($x41013751 Int) ($y41113752 Int))
    (=> (and (< $x41013751 1024)
             ($main_inv100 $x41013751 $y41113752))
        ($main_inv100 (+ $x41013751 1) (+ $y41113752 1)))))

; backwards $main_sum100
(assert
  (forall (($x41013751 Int) ($y41113752 Int) ($x41013753 Int) ($y41113754 Int))
    (=> (and ($main_sum100 (+ $x41013751 1) (+ $y41113752 1) $x41013753 $y41113754)
             (< $x41013751 1024))
        ($main_sum100 $x41013751 $y41113752 $x41013753 $y41113754))))

; __VERIFIER_assert precondition
(assert
  (forall (($uint13750 Int) ($y411 Int) ($x41013755 Int) ($x410 Int) ($y41113756 Int))
    (=> (and ($main_sum100 $x410 $y411 $x41013755 $y41113756)
             (= $y411 (+ $x410 1))
             (= $x410 $uint13750)
             (<= 0 $uint13750)
             (<= $uint13750 4294967295))
        ($__VERIFIER_assert_pre (ite (= $x41013755 $y41113756) 1 0)))))

(check-sat)
