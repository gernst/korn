(set-logic HORN)

(declare-fun $main_sum105 (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_if487 (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_inv105 (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond12987 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond12987))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if487 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond12988 Int))
    (=> (and ($__VERIFIER_assert_if487 cond12988))
        (__VERIFIER_assert cond12988))))

; loop entry $main_inv105
(assert
  (forall (($x416 Int))
    (=> (and (= $x416 10))
        ($main_inv105 $x416))))

; loop term $main_sum105
(assert
  (forall (($x41612989 Int))
    (=> (and (not (>= $x41612989 10))
             ($main_inv105 $x41612989))
        ($main_sum105 $x41612989))))

; forwards $main_inv105
(assert
  (forall (($x41612989 Int))
    (=> (and (>= $x41612989 10)
             ($main_inv105 $x41612989))
        ($main_inv105 (+ $x41612989 2)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x41612990 Int))
    (=> (and ($main_sum105 $x41612990))
        ($__VERIFIER_assert_pre (ite (= (mod $x41612990 2) 0) 1 0)))))

(check-sat)
