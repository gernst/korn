(set-logic HORN)

(declare-fun $__VERIFIER_assert_if722 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum276 (Int Int) Bool)
(declare-fun $main_inv276 (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond16937 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond16937))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if722 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond16938 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if722 cond cond16938))
        (__VERIFIER_assert cond16938))))

; loop entry $main_inv276
(assert
  (forall (($x777 Int))
    (=> (and (= $x777 0))
        ($main_inv276 $x777))))

; loop term $main_sum276
(assert
  (forall (($x77716939 Int))
    (=> (and (= 1 0))
        ($main_sum276 $x77716939 $x77716939))))

; __VERIFIER_assert precondition
(assert
  (forall (($x77716939 Int))
    (=> (and (not (= 1 0))
             ($main_inv276 $x77716939))
        ($__VERIFIER_assert_pre (ite (= $x77716939 0) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x77716941 Int) ($x777 Int))
    (=> (and ($main_sum276 $x777 $x77716941)
             (= $x777 0))
        ($__VERIFIER_assert_pre (ite (= $x77716941 0) 1 0)))))

(check-sat)
