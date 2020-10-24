(set-logic HORN)

(declare-fun $__VERIFIER_assert_if587 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum196 (Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_if589 (Int Int Int Int Int Int) Bool)
(declare-fun $main_inv196 (Int Int Int) Bool)
(declare-fun $main_if588 (Int Int Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond14893 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond14893))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if587 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14894 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if587 cond cond14894))
        (__VERIFIER_assert cond14894))))

; loop entry $main_inv196
(assert
  (forall (($y564 Int) ($z565 Int) ($x563 Int))
    (=> (and (= $z565 0)
             (= $y564 500000)
             (= $x563 0))
        ($main_inv196 0 $y564 $z565))))

; loop term $main_sum196
(assert
  (forall (($x56314895 Int) ($y56414896 Int) ($z56514897 Int))
    (=> (and (not (< $x56314895 1000000)))
        ($main_sum196 $x56314895 $y56414896 $z56514897 $x56314895 $y56414896 $z56514897))))

; if then
(assert
  (forall (($x56314895 Int) ($y56414896 Int) ($z56514897 Int))
    (=> (and (< $x56314895 750000)
             (not (< $x56314895 500000))
             (< $x56314895 1000000)
             ($main_inv196 $x56314895 $y56414896 $z56514897))
        ($main_if588 $x56314895 $y56414896 $z56514897 (+ $x56314895 1) $y56414896 $z56514897))))

; if else
(assert
  (forall (($x56314895 Int) ($y56414896 Int) ($z56514897 Int))
    (=> (and (not (< $x56314895 750000))
             (not (< $x56314895 500000))
             (< $x56314895 1000000)
             ($main_inv196 $x56314895 $y56414896 $z56514897))
        ($main_if588 $x56314895 $y56414896 $z56514897 (+ $x56314895 2) $y56414896 $z56514897))))

; if then
(assert
  (forall (($x56314895 Int) ($y56414896 Int) ($z56514897 Int))
    (=> (and (< $x56314895 500000)
             (< $x56314895 1000000)
             ($main_inv196 $x56314895 $y56414896 $z56514897))
        ($main_if589 $x56314895 $y56414896 $z56514897 (+ $x56314895 1) $y56414896 $z56514897))))

; if else
(assert
  (forall (($y56414899 Int) ($z56514900 Int) ($y56414896 Int) ($x56314898 Int) ($x56314895 Int) ($z56514897 Int))
    (=> (and ($main_if588 $x56314895 $y56414896 $z56514897 $x56314898 $y56414899 $z56514900))
        ($main_if589 $x56314895 $y56414896 $z56514897 $x56314898 (+ $y56414899 1) $z56514900))))

; forwards $main_inv196
(assert
  (forall (($x56314901 Int) ($z56514903 Int) ($y56414902 Int) ($y56414896 Int) ($x56314895 Int) ($z56514897 Int))
    (=> (and ($main_if589 $x56314895 $y56414896 $z56514897 $x56314901 $y56414902 $z56514903))
        ($main_inv196 $x56314901 $y56414902 $z56514903))))

; backwards $main_sum196
(assert
  (forall (($x56314901 Int) ($z56514903 Int) ($y56414905 Int) ($y56414902 Int) ($y56414896 Int) ($z56514906 Int) ($x56314904 Int) ($x56314895 Int) ($z56514897 Int))
    (=> (and ($main_sum196 $x56314901 $y56414902 $z56514903 $x56314904 $y56414905 $z56514906)
             ($main_if589 $x56314895 $y56414896 $z56514897 $x56314901 $y56414902 $z56514903))
        ($main_sum196 $x56314895 $y56414896 $z56514897 $x56314904 $y56414905 $z56514906))))

; __VERIFIER_assert precondition
(assert
  (forall (($z565 Int) ($x56314907 Int) ($x563 Int) ($y56414908 Int) ($y564 Int) ($z56514909 Int))
    (=> (and ($main_sum196 0 $y564 $z565 $x56314907 $y56414908 $z56514909)
             (= $z565 0)
             (= $y564 500000)
             (= $x563 0))
        ($__VERIFIER_assert_pre (ite (= $x56314907 1000000) 1 0)))))

(check-sat)
