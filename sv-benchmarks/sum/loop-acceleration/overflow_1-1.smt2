(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv105 (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if487 (Int Int) Bool)
(declare-fun $main_sum105 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond13785 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond13785))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if487 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13786 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if487 cond cond13786))
        (__VERIFIER_assert cond13786))))

; loop entry $main_inv105
(assert
  (forall (($x416 Int))
    (=> (and (= $x416 10))
        ($main_inv105 $x416))))

; loop term $main_sum105
(assert
  (forall (($x41613787 Int))
    (=> (and (not (>= $x41613787 10)))
        ($main_sum105 $x41613787 $x41613787))))

; forwards $main_inv105
(assert
  (forall (($x41613787 Int))
    (=> (and (>= $x41613787 10)
             ($main_inv105 $x41613787))
        ($main_inv105 (+ $x41613787 2)))))

; backwards $main_sum105
(assert
  (forall (($x41613787 Int) ($x41613788 Int))
    (=> (and ($main_sum105 (+ $x41613787 2) $x41613788)
             (>= $x41613787 10))
        ($main_sum105 $x41613787 $x41613788))))

; __VERIFIER_assert precondition
(assert
  (forall (($x41613789 Int) ($x416 Int))
    (=> (and ($main_sum105 $x416 $x41613789)
             (= $x416 10))
        ($__VERIFIER_assert_pre (ite (= (mod $x41613789 2) 0) 1 0)))))

(check-sat)
