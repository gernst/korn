(set-logic HORN)

(declare-fun $__VERIFIER_assert_if506 (Int) Bool)
(declare-fun $main_inv116 (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum116 (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13057 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13057))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if506 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13058 Int))
    (=> (and ($__VERIFIER_assert_if506 cond13058))
        (__VERIFIER_assert cond13058))))

; loop entry $main_inv116
(assert
  (forall (($x431 Int))
    (=> (and (= $x431 268435441))
        ($main_inv116 $x431))))

; loop term $main_sum116
(assert
  (forall (($x43113059 Int))
    (=> (and (not (> $x43113059 1))
             ($main_inv116 $x43113059))
        ($main_sum116 $x43113059))))

; forwards $main_inv116
(assert
  (forall (($x43113059 Int))
    (=> (and (> $x43113059 1)
             ($main_inv116 $x43113059))
        ($main_inv116 (- $x43113059 2)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x43113060 Int))
    (=> (and ($main_sum116 $x43113060))
        ($__VERIFIER_assert_pre (ite (= (mod $x43113060 2) 0) 1 0)))))

(check-sat)
