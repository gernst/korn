(set-logic HORN)

(declare-fun $main_inv261 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if686 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_nondet_bool_pre () Bool)
(declare-fun $main_sum261 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_if687 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_nondet_bool (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond16548 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond16548))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if686 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond16549 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if686 cond cond16549))
        (__VERIFIER_assert cond16549))))

; loop entry $main_inv261
(assert
  (forall (($a726 (Array Int Int)) ($len727 Int) ($i728 Int))
    (=> (and (= $len727 0))
        ($main_inv261 $a726 $len727 $i728))))

; loop term $main_sum261
(assert
  (forall (($a72616550 (Array Int Int)) ($len72716551 Int) ($i72816552 Int) ($bool16553 Int))
    (=> (and (= $bool16553 0)
             (or (= $bool16553 0) (= $bool16553 1)))
        ($main_sum261 $a72616550 $len72716551 $i72816552 $a72616550 $len72716551 $i72816552))))

; if then
(assert
  (forall (($a72616550 (Array Int Int)) ($len72716551 Int) ($i72816552 Int) ($bool16553 Int))
    (=> (and (= $len72716551 4)
             (not (= $bool16553 0))
             (or (= $bool16553 0) (= $bool16553 1))
             ($main_inv261 $a72616550 $len72716551 $i72816552))
        ($main_if687 $a72616550 $len72716551 $i72816552 $a72616550 0 $i72816552))))

; if else
(assert
  (forall (($a72616550 (Array Int Int)) ($len72716551 Int) ($i72816552 Int) ($bool16553 Int))
    (=> (and (not (= $len72716551 4))
             (not (= $bool16553 0))
             (or (= $bool16553 0) (= $bool16553 1))
             ($main_inv261 $a72616550 $len72716551 $i72816552))
        ($main_if687 $a72616550 $len72716551 $i72816552 $a72616550 $len72716551 $i72816552))))

; forwards $main_inv261
(assert
  (forall (($i72816552 Int) ($a72616550 (Array Int Int)) ($len72716555 Int) ($len72716551 Int) ($i72816556 Int) ($a72616554 (Array Int Int)))
    (=> (and ($main_if687 $a72616550 $len72716551 $i72816552 $a72616554 $len72716555 $i72816556))
        ($main_inv261 (store $a72616554 $len72716555 0) (+ $len72716555 1) $i72816556))))

; backwards $main_sum261
(assert
  (forall (($i72816552 Int) ($a72616550 (Array Int Int)) ($len72716558 Int) ($len72716555 Int) ($len72716551 Int) ($i72816556 Int) ($a72616554 (Array Int Int)) ($a72616557 (Array Int Int)) ($i72816559 Int))
    (=> (and ($main_sum261 (store $a72616554 $len72716555 0) (+ $len72716555 1) $i72816556 $a72616557 $len72716558 $i72816559)
             ($main_if687 $a72616550 $len72716551 $i72816552 $a72616554 $len72716555 $i72816556))
        ($main_sum261 $a72616550 $len72716551 $i72816552 $a72616557 $len72716558 $i72816559))))

; __VERIFIER_assert precondition
(assert
  (forall (($i72816562 Int) ($a72616560 (Array Int Int)) ($len72716561 Int) ($a726 (Array Int Int)) ($len727 Int) ($i728 Int))
    (=> (and ($main_sum261 $a726 $len727 $i728 $a72616560 $len72716561 $i72816562)
             (= $len727 0))
        ($__VERIFIER_assert_pre (ite (and (>= $len72716561 0) (< $len72716561 5)) 1 0)))))

(check-sat)
