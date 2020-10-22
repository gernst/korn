(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv275 (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if721 (Int) Bool)
(declare-fun $main_sum275 (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond15418 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15418))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if721 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond15419 Int))
    (=> (and ($__VERIFIER_assert_if721 cond15419))
        (__VERIFIER_assert cond15419))))

; loop entry $main_inv275
(assert
  (forall (($x776 Int))
    (=> (and (= $x776 0))
        ($main_inv275 $x776))))

; loop term $main_sum275
(assert
  (forall (($x77615420 Int))
    (=> (and (= 1 0)
             ($main_inv275 $x77615420))
        ($main_sum275 $x77615420))))

; __VERIFIER_assert precondition
(assert
  (forall (($x77615420 Int))
    (=> (and (not (= 1 0))
             ($main_inv275 $x77615420))
        ($__VERIFIER_assert_pre (ite (= $x77615420 0) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x77615421 Int))
    (=> (and ($main_sum275 $x77615421))
        ($__VERIFIER_assert_pre (ite (not (= $x77615421 0)) 1 0)))))

(check-sat)
