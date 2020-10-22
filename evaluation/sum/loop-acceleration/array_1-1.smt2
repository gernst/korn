(set-logic HORN)

(declare-fun $main_inv90 ((Array Int Int) Int) Bool)
(declare-fun $main_sum90 ((Array Int Int) Int (Array Int Int) Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if462 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond13644 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond13644))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if462 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13645 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if462 cond cond13645))
        (__VERIFIER_assert cond13645))))

; loop entry $main_inv90
(assert
  (forall (($A392 (Array Int Int)))
        ($main_inv90 $A392 0)))

; loop term $main_sum90
(assert
  (forall (($A39213646 (Array Int Int)) ($i39313647 Int))
    (=> (and (not (< $i39313647 1024)))
        ($main_sum90 $A39213646 $i39313647 $A39213646 $i39313647))))

; forwards $main_inv90
(assert
  (forall (($A39213646 (Array Int Int)) ($i39313647 Int))
    (=> (and (< $i39313647 1024)
             ($main_inv90 $A39213646 $i39313647))
        ($main_inv90 (store $A39213646 $i39313647 $i39313647) (+ $i39313647 1)))))

; backwards $main_sum90
(assert
  (forall (($A39213646 (Array Int Int)) ($i39313647 Int) ($A39213648 (Array Int Int)) ($i39313649 Int))
    (=> (and ($main_sum90 (store $A39213646 $i39313647 $i39313647) (+ $i39313647 1) $A39213648 $i39313649)
             (< $i39313647 1024))
        ($main_sum90 $A39213646 $i39313647 $A39213648 $i39313649))))

; __VERIFIER_assert precondition
(assert
  (forall (($A39213650 (Array Int Int)) ($A392 (Array Int Int)) ($i39313651 Int))
    (=> (and ($main_sum90 $A392 0 $A39213650 $i39313651))
        ($__VERIFIER_assert_pre (ite (not (= (select $A39213650 1023) 1023)) 1 0)))))

(check-sat)
