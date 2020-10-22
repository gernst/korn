(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if326 (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_if328 (Int Int Int Int) Bool)
(declare-fun $main_inv502 (Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_if327 (Int Int Int Int) Bool)
(declare-fun $main_sum502 (Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_if325 (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if325 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond6848 Int))
    (=> (and ($assume_abort_if_not_if325 cond6848))
        (assume_abort_if_not cond6848))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond6849 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond6849))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if326 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6850 Int))
    (=> (and ($__VERIFIER_assert_if326 cond6850))
        (__VERIFIER_assert cond6850))))

; if else
(assert
  (forall (($int6851 Int) ($int6852 Int) ($x700 Int) ($y701 Int))
    (=> (and (>= $int6851 0)
             (>= $int6852 0)
             (<= (- 2147483648) $int6852)
             (<= $int6852 2147483647)
             (<= (- 2147483648) $int6851)
             (<= $int6851 2147483647))
        ($main_if327 $int6851 $int6852 $x700 $y701))))

; loop entry $main_inv502
(assert
  (forall (($i6986853 Int) ($j6996854 Int) ($x7006855 Int) ($y7016856 Int))
    (=> (and (= $y7016856 $j6996854)
             (= $x7006855 $i6986853)
             ($main_if327 $i6986853 $j6996854 $x7006855 $y7016856))
        ($main_inv502 $i6986853 $j6996854 $x7006855 $y7016856))))

; loop term $main_sum502
(assert
  (forall (($i6986857 Int) ($j6996858 Int) ($x7006859 Int) ($y7016860 Int))
    (=> (and (= $x7006859 0)
             ($main_inv502 $i6986857 $j6996858 $x7006859 $y7016860))
        ($main_sum502 $i6986857 $j6996858 $x7006859 $y7016860))))

; forwards $main_inv502
(assert
  (forall (($i6986857 Int) ($j6996858 Int) ($x7006859 Int) ($y7016860 Int))
    (=> (and (not (= $x7006859 0))
             ($main_inv502 $i6986857 $j6996858 $x7006859 $y7016860))
        ($main_inv502 $i6986857 $j6996858 (- $x7006859 1) (- $y7016860 1)))))

; __VERIFIER_assert precondition
(assert
  (forall (($y7016864 Int) ($i6986861 Int) ($j6996862 Int) ($x7006863 Int))
    (=> (and (= $i6986861 $j6996862)
             ($main_sum502 $i6986861 $j6996862 $x7006863 $y7016864))
        ($__VERIFIER_assert_pre (ite (= $y7016864 0) 1 0)))))

; if then
(assert
  (forall (($i6986861 Int) ($j6996862 Int) ($x7006863 Int) ($y7016864 Int))
    (=> (and (__VERIFIER_assert (ite (= $y7016864 0) 1 0))
             (= $i6986861 $j6996862)
             ($main_sum502 $i6986861 $j6996862 $x7006863 $y7016864))
        ($main_if328 $i6986861 $j6996862 $x7006863 $y7016864))))

; if else
(assert
  (forall (($i6986861 Int) ($j6996862 Int) ($x7006863 Int) ($y7016864 Int))
    (=> (and (not (= $i6986861 $j6996862))
             ($main_sum502 $i6986861 $j6996862 $x7006863 $y7016864))
        ($main_if328 $i6986861 $j6996862 $x7006863 $y7016864))))

(check-sat)
