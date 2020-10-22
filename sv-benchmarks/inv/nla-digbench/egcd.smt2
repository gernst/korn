(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_sum283 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if742 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if741 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv283 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $assume_abort_if_not_if739 (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if740 (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if739 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond15580 Int))
    (=> (and ($assume_abort_if_not_if739 cond15580))
        (assume_abort_if_not cond15580))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond15581 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15581))
        false)))

; if then
(assert
  (forall ((cond15581 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15581))
        ($__VERIFIER_assert_if740 cond15581))))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if740 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond15582 Int))
    (=> (and ($__VERIFIER_assert_if740 cond15582))
        (__VERIFIER_assert cond15582))))

; assume_abort_if_not precondition
(assert
  (forall (($int15583 Int) ($int15584 Int))
    (=> (and (<= (- 2147483648) $int15584)
             (<= $int15584 2147483647)
             (<= (- 2147483648) $int15583)
             (<= $int15583 2147483647))
        ($assume_abort_if_not_pre (ite (>= $int15583 1) 1 0)))))

; assume_abort_if_not precondition
(assert
  (forall (($int15584 Int) ($int15583 Int))
    (=> (and (assume_abort_if_not (ite (>= $int15583 1) 1 0))
             (<= (- 2147483648) $int15584)
             (<= $int15584 2147483647)
             (<= (- 2147483648) $int15583)
             (<= $int15583 2147483647))
        ($assume_abort_if_not_pre (ite (>= $int15584 1) 1 0)))))

; loop entry $main_inv283
(assert
  (forall (($int15583 Int) ($int15584 Int))
    (=> (and (assume_abort_if_not (ite (>= $int15584 1) 1 0))
             (assume_abort_if_not (ite (>= $int15583 1) 1 0))
             (<= (- 2147483648) $int15584)
             (<= $int15584 2147483647)
             (<= (- 2147483648) $int15583)
             (<= $int15583 2147483647))
        ($main_inv283 $int15583 $int15584 1 0 0 1 $int15583 $int15584))))

; loop term $main_sum283
(assert
  (forall (($q80715588 Int) ($r80815589 Int) ($y81115592 Int) ($b80515586 Int) ($s80915590 Int) ($a80415585 Int) ($x81015591 Int) ($p80615587 Int))
    (=> (and (= 1 0)
             ($main_inv283 $a80415585 $b80515586 $p80615587 $q80715588 $r80815589 $s80915590 $x81015591 $y81115592))
        ($main_sum283 $a80415585 $b80515586 $p80615587 $q80715588 $r80815589 $s80915590 $x81015591 $y81115592))))

; __VERIFIER_assert precondition
(assert
  (forall (($q80715588 Int) ($r80815589 Int) ($y81115592 Int) ($b80515586 Int) ($s80915590 Int) ($a80415585 Int) ($x81015591 Int) ($p80615587 Int))
    (=> (and (not (= 1 0))
             ($main_inv283 $a80415585 $b80515586 $p80615587 $q80715588 $r80815589 $s80915590 $x81015591 $y81115592))
        ($__VERIFIER_assert_pre (ite (= 1 (- (* $p80615587 $s80915590) (* $r80815589 $q80715588))) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($q80715588 Int) ($r80815589 Int) ($y81115592 Int) ($b80515586 Int) ($s80915590 Int) ($a80415585 Int) ($x81015591 Int) ($p80615587 Int))
    (=> (and (__VERIFIER_assert (ite (= 1 (- (* $p80615587 $s80915590) (* $r80815589 $q80715588))) 1 0))
             (not (= 1 0))
             ($main_inv283 $a80415585 $b80515586 $p80615587 $q80715588 $r80815589 $s80915590 $x81015591 $y81115592))
        ($__VERIFIER_assert_pre (ite (= $a80415585 (+ (* $y81115592 $r80815589) (* $x81015591 $p80615587))) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($q80715588 Int) ($r80815589 Int) ($y81115592 Int) ($b80515586 Int) ($s80915590 Int) ($a80415585 Int) ($x81015591 Int) ($p80615587 Int))
    (=> (and (__VERIFIER_assert (ite (= $a80415585 (+ (* $y81115592 $r80815589) (* $x81015591 $p80615587))) 1 0))
             (__VERIFIER_assert (ite (= 1 (- (* $p80615587 $s80915590) (* $r80815589 $q80715588))) 1 0))
             (not (= 1 0))
             ($main_inv283 $a80415585 $b80515586 $p80615587 $q80715588 $r80815589 $s80915590 $x81015591 $y81115592))
        ($__VERIFIER_assert_pre (ite (= $b80515586 (+ (* $x81015591 $q80715588) (* $y81115592 $s80915590))) 1 0)))))

; break $main_sum283
(assert
  (forall (($q80715588 Int) ($r80815589 Int) ($y81115592 Int) ($b80515586 Int) ($s80915590 Int) ($a80415585 Int) ($x81015591 Int) ($p80615587 Int))
    (=> (and (= $a80415585 $b80515586)
             (__VERIFIER_assert (ite (= $b80515586 (+ (* $x81015591 $q80715588) (* $y81115592 $s80915590))) 1 0))
             (__VERIFIER_assert (ite (= $a80415585 (+ (* $y81115592 $r80815589) (* $x81015591 $p80615587))) 1 0))
             (__VERIFIER_assert (ite (= 1 (- (* $p80615587 $s80915590) (* $r80815589 $q80715588))) 1 0))
             (not (= 1 0))
             ($main_inv283 $a80415585 $b80515586 $p80615587 $q80715588 $r80815589 $s80915590 $x81015591 $y81115592))
        ($main_sum283 $a80415585 $b80515586 $p80615587 $q80715588 $r80815589 $s80915590 $x81015591 $y81115592))))

; if else
(assert
  (forall (($q80715588 Int) ($r80815589 Int) ($y81115592 Int) ($b80515586 Int) ($s80915590 Int) ($a80415585 Int) ($x81015591 Int) ($p80615587 Int))
    (=> (and (not (= $a80415585 $b80515586))
             (__VERIFIER_assert (ite (= $b80515586 (+ (* $x81015591 $q80715588) (* $y81115592 $s80915590))) 1 0))
             (__VERIFIER_assert (ite (= $a80415585 (+ (* $y81115592 $r80815589) (* $x81015591 $p80615587))) 1 0))
             (__VERIFIER_assert (ite (= 1 (- (* $p80615587 $s80915590) (* $r80815589 $q80715588))) 1 0))
             (not (= 1 0))
             ($main_inv283 $a80415585 $b80515586 $p80615587 $q80715588 $r80815589 $s80915590 $x81015591 $y81115592))
        ($main_if741 $a80415585 $b80515586 $p80615587 $q80715588 $r80815589 $s80915590 $x81015591 $y81115592))))

; if then
(assert
  (forall (($p80615595 Int) ($b80515594 Int) ($q80715596 Int) ($y81115600 Int) ($s80915598 Int) ($r80815597 Int) ($a80415593 Int) ($x81015599 Int))
    (=> (and (> $a80415593 $b80515594)
             ($main_if741 $a80415593 $b80515594 $p80615595 $q80715596 $r80815597 $s80915598 $x81015599 $y81115600))
        ($main_if742 (- $a80415593 $b80515594) $b80515594 (- $p80615595 $q80715596) $q80715596 (- $r80815597 $s80915598) $s80915598 $x81015599 $y81115600))))

; if else
(assert
  (forall (($p80615595 Int) ($b80515594 Int) ($q80715596 Int) ($y81115600 Int) ($s80915598 Int) ($r80815597 Int) ($a80415593 Int) ($x81015599 Int))
    (=> (and (not (> $a80415593 $b80515594))
             ($main_if741 $a80415593 $b80515594 $p80615595 $q80715596 $r80815597 $s80915598 $x81015599 $y81115600))
        ($main_if742 $a80415593 (- $b80515594 $a80415593) $p80615595 (- $q80715596 $p80615595) $r80815597 (- $s80915598 $r80815597) $x81015599 $y81115600))))

; forwards $main_inv283
(assert
  (forall (($b80515602 Int) ($p80615603 Int) ($s80915606 Int) ($y81115608 Int) ($x81015607 Int) ($q80715604 Int) ($r80815605 Int) ($a80415601 Int))
    (=> (and ($main_if742 $a80415601 $b80515602 $p80615603 $q80715604 $r80815605 $s80915606 $x81015607 $y81115608))
        ($main_inv283 $a80415601 $b80515602 $p80615603 $q80715604 $r80815605 $s80915606 $x81015607 $y81115608))))

; __VERIFIER_assert precondition
(assert
  (forall (($q80715612 Int) ($p80615611 Int) ($r80815613 Int) ($a80415609 Int) ($b80515610 Int) ($y81115616 Int) ($s80915614 Int) ($x81015615 Int))
    (=> (and ($main_sum283 $a80415609 $b80515610 $p80615611 $q80715612 $r80815613 $s80915614 $x81015615 $y81115616))
        ($__VERIFIER_assert_pre (ite (= (- $a80415609 $b80515610) 0) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($q80715612 Int) ($p80615611 Int) ($r80815613 Int) ($a80415609 Int) ($b80515610 Int) ($y81115616 Int) ($s80915614 Int) ($x81015615 Int))
    (=> (and (__VERIFIER_assert (ite (= (- $a80415609 $b80515610) 0) 1 0))
             ($main_sum283 $a80415609 $b80515610 $p80615611 $q80715612 $r80815613 $s80915614 $x81015615 $y81115616))
        ($__VERIFIER_assert_pre (ite (= (- (+ (* $p80615611 $x81015615) (* $r80815613 $y81115616)) $b80515610) 0) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($q80715612 Int) ($p80615611 Int) ($r80815613 Int) ($a80415609 Int) ($b80515610 Int) ($y81115616 Int) ($s80915614 Int) ($x81015615 Int))
    (=> (and (__VERIFIER_assert (ite (= (- (+ (* $p80615611 $x81015615) (* $r80815613 $y81115616)) $b80515610) 0) 1 0))
             (__VERIFIER_assert (ite (= (- $a80415609 $b80515610) 0) 1 0))
             ($main_sum283 $a80415609 $b80515610 $p80615611 $q80715612 $r80815613 $s80915614 $x81015615 $y81115616))
        ($__VERIFIER_assert_pre (ite (= (+ (- (* $q80715612 $r80815613) (* $p80615611 $s80915614)) 1) 0) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($q80715612 Int) ($p80615611 Int) ($r80815613 Int) ($a80415609 Int) ($b80515610 Int) ($y81115616 Int) ($s80915614 Int) ($x81015615 Int))
    (=> (and (__VERIFIER_assert (ite (= (+ (- (* $q80715612 $r80815613) (* $p80615611 $s80915614)) 1) 0) 1 0))
             (__VERIFIER_assert (ite (= (- (+ (* $p80615611 $x81015615) (* $r80815613 $y81115616)) $b80515610) 0) 1 0))
             (__VERIFIER_assert (ite (= (- $a80415609 $b80515610) 0) 1 0))
             ($main_sum283 $a80415609 $b80515610 $p80615611 $q80715612 $r80815613 $s80915614 $x81015615 $y81115616))
        ($__VERIFIER_assert_pre (ite (= (- (+ (* $q80715612 $x81015615) (* $s80915614 $y81115616)) $b80515610) 0) 1 0)))))

(check-sat)
