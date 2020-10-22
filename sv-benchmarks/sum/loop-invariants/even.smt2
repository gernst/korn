(set-logic HORN)

(declare-fun $main_inv128 (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum128 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if525 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond13999 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond13999))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if525 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14000 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if525 cond cond14000))
        (__VERIFIER_assert cond14000))))

; loop entry $main_inv128
(assert
  (forall (($x458 Int))
    (=> (and (= $x458 0))
        ($main_inv128 $x458))))

; loop term $main_sum128
(assert
  (forall (($x45814001 Int) ($int14002 Int))
    (=> (and (= $int14002 0)
             (<= (- 2147483648) $int14002)
             (<= $int14002 2147483647))
        ($main_sum128 $x45814001 $x45814001))))

; forwards $main_inv128
(assert
  (forall (($x45814001 Int) ($int14002 Int))
    (=> (and (not (= $int14002 0))
             (<= (- 2147483648) $int14002)
             (<= $int14002 2147483647)
             ($main_inv128 $x45814001))
        ($main_inv128 (+ $x45814001 2)))))

; backwards $main_sum128
(assert
  (forall (($x45814001 Int) ($x45814003 Int) ($int14002 Int))
    (=> (and ($main_sum128 (+ $x45814001 2) $x45814003)
             (not (= $int14002 0))
             (<= (- 2147483648) $int14002)
             (<= $int14002 2147483647))
        ($main_sum128 $x45814001 $x45814003))))

; __VERIFIER_assert precondition
(assert
  (forall (($x45814004 Int) ($x458 Int))
    (=> (and ($main_sum128 $x458 $x45814004)
             (= $x458 0))
        ($__VERIFIER_assert_pre (ite (= (mod $x45814004 2) 0) 1 0)))))

(check-sat)
