(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if782 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv298 (Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_if781 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_sum298 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if783 (Int Int Int Int Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if781 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond17557 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if781 cond cond17557))
        (assume_abort_if_not cond17557))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond17558 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond17558))
        false)))

; if then
(assert
  (forall ((cond Int) (cond17558 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond17558))
        ($__VERIFIER_assert_if782 cond cond17558))))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if782 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond17559 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if782 cond cond17559))
        (__VERIFIER_assert cond17559))))

; loop entry $main_inv298
(assert
  (forall (($int17560 Int))
    (=> (and (<= (- 2147483648) $int17560)
             (<= $int17560 2147483647))
        ($main_inv298 $int17560 0 0 0))))

; loop term $main_sum298
(assert
  (forall (($k86417561 Int) ($y86517562 Int) ($x86617563 Int) ($c86717564 Int))
    (=> (and (= 1 0))
        ($main_sum298 $k86417561 $y86517562 $x86617563 $c86717564 $k86417561 $y86517562 $x86617563 $c86717564))))

; __VERIFIER_assert precondition
(assert
  (forall (($y86517562 Int) ($x86617563 Int) ($k86417561 Int) ($c86717564 Int))
    (=> (and (not (= 1 0))
             ($main_inv298 $k86417561 $y86517562 $x86617563 $c86717564))
        ($__VERIFIER_assert_pre (ite (= (- (- (+ (+ (* (* (* (* (* 6 $y86517562) $y86517562) $y86517562) $y86517562) $y86517562) (* (* (* (* 15 $y86517562) $y86517562) $y86517562) $y86517562)) (* (* (* 10 $y86517562) $y86517562) $y86517562)) (* 30 $x86617563)) $y86517562) 0) 1 0)))))

; break $main_sum298
(assert
  (forall (($k86417561 Int) ($y86517562 Int) ($x86617563 Int) ($c86717564 Int))
    (=> (and (not (< $c86717564 $k86417561))
             (__VERIFIER_assert (ite (= (- (- (+ (+ (* (* (* (* (* 6 $y86517562) $y86517562) $y86517562) $y86517562) $y86517562) (* (* (* (* 15 $y86517562) $y86517562) $y86517562) $y86517562)) (* (* (* 10 $y86517562) $y86517562) $y86517562)) (* 30 $x86617563)) $y86517562) 0) 1 0))
             (not (= 1 0))
             ($main_inv298 $k86417561 $y86517562 $x86617563 $c86717564))
        ($main_sum298 $k86417561 $y86517562 $x86617563 $c86717564 $k86417561 $y86517562 $x86617563 $c86717564))))

; if else
(assert
  (forall (($k86417561 Int) ($y86517562 Int) ($x86617563 Int) ($c86717564 Int))
    (=> (and (< $c86717564 $k86417561)
             (__VERIFIER_assert (ite (= (- (- (+ (+ (* (* (* (* (* 6 $y86517562) $y86517562) $y86517562) $y86517562) $y86517562) (* (* (* (* 15 $y86517562) $y86517562) $y86517562) $y86517562)) (* (* (* 10 $y86517562) $y86517562) $y86517562)) (* 30 $x86617563)) $y86517562) 0) 1 0))
             (not (= 1 0))
             ($main_inv298 $k86417561 $y86517562 $x86617563 $c86717564))
        ($main_if783 $k86417561 $y86517562 $x86617563 $c86717564 $k86417561 $y86517562 $x86617563 $c86717564))))

; forwards $main_inv298
(assert
  (forall (($k86417565 Int) ($y86517566 Int) ($x86617567 Int) ($c86717568 Int) ($y86517562 Int) ($k86417561 Int) ($c86717564 Int) ($x86617563 Int))
    (=> (and ($main_if783 $k86417561 $y86517562 $x86617563 $c86717564 $k86417565 $y86517566 $x86617567 $c86717568))
        ($main_inv298 $k86417565 (+ $y86517566 1) (+ (* (* (* (+ $y86517566 1) (+ $y86517566 1)) (+ $y86517566 1)) (+ $y86517566 1)) $x86617567) (+ $c86717568 1)))))

; backwards $main_sum298
(assert
  (forall (($k86417565 Int) ($c86717572 Int) ($y86517566 Int) ($x86617567 Int) ($c86717568 Int) ($k86417569 Int) ($y86517570 Int) ($x86617571 Int) ($y86517562 Int) ($k86417561 Int) ($c86717564 Int) ($x86617563 Int))
    (=> (and ($main_sum298 $k86417565 (+ $y86517566 1) (+ (* (* (* (+ $y86517566 1) (+ $y86517566 1)) (+ $y86517566 1)) (+ $y86517566 1)) $x86617567) (+ $c86717568 1) $k86417569 $y86517570 $x86617571 $c86717572)
             ($main_if783 $k86417561 $y86517562 $x86617563 $c86717564 $k86417565 $y86517566 $x86617567 $c86717568))
        ($main_sum298 $k86417561 $y86517562 $x86617563 $c86717564 $k86417569 $y86517570 $x86617571 $c86717572))))

; __VERIFIER_assert precondition
(assert
  (forall (($x86617575 Int) ($c86717576 Int) ($y86517574 Int) ($int17560 Int) ($k86417573 Int))
    (=> (and ($main_sum298 $int17560 0 0 0 $k86417573 $y86517574 $x86617575 $c86717576)
             (<= (- 2147483648) $int17560)
             (<= $int17560 2147483647))
        ($__VERIFIER_assert_pre (ite (= (- (- (+ (+ (* (* (* (* (* 6 $y86517574) $y86517574) $y86517574) $y86517574) $y86517574) (* (* (* (* 15 $y86517574) $y86517574) $y86517574) $y86517574)) (* (* (* 10 $y86517574) $y86517574) $y86517574)) (* 30 $x86617575)) $y86517574) 0) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x86617575 Int) ($c86717576 Int) ($y86517574 Int) ($int17560 Int) ($k86417573 Int))
    (=> (and (__VERIFIER_assert (ite (= (- (- (+ (+ (* (* (* (* (* 6 $y86517574) $y86517574) $y86517574) $y86517574) $y86517574) (* (* (* (* 15 $y86517574) $y86517574) $y86517574) $y86517574)) (* (* (* 10 $y86517574) $y86517574) $y86517574)) (* 30 $x86617575)) $y86517574) 0) 1 0))
             ($main_sum298 $int17560 0 0 0 $k86417573 $y86517574 $x86617575 $c86717576)
             (<= (- 2147483648) $int17560)
             (<= $int17560 2147483647))
        ($__VERIFIER_assert_pre (ite (= (* $k86417573 $y86517574) (* $y86517574 $y86517574)) 1 0)))))

(check-sat)
