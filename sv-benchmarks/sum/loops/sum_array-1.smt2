(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $__VERIFIER_assert_if690 (Int Int) Bool)
(declare-fun $main_sum265 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum266 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_sum263 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_sum264 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_inv266 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv265 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_inv264 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_inv263 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond16582 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond16582))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if690 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond16583 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if690 cond cond16583))
        (__VERIFIER_assert cond16583))))

; loop entry $main_inv263
(assert
  (forall (($C736 (Array Int Int)) ($B735 (Array Int Int)) ($uint16584 Int) ($A734 (Array Int Int)) ($M733 Int))
    (=> (and (= $M733 $uint16584)
             (<= 0 $uint16584)
             (<= $uint16584 4294967295))
        ($main_inv263 $M733 $A734 $B735 $C736 0))))

; loop term $main_sum263
(assert
  (forall (($A73416586 (Array Int Int)) ($B73516587 (Array Int Int)) ($C73616588 (Array Int Int)) ($M73316585 Int) ($i73716589 Int))
    (=> (and (not (< $i73716589 $M73316585)))
        ($main_sum263 $M73316585 $A73416586 $B73516587 $C73616588 $i73716589 $M73316585 $A73416586 $B73516587 $C73616588 $i73716589))))

; forwards $main_inv263
(assert
  (forall (($A73416586 (Array Int Int)) ($B73516587 (Array Int Int)) ($C73616588 (Array Int Int)) ($M73316585 Int) ($i73716589 Int) ($int16590 Int))
    (=> (and (<= (- 2147483648) $int16590)
             (<= $int16590 2147483647)
             (< $i73716589 $M73316585)
             ($main_inv263 $M73316585 $A73416586 $B73516587 $C73616588 $i73716589))
        ($main_inv263 $M73316585 (store $A73416586 $i73716589 $int16590) $B73516587 $C73616588 (+ $i73716589 1)))))

; backwards $main_sum263
(assert
  (forall (($A73416586 (Array Int Int)) ($M73316591 Int) ($i73716595 Int) ($B73516587 (Array Int Int)) ($C73616588 (Array Int Int)) ($M73316585 Int) ($C73616594 (Array Int Int)) ($B73516593 (Array Int Int)) ($A73416592 (Array Int Int)) ($i73716589 Int) ($int16590 Int))
    (=> (and ($main_sum263 $M73316585 (store $A73416586 $i73716589 $int16590) $B73516587 $C73616588 (+ $i73716589 1) $M73316591 $A73416592 $B73516593 $C73616594 $i73716595)
             (<= (- 2147483648) $int16590)
             (<= $int16590 2147483647)
             (< $i73716589 $M73316585))
        ($main_sum263 $M73316585 $A73416586 $B73516587 $C73616588 $i73716589 $M73316591 $A73416592 $B73516593 $C73616594 $i73716595))))

; loop entry $main_inv264
(assert
  (forall (($B735 (Array Int Int)) ($M73316596 Int) ($uint16584 Int) ($C73616599 (Array Int Int)) ($A73416597 (Array Int Int)) ($C736 (Array Int Int)) ($B73516598 (Array Int Int)) ($i73716600 Int) ($A734 (Array Int Int)) ($M733 Int))
    (=> (and ($main_sum263 $M733 $A734 $B735 $C736 0 $M73316596 $A73416597 $B73516598 $C73616599 $i73716600)
             (= $M733 $uint16584)
             (<= 0 $uint16584)
             (<= $uint16584 4294967295))
        ($main_inv264 $M73316596 $A73416597 $B73516598 $C73616599 0))))

; loop term $main_sum264
(assert
  (forall (($i73716605 Int) ($M73316601 Int) ($A73416602 (Array Int Int)) ($B73516603 (Array Int Int)) ($C73616604 (Array Int Int)))
    (=> (and (not (< $i73716605 $M73316601)))
        ($main_sum264 $M73316601 $A73416602 $B73516603 $C73616604 $i73716605 $M73316601 $A73416602 $B73516603 $C73616604 $i73716605))))

; forwards $main_inv264
(assert
  (forall (($M73316601 Int) ($A73416602 (Array Int Int)) ($B73516603 (Array Int Int)) ($C73616604 (Array Int Int)) ($i73716605 Int) ($int16606 Int))
    (=> (and (<= (- 2147483648) $int16606)
             (<= $int16606 2147483647)
             (< $i73716605 $M73316601)
             ($main_inv264 $M73316601 $A73416602 $B73516603 $C73616604 $i73716605))
        ($main_inv264 $M73316601 $A73416602 (store $B73516603 $i73716605 $int16606) $C73616604 (+ $i73716605 1)))))

; backwards $main_sum264
(assert
  (forall (($M73316607 Int) ($M73316601 Int) ($A73416608 (Array Int Int)) ($C73616610 (Array Int Int)) ($A73416602 (Array Int Int)) ($B73516609 (Array Int Int)) ($B73516603 (Array Int Int)) ($i73716611 Int) ($C73616604 (Array Int Int)) ($i73716605 Int) ($int16606 Int))
    (=> (and ($main_sum264 $M73316601 $A73416602 (store $B73516603 $i73716605 $int16606) $C73616604 (+ $i73716605 1) $M73316607 $A73416608 $B73516609 $C73616610 $i73716611)
             (<= (- 2147483648) $int16606)
             (<= $int16606 2147483647)
             (< $i73716605 $M73316601))
        ($main_sum264 $M73316601 $A73416602 $B73516603 $C73616604 $i73716605 $M73316607 $A73416608 $B73516609 $C73616610 $i73716611))))

; loop entry $main_inv265
(assert
  (forall (($i73716616 Int) ($B735 (Array Int Int)) ($uint16584 Int) ($C73616599 (Array Int Int)) ($A73416597 (Array Int Int)) ($B73516614 (Array Int Int)) ($A73416613 (Array Int Int)) ($C73616615 (Array Int Int)) ($C736 (Array Int Int)) ($B73516598 (Array Int Int)) ($i73716600 Int) ($A734 (Array Int Int)) ($M733 Int) ($M73316612 Int) ($M73316596 Int))
    (=> (and ($main_sum264 $M73316596 $A73416597 $B73516598 $C73616599 0 $M73316612 $A73416613 $B73516614 $C73616615 $i73716616)
             ($main_sum263 $M733 $A734 $B735 $C736 0 $M73316596 $A73416597 $B73516598 $C73616599 $i73716600)
             (= $M733 $uint16584)
             (<= 0 $uint16584)
             (<= $uint16584 4294967295))
        ($main_inv265 $M73316612 $A73416613 $B73516614 $C73616615 0))))

; loop term $main_sum265
(assert
  (forall (($A73416618 (Array Int Int)) ($M73316617 Int) ($B73516619 (Array Int Int)) ($C73616620 (Array Int Int)) ($i73716621 Int))
    (=> (and (not (< $i73716621 $M73316617)))
        ($main_sum265 $M73316617 $A73416618 $B73516619 $C73616620 $i73716621 $M73316617 $A73416618 $B73516619 $C73616620 $i73716621))))

; forwards $main_inv265
(assert
  (forall (($A73416618 (Array Int Int)) ($M73316617 Int) ($B73516619 (Array Int Int)) ($C73616620 (Array Int Int)) ($i73716621 Int))
    (=> (and (< $i73716621 $M73316617)
             ($main_inv265 $M73316617 $A73416618 $B73516619 $C73616620 $i73716621))
        ($main_inv265 $M73316617 $A73416618 $B73516619 (store $C73616620 $i73716621 (+ (select $A73416618 $i73716621) (select $B73516619 $i73716621))) (+ $i73716621 1)))))

; backwards $main_sum265
(assert
  (forall (($B73516624 (Array Int Int)) ($M73316617 Int) ($B73516619 (Array Int Int)) ($A73416623 (Array Int Int)) ($C73616620 (Array Int Int)) ($M73316622 Int) ($A73416618 (Array Int Int)) ($i73716626 Int) ($C73616625 (Array Int Int)) ($i73716621 Int))
    (=> (and ($main_sum265 $M73316617 $A73416618 $B73516619 (store $C73616620 $i73716621 (+ (select $A73416618 $i73716621) (select $B73516619 $i73716621))) (+ $i73716621 1) $M73316622 $A73416623 $B73516624 $C73616625 $i73716626)
             (< $i73716621 $M73316617))
        ($main_sum265 $M73316617 $A73416618 $B73516619 $C73616620 $i73716621 $M73316622 $A73416623 $B73516624 $C73616625 $i73716626))))

; loop entry $main_inv266
(assert
  (forall (($i73716616 Int) ($B735 (Array Int Int)) ($uint16584 Int) ($C73616599 (Array Int Int)) ($A73416597 (Array Int Int)) ($M73316627 Int) ($A73416628 (Array Int Int)) ($A73416613 (Array Int Int)) ($C73616615 (Array Int Int)) ($i73716631 Int) ($C736 (Array Int Int)) ($B73516598 (Array Int Int)) ($i73716600 Int) ($C73616630 (Array Int Int)) ($A734 (Array Int Int)) ($M733 Int) ($M73316612 Int) ($M73316596 Int) ($B73516614 (Array Int Int)) ($B73516629 (Array Int Int)))
    (=> (and ($main_sum265 $M73316612 $A73416613 $B73516614 $C73616615 0 $M73316627 $A73416628 $B73516629 $C73616630 $i73716631)
             ($main_sum264 $M73316596 $A73416597 $B73516598 $C73616599 0 $M73316612 $A73416613 $B73516614 $C73616615 $i73716616)
             ($main_sum263 $M733 $A734 $B735 $C736 0 $M73316596 $A73416597 $B73516598 $C73616599 $i73716600)
             (= $M733 $uint16584)
             (<= 0 $uint16584)
             (<= $uint16584 4294967295))
        ($main_inv266 $M73316627 $A73416628 $B73516629 $C73616630 0))))

; loop term $main_sum266
(assert
  (forall (($B73516634 (Array Int Int)) ($A73416633 (Array Int Int)) ($i73716636 Int) ($C73616635 (Array Int Int)) ($M73316632 Int))
    (=> (and (not (< $i73716636 $M73316632)))
        ($main_sum266 $M73316632 $A73416633 $B73516634 $C73616635 $i73716636 $M73316632 $A73416633 $B73516634 $C73616635 $i73716636))))

; __VERIFIER_assert precondition
(assert
  (forall (($B73516634 (Array Int Int)) ($A73416633 (Array Int Int)) ($i73716636 Int) ($C73616635 (Array Int Int)) ($M73316632 Int))
    (=> (and (< $i73716636 $M73316632)
             ($main_inv266 $M73316632 $A73416633 $B73516634 $C73616635 $i73716636))
        ($__VERIFIER_assert_pre (ite (= (select $C73616635 $i73716636) (- (select $A73416633 $i73716636) (select $B73516634 $i73716636))) 1 0)))))

; forwards $main_inv266
(assert
  (forall (($B73516634 (Array Int Int)) ($A73416633 (Array Int Int)) ($i73716636 Int) ($C73616635 (Array Int Int)) ($M73316632 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $C73616635 $i73716636) (- (select $A73416633 $i73716636) (select $B73516634 $i73716636))) 1 0))
             (< $i73716636 $M73316632)
             ($main_inv266 $M73316632 $A73416633 $B73516634 $C73616635 $i73716636))
        ($main_inv266 $M73316632 $A73416633 $B73516634 $C73616635 (+ $i73716636 1)))))

; backwards $main_sum266
(assert
  (forall (($B73516634 (Array Int Int)) ($C73616640 (Array Int Int)) ($A73416633 (Array Int Int)) ($i73716636 Int) ($M73316637 Int) ($A73416638 (Array Int Int)) ($C73616635 (Array Int Int)) ($M73316632 Int) ($i73716641 Int) ($B73516639 (Array Int Int)))
    (=> (and ($main_sum266 $M73316632 $A73416633 $B73516634 $C73616635 (+ $i73716636 1) $M73316637 $A73416638 $B73516639 $C73616640 $i73716641)
             (__VERIFIER_assert (ite (= (select $C73616635 $i73716636) (- (select $A73416633 $i73716636) (select $B73516634 $i73716636))) 1 0))
             (< $i73716636 $M73316632))
        ($main_sum266 $M73316632 $A73416633 $B73516634 $C73616635 $i73716636 $M73316637 $A73416638 $B73516639 $C73616640 $i73716641))))

(check-sat)
