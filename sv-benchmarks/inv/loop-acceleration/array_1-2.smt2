(set-logic HORN)

(declare-fun $main_inv91 ((Array Int Int) Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_if463 (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum91 ((Array Int Int) Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond12880 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond12880))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if463 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond12881 Int))
    (=> (and ($__VERIFIER_assert_if463 cond12881))
        (__VERIFIER_assert cond12881))))

; loop entry $main_inv91
(assert
  (forall (($A394 (Array Int Int)))
        ($main_inv91 $A394 0)))

; loop term $main_sum91
(assert
  (forall (($A39412882 (Array Int Int)) ($i39512883 Int))
    (=> (and (not (< $i39512883 1024))
             ($main_inv91 $A39412882 $i39512883))
        ($main_sum91 $A39412882 $i39512883))))

; forwards $main_inv91
(assert
  (forall (($A39412882 (Array Int Int)) ($i39512883 Int))
    (=> (and (< $i39512883 1024)
             ($main_inv91 $A39412882 $i39512883))
        ($main_inv91 (store $A39412882 $i39512883 $i39512883) (+ $i39512883 1)))))

; __VERIFIER_assert precondition
(assert
  (forall (($A39412884 (Array Int Int)) ($i39512885 Int))
    (=> (and ($main_sum91 $A39412884 $i39512885))
        ($__VERIFIER_assert_pre (ite (= (select $A39412884 1023) 1023) 1 0)))))

(check-sat)
