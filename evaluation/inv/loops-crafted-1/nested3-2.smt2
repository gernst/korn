(set-logic HORN)

(declare-fun $__VERIFIER_assert_if597 (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum206 (Int Int Int Int) Bool)
(declare-fun $main_inv206 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv204 (Int Int Int Int) Bool)
(declare-fun $main_sum204 (Int Int Int Int) Bool)
(declare-fun $main_inv205 (Int Int Int Int) Bool)
(declare-fun $main_sum205 (Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13892 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13892))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if597 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13893 Int))
    (=> (and ($__VERIFIER_assert_if597 cond13893))
        (__VERIFIER_assert cond13893))))

; loop entry $main_inv204
(assert
  (forall (($x578 Int) ($y579 Int) ($z580 Int) ($w581 Int))
    (=> (and (= $w581 0)
             (= $z580 0)
             (= $y579 0)
             (= $x578 0))
        ($main_inv204 $x578 $y579 $z580 $w581))))

; loop term $main_sum204
(assert
  (forall (($x57813894 Int) ($y57913895 Int) ($z58013896 Int) ($w58113897 Int))
    (=> (and (not (< $x57813894 268435455))
             ($main_inv204 $x57813894 $y57913895 $z58013896 $w58113897))
        ($main_sum204 $x57813894 $y57913895 $z58013896 $w58113897))))

; loop entry $main_inv205
(assert
  (forall (($x57813894 Int) ($z58013896 Int) ($w58113897 Int) ($y57913895 Int))
    (=> (and (< $x57813894 268435455)
             ($main_inv204 $x57813894 $y57913895 $z58013896 $w58113897))
        ($main_inv205 $x57813894 0 $z58013896 $w58113897))))

; loop term $main_sum205
(assert
  (forall (($x57813898 Int) ($y57913899 Int) ($z58013900 Int) ($w58113901 Int))
    (=> (and (not (< $y57913899 268435455))
             ($main_inv205 $x57813898 $y57913899 $z58013900 $w58113901))
        ($main_sum205 $x57813898 $y57913899 $z58013900 $w58113901))))

; loop entry $main_inv206
(assert
  (forall (($x57813898 Int) ($y57913899 Int) ($w58113901 Int) ($z58013900 Int))
    (=> (and (< $y57913899 268435455)
             ($main_inv205 $x57813898 $y57913899 $z58013900 $w58113901))
        ($main_inv206 $x57813898 $y57913899 0 $w58113901))))

; loop term $main_sum206
(assert
  (forall (($x57813902 Int) ($y57913903 Int) ($z58013904 Int) ($w58113905 Int))
    (=> (and (not (< $z58013904 268435455))
             ($main_inv206 $x57813902 $y57913903 $z58013904 $w58113905))
        ($main_sum206 $x57813902 $y57913903 $z58013904 $w58113905))))

; forwards $main_inv206
(assert
  (forall (($x57813902 Int) ($y57913903 Int) ($z58013904 Int) ($w58113905 Int))
    (=> (and (< $z58013904 268435455)
             ($main_inv206 $x57813902 $y57913903 $z58013904 $w58113905))
        ($main_inv206 $x57813902 $y57913903 (+ $z58013904 1) $w58113905))))

; __VERIFIER_assert precondition
(assert
  (forall (($z58013908 Int) ($x57813906 Int) ($y57913907 Int) ($w58113909 Int))
    (=> (and ($main_sum206 $x57813906 $y57913907 $z58013908 $w58113909))
        ($__VERIFIER_assert_pre (ite (= (mod $z58013908 4) 0) 1 0)))))

; forwards $main_inv205
(assert
  (forall (($x57813906 Int) ($y57913907 Int) ($z58013908 Int) ($w58113909 Int))
    (=> (and (__VERIFIER_assert (ite (= (mod $z58013908 4) 0) 1 0))
             ($main_sum206 $x57813906 $y57913907 $z58013908 $w58113909))
        ($main_inv205 $x57813906 (+ $y57913907 1) $z58013908 $w58113909))))

; __VERIFIER_assert precondition
(assert
  (forall (($y57913911 Int) ($x57813910 Int) ($z58013912 Int) ($w58113913 Int))
    (=> (and ($main_sum205 $x57813910 $y57913911 $z58013912 $w58113913))
        ($__VERIFIER_assert_pre (ite (= (mod $y57913911 2) 0) 1 0)))))

; forwards $main_inv204
(assert
  (forall (($x57813910 Int) ($y57913911 Int) ($z58013912 Int) ($w58113913 Int))
    (=> (and (__VERIFIER_assert (ite (= (mod $y57913911 2) 0) 1 0))
             ($main_sum205 $x57813910 $y57913911 $z58013912 $w58113913))
        ($main_inv204 (+ $x57813910 1) $y57913911 $z58013912 $w58113913))))

; __VERIFIER_assert precondition
(assert
  (forall (($x57813914 Int) ($y57913915 Int) ($z58013916 Int) ($w58113917 Int))
    (=> (and ($main_sum204 $x57813914 $y57913915 $z58013916 $w58113917))
        ($__VERIFIER_assert_pre (ite (= (mod $x57813914 2) 0) 1 0)))))

(check-sat)
