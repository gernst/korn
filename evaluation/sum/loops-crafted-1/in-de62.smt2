(set-logic HORN)

(declare-fun $main_inv173 (Int Int Int Int) Bool)
(declare-fun $main_sum175 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum170 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv170 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $main_inv175 (Int Int Int Int) Bool)
(declare-fun $main_sum174 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv172 (Int Int Int Int) Bool)
(declare-fun $main_inv174 (Int Int Int Int) Bool)
(declare-fun $main_sum173 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum171 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if553 (Int Int) Bool)
(declare-fun $main_inv171 (Int Int Int Int) Bool)
(declare-fun $main_sum172 (Int Int Int Int Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond14578 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond14578))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if553 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14579 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if553 cond cond14579))
        (__VERIFIER_assert cond14579))))

; loop entry $main_inv170
(assert
  (forall (($uint14580 Int) ($x522 Int) ($z524 Int) ($y523 Int) ($n521 Int))
    (=> (and (= $y523 0)
             (= $x522 $n521)
             (= $n521 $uint14580)
             (<= 0 $uint14580)
             (<= $uint14580 4294967295))
        ($main_inv170 $n521 $x522 $y523 $z524))))

; loop term $main_sum170
(assert
  (forall (($n52114581 Int) ($x52214582 Int) ($y52314583 Int) ($z52414584 Int))
    (=> (and (not (> $x52214582 0)))
        ($main_sum170 $n52114581 $x52214582 $y52314583 $z52414584 $n52114581 $x52214582 $y52314583 $z52414584))))

; forwards $main_inv170
(assert
  (forall (($n52114581 Int) ($x52214582 Int) ($y52314583 Int) ($z52414584 Int))
    (=> (and (> $x52214582 0)
             ($main_inv170 $n52114581 $x52214582 $y52314583 $z52414584))
        ($main_inv170 $n52114581 (- $x52214582 1) (+ $y52314583 1) $z52414584))))

; backwards $main_sum170
(assert
  (forall (($n52114585 Int) ($y52314587 Int) ($n52114581 Int) ($x52214586 Int) ($x52214582 Int) ($z52414584 Int) ($z52414588 Int) ($y52314583 Int))
    (=> (and ($main_sum170 $n52114581 (- $x52214582 1) (+ $y52314583 1) $z52414584 $n52114585 $x52214586 $y52314587 $z52414588)
             (> $x52214582 0))
        ($main_sum170 $n52114581 $x52214582 $y52314583 $z52414584 $n52114585 $x52214586 $y52314587 $z52414588))))

; loop entry $main_inv171
(assert
  (forall (($x52214590 Int) ($uint14580 Int) ($n52114589 Int) ($z524 Int) ($z52414592 Int) ($y52314591 Int) ($x522 Int) ($y523 Int) ($n521 Int))
    (=> (and ($main_sum170 $n521 $x522 $y523 $z524 $n52114589 $x52214590 $y52314591 $z52414592)
             (= $y523 0)
             (= $x522 $n521)
             (= $n521 $uint14580)
             (<= 0 $uint14580)
             (<= $uint14580 4294967295))
        ($main_inv171 $n52114589 $x52214590 $y52314591 $y52314591))))

; loop term $main_sum171
(assert
  (forall (($n52114593 Int) ($x52214594 Int) ($y52314595 Int) ($z52414596 Int))
    (=> (and (not (> $z52414596 0)))
        ($main_sum171 $n52114593 $x52214594 $y52314595 $z52414596 $n52114593 $x52214594 $y52314595 $z52414596))))

; forwards $main_inv171
(assert
  (forall (($n52114593 Int) ($x52214594 Int) ($y52314595 Int) ($z52414596 Int))
    (=> (and (> $z52414596 0)
             ($main_inv171 $n52114593 $x52214594 $y52314595 $z52414596))
        ($main_inv171 $n52114593 (+ $x52214594 1) $y52314595 (- $z52414596 1)))))

; backwards $main_sum171
(assert
  (forall (($y52314595 Int) ($z52414600 Int) ($y52314599 Int) ($x52214598 Int) ($n52114593 Int) ($n52114597 Int) ($x52214594 Int) ($z52414596 Int))
    (=> (and ($main_sum171 $n52114593 (+ $x52214594 1) $y52314595 (- $z52414596 1) $n52114597 $x52214598 $y52314599 $z52414600)
             (> $z52414596 0))
        ($main_sum171 $n52114593 $x52214594 $y52314595 $z52414596 $n52114597 $x52214598 $y52314599 $z52414600))))

; loop entry $main_inv172
(assert
  (forall (($x52214590 Int) ($uint14580 Int) ($n52114589 Int) ($z524 Int) ($z52414592 Int) ($z52414604 Int) ($x52214602 Int) ($y52314603 Int) ($n52114601 Int) ($y52314591 Int) ($x522 Int) ($y523 Int) ($n521 Int))
    (=> (and ($main_sum171 $n52114589 $x52214590 $y52314591 $y52314591 $n52114601 $x52214602 $y52314603 $z52414604)
             ($main_sum170 $n521 $x522 $y523 $z524 $n52114589 $x52214590 $y52314591 $z52414592)
             (= $y523 0)
             (= $x522 $n521)
             (= $n521 $uint14580)
             (<= 0 $uint14580)
             (<= $uint14580 4294967295))
        ($main_inv172 $n52114601 $x52214602 $y52314603 $z52414604))))

; loop term $main_sum172
(assert
  (forall (($n52114605 Int) ($x52214606 Int) ($y52314607 Int) ($z52414608 Int))
    (=> (and (not (> $y52314607 0)))
        ($main_sum172 $n52114605 $x52214606 $y52314607 $z52414608 $n52114605 $x52214606 $y52314607 $z52414608))))

; forwards $main_inv172
(assert
  (forall (($n52114605 Int) ($x52214606 Int) ($y52314607 Int) ($z52414608 Int))
    (=> (and (> $y52314607 0)
             ($main_inv172 $n52114605 $x52214606 $y52314607 $z52414608))
        ($main_inv172 $n52114605 $x52214606 (- $y52314607 1) (+ $z52414608 1)))))

; backwards $main_sum172
(assert
  (forall (($z52414608 Int) ($x52214606 Int) ($y52314611 Int) ($n52114609 Int) ($z52414612 Int) ($y52314607 Int) ($x52214610 Int) ($n52114605 Int))
    (=> (and ($main_sum172 $n52114605 $x52214606 (- $y52314607 1) (+ $z52414608 1) $n52114609 $x52214610 $y52314611 $z52414612)
             (> $y52314607 0))
        ($main_sum172 $n52114605 $x52214606 $y52314607 $z52414608 $n52114609 $x52214610 $y52314611 $z52414612))))

; loop entry $main_inv173
(assert
  (forall (($x52214590 Int) ($uint14580 Int) ($n52114613 Int) ($z52414616 Int) ($n52114589 Int) ($z524 Int) ($z52414604 Int) ($x52214602 Int) ($y52314603 Int) ($n52114601 Int) ($y52314591 Int) ($x52214614 Int) ($x522 Int) ($y52314615 Int) ($z52414592 Int) ($y523 Int) ($n521 Int))
    (=> (and ($main_sum172 $n52114601 $x52214602 $y52314603 $z52414604 $n52114613 $x52214614 $y52314615 $z52414616)
             ($main_sum171 $n52114589 $x52214590 $y52314591 $y52314591 $n52114601 $x52214602 $y52314603 $z52414604)
             ($main_sum170 $n521 $x522 $y523 $z524 $n52114589 $x52214590 $y52314591 $z52414592)
             (= $y523 0)
             (= $x522 $n521)
             (= $n521 $uint14580)
             (<= 0 $uint14580)
             (<= $uint14580 4294967295))
        ($main_inv173 $n52114613 $x52214614 $y52314615 $z52414616))))

; loop term $main_sum173
(assert
  (forall (($n52114617 Int) ($x52214618 Int) ($y52314619 Int) ($z52414620 Int))
    (=> (and (not (> $x52214618 0)))
        ($main_sum173 $n52114617 $x52214618 $y52314619 $z52414620 $n52114617 $x52214618 $y52314619 $z52414620))))

; forwards $main_inv173
(assert
  (forall (($n52114617 Int) ($x52214618 Int) ($y52314619 Int) ($z52414620 Int))
    (=> (and (> $x52214618 0)
             ($main_inv173 $n52114617 $x52214618 $y52314619 $z52414620))
        ($main_inv173 $n52114617 (- $x52214618 1) (+ $y52314619 1) $z52414620))))

; backwards $main_sum173
(assert
  (forall (($n52114621 Int) ($n52114617 Int) ($x52214622 Int) ($z52414624 Int) ($z52414620 Int) ($y52314623 Int) ($y52314619 Int) ($x52214618 Int))
    (=> (and ($main_sum173 $n52114617 (- $x52214618 1) (+ $y52314619 1) $z52414620 $n52114621 $x52214622 $y52314623 $z52414624)
             (> $x52214618 0))
        ($main_sum173 $n52114617 $x52214618 $y52314619 $z52414620 $n52114621 $x52214622 $y52314623 $z52414624))))

; loop entry $main_inv174
(assert
  (forall (($x52214590 Int) ($uint14580 Int) ($n52114625 Int) ($n52114613 Int) ($z52414616 Int) ($n52114589 Int) ($z524 Int) ($z52414628 Int) ($z52414604 Int) ($y52314627 Int) ($x52214602 Int) ($x52214626 Int) ($y52314603 Int) ($n52114601 Int) ($y52314591 Int) ($x52214614 Int) ($x522 Int) ($y52314615 Int) ($z52414592 Int) ($y523 Int) ($n521 Int))
    (=> (and ($main_sum173 $n52114613 $x52214614 $y52314615 $z52414616 $n52114625 $x52214626 $y52314627 $z52414628)
             ($main_sum172 $n52114601 $x52214602 $y52314603 $z52414604 $n52114613 $x52214614 $y52314615 $z52414616)
             ($main_sum171 $n52114589 $x52214590 $y52314591 $y52314591 $n52114601 $x52214602 $y52314603 $z52414604)
             ($main_sum170 $n521 $x522 $y523 $z524 $n52114589 $x52214590 $y52314591 $z52414592)
             (= $y523 0)
             (= $x522 $n521)
             (= $n521 $uint14580)
             (<= 0 $uint14580)
             (<= $uint14580 4294967295))
        ($main_inv174 $n52114625 $x52214626 $y52314627 $z52414628))))

; loop term $main_sum174
(assert
  (forall (($n52114629 Int) ($x52214630 Int) ($y52314631 Int) ($z52414632 Int))
    (=> (and (not (> $z52414632 0)))
        ($main_sum174 $n52114629 $x52214630 $y52314631 $z52414632 $n52114629 $x52214630 $y52314631 $z52414632))))

; forwards $main_inv174
(assert
  (forall (($n52114629 Int) ($x52214630 Int) ($y52314631 Int) ($z52414632 Int))
    (=> (and (> $z52414632 0)
             ($main_inv174 $n52114629 $x52214630 $y52314631 $z52414632))
        ($main_inv174 $n52114629 (+ $x52214630 1) $y52314631 (- $z52414632 1)))))

; backwards $main_sum174
(assert
  (forall (($y52314635 Int) ($n52114629 Int) ($x52214630 Int) ($y52314631 Int) ($n52114633 Int) ($z52414636 Int) ($z52414632 Int) ($x52214634 Int))
    (=> (and ($main_sum174 $n52114629 (+ $x52214630 1) $y52314631 (- $z52414632 1) $n52114633 $x52214634 $y52314635 $z52414636)
             (> $z52414632 0))
        ($main_sum174 $n52114629 $x52214630 $y52314631 $z52414632 $n52114633 $x52214634 $y52314635 $z52414636))))

; loop entry $main_inv175
(assert
  (forall (($x52214590 Int) ($uint14580 Int) ($n52114625 Int) ($n52114613 Int) ($z52414616 Int) ($y52314639 Int) ($n52114589 Int) ($z524 Int) ($z52414628 Int) ($n52114637 Int) ($z52414604 Int) ($y52314627 Int) ($x52214602 Int) ($x52214626 Int) ($y52314603 Int) ($z52414640 Int) ($n52114601 Int) ($y52314591 Int) ($x52214614 Int) ($x52214638 Int) ($x522 Int) ($y52314615 Int) ($z52414592 Int) ($y523 Int) ($n521 Int))
    (=> (and ($main_sum174 $n52114625 $x52214626 $y52314627 $z52414628 $n52114637 $x52214638 $y52314639 $z52414640)
             ($main_sum173 $n52114613 $x52214614 $y52314615 $z52414616 $n52114625 $x52214626 $y52314627 $z52414628)
             ($main_sum172 $n52114601 $x52214602 $y52314603 $z52414604 $n52114613 $x52214614 $y52314615 $z52414616)
             ($main_sum171 $n52114589 $x52214590 $y52314591 $y52314591 $n52114601 $x52214602 $y52314603 $z52414604)
             ($main_sum170 $n521 $x522 $y523 $z524 $n52114589 $x52214590 $y52314591 $z52414592)
             (= $y523 0)
             (= $x522 $n521)
             (= $n521 $uint14580)
             (<= 0 $uint14580)
             (<= $uint14580 4294967295))
        ($main_inv175 $n52114637 $x52214638 $y52314639 $z52414640))))

; loop term $main_sum175
(assert
  (forall (($n52114641 Int) ($x52214642 Int) ($y52314643 Int) ($z52414644 Int))
    (=> (and (not (> $y52314643 0)))
        ($main_sum175 $n52114641 $x52214642 $y52314643 $z52414644 $n52114641 $x52214642 $y52314643 $z52414644))))

; forwards $main_inv175
(assert
  (forall (($n52114641 Int) ($x52214642 Int) ($y52314643 Int) ($z52414644 Int))
    (=> (and (> $y52314643 0)
             ($main_inv175 $n52114641 $x52214642 $y52314643 $z52414644))
        ($main_inv175 $n52114641 (- $x52214642 1) (- $y52314643 1) $z52414644))))

; backwards $main_sum175
(assert
  (forall (($y52314647 Int) ($z52414644 Int) ($x52214646 Int) ($y52314643 Int) ($n52114645 Int) ($n52114641 Int) ($z52414648 Int) ($x52214642 Int))
    (=> (and ($main_sum175 $n52114641 (- $x52214642 1) (- $y52314643 1) $z52414644 $n52114645 $x52214646 $y52314647 $z52414648)
             (> $y52314643 0))
        ($main_sum175 $n52114641 $x52214642 $y52314643 $z52414644 $n52114645 $x52214646 $y52314647 $z52414648))))

; __VERIFIER_assert precondition
(assert
  (forall (($x52214590 Int) ($uint14580 Int) ($n52114625 Int) ($z52414616 Int) ($y52314639 Int) ($n52114589 Int) ($z524 Int) ($z52414628 Int) ($n52114637 Int) ($y52314651 Int) ($z52414604 Int) ($y52314627 Int) ($x52214602 Int) ($n52114613 Int) ($n52114649 Int) ($x52214626 Int) ($x52214650 Int) ($y52314603 Int) ($z52414640 Int) ($n52114601 Int) ($y52314591 Int) ($x52214614 Int) ($x52214638 Int) ($x522 Int) ($z52414652 Int) ($y52314615 Int) ($z52414592 Int) ($y523 Int) ($n521 Int))
    (=> (and ($main_sum175 $n52114637 $x52214638 $y52314639 $z52414640 $n52114649 $x52214650 $y52314651 $z52414652)
             ($main_sum174 $n52114625 $x52214626 $y52314627 $z52414628 $n52114637 $x52214638 $y52314639 $z52414640)
             ($main_sum173 $n52114613 $x52214614 $y52314615 $z52414616 $n52114625 $x52214626 $y52314627 $z52414628)
             ($main_sum172 $n52114601 $x52214602 $y52314603 $z52414604 $n52114613 $x52214614 $y52314615 $z52414616)
             ($main_sum171 $n52114589 $x52214590 $y52314591 $y52314591 $n52114601 $x52214602 $y52314603 $z52414604)
             ($main_sum170 $n521 $x522 $y523 $z524 $n52114589 $x52214590 $y52314591 $z52414592)
             (= $y523 0)
             (= $x522 $n521)
             (= $n521 $uint14580)
             (<= 0 $uint14580)
             (<= $uint14580 4294967295))
        ($__VERIFIER_assert_pre (ite (= $x52214650 0) 1 0)))))

(check-sat)
