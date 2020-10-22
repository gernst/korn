(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum196 (Int Int Int) Bool)
(declare-fun $main_if589 (Int Int Int) Bool)
(declare-fun $main_inv196 (Int Int Int) Bool)
(declare-fun $main_if588 (Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if587 (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13816 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13816))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if587 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13817 Int))
    (=> (and ($__VERIFIER_assert_if587 cond13817))
        (__VERIFIER_assert cond13817))))

; loop entry $main_inv196
(assert
  (forall (($y564 Int) ($z565 Int) ($x563 Int))
    (=> (and (= $z565 0)
             (= $y564 500000)
             (= $x563 0))
        ($main_inv196 0 $y564 $z565))))

; loop term $main_sum196
(assert
  (forall (($x56313818 Int) ($y56413819 Int) ($z56513820 Int))
    (=> (and (not (< $x56313818 1000000))
             ($main_inv196 $x56313818 $y56413819 $z56513820))
        ($main_sum196 $x56313818 $y56413819 $z56513820))))

; if then
(assert
  (forall (($x56313818 Int) ($y56413819 Int) ($z56513820 Int))
    (=> (and (< $x56313818 750000)
             (not (< $x56313818 500000))
             (< $x56313818 1000000)
             ($main_inv196 $x56313818 $y56413819 $z56513820))
        ($main_if588 (+ $x56313818 1) $y56413819 $z56513820))))

; if else
(assert
  (forall (($x56313818 Int) ($y56413819 Int) ($z56513820 Int))
    (=> (and (not (< $x56313818 750000))
             (not (< $x56313818 500000))
             (< $x56313818 1000000)
             ($main_inv196 $x56313818 $y56413819 $z56513820))
        ($main_if588 (+ $x56313818 2) $y56413819 $z56513820))))

; if then
(assert
  (forall (($x56313818 Int) ($y56413819 Int) ($z56513820 Int))
    (=> (and (< $x56313818 500000)
             (< $x56313818 1000000)
             ($main_inv196 $x56313818 $y56413819 $z56513820))
        ($main_if589 (+ $x56313818 1) $y56413819 $z56513820))))

; if else
(assert
  (forall (($x56313821 Int) ($y56413822 Int) ($z56513823 Int))
    (=> (and ($main_if588 $x56313821 $y56413822 $z56513823))
        ($main_if589 $x56313821 (+ $y56413822 1) $z56513823))))

; forwards $main_inv196
(assert
  (forall (($x56313824 Int) ($y56413825 Int) ($z56513826 Int))
    (=> (and ($main_if589 $x56313824 $y56413825 $z56513826))
        ($main_inv196 $x56313824 $y56413825 $z56513826))))

; __VERIFIER_assert precondition
(assert
  (forall (($x56313827 Int) ($y56413828 Int) ($z56513829 Int))
    (=> (and ($main_sum196 $x56313827 $y56413828 $z56513829))
        ($__VERIFIER_assert_pre (ite (= $x56313827 1000000) 1 0)))))

(check-sat)
