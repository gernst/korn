(set-logic HORN)

(declare-fun $__VERIFIER_assert_if590 (Int) Bool)
(declare-fun $main_sum198 (Int Int Int) Bool)
(declare-fun $main_sum197 (Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv197 (Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv198 (Int Int Int) Bool)
(declare-fun $main_if591 (Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13830 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13830))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if590 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13831 Int))
    (=> (and ($__VERIFIER_assert_if590 cond13831))
        (__VERIFIER_assert cond13831))))

; loop entry $main_inv197
(assert
  (forall (($y567 Int) ($z568 Int) ($x566 Int))
    (=> (and (= $z568 0)
             (= $y567 50000)
             (= $x566 0))
        ($main_inv197 0 $y567 $z568))))

; loop term $main_sum197
(assert
  (forall (($x56613832 Int) ($y56713833 Int) ($z56813834 Int))
    (=> (and (not (< $x56613832 1000000))
             ($main_inv197 $x56613832 $y56713833 $z56813834))
        ($main_sum197 $x56613832 $y56713833 $z56813834))))

; if then
(assert
  (forall (($x56613832 Int) ($y56713833 Int) ($z56813834 Int))
    (=> (and (< $x56613832 50000)
             (< $x56613832 1000000)
             ($main_inv197 $x56613832 $y56713833 $z56813834))
        ($main_if591 (+ $x56613832 1) $y56713833 $z56813834))))

; if else
(assert
  (forall (($x56613832 Int) ($y56713833 Int) ($z56813834 Int))
    (=> (and (not (< $x56613832 50000))
             (< $x56613832 1000000)
             ($main_inv197 $x56613832 $y56713833 $z56813834))
        ($main_if591 (+ $x56613832 1) (+ $y56713833 1) $z56813834))))

; forwards $main_inv197
(assert
  (forall (($x56613835 Int) ($y56713836 Int) ($z56813837 Int))
    (=> (and ($main_if591 $x56613835 $y56713836 $z56813837))
        ($main_inv197 $x56613835 $y56713836 $z56813837))))

; loop entry $main_inv198
(assert
  (forall (($x56613838 Int) ($y56713839 Int) ($z56813840 Int))
    (=> (and ($main_sum197 $x56613838 $y56713839 $z56813840))
        ($main_inv198 $x56613838 $y56713839 $z56813840))))

; loop term $main_sum198
(assert
  (forall (($x56613841 Int) ($y56713842 Int) ($z56813843 Int))
    (=> (and (not (> $y56713842 0))
             ($main_inv198 $x56613841 $y56713842 $z56813843))
        ($main_sum198 $x56613841 $y56713842 $z56813843))))

; forwards $main_inv198
(assert
  (forall (($x56613841 Int) ($y56713842 Int) ($z56813843 Int))
    (=> (and (> $y56713842 0)
             ($main_inv198 $x56613841 $y56713842 $z56813843))
        ($main_inv198 (- $x56613841 2) (- $y56713842 2) $z56813843))))

; __VERIFIER_assert precondition
(assert
  (forall (($z56813846 Int) ($x56613844 Int) ($y56713845 Int))
    (=> (and ($main_sum198 $x56613844 $y56713845 $z56813846))
        ($__VERIFIER_assert_pre (ite (= $z56813846 $x56613844) 1 0)))))

(check-sat)
