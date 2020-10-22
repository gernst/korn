(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_if464 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv92 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum92 (Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond13660 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond13660))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if464 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13661 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if464 cond cond13661))
        (__VERIFIER_assert cond13661))))

; loop entry $main_inv92
(assert
  (forall (($x396 Int) ($y397 Int))
    (=> (and (= $y397 0)
             (= $x396 1))
        ($main_inv92 $x396 $y397))))

; loop term $main_sum92
(assert
  (forall (($x39613662 Int) ($y39713663 Int))
    (=> (and (not (< $y39713663 1024)))
        ($main_sum92 $x39613662 $y39713663 $x39613662 $y39713663))))

; forwards $main_inv92
(assert
  (forall (($y39713663 Int) ($x39613662 Int))
    (=> (and (< $y39713663 1024)
             ($main_inv92 $x39613662 $y39713663))
        ($main_inv92 0 (+ $y39713663 1)))))

; backwards $main_sum92
(assert
  (forall (($x39613662 Int) ($y39713663 Int) ($x39613664 Int) ($y39713665 Int))
    (=> (and ($main_sum92 0 (+ $y39713663 1) $x39613664 $y39713665)
             (< $y39713663 1024))
        ($main_sum92 $x39613662 $y39713663 $x39613664 $y39713665))))

; __VERIFIER_assert precondition
(assert
  (forall (($x39613666 Int) ($x396 Int) ($y397 Int) ($y39713667 Int))
    (=> (and ($main_sum92 $x396 $y397 $x39613666 $y39713667)
             (= $y397 0)
             (= $x396 1))
        ($__VERIFIER_assert_pre (ite (= $x39613666 0) 1 0)))))

(check-sat)
