(set-logic HORN)

(declare-fun $main_sum234 (Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_inv234 (Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_if671 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if670 (Int) Bool)
(declare-fun $assume_abort_if_not_if669 (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if669 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond14721 Int))
    (=> (and ($assume_abort_if_not_if669 cond14721))
        (assume_abort_if_not cond14721))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond14722 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond14722))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if670 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14723 Int))
    (=> (and ($__VERIFIER_assert_if670 cond14723))
        (__VERIFIER_assert cond14723))))

; if else
(assert
  (forall (($i677 Int) ($y679 Int) ($int14724 Int) ($x678 Int) ($n680 Int))
    (=> (and (> $n680 0)
             (= $n680 $int14724)
             (<= (- 2147483648) $int14724)
             (<= $int14724 2147483647)
             (= $y679 0)
             (= $x678 0)
             (= $i677 0))
        ($main_if671 $i677 $x678 $y679 $n680))))

; loop entry $main_inv234
(assert
  (forall (($x67814726 Int) ($y67914727 Int) ($n68014728 Int) ($i67714725 Int))
    (=> (and ($main_if671 $i67714725 $x67814726 $y67914727 $n68014728))
        ($main_inv234 0 $x67814726 $y67914727 $n68014728))))

; loop term $main_sum234
(assert
  (forall (($i67714729 Int) ($x67814730 Int) ($y67914731 Int) ($n68014732 Int))
    (=> (and (= 1 0)
             ($main_inv234 $i67714729 $x67814730 $y67914731 $n68014732))
        ($main_sum234 $i67714729 $x67814730 $y67914731 $n68014732))))

; __VERIFIER_assert precondition
(assert
  (forall (($x67814730 Int) ($i67714729 Int) ($y67914731 Int) ($n68014732 Int))
    (=> (and (not (= 1 0))
             ($main_inv234 $i67714729 $x67814730 $y67914731 $n68014732))
        ($__VERIFIER_assert_pre (ite (= $x67814730 0) 1 0)))))

; forwards $main_inv234
(assert
  (forall (($i67714729 Int) ($x67814730 Int) ($y67914731 Int) ($n68014732 Int))
    (=> (and (__VERIFIER_assert (ite (= $x67814730 0) 1 0))
             (not (= 1 0))
             ($main_inv234 $i67714729 $x67814730 $y67914731 $n68014732))
        ($main_inv234 (+ $i67714729 1) $x67814730 $y67914731 $n68014732))))

; __VERIFIER_assert precondition
(assert
  (forall (($x67814734 Int) ($i67714733 Int) ($y67914735 Int) ($n68014736 Int))
    (=> (and ($main_sum234 $i67714733 $x67814734 $y67914735 $n68014736))
        ($__VERIFIER_assert_pre (ite (= $x67814734 0) 1 0)))))

(check-sat)
