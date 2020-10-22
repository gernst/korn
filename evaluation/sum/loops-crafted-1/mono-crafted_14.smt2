(set-logic HORN)

(declare-fun $main_if582 (Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum190 (Int Int Int Int Int Int) Bool)
(declare-fun $main_sum191 (Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv190 (Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if581 (Int Int) Bool)
(declare-fun $main_inv191 (Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond14824 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond14824))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if581 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14825 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if581 cond cond14825))
        (__VERIFIER_assert cond14825))))

; loop entry $main_inv190
(assert
  (forall (($y555 Int) ($z556 Int) ($x554 Int))
    (=> (and (= $z556 0)
             (= $y555 500000)
             (= $x554 0))
        ($main_inv190 0 $y555 $z556))))

; loop term $main_sum190
(assert
  (forall (($x55414826 Int) ($y55514827 Int) ($z55614828 Int))
    (=> (and (not (< $x55414826 1000000)))
        ($main_sum190 $x55414826 $y55514827 $z55614828 $x55414826 $y55514827 $z55614828))))

; if then
(assert
  (forall (($x55414826 Int) ($y55514827 Int) ($z55614828 Int))
    (=> (and (< $x55414826 500000)
             (< $x55414826 1000000)
             ($main_inv190 $x55414826 $y55514827 $z55614828))
        ($main_if582 $x55414826 $y55514827 $z55614828 (+ $x55414826 1) $y55514827 $z55614828))))

; if else
(assert
  (forall (($x55414826 Int) ($y55514827 Int) ($z55614828 Int))
    (=> (and (not (< $x55414826 500000))
             (< $x55414826 1000000)
             ($main_inv190 $x55414826 $y55514827 $z55614828))
        ($main_if582 $x55414826 $y55514827 $z55614828 (+ $x55414826 1) (+ $y55514827 1) $z55614828))))

; forwards $main_inv190
(assert
  (forall (($x55414826 Int) ($z55614828 Int) ($y55514830 Int) ($y55514827 Int) ($z55614831 Int) ($x55414829 Int))
    (=> (and ($main_if582 $x55414826 $y55514827 $z55614828 $x55414829 $y55514830 $z55614831))
        ($main_inv190 $x55414829 $y55514830 $z55614831))))

; backwards $main_sum190
(assert
  (forall (($x55414826 Int) ($z55614834 Int) ($x55414832 Int) ($y55514830 Int) ($y55514827 Int) ($z55614831 Int) ($x55414829 Int) ($y55514833 Int) ($z55614828 Int))
    (=> (and ($main_sum190 $x55414829 $y55514830 $z55614831 $x55414832 $y55514833 $z55614834)
             ($main_if582 $x55414826 $y55514827 $z55614828 $x55414829 $y55514830 $z55614831))
        ($main_sum190 $x55414826 $y55514827 $z55614828 $x55414832 $y55514833 $z55614834))))

; loop entry $main_inv191
(assert
  (forall (($x554 Int) ($y55514836 Int) ($x55414835 Int) ($y555 Int) ($z556 Int) ($z55614837 Int))
    (=> (and ($main_sum190 0 $y555 $z556 $x55414835 $y55514836 $z55614837)
             (= $z556 0)
             (= $y555 500000)
             (= $x554 0))
        ($main_inv191 $x55414835 $y55514836 $z55614837))))

; loop term $main_sum191
(assert
  (forall (($x55414838 Int) ($y55514839 Int) ($z55614840 Int))
    (=> (and (not (> $y55514839 0)))
        ($main_sum191 $x55414838 $y55514839 $z55614840 $x55414838 $y55514839 $z55614840))))

; forwards $main_inv191
(assert
  (forall (($x55414838 Int) ($y55514839 Int) ($z55614840 Int))
    (=> (and (> $y55514839 0)
             ($main_inv191 $x55414838 $y55514839 $z55614840))
        ($main_inv191 (- $x55414838 1) (- $y55514839 2) (+ $z55614840 1)))))

; backwards $main_sum191
(assert
  (forall (($x55414841 Int) ($y55514839 Int) ($y55514842 Int) ($z55614840 Int) ($x55414838 Int) ($z55614843 Int))
    (=> (and ($main_sum191 (- $x55414838 1) (- $y55514839 2) (+ $z55614840 1) $x55414841 $y55514842 $z55614843)
             (> $y55514839 0))
        ($main_sum191 $x55414838 $y55514839 $z55614840 $x55414841 $y55514842 $z55614843))))

; __VERIFIER_assert precondition
(assert
  (forall (($x554 Int) ($y55514836 Int) ($x55414835 Int) ($x55414844 Int) ($y555 Int) ($y55514845 Int) ($z55614846 Int) ($z556 Int) ($z55614837 Int))
    (=> (and ($main_sum191 $x55414835 $y55514836 $z55614837 $x55414844 $y55514845 $z55614846)
             ($main_sum190 0 $y555 $z556 $x55414835 $y55514836 $z55614837)
             (= $z556 0)
             (= $y555 500000)
             (= $x554 0))
        ($__VERIFIER_assert_pre (ite (= (mod $z55614846 2) 0) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x554 Int) ($y55514836 Int) ($x55414835 Int) ($x55414844 Int) ($y555 Int) ($y55514845 Int) ($z55614846 Int) ($z556 Int) ($z55614837 Int))
    (=> (and (__VERIFIER_assert (ite (= (mod $z55614846 2) 0) 1 0))
             ($main_sum191 $x55414835 $y55514836 $z55614837 $x55414844 $y55514845 $z55614846)
             ($main_sum190 0 $y555 $z556 $x55414835 $y55514836 $z55614837)
             (= $z556 0)
             (= $y555 500000)
             (= $x554 0))
        ($__VERIFIER_assert_pre (ite (= (mod $x55414844 2) 0) 1 0)))))

(check-sat)
