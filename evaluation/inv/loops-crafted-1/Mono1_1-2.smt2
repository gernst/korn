(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum180 (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if563 (Int) Bool)
(declare-fun $main_inv180 (Int) Bool)
(declare-fun $main_if564 (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13678 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13678))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if563 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13679 Int))
    (=> (and ($__VERIFIER_assert_if563 cond13679))
        (__VERIFIER_assert cond13679))))

; loop entry $main_inv180
(assert
  (forall (($x533 Int))
    (=> (and (= $x533 0))
        ($main_inv180 $x533))))

; loop term $main_sum180
(assert
  (forall (($x53313680 Int))
    (=> (and (not (< $x53313680 100000000))
             ($main_inv180 $x53313680))
        ($main_sum180 $x53313680))))

; if then
(assert
  (forall (($x53313680 Int))
    (=> (and (< $x53313680 10000000)
             (< $x53313680 100000000)
             ($main_inv180 $x53313680))
        ($main_if564 (+ $x53313680 1)))))

; if else
(assert
  (forall (($x53313680 Int))
    (=> (and (not (< $x53313680 10000000))
             (< $x53313680 100000000)
             ($main_inv180 $x53313680))
        ($main_if564 (+ $x53313680 2)))))

; forwards $main_inv180
(assert
  (forall (($x53313681 Int))
    (=> (and ($main_if564 $x53313681))
        ($main_inv180 $x53313681))))

; __VERIFIER_assert precondition
(assert
  (forall (($x53313682 Int))
    (=> (and ($main_sum180 $x53313682))
        ($__VERIFIER_assert_pre (ite (= $x53313682 100000000) 1 0)))))

(check-sat)
