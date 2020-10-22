(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv275 (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum275 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if721 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond16932 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond16932))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if721 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond16933 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if721 cond cond16933))
        (__VERIFIER_assert cond16933))))

; loop entry $main_inv275
(assert
  (forall (($x776 Int))
    (=> (and (= $x776 0))
        ($main_inv275 $x776))))

; loop term $main_sum275
(assert
  (forall (($x77616934 Int))
    (=> (and (= 1 0))
        ($main_sum275 $x77616934 $x77616934))))

; __VERIFIER_assert precondition
(assert
  (forall (($x77616934 Int))
    (=> (and (not (= 1 0))
             ($main_inv275 $x77616934))
        ($__VERIFIER_assert_pre (ite (= $x77616934 0) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x77616936 Int) ($x776 Int))
    (=> (and ($main_sum275 $x776 $x77616936)
             (= $x776 0))
        ($__VERIFIER_assert_pre (ite (not (= $x77616936 0)) 1 0)))))

(check-sat)
