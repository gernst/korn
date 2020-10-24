(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv111 (Int) Bool)
(declare-fun $__VERIFIER_assert_if501 (Int) Bool)
(declare-fun $main_sum111 (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13029 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13029))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if501 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13030 Int))
    (=> (and ($__VERIFIER_assert_if501 cond13030))
        (__VERIFIER_assert cond13030))))

; loop entry $main_inv111
(assert
  (forall (($x424 Int))
    (=> (and (= $x424 0))
        ($main_inv111 $x424))))

; loop term $main_sum111
(assert
  (forall (($x42413031 Int))
    (=> (and (not (< $x42413031 268435455))
             ($main_inv111 $x42413031))
        ($main_sum111 $x42413031))))

; forwards $main_inv111
(assert
  (forall (($x42413031 Int))
    (=> (and (< $x42413031 268435455)
             ($main_inv111 $x42413031))
        ($main_inv111 (+ $x42413031 2)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x42413032 Int))
    (=> (and ($main_sum111 $x42413032))
        ($__VERIFIER_assert_pre (ite (= (mod $x42413032 2) 0) 1 0)))))

(check-sat)
