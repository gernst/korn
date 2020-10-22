(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_inv435 ((Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv434 ((Array Int Int) Int) Bool)
(declare-fun $main_sum435 ((Array Int Int) Int) Bool)
(declare-fun $main_if161 ((Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_if160 (Int) Bool)
(declare-fun $main_sum434 ((Array Int Int) Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond5637 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond5637))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if160 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5638 Int))
    (=> (and ($__VERIFIER_assert_if160 cond5638))
        (__VERIFIER_assert cond5638))))

; loop entry $main_inv434
(assert
  (forall (($A546 (Array Int Int)))
        ($main_inv434 $A546 0)))

; loop term $main_sum434
(assert
  (forall (($A5465639 (Array Int Int)) ($i5475640 Int))
    (=> (and (not (< $i5475640 1024))
             ($main_inv434 $A5465639 $i5475640))
        ($main_sum434 $A5465639 $i5475640))))

; forwards $main_inv434
(assert
  (forall (($A5465639 (Array Int Int)) ($i5475640 Int) ($int5641 Int))
    (=> (and (<= (- 2147483648) $int5641)
             (<= $int5641 2147483647)
             (< $i5475640 1024)
             ($main_inv434 $A5465639 $i5475640))
        ($main_inv434 (store $A5465639 $i5475640 $int5641) (+ $i5475640 1)))))

; loop entry $main_inv435
(assert
  (forall (($A5465642 (Array Int Int)) ($i5475643 Int))
    (=> (and ($main_sum434 $A5465642 $i5475643))
        ($main_inv435 $A5465642 0))))

; loop term $main_sum435
(assert
  (forall (($A5465644 (Array Int Int)) ($i5475645 Int))
    (=> (and (= (select $A5465644 $i5475645) 0)
             ($main_inv435 $A5465644 $i5475645))
        ($main_sum435 $A5465644 $i5475645))))

; break $main_sum435
(assert
  (forall (($A5465644 (Array Int Int)) ($i5475645 Int))
    (=> (and (>= $i5475645 (- 1024 1))
             (not (= (select $A5465644 $i5475645) 0))
             ($main_inv435 $A5465644 $i5475645))
        ($main_sum435 $A5465644 $i5475645))))

; if else
(assert
  (forall (($A5465644 (Array Int Int)) ($i5475645 Int))
    (=> (and (not (>= $i5475645 (- 1024 1)))
             (not (= (select $A5465644 $i5475645) 0))
             ($main_inv435 $A5465644 $i5475645))
        ($main_if161 $A5465644 $i5475645))))

; forwards $main_inv435
(assert
  (forall (($A5465646 (Array Int Int)) ($i5475647 Int))
    (=> (and ($main_if161 $A5465646 $i5475647))
        ($main_inv435 $A5465646 (+ $i5475647 1)))))

; __VERIFIER_assert precondition
(assert
  (forall (($i5475649 Int) ($A5465648 (Array Int Int)))
    (=> (and ($main_sum435 $A5465648 $i5475649))
        ($__VERIFIER_assert_pre (ite (<= $i5475649 1024) 1 0)))))

(check-sat)
