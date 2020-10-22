(set-logic HORN)

(declare-fun $__VERIFIER_assert_if500 (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum110 (Int) Bool)
(declare-fun $main_inv110 (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13025 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13025))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if500 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13026 Int))
    (=> (and ($__VERIFIER_assert_if500 cond13026))
        (__VERIFIER_assert cond13026))))

; loop entry $main_inv110
(assert
  (forall (($x423 Int))
    (=> (and (= $x423 0))
        ($main_inv110 $x423))))

; loop term $main_sum110
(assert
  (forall (($x42313027 Int))
    (=> (and (not (< $x42313027 268435455))
             ($main_inv110 $x42313027))
        ($main_sum110 $x42313027))))

; forwards $main_inv110
(assert
  (forall (($x42313027 Int))
    (=> (and (< $x42313027 268435455)
             ($main_inv110 $x42313027))
        ($main_inv110 (+ $x42313027 2)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x42313028 Int))
    (=> (and ($main_sum110 $x42313028))
        ($__VERIFIER_assert_pre (mod $x42313028 2)))))

(check-sat)
