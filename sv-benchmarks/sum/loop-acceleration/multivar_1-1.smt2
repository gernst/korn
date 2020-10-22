(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_sum99 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if483 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv99 (Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond13739 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond13739))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if483 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13740 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if483 cond cond13740))
        (__VERIFIER_assert cond13740))))

; loop entry $main_inv99
(assert
  (forall (($x408 Int) ($y409 Int) ($uint13741 Int))
    (=> (and (= $y409 $x408)
             (= $x408 $uint13741)
             (<= 0 $uint13741)
             (<= $uint13741 4294967295))
        ($main_inv99 $x408 $y409))))

; loop term $main_sum99
(assert
  (forall (($x40813742 Int) ($y40913743 Int))
    (=> (and (not (< $x40813742 1024)))
        ($main_sum99 $x40813742 $y40913743 $x40813742 $y40913743))))

; forwards $main_inv99
(assert
  (forall (($x40813742 Int) ($y40913743 Int))
    (=> (and (< $x40813742 1024)
             ($main_inv99 $x40813742 $y40913743))
        ($main_inv99 (+ $x40813742 1) (+ $y40913743 1)))))

; backwards $main_sum99
(assert
  (forall (($x40813742 Int) ($y40913743 Int) ($x40813744 Int) ($y40913745 Int))
    (=> (and ($main_sum99 (+ $x40813742 1) (+ $y40913743 1) $x40813744 $y40913745)
             (< $x40813742 1024))
        ($main_sum99 $x40813742 $y40913743 $x40813744 $y40913745))))

; __VERIFIER_assert precondition
(assert
  (forall (($x408 Int) ($y40913747 Int) ($y409 Int) ($x40813746 Int) ($uint13741 Int))
    (=> (and ($main_sum99 $x408 $y409 $x40813746 $y40913747)
             (= $y409 $x408)
             (= $x408 $uint13741)
             (<= 0 $uint13741)
             (<= $uint13741 4294967295))
        ($__VERIFIER_assert_pre (ite (= $x40813746 $y40913747) 1 0)))))

(check-sat)
