(set-logic HORN)

(declare-fun $main_sum185 (Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_if574 (Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if573 (Int) Bool)
(declare-fun $main_inv185 (Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13721 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13721))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if573 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13722 Int))
    (=> (and ($__VERIFIER_assert_if573 cond13722))
        (__VERIFIER_assert cond13722))))

; loop entry $main_inv185
(assert
  (forall (($x544 Int) ($y545 Int) ($z546 Int))
    (=> (and (= $z546 5000000)
             (= $y545 10000000)
             (= $x544 0))
        ($main_inv185 $x544 $y545 $z546))))

; loop term $main_sum185
(assert
  (forall (($x54413723 Int) ($y54513724 Int) ($z54613725 Int))
    (=> (and (not (< $x54413723 $y54513724))
             ($main_inv185 $x54413723 $y54513724 $z54613725))
        ($main_sum185 $x54413723 $y54513724 $z54613725))))

; if then
(assert
  (forall (($x54413723 Int) ($y54513724 Int) ($z54613725 Int))
    (=> (and (>= $x54413723 5000000)
             (< $x54413723 $y54513724)
             ($main_inv185 $x54413723 $y54513724 $z54613725))
        ($main_if574 $x54413723 $y54513724 (+ $z54613725 1)))))

; if else
(assert
  (forall (($x54413723 Int) ($y54513724 Int) ($z54613725 Int))
    (=> (and (not (>= $x54413723 5000000))
             (< $x54413723 $y54513724)
             ($main_inv185 $x54413723 $y54513724 $z54613725))
        ($main_if574 $x54413723 $y54513724 $z54613725))))

; forwards $main_inv185
(assert
  (forall (($x54413726 Int) ($y54513727 Int) ($z54613728 Int))
    (=> (and ($main_if574 $x54413726 $y54513727 $z54613728))
        ($main_inv185 (+ $x54413726 1) $y54513727 $z54613728))))

; __VERIFIER_assert precondition
(assert
  (forall (($z54613731 Int) ($x54413729 Int) ($y54513730 Int))
    (=> (and ($main_sum185 $x54413729 $y54513730 $z54613731))
        ($__VERIFIER_assert_pre (ite (= $z54613731 $x54413729) 1 0)))))

(check-sat)
