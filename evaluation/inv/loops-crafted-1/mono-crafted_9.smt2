(set-logic HORN)

(declare-fun $main_if595 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv200 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_if594 (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum200 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13858 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13858))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if594 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13859 Int))
    (=> (and ($__VERIFIER_assert_if594 cond13859))
        (__VERIFIER_assert cond13859))))

; loop entry $main_inv200
(assert
  (forall (($x572 Int) ($y573 Int))
    (=> (and (= $y573 500000)
             (= $x572 0))
        ($main_inv200 $x572 $y573))))

; loop term $main_sum200
(assert
  (forall (($x57213860 Int) ($y57313861 Int))
    (=> (and (not (< $x57213860 1000000))
             ($main_inv200 $x57213860 $y57313861))
        ($main_sum200 $x57213860 $y57313861))))

; if then
(assert
  (forall (($x57213860 Int) ($y57313861 Int))
    (=> (and (< $x57213860 500000)
             (< $x57213860 1000000)
             ($main_inv200 $x57213860 $y57313861))
        ($main_if595 (+ $x57213860 1) $y57313861))))

; if else
(assert
  (forall (($x57213860 Int) ($y57313861 Int))
    (=> (and (not (< $x57213860 500000))
             (< $x57213860 1000000)
             ($main_inv200 $x57213860 $y57313861))
        ($main_if595 (+ $x57213860 1) (+ $y57313861 1)))))

; forwards $main_inv200
(assert
  (forall (($x57213862 Int) ($y57313863 Int))
    (=> (and ($main_if595 $x57213862 $y57313863))
        ($main_inv200 $x57213862 $y57313863))))

; __VERIFIER_assert precondition
(assert
  (forall (($y57313865 Int) ($x57213864 Int))
    (=> (and ($main_sum200 $x57213864 $y57313865))
        ($__VERIFIER_assert_pre (ite (= $y57313865 $x57213864) 1 0)))))

(check-sat)
