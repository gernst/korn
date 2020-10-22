(set-logic HORN)

(declare-fun $main_inv116 (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum116 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if506 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond13870 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond13870))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if506 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13871 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if506 cond cond13871))
        (__VERIFIER_assert cond13871))))

; loop entry $main_inv116
(assert
  (forall (($x431 Int))
    (=> (and (= $x431 268435441))
        ($main_inv116 $x431))))

; loop term $main_sum116
(assert
  (forall (($x43113872 Int))
    (=> (and (not (> $x43113872 1)))
        ($main_sum116 $x43113872 $x43113872))))

; forwards $main_inv116
(assert
  (forall (($x43113872 Int))
    (=> (and (> $x43113872 1)
             ($main_inv116 $x43113872))
        ($main_inv116 (- $x43113872 2)))))

; backwards $main_sum116
(assert
  (forall (($x43113872 Int) ($x43113873 Int))
    (=> (and ($main_sum116 (- $x43113872 2) $x43113873)
             (> $x43113872 1))
        ($main_sum116 $x43113872 $x43113873))))

; __VERIFIER_assert precondition
(assert
  (forall (($x43113874 Int) ($x431 Int))
    (=> (and ($main_sum116 $x431 $x43113874)
             (= $x431 268435441))
        ($__VERIFIER_assert_pre (ite (= (mod $x43113874 2) 0) 1 0)))))

(check-sat)
