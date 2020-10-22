(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv231 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if70 (Int) Bool)
(declare-fun $main_inv230 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv232 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum233 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv233 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum232 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum231 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum230 ((Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond3677 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond3677))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if70 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond3678 Int))
    (=> (and ($__VERIFIER_assert_if70 cond3678))
        (__VERIFIER_assert cond3678))))

; loop entry $main_inv230
(assert
  (forall (($a331 (Array Int Int)) ($i332 Int) ($x333 Int))
    (=> (and (= $i332 0))
        ($main_inv230 $a331 $i332 $x333))))

; loop term $main_sum230
(assert
  (forall (($a3313679 (Array Int Int)) ($i3323680 Int) ($x3333681 Int))
    (=> (and (not (< $i3323680 100000))
             ($main_inv230 $a3313679 $i3323680 $x3333681))
        ($main_sum230 $a3313679 $i3323680 $x3333681))))

; forwards $main_inv230
(assert
  (forall (($a3313679 (Array Int Int)) ($i3323680 Int) ($x3333681 Int))
    (=> (and (< $i3323680 100000)
             ($main_inv230 $a3313679 $i3323680 $x3333681))
        ($main_inv230 (store $a3313679 $i3323680 42) (+ $i3323680 1) $x3333681))))

; loop entry $main_inv231
(assert
  (forall (($a3313682 (Array Int Int)) ($x3333684 Int) ($i3323683 Int))
    (=> (and ($main_sum230 $a3313682 $i3323683 $x3333684))
        ($main_inv231 $a3313682 0 $x3333684))))

; loop term $main_sum231
(assert
  (forall (($a3313685 (Array Int Int)) ($i3323686 Int) ($x3333687 Int))
    (=> (and (not (< $i3323686 100000))
             ($main_inv231 $a3313685 $i3323686 $x3333687))
        ($main_sum231 $a3313685 $i3323686 $x3333687))))

; forwards $main_inv231
(assert
  (forall (($a3313685 (Array Int Int)) ($i3323686 Int) ($x3333687 Int))
    (=> (and (< $i3323686 100000)
             ($main_inv231 $a3313685 $i3323686 $x3333687))
        ($main_inv231 (store $a3313685 $i3323686 43) (+ $i3323686 1) $x3333687))))

; loop entry $main_inv232
(assert
  (forall (($a3313688 (Array Int Int)) ($x3333690 Int) ($i3323689 Int))
    (=> (and ($main_sum231 $a3313688 $i3323689 $x3333690))
        ($main_inv232 $a3313688 0 $x3333690))))

; loop term $main_sum232
(assert
  (forall (($a3313691 (Array Int Int)) ($i3323692 Int) ($x3333693 Int))
    (=> (and (not (< $i3323692 100000))
             ($main_inv232 $a3313691 $i3323692 $x3333693))
        ($main_sum232 $a3313691 $i3323692 $x3333693))))

; forwards $main_inv232
(assert
  (forall (($a3313691 (Array Int Int)) ($i3323692 Int) ($x3333693 Int))
    (=> (and (< $i3323692 100000)
             ($main_inv232 $a3313691 $i3323692 $x3333693))
        ($main_inv232 (store $a3313691 $i3323692 44) (+ $i3323692 1) $x3333693))))

; loop entry $main_inv233
(assert
  (forall (($a3313694 (Array Int Int)) ($i3323695 Int) ($x3333696 Int))
    (=> (and ($main_sum232 $a3313694 $i3323695 $x3333696))
        ($main_inv233 $a3313694 $i3323695 0))))

; loop term $main_sum233
(assert
  (forall (($a3313697 (Array Int Int)) ($i3323698 Int) ($x3333699 Int))
    (=> (and (not (< $x3333699 100000))
             ($main_inv233 $a3313697 $i3323698 $x3333699))
        ($main_sum233 $a3313697 $i3323698 $x3333699))))

; __VERIFIER_assert precondition
(assert
  (forall (($a3313697 (Array Int Int)) ($x3333699 Int) ($i3323698 Int))
    (=> (and (< $x3333699 100000)
             ($main_inv233 $a3313697 $i3323698 $x3333699))
        ($__VERIFIER_assert_pre (ite (= (select $a3313697 $x3333699) 44) 1 0)))))

; forwards $main_inv233
(assert
  (forall (($a3313697 (Array Int Int)) ($i3323698 Int) ($x3333699 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a3313697 $x3333699) 44) 1 0))
             (< $x3333699 100000)
             ($main_inv233 $a3313697 $i3323698 $x3333699))
        ($main_inv233 $a3313697 $i3323698 (+ $x3333699 1)))))

(check-sat)
