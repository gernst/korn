(set-logic HORN)

(declare-fun $__VERIFIER_assert_if575 (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum186 (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_if576 (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv186 (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13732 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13732))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if575 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13733 Int))
    (=> (and ($__VERIFIER_assert_if575 cond13733))
        (__VERIFIER_assert cond13733))))

; loop entry $main_inv186
(assert
  (forall (($x547 Int))
    (=> (and (= $x547 0))
        ($main_inv186 $x547))))

; loop term $main_sum186
(assert
  (forall (($x54713734 Int))
    (=> (and (not (< $x54713734 100000000))
             ($main_inv186 $x54713734))
        ($main_sum186 $x54713734))))

; if then
(assert
  (forall (($x54713734 Int))
    (=> (and (< $x54713734 10000000)
             (< $x54713734 100000000)
             ($main_inv186 $x54713734))
        ($main_if576 (+ $x54713734 1)))))

; if else
(assert
  (forall (($x54713734 Int))
    (=> (and (not (< $x54713734 10000000))
             (< $x54713734 100000000)
             ($main_inv186 $x54713734))
        ($main_if576 (+ $x54713734 2)))))

; forwards $main_inv186
(assert
  (forall (($x54713735 Int))
    (=> (and ($main_if576 $x54713735))
        ($main_inv186 $x54713735))))

; __VERIFIER_assert precondition
(assert
  (forall (($x54713736 Int))
    (=> (and ($main_sum186 $x54713736))
        ($__VERIFIER_assert_pre (ite (= (mod $x54713736 2) 0) 1 0)))))

(check-sat)
