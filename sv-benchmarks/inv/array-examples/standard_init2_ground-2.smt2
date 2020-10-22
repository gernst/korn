(set-logic HORN)

(declare-fun $main_inv223 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum223 ((Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_inv224 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum225 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum224 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv225 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if68 (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond3631 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond3631))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if68 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond3632 Int))
    (=> (and ($__VERIFIER_assert_if68 cond3632))
        (__VERIFIER_assert cond3632))))

; loop entry $main_inv223
(assert
  (forall (($a325 (Array Int Int)) ($i326 Int) ($x327 Int))
    (=> (and (= $i326 0))
        ($main_inv223 $a325 $i326 $x327))))

; loop term $main_sum223
(assert
  (forall (($a3253633 (Array Int Int)) ($i3263634 Int) ($x3273635 Int))
    (=> (and (not (< $i3263634 100000))
             ($main_inv223 $a3253633 $i3263634 $x3273635))
        ($main_sum223 $a3253633 $i3263634 $x3273635))))

; forwards $main_inv223
(assert
  (forall (($a3253633 (Array Int Int)) ($i3263634 Int) ($x3273635 Int))
    (=> (and (< $i3263634 100000)
             ($main_inv223 $a3253633 $i3263634 $x3273635))
        ($main_inv223 (store $a3253633 $i3263634 42) (+ $i3263634 1) $x3273635))))

; loop entry $main_inv224
(assert
  (forall (($a3253636 (Array Int Int)) ($x3273638 Int) ($i3263637 Int))
    (=> (and ($main_sum223 $a3253636 $i3263637 $x3273638))
        ($main_inv224 $a3253636 0 $x3273638))))

; loop term $main_sum224
(assert
  (forall (($a3253639 (Array Int Int)) ($i3263640 Int) ($x3273641 Int))
    (=> (and (not (< $i3263640 100000))
             ($main_inv224 $a3253639 $i3263640 $x3273641))
        ($main_sum224 $a3253639 $i3263640 $x3273641))))

; forwards $main_inv224
(assert
  (forall (($a3253639 (Array Int Int)) ($i3263640 Int) ($x3273641 Int))
    (=> (and (< $i3263640 100000)
             ($main_inv224 $a3253639 $i3263640 $x3273641))
        ($main_inv224 (store $a3253639 $i3263640 43) (+ $i3263640 1) $x3273641))))

; loop entry $main_inv225
(assert
  (forall (($a3253642 (Array Int Int)) ($i3263643 Int) ($x3273644 Int))
    (=> (and ($main_sum224 $a3253642 $i3263643 $x3273644))
        ($main_inv225 $a3253642 $i3263643 0))))

; loop term $main_sum225
(assert
  (forall (($a3253645 (Array Int Int)) ($i3263646 Int) ($x3273647 Int))
    (=> (and (not (< $x3273647 100000))
             ($main_inv225 $a3253645 $i3263646 $x3273647))
        ($main_sum225 $a3253645 $i3263646 $x3273647))))

; __VERIFIER_assert precondition
(assert
  (forall (($a3253645 (Array Int Int)) ($x3273647 Int) ($i3263646 Int))
    (=> (and (< $x3273647 100000)
             ($main_inv225 $a3253645 $i3263646 $x3273647))
        ($__VERIFIER_assert_pre (ite (= (select $a3253645 $x3273647) 43) 1 0)))))

; forwards $main_inv225
(assert
  (forall (($a3253645 (Array Int Int)) ($i3263646 Int) ($x3273647 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a3253645 $x3273647) 43) 1 0))
             (< $x3273647 100000)
             ($main_inv225 $a3253645 $i3263646 $x3273647))
        ($main_inv225 $a3253645 $i3263646 (+ $x3273647 1)))))

(check-sat)
