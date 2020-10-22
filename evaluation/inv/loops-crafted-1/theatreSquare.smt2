(set-logic HORN)

(declare-fun $main_if661 (Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $student_version_sum230 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $student_version_inv229 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $correct_version_sum225 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if660 (Int) Bool)
(declare-fun $student_version_sum228 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $student_version_pre (Int Int Int) Bool)
(declare-fun $correct_version_sum226 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $correct_version_pre (Int Int Int) Bool)
(declare-fun $correct_version_inv226 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun student_version (Int Int Int Int) Bool)
(declare-fun correct_version (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $correct_version_sum227 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $correct_version_inv225 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $student_version_inv228 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $correct_version_inv227 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $student_version_sum229 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $student_version_inv230 (Int Int Int Int Int Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond14554 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond14554))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if660 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14555 Int))
    (=> (and ($__VERIFIER_assert_if660 cond14555))
        (__VERIFIER_assert cond14555))))

; loop entry $correct_version_inv225
(assert
  (forall ((a Int) ($y657 Int) (n Int) ($j653 Int) (m Int) ($x656 Int) ($b654 Int) ($i652 Int) ($l655 Int))
    (=> (and (= $l655 0)
             (= $b654 0)
             (= $j653 0)
             (= $i652 0)
             ($correct_version_pre n m a))
        ($correct_version_inv225 n m a $i652 $j653 $b654 $l655 $x656 $y657))))

; loop term $correct_version_sum225
(assert
  (forall (($b65414561 Int) ($l65514562 Int) (n14556 Int) (a14558 Int) ($j65314560 Int) ($x65614563 Int) (m14557 Int) ($y65714564 Int) ($i65214559 Int))
    (=> (and (not (< $b65414561 n14556))
             ($correct_version_inv225 n14556 m14557 a14558 $i65214559 $j65314560 $b65414561 $l65514562 $x65614563 $y65714564))
        ($correct_version_sum225 n14556 m14557 a14558 $i65214559 $j65314560 $b65414561 $l65514562 $x65614563 $y65714564))))

; forwards $correct_version_inv225
(assert
  (forall (($b65414561 Int) ($l65514562 Int) (n14556 Int) (a14558 Int) ($j65314560 Int) ($x65614563 Int) (m14557 Int) ($y65714564 Int) ($i65214559 Int))
    (=> (and (< $b65414561 n14556)
             ($correct_version_inv225 n14556 m14557 a14558 $i65214559 $j65314560 $b65414561 $l65514562 $x65614563 $y65714564))
        ($correct_version_inv225 n14556 m14557 a14558 (+ $i65214559 1) $j65314560 (+ $b65414561 a14558) $l65514562 $x65614563 $y65714564))))

; loop entry $correct_version_inv226
(assert
  (forall ((n14565 Int) ($i65214568 Int) ($y65714573 Int) ($l65514571 Int) ($j65314569 Int) (m14566 Int) ($x65614572 Int) ($b65414570 Int) (a14567 Int))
    (=> (and ($correct_version_sum225 n14565 m14566 a14567 $i65214568 $j65314569 $b65414570 $l65514571 $x65614572 $y65714573))
        ($correct_version_inv226 n14565 m14566 a14567 $i65214568 $j65314569 $b65414570 $l65514571 $x65614572 $y65714573))))

; loop term $correct_version_sum226
(assert
  (forall (($i65214577 Int) ($y65714582 Int) ($j65314578 Int) ($l65514580 Int) (n14574 Int) (m14575 Int) ($x65614581 Int) (a14576 Int) ($b65414579 Int))
    (=> (and (not (< $l65514580 m14575))
             ($correct_version_inv226 n14574 m14575 a14576 $i65214577 $j65314578 $b65414579 $l65514580 $x65614581 $y65714582))
        ($correct_version_sum226 n14574 m14575 a14576 $i65214577 $j65314578 $b65414579 $l65514580 $x65614581 $y65714582))))

; forwards $correct_version_inv226
(assert
  (forall (($i65214577 Int) ($y65714582 Int) ($j65314578 Int) ($l65514580 Int) (n14574 Int) (m14575 Int) ($x65614581 Int) (a14576 Int) ($b65414579 Int))
    (=> (and (< $l65514580 m14575)
             ($correct_version_inv226 n14574 m14575 a14576 $i65214577 $j65314578 $b65414579 $l65514580 $x65614581 $y65714582))
        ($correct_version_inv226 n14574 m14575 a14576 $i65214577 (+ $j65314578 1) $b65414579 (+ $l65514580 a14576) $x65614581 $y65714582))))

; loop entry $correct_version_inv227
(assert
  (forall (($y65714591 Int) ($x65614590 Int) ($b65414588 Int) (n14583 Int) ($l65514589 Int) (m14584 Int) ($j65314587 Int) ($i65214586 Int) (a14585 Int))
    (=> (and (= $y65714591 0)
             (= $x65614590 0)
             ($correct_version_sum226 n14583 m14584 a14585 $i65214586 $j65314587 $b65414588 $l65514589 $x65614590 $y65714591))
        ($correct_version_inv227 n14583 m14584 a14585 $i65214586 $j65314587 $b65414588 $l65514589 $x65614590 $y65714591))))

; loop term $correct_version_sum227
(assert
  (forall (($i65214595 Int) ($j65314596 Int) (n14592 Int) (m14593 Int) ($b65414597 Int) ($y65714600 Int) (a14594 Int) ($x65614599 Int) ($l65514598 Int))
    (=> (and (not (< $x65614599 $i65214595))
             ($correct_version_inv227 n14592 m14593 a14594 $i65214595 $j65314596 $b65414597 $l65514598 $x65614599 $y65714600))
        ($correct_version_sum227 n14592 m14593 a14594 $i65214595 $j65314596 $b65414597 $l65514598 $x65614599 $y65714600))))

; forwards $correct_version_inv227
(assert
  (forall (($i65214595 Int) ($j65314596 Int) (n14592 Int) (m14593 Int) ($b65414597 Int) ($y65714600 Int) (a14594 Int) ($x65614599 Int) ($l65514598 Int))
    (=> (and (< $x65614599 $i65214595)
             ($correct_version_inv227 n14592 m14593 a14594 $i65214595 $j65314596 $b65414597 $l65514598 $x65614599 $y65714600))
        ($correct_version_inv227 n14592 m14593 a14594 $i65214595 $j65314596 $b65414597 $l65514598 (+ $x65614599 1) (+ $y65714600 $j65314596)))))

; post correct_version
(assert
  (forall (($j65314605 Int) (m14602 Int) (n14601 Int) (a14603 Int) ($x65614608 Int) ($y65714609 Int) ($i65214604 Int) ($l65514607 Int) ($b65414606 Int))
    (=> (and ($correct_version_sum227 n14601 m14602 a14603 $i65214604 $j65314605 $b65414606 $l65514607 $x65614608 $y65714609))
        (correct_version n14601 m14602 a14603 $y65714609))))

; loop entry $student_version_inv228
(assert
  (forall (($y663 Int) (a Int) ($x662 Int) ($i658 Int) ($b660 Int) ($l661 Int) (n Int) (m Int) ($j659 Int))
    (=> (and (= $l661 0)
             (= $b660 0)
             (= $j659 0)
             (= $i658 0)
             ($student_version_pre n m a))
        ($student_version_inv228 n m a $i658 $j659 $b660 $l661 $x662 $y663))))

; loop term $student_version_sum228
(assert
  (forall (($y66314618 Int) (a14612 Int) (n14610 Int) (m14611 Int) ($j65914614 Int) ($x66214617 Int) ($b66014615 Int) ($l66114616 Int) ($i65814613 Int))
    (=> (and (not (< $b66014615 n14610))
             ($student_version_inv228 n14610 m14611 a14612 $i65814613 $j65914614 $b66014615 $l66114616 $x66214617 $y66314618))
        ($student_version_sum228 n14610 m14611 a14612 $i65814613 $j65914614 $b66014615 $l66114616 $x66214617 $y66314618))))

; forwards $student_version_inv228
(assert
  (forall (($y66314618 Int) (a14612 Int) (n14610 Int) (m14611 Int) ($j65914614 Int) ($x66214617 Int) ($b66014615 Int) ($l66114616 Int) ($i65814613 Int))
    (=> (and (< $b66014615 n14610)
             ($student_version_inv228 n14610 m14611 a14612 $i65814613 $j65914614 $b66014615 $l66114616 $x66214617 $y66314618))
        ($student_version_inv228 n14610 m14611 a14612 (+ $i65814613 1) $j65914614 (+ $b66014615 a14612) $l66114616 $x66214617 $y66314618))))

; loop entry $student_version_inv229
(assert
  (forall (($i65814622 Int) ($j65914623 Int) ($x66214626 Int) ($b66014624 Int) (m14620 Int) (a14621 Int) ($y66314627 Int) ($l66114625 Int) (n14619 Int))
    (=> (and ($student_version_sum228 n14619 m14620 a14621 $i65814622 $j65914623 $b66014624 $l66114625 $x66214626 $y66314627))
        ($student_version_inv229 n14619 m14620 a14621 $i65814622 $j65914623 $b66014624 $l66114625 $x66214626 $y66314627))))

; loop term $student_version_sum229
(assert
  (forall ((a14630 Int) ($x66214635 Int) ($j65914632 Int) ($y66314636 Int) ($i65814631 Int) (m14629 Int) ($l66114634 Int) ($b66014633 Int) (n14628 Int))
    (=> (and (not (< $l66114634 m14629))
             ($student_version_inv229 n14628 m14629 a14630 $i65814631 $j65914632 $b66014633 $l66114634 $x66214635 $y66314636))
        ($student_version_sum229 n14628 m14629 a14630 $i65814631 $j65914632 $b66014633 $l66114634 $x66214635 $y66314636))))

; forwards $student_version_inv229
(assert
  (forall ((a14630 Int) ($x66214635 Int) ($j65914632 Int) ($y66314636 Int) ($i65814631 Int) (m14629 Int) ($l66114634 Int) ($b66014633 Int) (n14628 Int))
    (=> (and (< $l66114634 m14629)
             ($student_version_inv229 n14628 m14629 a14630 $i65814631 $j65914632 $b66014633 $l66114634 $x66214635 $y66314636))
        ($student_version_inv229 n14628 m14629 a14630 $i65814631 (+ $j65914632 1) $b66014633 (+ $l66114634 a14630) $x66214635 $y66314636))))

; loop entry $student_version_inv230
(assert
  (forall ((a14639 Int) ($i65814640 Int) ($j65914641 Int) ($l66114643 Int) ($y66314645 Int) (n14637 Int) (m14638 Int) ($x66214644 Int) ($b66014642 Int))
    (=> (and (= $y66314645 0)
             (= $x66214644 0)
             ($student_version_sum229 n14637 m14638 a14639 $i65814640 $j65914641 $b66014642 $l66114643 $x66214644 $y66314645))
        ($student_version_inv230 n14637 m14638 a14639 $i65814640 $j65914641 $b66014642 $l66114643 $x66214644 $y66314645))))

; loop term $student_version_sum230
(assert
  (forall (($x66214653 Int) ($y66314654 Int) (a14648 Int) ($l66114652 Int) ($j65914650 Int) ($b66014651 Int) ($i65814649 Int) (m14647 Int) (n14646 Int))
    (=> (and (not (< $x66214653 $i65814649))
             ($student_version_inv230 n14646 m14647 a14648 $i65814649 $j65914650 $b66014651 $l66114652 $x66214653 $y66314654))
        ($student_version_sum230 n14646 m14647 a14648 $i65814649 $j65914650 $b66014651 $l66114652 $x66214653 $y66314654))))

; forwards $student_version_inv230
(assert
  (forall (($x66214653 Int) ($y66314654 Int) (a14648 Int) ($l66114652 Int) ($j65914650 Int) ($b66014651 Int) ($i65814649 Int) (m14647 Int) (n14646 Int))
    (=> (and (< $x66214653 $i65814649)
             ($student_version_inv230 n14646 m14647 a14648 $i65814649 $j65914650 $b66014651 $l66114652 $x66214653 $y66314654))
        ($student_version_inv230 n14646 m14647 a14648 $i65814649 $j65914650 $b66014651 $l66114652 (+ $x66214653 1) (+ $y66314654 $j65914650)))))

; post student_version
(assert
  (forall (($l66114661 Int) ($y66314663 Int) (m14656 Int) (n14655 Int) ($b66014660 Int) (a14657 Int) ($j65914659 Int) ($i65814658 Int) ($x66214662 Int))
    (=> (and ($student_version_sum230 n14655 m14656 a14657 $i65814658 $j65914659 $b66014660 $l66114661 $x66214662 $y66314663))
        (student_version n14655 m14656 a14657 $y66314663))))

; correct_version precondition
(assert
  (forall (($m666 Int) ($int14667 Int) ($n665 Int) ($int14665 Int) ($int14664 Int) ($int14666 Int) ($n_stones2668 Int) ($a664 Int))
    (=> (and (<= 1 $n665)
             (<= 1 $m666)
             (<= 1 $a664)
             (<= $n665 109)
             (<= $m666 109)
             (<= $a664 109)
             (= $n_stones2668 $int14667)
             (<= (- 2147483648) $int14667)
             (<= $int14667 2147483647)
             (= $m666 $int14666)
             (<= (- 2147483648) $int14666)
             (<= $int14666 2147483647)
             (= $n665 $int14665)
             (<= (- 2147483648) $int14665)
             (<= $int14665 2147483647)
             (= $a664 $int14664)
             (<= (- 2147483648) $int14664)
             (<= $int14664 2147483647))
        ($correct_version_pre $n665 $m666 $a664))))

; student_version precondition
(assert
  (forall (($m666 Int) ($int14667 Int) ($n665 Int) ($int14665 Int) ($int14664 Int) ($int14666 Int) ($result14668 Int) ($n_stones2668 Int) ($a664 Int))
    (=> (and (correct_version $n665 $m666 $a664 $result14668)
             (<= 1 $n665)
             (<= 1 $m666)
             (<= 1 $a664)
             (<= $n665 109)
             (<= $m666 109)
             (<= $a664 109)
             (= $n_stones2668 $int14667)
             (<= (- 2147483648) $int14667)
             (<= $int14667 2147483647)
             (= $m666 $int14666)
             (<= (- 2147483648) $int14666)
             (<= $int14666 2147483647)
             (= $n665 $int14665)
             (<= (- 2147483648) $int14665)
             (<= $int14665 2147483647)
             (= $a664 $int14664)
             (<= (- 2147483648) $int14664)
             (<= $int14664 2147483647))
        ($student_version_pre $n665 $m666 $a664))))

; if then
(assert
  (forall (($result14669 Int) ($m666 Int) ($int14667 Int) ($n665 Int) ($int14665 Int) ($int14664 Int) ($int14666 Int) ($result14668 Int) ($n_stones2668 Int) ($a664 Int))
    (=> (and (student_version $n665 $m666 $a664 $result14669)
             (correct_version $n665 $m666 $a664 $result14668)
             (<= 1 $n665)
             (<= 1 $m666)
             (<= 1 $a664)
             (<= $n665 109)
             (<= $m666 109)
             (<= $a664 109)
             (= $n_stones2668 $int14667)
             (<= (- 2147483648) $int14667)
             (<= $int14667 2147483647)
             (= $m666 $int14666)
             (<= (- 2147483648) $int14666)
             (<= $int14666 2147483647)
             (= $n665 $int14665)
             (<= (- 2147483648) $int14665)
             (<= $int14665 2147483647)
             (= $a664 $int14664)
             (<= (- 2147483648) $int14664)
             (<= $int14664 2147483647))
        ($main_if661 $a664 $n665 $m666 $result14668 $result14669))))

; if else
(assert
  (forall (($m666 Int) ($int14667 Int) ($n665 Int) ($int14665 Int) ($int14664 Int) ($int14666 Int) ($n_stones2668 Int) ($a664 Int))
    (=> (and (not (and (and (and (and (and (<= 1 $n665) (<= 1 $m666)) (<= 1 $a664)) (<= $n665 109)) (<= $m666 109)) (<= $a664 109)))
             (= $n_stones2668 $int14667)
             (<= (- 2147483648) $int14667)
             (<= $int14667 2147483647)
             (= $m666 $int14666)
             (<= (- 2147483648) $int14666)
             (<= $int14666 2147483647)
             (= $n665 $int14665)
             (<= (- 2147483648) $int14665)
             (<= $int14665 2147483647)
             (= $a664 $int14664)
             (<= (- 2147483648) $int14664)
             (<= $int14664 2147483647))
        ($main_if661 $a664 $n665 $m666 $n_stones2668 $n_stones2668))))

; __VERIFIER_assert precondition
(assert
  (forall (($n_stones166714673 Int) ($n_stones266814674 Int) ($m66614672 Int) ($n66514671 Int) ($a66414670 Int))
    (=> (and ($main_if661 $a66414670 $n66514671 $m66614672 $n_stones166714673 $n_stones266814674))
        ($__VERIFIER_assert_pre (ite (= $n_stones166714673 $n_stones266814674) 1 0)))))

(check-sat)
