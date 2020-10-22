(set-logic HORN)

(declare-fun $main_inv173 (Int Int Int Int) Bool)
(declare-fun $main_sum175 (Int Int Int Int) Bool)
(declare-fun $main_sum170 (Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_if553 (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_inv170 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $main_inv175 (Int Int Int Int) Bool)
(declare-fun $main_sum174 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_inv172 (Int Int Int Int) Bool)
(declare-fun $main_inv174 (Int Int Int Int) Bool)
(declare-fun $main_sum173 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum171 (Int Int Int Int) Bool)
(declare-fun $main_inv171 (Int Int Int Int) Bool)
(declare-fun $main_sum172 (Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13579 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13579))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if553 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13580 Int))
    (=> (and ($__VERIFIER_assert_if553 cond13580))
        (__VERIFIER_assert cond13580))))

; loop entry $main_inv170
(assert
  (forall (($x522 Int) ($z524 Int) ($uint13581 Int) ($y523 Int) ($n521 Int))
    (=> (and (= $y523 0)
             (= $x522 $n521)
             (= $n521 $uint13581)
             (<= 0 $uint13581)
             (<= $uint13581 4294967295))
        ($main_inv170 $n521 $x522 $y523 $z524))))

; loop term $main_sum170
(assert
  (forall (($n52113582 Int) ($x52213583 Int) ($y52313584 Int) ($z52413585 Int))
    (=> (and (not (> $x52213583 0))
             ($main_inv170 $n52113582 $x52213583 $y52313584 $z52413585))
        ($main_sum170 $n52113582 $x52213583 $y52313584 $z52413585))))

; forwards $main_inv170
(assert
  (forall (($n52113582 Int) ($x52213583 Int) ($y52313584 Int) ($z52413585 Int))
    (=> (and (> $x52213583 0)
             ($main_inv170 $n52113582 $x52213583 $y52313584 $z52413585))
        ($main_inv170 $n52113582 (- $x52213583 1) (+ $y52313584 1) $z52413585))))

; loop entry $main_inv171
(assert
  (forall (($n52113586 Int) ($x52213587 Int) ($y52313588 Int) ($z52413589 Int))
    (=> (and ($main_sum170 $n52113586 $x52213587 $y52313588 $z52413589))
        ($main_inv171 $n52113586 $x52213587 $y52313588 $y52313588))))

; loop term $main_sum171
(assert
  (forall (($n52113590 Int) ($x52213591 Int) ($y52313592 Int) ($z52413593 Int))
    (=> (and (not (> $z52413593 0))
             ($main_inv171 $n52113590 $x52213591 $y52313592 $z52413593))
        ($main_sum171 $n52113590 $x52213591 $y52313592 $z52413593))))

; forwards $main_inv171
(assert
  (forall (($n52113590 Int) ($x52213591 Int) ($y52313592 Int) ($z52413593 Int))
    (=> (and (> $z52413593 0)
             ($main_inv171 $n52113590 $x52213591 $y52313592 $z52413593))
        ($main_inv171 $n52113590 (+ $x52213591 1) $y52313592 (- $z52413593 1)))))

; loop entry $main_inv172
(assert
  (forall (($n52113594 Int) ($x52213595 Int) ($y52313596 Int) ($z52413597 Int))
    (=> (and ($main_sum171 $n52113594 $x52213595 $y52313596 $z52413597))
        ($main_inv172 $n52113594 $x52213595 $y52313596 $z52413597))))

; loop term $main_sum172
(assert
  (forall (($n52113598 Int) ($x52213599 Int) ($y52313600 Int) ($z52413601 Int))
    (=> (and (not (> $y52313600 0))
             ($main_inv172 $n52113598 $x52213599 $y52313600 $z52413601))
        ($main_sum172 $n52113598 $x52213599 $y52313600 $z52413601))))

; forwards $main_inv172
(assert
  (forall (($n52113598 Int) ($x52213599 Int) ($y52313600 Int) ($z52413601 Int))
    (=> (and (> $y52313600 0)
             ($main_inv172 $n52113598 $x52213599 $y52313600 $z52413601))
        ($main_inv172 $n52113598 $x52213599 (- $y52313600 1) (+ $z52413601 1)))))

; loop entry $main_inv173
(assert
  (forall (($n52113602 Int) ($x52213603 Int) ($y52313604 Int) ($z52413605 Int))
    (=> (and ($main_sum172 $n52113602 $x52213603 $y52313604 $z52413605))
        ($main_inv173 $n52113602 $x52213603 $y52313604 $z52413605))))

; loop term $main_sum173
(assert
  (forall (($n52113606 Int) ($x52213607 Int) ($y52313608 Int) ($z52413609 Int))
    (=> (and (not (> $x52213607 0))
             ($main_inv173 $n52113606 $x52213607 $y52313608 $z52413609))
        ($main_sum173 $n52113606 $x52213607 $y52313608 $z52413609))))

; forwards $main_inv173
(assert
  (forall (($n52113606 Int) ($x52213607 Int) ($y52313608 Int) ($z52413609 Int))
    (=> (and (> $x52213607 0)
             ($main_inv173 $n52113606 $x52213607 $y52313608 $z52413609))
        ($main_inv173 $n52113606 (- $x52213607 1) (+ $y52313608 1) $z52413609))))

; loop entry $main_inv174
(assert
  (forall (($n52113610 Int) ($x52213611 Int) ($y52313612 Int) ($z52413613 Int))
    (=> (and ($main_sum173 $n52113610 $x52213611 $y52313612 $z52413613))
        ($main_inv174 $n52113610 $x52213611 $y52313612 $z52413613))))

; loop term $main_sum174
(assert
  (forall (($n52113614 Int) ($x52213615 Int) ($y52313616 Int) ($z52413617 Int))
    (=> (and (not (> $z52413617 0))
             ($main_inv174 $n52113614 $x52213615 $y52313616 $z52413617))
        ($main_sum174 $n52113614 $x52213615 $y52313616 $z52413617))))

; forwards $main_inv174
(assert
  (forall (($n52113614 Int) ($x52213615 Int) ($y52313616 Int) ($z52413617 Int))
    (=> (and (> $z52413617 0)
             ($main_inv174 $n52113614 $x52213615 $y52313616 $z52413617))
        ($main_inv174 $n52113614 (+ $x52213615 1) $y52313616 (- $z52413617 1)))))

; loop entry $main_inv175
(assert
  (forall (($n52113618 Int) ($x52213619 Int) ($y52313620 Int) ($z52413621 Int))
    (=> (and ($main_sum174 $n52113618 $x52213619 $y52313620 $z52413621))
        ($main_inv175 $n52113618 $x52213619 $y52313620 $z52413621))))

; loop term $main_sum175
(assert
  (forall (($n52113622 Int) ($x52213623 Int) ($y52313624 Int) ($z52413625 Int))
    (=> (and (not (> $y52313624 0))
             ($main_inv175 $n52113622 $x52213623 $y52313624 $z52413625))
        ($main_sum175 $n52113622 $x52213623 $y52313624 $z52413625))))

; forwards $main_inv175
(assert
  (forall (($n52113622 Int) ($x52213623 Int) ($y52313624 Int) ($z52413625 Int))
    (=> (and (> $y52313624 0)
             ($main_inv175 $n52113622 $x52213623 $y52313624 $z52413625))
        ($main_inv175 $n52113622 (- $x52213623 1) (- $y52313624 1) $z52413625))))

; __VERIFIER_assert precondition
(assert
  (forall (($x52213627 Int) ($n52113626 Int) ($y52313628 Int) ($z52413629 Int))
    (=> (and ($main_sum175 $n52113626 $x52213627 $y52313628 $z52413629))
        ($__VERIFIER_assert_pre (ite (= $x52213627 0) 1 0)))))

(check-sat)
