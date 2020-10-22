(set-logic HORN)

(declare-fun $main_inv226 ((Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_if69 (Int) Bool)
(declare-fun $main_inv227 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum227 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv228 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum228 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum226 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv229 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum229 ((Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond3651 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond3651))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if69 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond3652 Int))
    (=> (and ($__VERIFIER_assert_if69 cond3652))
        (__VERIFIER_assert cond3652))))

; loop entry $main_inv226
(assert
  (forall (($a328 (Array Int Int)) ($i329 Int) ($x330 Int))
    (=> (and (= $i329 0))
        ($main_inv226 $a328 $i329 $x330))))

; loop term $main_sum226
(assert
  (forall (($a3283653 (Array Int Int)) ($i3293654 Int) ($x3303655 Int))
    (=> (and (not (< $i3293654 100000))
             ($main_inv226 $a3283653 $i3293654 $x3303655))
        ($main_sum226 $a3283653 $i3293654 $x3303655))))

; forwards $main_inv226
(assert
  (forall (($a3283653 (Array Int Int)) ($i3293654 Int) ($x3303655 Int))
    (=> (and (< $i3293654 100000)
             ($main_inv226 $a3283653 $i3293654 $x3303655))
        ($main_inv226 (store $a3283653 $i3293654 42) (+ $i3293654 1) $x3303655))))

; loop entry $main_inv227
(assert
  (forall (($a3283656 (Array Int Int)) ($x3303658 Int) ($i3293657 Int))
    (=> (and ($main_sum226 $a3283656 $i3293657 $x3303658))
        ($main_inv227 $a3283656 0 $x3303658))))

; loop term $main_sum227
(assert
  (forall (($a3283659 (Array Int Int)) ($i3293660 Int) ($x3303661 Int))
    (=> (and (not (< $i3293660 100000))
             ($main_inv227 $a3283659 $i3293660 $x3303661))
        ($main_sum227 $a3283659 $i3293660 $x3303661))))

; forwards $main_inv227
(assert
  (forall (($a3283659 (Array Int Int)) ($i3293660 Int) ($x3303661 Int))
    (=> (and (< $i3293660 100000)
             ($main_inv227 $a3283659 $i3293660 $x3303661))
        ($main_inv227 (store $a3283659 $i3293660 43) (+ $i3293660 1) $x3303661))))

; loop entry $main_inv228
(assert
  (forall (($a3283662 (Array Int Int)) ($x3303664 Int) ($i3293663 Int))
    (=> (and ($main_sum227 $a3283662 $i3293663 $x3303664))
        ($main_inv228 $a3283662 0 $x3303664))))

; loop term $main_sum228
(assert
  (forall (($a3283665 (Array Int Int)) ($i3293666 Int) ($x3303667 Int))
    (=> (and (not (< $i3293666 100000))
             ($main_inv228 $a3283665 $i3293666 $x3303667))
        ($main_sum228 $a3283665 $i3293666 $x3303667))))

; forwards $main_inv228
(assert
  (forall (($a3283665 (Array Int Int)) ($i3293666 Int) ($x3303667 Int))
    (=> (and (< $i3293666 100000)
             ($main_inv228 $a3283665 $i3293666 $x3303667))
        ($main_inv228 (store $a3283665 $i3293666 44) (+ $i3293666 1) $x3303667))))

; loop entry $main_inv229
(assert
  (forall (($a3283668 (Array Int Int)) ($i3293669 Int) ($x3303670 Int))
    (=> (and ($main_sum228 $a3283668 $i3293669 $x3303670))
        ($main_inv229 $a3283668 $i3293669 0))))

; loop term $main_sum229
(assert
  (forall (($a3283671 (Array Int Int)) ($i3293672 Int) ($x3303673 Int))
    (=> (and (not (< $x3303673 100000))
             ($main_inv229 $a3283671 $i3293672 $x3303673))
        ($main_sum229 $a3283671 $i3293672 $x3303673))))

; __VERIFIER_assert precondition
(assert
  (forall (($a3283671 (Array Int Int)) ($x3303673 Int) ($i3293672 Int))
    (=> (and (< $x3303673 100000)
             ($main_inv229 $a3283671 $i3293672 $x3303673))
        ($__VERIFIER_assert_pre (ite (= (select $a3283671 $x3303673) 43) 1 0)))))

; forwards $main_inv229
(assert
  (forall (($a3283671 (Array Int Int)) ($i3293672 Int) ($x3303673 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a3283671 $x3303673) 43) 1 0))
             (< $x3303673 100000)
             ($main_inv229 $a3283671 $i3293672 $x3303673))
        ($main_inv229 $a3283671 $i3293672 (+ $x3303673 1)))))

(check-sat)
