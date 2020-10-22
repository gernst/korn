(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_if501 (Int Int) Bool)
(declare-fun $main_sum111 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv111 (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond13835 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond13835))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if501 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13836 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if501 cond cond13836))
        (__VERIFIER_assert cond13836))))

; loop entry $main_inv111
(assert
  (forall (($x424 Int))
    (=> (and (= $x424 0))
        ($main_inv111 $x424))))

; loop term $main_sum111
(assert
  (forall (($x42413837 Int))
    (=> (and (not (< $x42413837 268435455)))
        ($main_sum111 $x42413837 $x42413837))))

; forwards $main_inv111
(assert
  (forall (($x42413837 Int))
    (=> (and (< $x42413837 268435455)
             ($main_inv111 $x42413837))
        ($main_inv111 (+ $x42413837 2)))))

; backwards $main_sum111
(assert
  (forall (($x42413837 Int) ($x42413838 Int))
    (=> (and ($main_sum111 (+ $x42413837 2) $x42413838)
             (< $x42413837 268435455))
        ($main_sum111 $x42413837 $x42413838))))

; __VERIFIER_assert precondition
(assert
  (forall (($x42413839 Int) ($x424 Int))
    (=> (and ($main_sum111 $x424 $x42413839)
             (= $x424 0))
        ($__VERIFIER_assert_pre (ite (= (mod $x42413839 2) 0) 1 0)))))

(check-sat)
