(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum299 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $__VERIFIER_assert_if785 (Int Int) Bool)
(declare-fun $main_if786 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_if784 (Int Int) Bool)
(declare-fun $main_inv299 (Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if784 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond17577 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if784 cond cond17577))
        (assume_abort_if_not cond17577))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond17578 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond17578))
        false)))

; if then
(assert
  (forall ((cond Int) (cond17578 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond17578))
        ($__VERIFIER_assert_if785 cond cond17578))))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if785 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond17579 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if785 cond cond17579))
        (__VERIFIER_assert cond17579))))

; loop entry $main_inv299
(assert
  (forall (($int17580 Int))
    (=> (and (<= (- 2147483648) $int17580)
             (<= $int17580 2147483647))
        ($main_inv299 $int17580 0 0 0))))

; loop term $main_sum299
(assert
  (forall (($k86817581 Int) ($y86917582 Int) ($x87017583 Int) ($c87117584 Int))
    (=> (and (= 1 0))
        ($main_sum299 $k86817581 $y86917582 $x87017583 $c87117584 $k86817581 $y86917582 $x87017583 $c87117584))))

; __VERIFIER_assert precondition
(assert
  (forall (($y86917582 Int) ($x87017583 Int) ($k86817581 Int) ($c87117584 Int))
    (=> (and (not (= 1 0))
             ($main_inv299 $k86817581 $y86917582 $x87017583 $c87117584))
        ($__VERIFIER_assert_pre (ite (= (+ (+ (- (- (* (* (* (* (* (* (- 2) $y86917582) $y86917582) $y86917582) $y86917582) $y86917582) $y86917582) (* (* (* (* (* 6 $y86917582) $y86917582) $y86917582) $y86917582) $y86917582)) (* (* (* (* 5 $y86917582) $y86917582) $y86917582) $y86917582)) (* $y86917582 $y86917582)) (* 12 $x87017583)) 0) 1 0)))))

; break $main_sum299
(assert
  (forall (($k86817581 Int) ($y86917582 Int) ($x87017583 Int) ($c87117584 Int))
    (=> (and (not (< $c87117584 $k86817581))
             (__VERIFIER_assert (ite (= (+ (+ (- (- (* (* (* (* (* (* (- 2) $y86917582) $y86917582) $y86917582) $y86917582) $y86917582) $y86917582) (* (* (* (* (* 6 $y86917582) $y86917582) $y86917582) $y86917582) $y86917582)) (* (* (* (* 5 $y86917582) $y86917582) $y86917582) $y86917582)) (* $y86917582 $y86917582)) (* 12 $x87017583)) 0) 1 0))
             (not (= 1 0))
             ($main_inv299 $k86817581 $y86917582 $x87017583 $c87117584))
        ($main_sum299 $k86817581 $y86917582 $x87017583 $c87117584 $k86817581 $y86917582 $x87017583 $c87117584))))

; if else
(assert
  (forall (($k86817581 Int) ($y86917582 Int) ($x87017583 Int) ($c87117584 Int))
    (=> (and (< $c87117584 $k86817581)
             (__VERIFIER_assert (ite (= (+ (+ (- (- (* (* (* (* (* (* (- 2) $y86917582) $y86917582) $y86917582) $y86917582) $y86917582) $y86917582) (* (* (* (* (* 6 $y86917582) $y86917582) $y86917582) $y86917582) $y86917582)) (* (* (* (* 5 $y86917582) $y86917582) $y86917582) $y86917582)) (* $y86917582 $y86917582)) (* 12 $x87017583)) 0) 1 0))
             (not (= 1 0))
             ($main_inv299 $k86817581 $y86917582 $x87017583 $c87117584))
        ($main_if786 $k86817581 $y86917582 $x87017583 $c87117584 $k86817581 $y86917582 $x87017583 $c87117584))))

; forwards $main_inv299
(assert
  (forall (($x87017583 Int) ($x87017587 Int) ($k86817585 Int) ($k86817581 Int) ($y86917586 Int) ($c87117584 Int) ($c87117588 Int) ($y86917582 Int))
    (=> (and ($main_if786 $k86817581 $y86917582 $x87017583 $c87117584 $k86817585 $y86917586 $x87017587 $c87117588))
        ($main_inv299 $k86817585 (+ $y86917586 1) (+ (* (* (* (* (+ $y86917586 1) (+ $y86917586 1)) (+ $y86917586 1)) (+ $y86917586 1)) (+ $y86917586 1)) $x87017587) (+ $c87117588 1)))))

; backwards $main_sum299
(assert
  (forall (($x87017583 Int) ($k86817589 Int) ($x87017587 Int) ($k86817585 Int) ($y86917590 Int) ($x87017591 Int) ($y86917586 Int) ($c87117584 Int) ($c87117592 Int) ($k86817581 Int) ($c87117588 Int) ($y86917582 Int))
    (=> (and ($main_sum299 $k86817585 (+ $y86917586 1) (+ (* (* (* (* (+ $y86917586 1) (+ $y86917586 1)) (+ $y86917586 1)) (+ $y86917586 1)) (+ $y86917586 1)) $x87017587) (+ $c87117588 1) $k86817589 $y86917590 $x87017591 $c87117592)
             ($main_if786 $k86817581 $y86917582 $x87017583 $c87117584 $k86817585 $y86917586 $x87017587 $c87117588))
        ($main_sum299 $k86817581 $y86917582 $x87017583 $c87117584 $k86817589 $y86917590 $x87017591 $c87117592))))

; __VERIFIER_assert precondition
(assert
  (forall (($y86917594 Int) ($int17580 Int) ($c87117596 Int) ($k86817593 Int) ($x87017595 Int))
    (=> (and ($main_sum299 $int17580 0 0 0 $k86817593 $y86917594 $x87017595 $c87117596)
             (<= (- 2147483648) $int17580)
             (<= $int17580 2147483647))
        ($__VERIFIER_assert_pre (ite (= (+ (+ (- (- (* (* (* (* (* (* (- 2) $y86917594) $y86917594) $y86917594) $y86917594) $y86917594) $y86917594) (* (* (* (* (* 6 $y86917594) $y86917594) $y86917594) $y86917594) $y86917594)) (* (* (* (* 5 $y86917594) $y86917594) $y86917594) $y86917594)) (* $y86917594 $y86917594)) (* 12 $x87017595)) 0) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($y86917594 Int) ($int17580 Int) ($c87117596 Int) ($k86817593 Int) ($x87017595 Int))
    (=> (and (__VERIFIER_assert (ite (= (+ (+ (- (- (* (* (* (* (* (* (- 2) $y86917594) $y86917594) $y86917594) $y86917594) $y86917594) $y86917594) (* (* (* (* (* 6 $y86917594) $y86917594) $y86917594) $y86917594) $y86917594)) (* (* (* (* 5 $y86917594) $y86917594) $y86917594) $y86917594)) (* $y86917594 $y86917594)) (* 12 $x87017595)) 0) 1 0))
             ($main_sum299 $int17580 0 0 0 $k86817593 $y86917594 $x87017595 $c87117596)
             (<= (- 2147483648) $int17580)
             (<= $int17580 2147483647))
        ($__VERIFIER_assert_pre (ite (= (* $k86817593 $y86917594) (* $y86917594 $y86917594)) 1 0)))))

(check-sat)
