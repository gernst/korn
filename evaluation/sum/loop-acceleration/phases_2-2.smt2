(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_if499 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $assume_abort_if_not_if496 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if497 (Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $main_if498 (Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_inv109 (Int Int) Bool)
(declare-fun $main_sum109 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if496 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond13816 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if496 cond cond13816))
        (assume_abort_if_not cond13816))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond13817 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond13817))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if497 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13818 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if497 cond cond13818))
        (__VERIFIER_assert cond13818))))

; if else
(assert
  (forall (($x421 Int) ($y422 Int) ($uint13819 Int))
    (=> (and (> $y422 0)
             (= $y422 $uint13819)
             (<= 0 $uint13819)
             (<= $uint13819 4294967295)
             (= $x421 1))
        ($main_if498 $x421 $y422 $x421 $y422))))

; loop entry $main_inv109
(assert
  (forall (($x42113820 Int) ($y42213821 Int) ($x421 Int) ($y422 Int))
    (=> (and ($main_if498 $x421 $y422 $x42113820 $y42213821))
        ($main_inv109 $x42113820 $y42213821))))

; loop term $main_sum109
(assert
  (forall (($x42113822 Int) ($y42213823 Int))
    (=> (and (not (< $x42113822 $y42213823)))
        ($main_sum109 $x42113822 $y42213823 $x42113822 $y42213823))))

; if then
(assert
  (forall (($x42113822 Int) ($y42213823 Int))
    (=> (and (< $x42113822 (div $y42213823 $x42113822))
             (< $x42113822 $y42213823)
             ($main_inv109 $x42113822 $y42213823))
        ($main_if499 $x42113822 $y42213823 (* $x42113822 $x42113822) $y42213823))))

; if else
(assert
  (forall (($x42113822 Int) ($y42213823 Int))
    (=> (and (not (< $x42113822 (div $y42213823 $x42113822)))
             (< $x42113822 $y42213823)
             ($main_inv109 $x42113822 $y42213823))
        ($main_if499 $x42113822 $y42213823 (+ $x42113822 1) $y42213823))))

; forwards $main_inv109
(assert
  (forall (($x42113824 Int) ($y42213825 Int) ($x42113822 Int) ($y42213823 Int))
    (=> (and ($main_if499 $x42113822 $y42213823 $x42113824 $y42213825))
        ($main_inv109 $x42113824 $y42213825))))

; backwards $main_sum109
(assert
  (forall (($x42113822 Int) ($y42213825 Int) ($y42213827 Int) ($y42213823 Int) ($x42113824 Int) ($x42113826 Int))
    (=> (and ($main_sum109 $x42113824 $y42213825 $x42113826 $y42213827)
             ($main_if499 $x42113822 $y42213823 $x42113824 $y42213825))
        ($main_sum109 $x42113822 $y42213823 $x42113826 $y42213827))))

; __VERIFIER_assert precondition
(assert
  (forall (($y42213821 Int) ($x421 Int) ($y422 Int) ($y42213829 Int) ($x42113820 Int) ($x42113828 Int))
    (=> (and ($main_sum109 $x42113820 $y42213821 $x42113828 $y42213829)
             ($main_if498 $x421 $y422 $x42113820 $y42213821))
        ($__VERIFIER_assert_pre (ite (= $x42113828 $y42213829) 1 0)))))

(check-sat)
