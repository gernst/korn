(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum285 (Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if747 (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_if748 (Int Int Int Int Int Int) Bool)
(declare-fun $main_inv285 (Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_if746 (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if746 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond15637 Int))
    (=> (and ($assume_abort_if_not_if746 cond15637))
        (assume_abort_if_not cond15637))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond15638 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15638))
        false)))

; if then
(assert
  (forall ((cond15638 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15638))
        ($__VERIFIER_assert_if747 cond15638))))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if747 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond15639 Int))
    (=> (and ($__VERIFIER_assert_if747 cond15639))
        (__VERIFIER_assert cond15639))))

; loop entry $main_inv285
(assert
  (forall (($int15640 Int) ($int15641 Int) ($int15642 Int))
    (=> (and (<= (- 2147483648) $int15642)
             (<= $int15642 2147483647)
             (<= (- 2147483648) $int15641)
             (<= $int15641 2147483647)
             (<= (- 2147483648) $int15640)
             (<= $int15640 2147483647))
        ($main_inv285 $int15640 $int15641 $int15642 $int15641 1 1))))

; loop term $main_sum285
(assert
  (forall (($a81815644 Int) ($x82015646 Int) ($y82115647 Int) ($z81715643 Int) ($c82215648 Int) ($k81915645 Int))
    (=> (and (= 1 0)
             ($main_inv285 $z81715643 $a81815644 $k81915645 $x82015646 $y82115647 $c82215648))
        ($main_sum285 $z81715643 $a81815644 $k81915645 $x82015646 $y82115647 $c82215648))))

; __VERIFIER_assert precondition
(assert
  (forall (($a81815644 Int) ($x82015646 Int) ($y82115647 Int) ($z81715643 Int) ($c82215648 Int) ($k81915645 Int))
    (=> (and (not (= 1 0))
             ($main_inv285 $z81715643 $a81815644 $k81915645 $x82015646 $y82115647 $c82215648))
        ($__VERIFIER_assert_pre (ite (= (- (+ (- (* $z81715643 $x82015646) $x82015646) $a81815644) (* (* $a81815644 $z81715643) $y82115647)) 0) 1 0)))))

; break $main_sum285
(assert
  (forall (($a81815644 Int) ($x82015646 Int) ($y82115647 Int) ($z81715643 Int) ($c82215648 Int) ($k81915645 Int))
    (=> (and (not (< $c82215648 $k81915645))
             (__VERIFIER_assert (ite (= (- (+ (- (* $z81715643 $x82015646) $x82015646) $a81815644) (* (* $a81815644 $z81715643) $y82115647)) 0) 1 0))
             (not (= 1 0))
             ($main_inv285 $z81715643 $a81815644 $k81915645 $x82015646 $y82115647 $c82215648))
        ($main_sum285 $z81715643 $a81815644 $k81915645 $x82015646 $y82115647 $c82215648))))

; if else
(assert
  (forall (($a81815644 Int) ($x82015646 Int) ($y82115647 Int) ($z81715643 Int) ($c82215648 Int) ($k81915645 Int))
    (=> (and (< $c82215648 $k81915645)
             (__VERIFIER_assert (ite (= (- (+ (- (* $z81715643 $x82015646) $x82015646) $a81815644) (* (* $a81815644 $z81715643) $y82115647)) 0) 1 0))
             (not (= 1 0))
             ($main_inv285 $z81715643 $a81815644 $k81915645 $x82015646 $y82115647 $c82215648))
        ($main_if748 $z81715643 $a81815644 $k81915645 $x82015646 $y82115647 $c82215648))))

; forwards $main_inv285
(assert
  (forall (($a81815650 Int) ($x82015652 Int) ($z81715649 Int) ($c82215654 Int) ($k81915651 Int) ($y82115653 Int))
    (=> (and ($main_if748 $z81715649 $a81815650 $k81915651 $x82015652 $y82115653 $c82215654))
        ($main_inv285 $z81715649 $a81815650 $k81915651 (+ (* $x82015652 $z81715649) $a81815650) (* $y82115653 $z81715649) (+ $c82215654 1)))))

; __VERIFIER_assert precondition
(assert
  (forall (($k81915657 Int) ($c82215660 Int) ($y82115659 Int) ($z81715655 Int) ($a81815656 Int) ($x82015658 Int))
    (=> (and ($main_sum285 $z81715655 $a81815656 $k81915657 $x82015658 $y82115659 $c82215660))
        ($__VERIFIER_assert_pre (ite (= (- (+ (- (* $z81715655 $x82015658) $x82015658) $a81815656) (* (* $a81815656 $z81715655) $y82115659)) 0) 1 0)))))

(check-sat)
