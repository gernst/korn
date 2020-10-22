(set-logic HORN)

(declare-fun $main_sum269 (Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if700 (Int Int) Bool)
(declare-fun $main_if701 (Int Int Int Int) Bool)
(declare-fun $main_inv269 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond16699 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond16699))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if700 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond16700 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if700 cond cond16700))
        (__VERIFIER_assert cond16700))))

; loop entry $main_inv269
(assert
  (forall (($x745 Int) ($y746 Int) ($int16702 Int) ($int16701 Int))
    (=> (and (> $y746 0)
             (= $y746 $int16702)
             (<= (- 2147483648) $int16702)
             (<= $int16702 2147483647)
             (= $x745 $int16701)
             (<= (- 2147483648) $int16701)
             (<= $int16701 2147483647))
        ($main_inv269 $x745 $y746))))

; loop term $main_sum269
(assert
  (forall (($x74516703 Int) ($y74616704 Int))
    (=> (and (not (< $x74516703 100)))
        ($main_sum269 $x74516703 $y74616704 $x74516703 $y74616704))))

; forwards $main_inv269
(assert
  (forall (($x74516703 Int) ($y74616704 Int))
    (=> (and (< $x74516703 100)
             ($main_inv269 $x74516703 $y74616704))
        ($main_inv269 (+ $x74516703 $y74616704) $y74616704))))

; backwards $main_sum269
(assert
  (forall (($x74516703 Int) ($y74616704 Int) ($x74516705 Int) ($y74616706 Int))
    (=> (and ($main_sum269 (+ $x74516703 $y74616704) $y74616704 $x74516705 $y74616706)
             (< $x74516703 100))
        ($main_sum269 $x74516703 $y74616704 $x74516705 $y74616706))))

; if then
(assert
  (forall (($int16702 Int) ($x745 Int) ($x74516707 Int) ($y74616708 Int) ($y746 Int) ($int16701 Int))
    (=> (and ($main_sum269 $x745 $y746 $x74516707 $y74616708)
             (> $y746 0)
             (= $y746 $int16702)
             (<= (- 2147483648) $int16702)
             (<= $int16702 2147483647)
             (= $x745 $int16701)
             (<= (- 2147483648) $int16701)
             (<= $int16701 2147483647))
        ($main_if701 $x745 $y746 $x74516707 $y74616708))))

; if else
(assert
  (forall (($x745 Int) ($y746 Int) ($int16702 Int) ($int16701 Int))
    (=> (and (not (> $y746 0))
             (= $y746 $int16702)
             (<= (- 2147483648) $int16702)
             (<= $int16702 2147483647)
             (= $x745 $int16701)
             (<= (- 2147483648) $int16701)
             (<= $int16701 2147483647))
        ($main_if701 $x745 $y746 $x745 $y746))))

; __VERIFIER_assert precondition
(assert
  (forall (($y74616710 Int) ($x74516709 Int) ($x745 Int) ($y746 Int))
    (=> (and ($main_if701 $x745 $y746 $x74516709 $y74616710))
        ($__VERIFIER_assert_pre (ite (or (<= $y74616710 0) (and (< $y74616710 0) (>= $x74516709 100))) 1 0)))))

(check-sat)
