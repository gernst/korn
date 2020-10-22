(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum110 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if500 (Int Int) Bool)
(declare-fun $main_inv110 (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond13830 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond13830))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if500 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13831 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if500 cond cond13831))
        (__VERIFIER_assert cond13831))))

; loop entry $main_inv110
(assert
  (forall (($x423 Int))
    (=> (and (= $x423 0))
        ($main_inv110 $x423))))

; loop term $main_sum110
(assert
  (forall (($x42313832 Int))
    (=> (and (not (< $x42313832 268435455)))
        ($main_sum110 $x42313832 $x42313832))))

; forwards $main_inv110
(assert
  (forall (($x42313832 Int))
    (=> (and (< $x42313832 268435455)
             ($main_inv110 $x42313832))
        ($main_inv110 (+ $x42313832 2)))))

; backwards $main_sum110
(assert
  (forall (($x42313832 Int) ($x42313833 Int))
    (=> (and ($main_sum110 (+ $x42313832 2) $x42313833)
             (< $x42313832 268435455))
        ($main_sum110 $x42313832 $x42313833))))

; __VERIFIER_assert precondition
(assert
  (forall (($x42313834 Int) ($x423 Int))
    (=> (and ($main_sum110 $x423 $x42313834)
             (= $x423 0))
        ($__VERIFIER_assert_pre (mod $x42313834 2)))))

(check-sat)
