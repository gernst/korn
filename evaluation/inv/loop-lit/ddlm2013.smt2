(set-logic HORN)

(declare-fun $main_sum495 (Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv495 (Int Int Int Int Int) Bool)
(declare-fun $main_if299 (Int Int Int Int Int) Bool)
(declare-fun $main_if300 (Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if298 (Int) Bool)
(declare-fun $assume_abort_if_not_if297 (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_if301 (Int Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if297 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond6723 Int))
    (=> (and ($assume_abort_if_not_if297 cond6723))
        (assume_abort_if_not cond6723))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond6724 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond6724))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if298 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6725 Int))
    (=> (and ($__VERIFIER_assert_if298 cond6725))
        (__VERIFIER_assert cond6725))))

; if then
(assert
  (forall (($flag680 Int) ($int6726 Int))
    (=> (and (not (= $flag680 0))
             (= $flag680 $int6726)
             (<= (- 2147483648) $int6726)
             (<= $int6726 2147483647))
        ($main_if299 0 1 0 0 $flag680))))

; if else
(assert
  (forall (($flag680 Int) ($int6726 Int))
    (=> (and (= $flag680 0)
             (= $flag680 $int6726)
             (<= (- 2147483648) $int6726)
             (<= $int6726 2147483647))
        ($main_if299 1 1 0 0 $flag680))))

; loop entry $main_inv495
(assert
  (forall (($i6766727 Int) ($b6796730 Int) ($flag6806731 Int) ($a6786729 Int) ($j6776728 Int))
    (=> (and ($main_if299 $i6766727 $j6776728 $a6786729 $b6796730 $flag6806731))
        ($main_inv495 $i6766727 $j6776728 $a6786729 $b6796730 $flag6806731))))

; loop term $main_sum495
(assert
  (forall (($int6737 Int) ($a6786734 Int) ($b6796735 Int) ($i6766732 Int) ($j6776733 Int) ($flag6806736 Int))
    (=> (and (= $int6737 0)
             (<= (- 2147483648) $int6737)
             (<= $int6737 2147483647)
             ($main_inv495 $i6766732 $j6776733 $a6786734 $b6796735 $flag6806736))
        ($main_sum495 $i6766732 $j6776733 $a6786734 $b6796735 $flag6806736))))

; if then
(assert
  (forall (($int6737 Int) ($a6786734 Int) ($b6796735 Int) ($i6766732 Int) ($j6776733 Int) ($flag6806736 Int))
    (=> (and (= (mod (+ $i6766732 2) 2) 0)
             (not (= $int6737 0))
             (<= (- 2147483648) $int6737)
             (<= $int6737 2147483647)
             ($main_inv495 $i6766732 $j6776733 $a6786734 $b6796735 $flag6806736))
        ($main_if300 (+ $i6766732 2) (+ $j6776733 2) (+ $a6786734 1) (+ $b6796735 (- $j6776733 $i6766732)) $flag6806736))))

; if else
(assert
  (forall (($int6737 Int) ($a6786734 Int) ($b6796735 Int) ($i6766732 Int) ($j6776733 Int) ($flag6806736 Int))
    (=> (and (not (= (mod (+ $i6766732 2) 2) 0))
             (not (= $int6737 0))
             (<= (- 2147483648) $int6737)
             (<= $int6737 2147483647)
             ($main_inv495 $i6766732 $j6776733 $a6786734 $b6796735 $flag6806736))
        ($main_if300 (+ $i6766732 2) (+ $j6776733 1) (+ $a6786734 1) (+ $b6796735 (- $j6776733 $i6766732)) $flag6806736))))

; forwards $main_inv495
(assert
  (forall (($i6766738 Int) ($a6786740 Int) ($j6776739 Int) ($flag6806742 Int) ($b6796741 Int))
    (=> (and ($main_if300 $i6766738 $j6776739 $a6786740 $b6796741 $flag6806742))
        ($main_inv495 $i6766738 $j6776739 $a6786740 $b6796741 $flag6806742))))

; __VERIFIER_assert precondition
(assert
  (forall (($flag6806747 Int) ($b6796746 Int) ($i6766743 Int) ($a6786745 Int) ($j6776744 Int))
    (=> (and (not (= $flag6806747 0))
             ($main_sum495 $i6766743 $j6776744 $a6786745 $b6796746 $flag6806747))
        ($__VERIFIER_assert_pre (ite (= $a6786745 $b6796746) 1 0)))))

; if then
(assert
  (forall (($flag6806747 Int) ($b6796746 Int) ($i6766743 Int) ($a6786745 Int) ($j6776744 Int))
    (=> (and (__VERIFIER_assert (ite (= $a6786745 $b6796746) 1 0))
             (not (= $flag6806747 0))
             ($main_sum495 $i6766743 $j6776744 $a6786745 $b6796746 $flag6806747))
        ($main_if301 $i6766743 $j6776744 $a6786745 $b6796746 $flag6806747))))

; if else
(assert
  (forall (($flag6806747 Int) ($b6796746 Int) ($i6766743 Int) ($a6786745 Int) ($j6776744 Int))
    (=> (and (= $flag6806747 0)
             ($main_sum495 $i6766743 $j6776744 $a6786745 $b6796746 $flag6806747))
        ($main_if301 $i6766743 $j6776744 $a6786745 $b6796746 $flag6806747))))

(check-sat)
