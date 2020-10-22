(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv120 (Int Int) Bool)
(declare-fun $main_sum120 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if510 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond13896 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond13896))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if510 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13897 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if510 cond cond13897))
        (__VERIFIER_assert cond13897))))

; loop entry $main_inv120
(assert
  (forall (($x437 Int) ($y438 Int))
    (=> (and (= $y438 1)
             (= $x437 0))
        ($main_inv120 $x437 $y438))))

; loop term $main_sum120
(assert
  (forall (($x43713898 Int) ($y43813899 Int))
    (=> (and (not (< $x43713898 6)))
        ($main_sum120 $x43713898 $y43813899 $x43713898 $y43813899))))

; forwards $main_inv120
(assert
  (forall (($x43713898 Int) ($y43813899 Int))
    (=> (and (< $x43713898 6)
             ($main_inv120 $x43713898 $y43813899))
        ($main_inv120 (+ $x43713898 1) (* $y43813899 2)))))

; backwards $main_sum120
(assert
  (forall (($x43713898 Int) ($y43813899 Int) ($x43713900 Int) ($y43813901 Int))
    (=> (and ($main_sum120 (+ $x43713898 1) (* $y43813899 2) $x43713900 $y43813901)
             (< $x43713898 6))
        ($main_sum120 $x43713898 $y43813899 $x43713900 $y43813901))))

; __VERIFIER_assert precondition
(assert
  (forall (($x43713902 Int) ($x437 Int) ($y438 Int) ($y43813903 Int))
    (=> (and ($main_sum120 $x437 $y438 $x43713902 $y43813903)
             (= $y438 1)
             (= $x437 0))
        ($__VERIFIER_assert_pre (ite (not (= $x43713902 6)) 1 0)))))

(check-sat)
