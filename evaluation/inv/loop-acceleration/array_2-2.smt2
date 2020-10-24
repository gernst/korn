(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_if159 (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum433 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv433 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond5627 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond5627))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if159 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5628 Int))
    (=> (and ($__VERIFIER_assert_if159 cond5628))
        (__VERIFIER_assert cond5628))))

; loop entry $main_inv433
(assert
  (forall (($A542 (Array Int Int)) ($B543 (Array Int Int)) ($tmp545 Int))
        ($main_inv433 $A542 $B543 0 $tmp545)))

; loop term $main_sum433
(assert
  (forall (($A5425629 (Array Int Int)) ($B5435630 (Array Int Int)) ($i5445631 Int) ($tmp5455632 Int))
    (=> (and (not (< $i5445631 2048))
             ($main_inv433 $A5425629 $B5435630 $i5445631 $tmp5455632))
        ($main_sum433 $A5425629 $B5435630 $i5445631 $tmp5455632))))

; forwards $main_inv433
(assert
  (forall (($A5425629 (Array Int Int)) ($B5435630 (Array Int Int)) ($i5445631 Int) ($tmp5455632 Int))
    (=> (and (< $i5445631 2048)
             ($main_inv433 $A5425629 $B5435630 $i5445631 $tmp5455632))
        ($main_inv433 $A5425629 (store $B5435630 $i5445631 (select $A5425629 $i5445631)) (+ $i5445631 1) (select $A5425629 $i5445631)))))

; __VERIFIER_assert precondition
(assert
  (forall (($A5425633 (Array Int Int)) ($B5435634 (Array Int Int)) ($i5445635 Int) ($tmp5455636 Int))
    (=> (and ($main_sum433 $A5425633 $B5435634 $i5445635 $tmp5455636))
        ($__VERIFIER_assert_pre (ite (= (select $A5425633 (div 2048 2)) (select $B5435634 (div 2048 2))) 1 0)))))

(check-sat)
