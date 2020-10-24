(set-logic HORN)

(declare-fun $main_sum90 ((Array Int Int) Int) Bool)
(declare-fun $main_inv90 ((Array Int Int) Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if462 (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond12874 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond12874))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if462 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond12875 Int))
    (=> (and ($__VERIFIER_assert_if462 cond12875))
        (__VERIFIER_assert cond12875))))

; loop entry $main_inv90
(assert
  (forall (($A392 (Array Int Int)))
        ($main_inv90 $A392 0)))

; loop term $main_sum90
(assert
  (forall (($A39212876 (Array Int Int)) ($i39312877 Int))
    (=> (and (not (< $i39312877 1024))
             ($main_inv90 $A39212876 $i39312877))
        ($main_sum90 $A39212876 $i39312877))))

; forwards $main_inv90
(assert
  (forall (($A39212876 (Array Int Int)) ($i39312877 Int))
    (=> (and (< $i39312877 1024)
             ($main_inv90 $A39212876 $i39312877))
        ($main_inv90 (store $A39212876 $i39312877 $i39312877) (+ $i39312877 1)))))

; __VERIFIER_assert precondition
(assert
  (forall (($A39212878 (Array Int Int)) ($i39312879 Int))
    (=> (and ($main_sum90 $A39212878 $i39312879))
        ($__VERIFIER_assert_pre (ite (not (= (select $A39212878 1023) 1023)) 1 0)))))

(check-sat)
