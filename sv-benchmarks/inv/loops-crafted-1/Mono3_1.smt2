(set-logic HORN)

(declare-fun $main_if566 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum181 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_if565 (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv181 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13683 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13683))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if565 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13684 Int))
    (=> (and ($__VERIFIER_assert_if565 cond13684))
        (__VERIFIER_assert cond13684))))

; loop entry $main_inv181
(assert
  (forall (($x534 Int) ($y535 Int))
    (=> (and (= $y535 0)
             (= $x534 0))
        ($main_inv181 $x534 $y535))))

; loop term $main_sum181
(assert
  (forall (($x53413685 Int) ($y53513686 Int))
    (=> (and (not (< $x53413685 1000000))
             ($main_inv181 $x53413685 $y53513686))
        ($main_sum181 $x53413685 $y53513686))))

; if then
(assert
  (forall (($x53413685 Int) ($y53513686 Int))
    (=> (and (< $x53413685 500000)
             (< $x53413685 1000000)
             ($main_inv181 $x53413685 $y53513686))
        ($main_if566 $x53413685 (+ $y53513686 1)))))

; if else
(assert
  (forall (($x53413685 Int) ($y53513686 Int))
    (=> (and (not (< $x53413685 500000))
             (< $x53413685 1000000)
             ($main_inv181 $x53413685 $y53513686))
        ($main_if566 $x53413685 (- $y53513686 1)))))

; forwards $main_inv181
(assert
  (forall (($x53413687 Int) ($y53513688 Int))
    (=> (and ($main_if566 $x53413687 $y53513688))
        ($main_inv181 (+ $x53413687 1) $y53513688))))

; __VERIFIER_assert precondition
(assert
  (forall (($y53513690 Int) ($x53413689 Int))
    (=> (and ($main_sum181 $x53413689 $y53513690))
        ($__VERIFIER_assert_pre (ite (not (= $y53513690 0)) 1 0)))))

(check-sat)
