(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum439 ((Array Int Int) Int) Bool)
(declare-fun $main_sum438 ((Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_if163 (Int) Bool)
(declare-fun $main_inv439 ((Array Int Int) Int) Bool)
(declare-fun $main_inv438 ((Array Int Int) Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond5661 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond5661))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if163 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5662 Int))
    (=> (and ($__VERIFIER_assert_if163 cond5662))
        (__VERIFIER_assert cond5662))))

; loop entry $main_inv438
(assert
  (forall (($A550 (Array Int Int)))
        ($main_inv438 $A550 0)))

; loop term $main_sum438
(assert
  (forall (($A5505663 (Array Int Int)) ($i5515664 Int))
    (=> (and (not (< $i5515664 (- 1024 1)))
             ($main_inv438 $A5505663 $i5515664))
        ($main_sum438 $A5505663 $i5515664))))

; forwards $main_inv438
(assert
  (forall (($A5505663 (Array Int Int)) ($i5515664 Int) ($int5665 Int))
    (=> (and (<= (- 2147483648) $int5665)
             (<= $int5665 2147483647)
             (< $i5515664 (- 1024 1))
             ($main_inv438 $A5505663 $i5515664))
        ($main_inv438 (store $A5505663 $i5515664 $int5665) (+ $i5515664 1)))))

; loop entry $main_inv439
(assert
  (forall (($A5505666 (Array Int Int)) ($i5515667 Int))
    (=> (and ($main_sum438 $A5505666 $i5515667))
        ($main_inv439 (store $A5505666 (- 1024 1) 0) 0))))

; loop term $main_sum439
(assert
  (forall (($A5505668 (Array Int Int)) ($i5515669 Int))
    (=> (and (= (select $A5505668 $i5515669) 0)
             ($main_inv439 $A5505668 $i5515669))
        ($main_sum439 $A5505668 $i5515669))))

; forwards $main_inv439
(assert
  (forall (($A5505668 (Array Int Int)) ($i5515669 Int))
    (=> (and (not (= (select $A5505668 $i5515669) 0))
             ($main_inv439 $A5505668 $i5515669))
        ($main_inv439 $A5505668 (+ $i5515669 1)))))

; __VERIFIER_assert precondition
(assert
  (forall (($i5515671 Int) ($A5505670 (Array Int Int)))
    (=> (and ($main_sum439 $A5505670 $i5515671))
        ($__VERIFIER_assert_pre (ite (<= $i5515671 1024) 1 0)))))

(check-sat)
