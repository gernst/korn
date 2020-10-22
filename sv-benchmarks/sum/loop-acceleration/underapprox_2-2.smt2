(set-logic HORN)

(declare-fun $main_sum121 (Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if511 (Int Int) Bool)
(declare-fun $main_inv121 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond13904 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond13904))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if511 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13905 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if511 cond cond13905))
        (__VERIFIER_assert cond13905))))

; loop entry $main_inv121
(assert
  (forall (($x439 Int) ($y440 Int))
    (=> (and (= $y440 1)
             (= $x439 0))
        ($main_inv121 $x439 $y440))))

; loop term $main_sum121
(assert
  (forall (($x43913906 Int) ($y44013907 Int))
    (=> (and (not (< $x43913906 6)))
        ($main_sum121 $x43913906 $y44013907 $x43913906 $y44013907))))

; forwards $main_inv121
(assert
  (forall (($x43913906 Int) ($y44013907 Int))
    (=> (and (< $x43913906 6)
             ($main_inv121 $x43913906 $y44013907))
        ($main_inv121 (+ $x43913906 1) (* $y44013907 2)))))

; backwards $main_sum121
(assert
  (forall (($x43913906 Int) ($y44013907 Int) ($x43913908 Int) ($y44013909 Int))
    (=> (and ($main_sum121 (+ $x43913906 1) (* $y44013907 2) $x43913908 $y44013909)
             (< $x43913906 6))
        ($main_sum121 $x43913906 $y44013907 $x43913908 $y44013909))))

; __VERIFIER_assert precondition
(assert
  (forall (($x43913910 Int) ($x439 Int) ($y440 Int) ($y44013911 Int))
    (=> (and ($main_sum121 $x439 $y440 $x43913910 $y44013911)
             (= $y440 1)
             (= $x439 0))
        ($__VERIFIER_assert_pre (ite (= $x43913910 6) 1 0)))))

(check-sat)
