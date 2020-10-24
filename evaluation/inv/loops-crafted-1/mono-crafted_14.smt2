(set-logic HORN)

(declare-fun $main_if582 (Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum190 (Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum191 (Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv190 (Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if581 (Int) Bool)
(declare-fun $main_inv191 (Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13765 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13765))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if581 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13766 Int))
    (=> (and ($__VERIFIER_assert_if581 cond13766))
        (__VERIFIER_assert cond13766))))

; loop entry $main_inv190
(assert
  (forall (($y555 Int) ($z556 Int) ($x554 Int))
    (=> (and (= $z556 0)
             (= $y555 500000)
             (= $x554 0))
        ($main_inv190 0 $y555 $z556))))

; loop term $main_sum190
(assert
  (forall (($x55413767 Int) ($y55513768 Int) ($z55613769 Int))
    (=> (and (not (< $x55413767 1000000))
             ($main_inv190 $x55413767 $y55513768 $z55613769))
        ($main_sum190 $x55413767 $y55513768 $z55613769))))

; if then
(assert
  (forall (($x55413767 Int) ($y55513768 Int) ($z55613769 Int))
    (=> (and (< $x55413767 500000)
             (< $x55413767 1000000)
             ($main_inv190 $x55413767 $y55513768 $z55613769))
        ($main_if582 (+ $x55413767 1) $y55513768 $z55613769))))

; if else
(assert
  (forall (($x55413767 Int) ($y55513768 Int) ($z55613769 Int))
    (=> (and (not (< $x55413767 500000))
             (< $x55413767 1000000)
             ($main_inv190 $x55413767 $y55513768 $z55613769))
        ($main_if582 (+ $x55413767 1) (+ $y55513768 1) $z55613769))))

; forwards $main_inv190
(assert
  (forall (($x55413770 Int) ($y55513771 Int) ($z55613772 Int))
    (=> (and ($main_if582 $x55413770 $y55513771 $z55613772))
        ($main_inv190 $x55413770 $y55513771 $z55613772))))

; loop entry $main_inv191
(assert
  (forall (($x55413773 Int) ($y55513774 Int) ($z55613775 Int))
    (=> (and ($main_sum190 $x55413773 $y55513774 $z55613775))
        ($main_inv191 $x55413773 $y55513774 $z55613775))))

; loop term $main_sum191
(assert
  (forall (($x55413776 Int) ($y55513777 Int) ($z55613778 Int))
    (=> (and (not (> $y55513777 0))
             ($main_inv191 $x55413776 $y55513777 $z55613778))
        ($main_sum191 $x55413776 $y55513777 $z55613778))))

; forwards $main_inv191
(assert
  (forall (($x55413776 Int) ($y55513777 Int) ($z55613778 Int))
    (=> (and (> $y55513777 0)
             ($main_inv191 $x55413776 $y55513777 $z55613778))
        ($main_inv191 (- $x55413776 1) (- $y55513777 2) (+ $z55613778 1)))))

; __VERIFIER_assert precondition
(assert
  (forall (($z55613781 Int) ($x55413779 Int) ($y55513780 Int))
    (=> (and ($main_sum191 $x55413779 $y55513780 $z55613781))
        ($__VERIFIER_assert_pre (ite (= (mod $z55613781 2) 0) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x55413779 Int) ($z55613781 Int) ($y55513780 Int))
    (=> (and (__VERIFIER_assert (ite (= (mod $z55613781 2) 0) 1 0))
             ($main_sum191 $x55413779 $y55513780 $z55613781))
        ($__VERIFIER_assert_pre (ite (= (mod $x55413779 2) 0) 1 0)))))

(check-sat)
