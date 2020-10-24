(set-logic HORN)

(declare-fun $main_inv91 ((Array Int Int) Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if463 (Int Int) Bool)
(declare-fun $main_sum91 ((Array Int Int) Int (Array Int Int) Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond13652 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond13652))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if463 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13653 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if463 cond cond13653))
        (__VERIFIER_assert cond13653))))

; loop entry $main_inv91
(assert
  (forall (($A394 (Array Int Int)))
        ($main_inv91 $A394 0)))

; loop term $main_sum91
(assert
  (forall (($A39413654 (Array Int Int)) ($i39513655 Int))
    (=> (and (not (< $i39513655 1024)))
        ($main_sum91 $A39413654 $i39513655 $A39413654 $i39513655))))

; forwards $main_inv91
(assert
  (forall (($A39413654 (Array Int Int)) ($i39513655 Int))
    (=> (and (< $i39513655 1024)
             ($main_inv91 $A39413654 $i39513655))
        ($main_inv91 (store $A39413654 $i39513655 $i39513655) (+ $i39513655 1)))))

; backwards $main_sum91
(assert
  (forall (($A39413654 (Array Int Int)) ($i39513655 Int) ($A39413656 (Array Int Int)) ($i39513657 Int))
    (=> (and ($main_sum91 (store $A39413654 $i39513655 $i39513655) (+ $i39513655 1) $A39413656 $i39513657)
             (< $i39513655 1024))
        ($main_sum91 $A39413654 $i39513655 $A39413656 $i39513657))))

; __VERIFIER_assert precondition
(assert
  (forall (($A39413658 (Array Int Int)) ($A394 (Array Int Int)) ($i39513659 Int))
    (=> (and ($main_sum91 $A394 0 $A39413658 $i39513659))
        ($__VERIFIER_assert_pre (ite (= (select $A39413658 1023) 1023) 1 0)))))

(check-sat)
