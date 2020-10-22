(set-logic HORN)

(declare-fun $main_sum234 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_inv234 (Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_if671 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if670 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $assume_abort_if_not_if669 (Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if669 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond16012 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if669 cond cond16012))
        (assume_abort_if_not cond16012))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond16013 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond16013))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if670 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond16014 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if670 cond cond16014))
        (__VERIFIER_assert cond16014))))

; if else
(assert
  (forall (($int16015 Int) ($i677 Int) ($y679 Int) ($x678 Int) ($n680 Int))
    (=> (and (> $n680 0)
             (= $n680 $int16015)
             (<= (- 2147483648) $int16015)
             (<= $int16015 2147483647)
             (= $y679 0)
             (= $x678 0)
             (= $i677 0))
        ($main_if671 $i677 $x678 $y679 $n680 $i677 $x678 $y679 $n680))))

; loop entry $main_inv234
(assert
  (forall (($n68016019 Int) ($i67716016 Int) ($x67816017 Int) ($y679 Int) ($x678 Int) ($n680 Int) ($y67916018 Int) ($i677 Int))
    (=> (and ($main_if671 $i677 $x678 $y679 $n680 $i67716016 $x67816017 $y67916018 $n68016019))
        ($main_inv234 0 $x67816017 $y67916018 $n68016019))))

; loop term $main_sum234
(assert
  (forall (($i67716020 Int) ($x67816021 Int) ($y67916022 Int) ($n68016023 Int))
    (=> (and (= 1 0))
        ($main_sum234 $i67716020 $x67816021 $y67916022 $n68016023 $i67716020 $x67816021 $y67916022 $n68016023))))

; __VERIFIER_assert precondition
(assert
  (forall (($x67816021 Int) ($i67716020 Int) ($y67916022 Int) ($n68016023 Int))
    (=> (and (not (= 1 0))
             ($main_inv234 $i67716020 $x67816021 $y67916022 $n68016023))
        ($__VERIFIER_assert_pre (ite (= $x67816021 0) 1 0)))))

; forwards $main_inv234
(assert
  (forall (($i67716020 Int) ($x67816021 Int) ($y67916022 Int) ($n68016023 Int))
    (=> (and (__VERIFIER_assert (ite (= $x67816021 0) 1 0))
             (not (= 1 0))
             ($main_inv234 $i67716020 $x67816021 $y67916022 $n68016023))
        ($main_inv234 (+ $i67716020 1) $x67816021 $y67916022 $n68016023))))

; backwards $main_sum234
(assert
  (forall (($y67916022 Int) ($x67816025 Int) ($i67716024 Int) ($n68016027 Int) ($n68016023 Int) ($i67716020 Int) ($y67916026 Int) ($x67816021 Int))
    (=> (and ($main_sum234 (+ $i67716020 1) $x67816021 $y67916022 $n68016023 $i67716024 $x67816025 $y67916026 $n68016027)
             (__VERIFIER_assert (ite (= $x67816021 0) 1 0))
             (not (= 1 0)))
        ($main_sum234 $i67716020 $x67816021 $y67916022 $n68016023 $i67716024 $x67816025 $y67916026 $n68016027))))

; __VERIFIER_assert precondition
(assert
  (forall (($y67916030 Int) ($n68016019 Int) ($i67716016 Int) ($i67716028 Int) ($x67816017 Int) ($y679 Int) ($n680 Int) ($y67916018 Int) ($i677 Int) ($x67816029 Int) ($x678 Int) ($n68016031 Int))
    (=> (and ($main_sum234 0 $x67816017 $y67916018 $n68016019 $i67716028 $x67816029 $y67916030 $n68016031)
             ($main_if671 $i677 $x678 $y679 $n680 $i67716016 $x67816017 $y67916018 $n68016019))
        ($__VERIFIER_assert_pre (ite (= $x67816029 0) 1 0)))))

(check-sat)
