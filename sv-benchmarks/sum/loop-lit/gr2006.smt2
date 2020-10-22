(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_sum499 (Int Int Int Int) Bool)
(declare-fun $main_if317 (Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_if316 (Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_if314 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if315 (Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_inv499 (Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if314 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond9547 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if314 cond cond9547))
        (assume_abort_if_not cond9547))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond9548 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond9548))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if315 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond9549 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if315 cond cond9549))
        (__VERIFIER_assert cond9549))))

; loop entry $main_inv499
(assert
        ($main_inv499 0 0))

; loop term $main_sum499
(assert
  (forall (($x6909550 Int) ($y6919551 Int))
    (=> (and (= 1 0))
        ($main_sum499 $x6909550 $y6919551 $x6909550 $y6919551))))

; if then
(assert
  (forall (($x6909550 Int) ($y6919551 Int))
    (=> (and (< $x6909550 50)
             (not (= 1 0))
             ($main_inv499 $x6909550 $y6919551))
        ($main_if316 $x6909550 $y6919551 $x6909550 (+ $y6919551 1)))))

; if else
(assert
  (forall (($x6909550 Int) ($y6919551 Int))
    (=> (and (not (< $x6909550 50))
             (not (= 1 0))
             ($main_inv499 $x6909550 $y6919551))
        ($main_if316 $x6909550 $y6919551 $x6909550 (- $y6919551 1)))))

; break $main_sum499
(assert
  (forall (($x6909550 Int) ($y6919551 Int) ($x6909552 Int) ($y6919553 Int))
    (=> (and (< $y6919553 0)
             ($main_if316 $x6909550 $y6919551 $x6909552 $y6919553))
        ($main_sum499 $x6909550 $y6919551 $x6909552 $y6919553))))

; if else
(assert
  (forall (($x6909550 Int) ($y6919551 Int) ($x6909552 Int) ($y6919553 Int))
    (=> (and (not (< $y6919553 0))
             ($main_if316 $x6909550 $y6919551 $x6909552 $y6919553))
        ($main_if317 $x6909550 $y6919551 $x6909552 $y6919553))))

; forwards $main_inv499
(assert
  (forall (($x6909554 Int) ($y6919555 Int) ($x6909550 Int) ($y6919551 Int))
    (=> (and ($main_if317 $x6909550 $y6919551 $x6909554 $y6919555))
        ($main_inv499 (+ $x6909554 1) $y6919555))))

; backwards $main_sum499
(assert
  (forall (($x6909556 Int) ($y6919555 Int) ($y6919557 Int) ($x6909554 Int) ($x6909550 Int) ($y6919551 Int))
    (=> (and ($main_sum499 (+ $x6909554 1) $y6919555 $x6909556 $y6919557)
             ($main_if317 $x6909550 $y6919551 $x6909554 $y6919555))
        ($main_sum499 $x6909550 $y6919551 $x6909556 $y6919557))))

; __VERIFIER_assert precondition
(assert
  (forall (($x6909558 Int) ($y6919559 Int))
    (=> (and ($main_sum499 0 0 $x6909558 $y6919559))
        ($__VERIFIER_assert_pre (ite (= $x6909558 100) 1 0)))))

(check-sat)
