(set-logic HORN)

(declare-fun $main_sum121 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if511 (Int) Bool)
(declare-fun $main_inv121 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13083 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13083))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if511 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13084 Int))
    (=> (and ($__VERIFIER_assert_if511 cond13084))
        (__VERIFIER_assert cond13084))))

; loop entry $main_inv121
(assert
  (forall (($x439 Int) ($y440 Int))
    (=> (and (= $y440 1)
             (= $x439 0))
        ($main_inv121 $x439 $y440))))

; loop term $main_sum121
(assert
  (forall (($x43913085 Int) ($y44013086 Int))
    (=> (and (not (< $x43913085 6))
             ($main_inv121 $x43913085 $y44013086))
        ($main_sum121 $x43913085 $y44013086))))

; forwards $main_inv121
(assert
  (forall (($x43913085 Int) ($y44013086 Int))
    (=> (and (< $x43913085 6)
             ($main_inv121 $x43913085 $y44013086))
        ($main_inv121 (+ $x43913085 1) (* $y44013086 2)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x43913087 Int) ($y44013088 Int))
    (=> (and ($main_sum121 $x43913087 $y44013088))
        ($__VERIFIER_assert_pre (ite (= $x43913087 6) 1 0)))))

(check-sat)
