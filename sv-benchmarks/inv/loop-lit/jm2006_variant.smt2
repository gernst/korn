(set-logic HORN)

(declare-fun $main_sum503 (Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $assume_abort_if_not_if329 (Int) Bool)
(declare-fun $main_inv503 (Int Int Int Int Int) Bool)
(declare-fun $main_if332 (Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_if333 (Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_if331 (Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if330 (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if329 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond6869 Int))
    (=> (and ($assume_abort_if_not_if329 cond6869))
        (assume_abort_if_not cond6869))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond6870 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond6870))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if330 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6871 Int))
    (=> (and ($__VERIFIER_assert_if330 cond6871))
        (__VERIFIER_assert cond6871))))

; if else
(assert
  (forall (($int6873 Int) ($y705 Int) ($int6872 Int) ($z706 Int) ($x704 Int))
    (=> (and (>= $int6872 0)
             (<= $int6872 1000000)
             (<= (- 2147483648) $int6873)
             (<= $int6873 2147483647)
             (<= (- 2147483648) $int6872)
             (<= $int6872 2147483647))
        ($main_if331 $int6872 $int6873 $x704 $y705 $z706))))

; if else
(assert
  (forall (($x7046876 Int) ($y7056877 Int) ($z7066878 Int) ($j7036875 Int) ($i7026874 Int))
    (=> (and (>= $j7036875 0)
             ($main_if331 $i7026874 $j7036875 $x7046876 $y7056877 $z7066878))
        ($main_if332 $i7026874 $j7036875 $x7046876 $y7056877 $z7066878))))

; loop entry $main_inv503
(assert
  (forall (($z7066883 Int) ($i7026879 Int) ($j7036880 Int) ($y7056882 Int) ($x7046881 Int))
    (=> (and (= $z7066883 0)
             (= $y7056882 $j7036880)
             (= $x7046881 $i7026879)
             ($main_if332 $i7026879 $j7036880 $x7046881 $y7056882 $z7066883))
        ($main_inv503 $i7026879 $j7036880 $x7046881 $y7056882 $z7066883))))

; loop term $main_sum503
(assert
  (forall (($j7036885 Int) ($y7056887 Int) ($z7066888 Int) ($i7026884 Int) ($x7046886 Int))
    (=> (and (= $x7046886 0)
             ($main_inv503 $i7026884 $j7036885 $x7046886 $y7056887 $z7066888))
        ($main_sum503 $i7026884 $j7036885 $x7046886 $y7056887 $z7066888))))

; forwards $main_inv503
(assert
  (forall (($j7036885 Int) ($y7056887 Int) ($z7066888 Int) ($i7026884 Int) ($x7046886 Int))
    (=> (and (not (= $x7046886 0))
             ($main_inv503 $i7026884 $j7036885 $x7046886 $y7056887 $z7066888))
        ($main_inv503 $i7026884 $j7036885 (- $x7046886 1) (- $y7056887 2) (+ $z7066888 1)))))

; __VERIFIER_assert precondition
(assert
  (forall (($y7056892 Int) ($j7036890 Int) ($i7026889 Int) ($z7066893 Int) ($x7046891 Int))
    (=> (and (= $i7026889 $j7036890)
             ($main_sum503 $i7026889 $j7036890 $x7046891 $y7056892 $z7066893))
        ($__VERIFIER_assert_pre (ite (= $y7056892 (- $z7066893)) 1 0)))))

; if then
(assert
  (forall (($y7056892 Int) ($j7036890 Int) ($i7026889 Int) ($z7066893 Int) ($x7046891 Int))
    (=> (and (__VERIFIER_assert (ite (= $y7056892 (- $z7066893)) 1 0))
             (= $i7026889 $j7036890)
             ($main_sum503 $i7026889 $j7036890 $x7046891 $y7056892 $z7066893))
        ($main_if333 $i7026889 $j7036890 $x7046891 $y7056892 $z7066893))))

; if else
(assert
  (forall (($y7056892 Int) ($j7036890 Int) ($i7026889 Int) ($z7066893 Int) ($x7046891 Int))
    (=> (and (not (= $i7026889 $j7036890))
             ($main_sum503 $i7026889 $j7036890 $x7046891 $y7056892 $z7066893))
        ($main_if333 $i7026889 $j7036890 $x7046891 $y7056892 $z7066893))))

(check-sat)
