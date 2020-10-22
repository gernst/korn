(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv102 (Int Int) Bool)
(declare-fun $main_sum101 (Int Int Int Int) Bool)
(declare-fun $main_inv101 (Int Int) Bool)
(declare-fun $main_sum102 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if485 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond13757 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond13757))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if485 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13758 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if485 cond cond13758))
        (__VERIFIER_assert cond13758))))

; loop entry $main_inv101
(assert
  (forall (($x412 Int) ($y413 Int))
    (=> (and (= $y413 0)
             (= $x412 0))
        ($main_inv101 $x412 $y413))))

; loop term $main_sum101
(assert
  (forall (($x41213759 Int) ($y41313760 Int))
    (=> (and (not (< $x41213759 268435455)))
        ($main_sum101 $x41213759 $y41313760 $x41213759 $y41313760))))

; loop entry $main_inv102
(assert
  (forall (($x41213759 Int) ($y41313760 Int))
    (=> (and (< $x41213759 268435455)
             ($main_inv101 $x41213759 $y41313760))
        ($main_inv102 $x41213759 0))))

; loop term $main_sum102
(assert
  (forall (($x41213761 Int) ($y41313762 Int))
    (=> (and (not (< $y41313762 10)))
        ($main_sum102 $x41213761 $y41313762 $x41213761 $y41313762))))

; forwards $main_inv102
(assert
  (forall (($x41213761 Int) ($y41313762 Int))
    (=> (and (< $y41313762 10)
             ($main_inv102 $x41213761 $y41313762))
        ($main_inv102 $x41213761 (+ $y41313762 1)))))

; backwards $main_sum102
(assert
  (forall (($x41213761 Int) ($y41313762 Int) ($x41213763 Int) ($y41313764 Int))
    (=> (and ($main_sum102 $x41213761 (+ $y41313762 1) $x41213763 $y41313764)
             (< $y41313762 10))
        ($main_sum102 $x41213761 $y41313762 $x41213763 $y41313764))))

; forwards $main_inv101
(assert
  (forall (($x41213765 Int) ($y41313766 Int) ($x41213759 Int) ($y41313760 Int))
    (=> (and ($main_sum102 $x41213759 0 $x41213765 $y41313766)
             (< $x41213759 268435455)
             ($main_inv101 $x41213759 $y41313760))
        ($main_inv101 (+ $x41213765 1) $y41313766))))

; backwards $main_sum101
(assert
  (forall (($x41213759 Int) ($y41313768 Int) ($x41213767 Int) ($x41213765 Int) ($y41313760 Int) ($y41313766 Int))
    (=> (and ($main_sum101 (+ $x41213765 1) $y41313766 $x41213767 $y41313768)
             ($main_sum102 $x41213759 0 $x41213765 $y41313766)
             (< $x41213759 268435455))
        ($main_sum101 $x41213759 $y41313760 $x41213767 $y41313768))))

; __VERIFIER_assert precondition
(assert
  (forall (($x41213769 Int) ($x412 Int) ($y413 Int) ($y41313770 Int))
    (=> (and ($main_sum101 $x412 $y413 $x41213769 $y41313770)
             (= $y413 0)
             (= $x412 0))
        ($__VERIFIER_assert_pre (mod $x41213769 2)))))

(check-sat)
