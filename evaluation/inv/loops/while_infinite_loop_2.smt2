(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum276 (Int) Bool)
(declare-fun $__VERIFIER_assert_if722 (Int) Bool)
(declare-fun $main_inv276 (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond15422 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15422))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if722 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond15423 Int))
    (=> (and ($__VERIFIER_assert_if722 cond15423))
        (__VERIFIER_assert cond15423))))

; loop entry $main_inv276
(assert
  (forall (($x777 Int))
    (=> (and (= $x777 0))
        ($main_inv276 $x777))))

; loop term $main_sum276
(assert
  (forall (($x77715424 Int))
    (=> (and (= 1 0)
             ($main_inv276 $x77715424))
        ($main_sum276 $x77715424))))

; __VERIFIER_assert precondition
(assert
  (forall (($x77715424 Int))
    (=> (and (not (= 1 0))
             ($main_inv276 $x77715424))
        ($__VERIFIER_assert_pre (ite (= $x77715424 0) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x77715425 Int))
    (=> (and ($main_sum276 $x77715425))
        ($__VERIFIER_assert_pre (ite (= $x77715425 0) 1 0)))))

(check-sat)
