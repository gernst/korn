(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv504 (Int) Bool)
(declare-fun $assume_abort_if_not_if334 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if335 (Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_sum504 (Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if334 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond9657 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if334 cond cond9657))
        (assume_abort_if_not cond9657))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond9658 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond9658))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if335 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond9659 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if335 cond cond9659))
        (__VERIFIER_assert cond9659))))

; loop entry $main_inv504
(assert
        ($main_inv504 0))

; loop term $main_sum504
(assert
  (forall (($i7079660 Int))
    (=> (and (not (< $i7079660 1000000)))
        ($main_sum504 $i7079660 $i7079660))))

; forwards $main_inv504
(assert
  (forall (($i7079660 Int))
    (=> (and (< $i7079660 1000000)
             ($main_inv504 $i7079660))
        ($main_inv504 (+ $i7079660 1)))))

; backwards $main_sum504
(assert
  (forall (($i7079660 Int) ($i7079661 Int))
    (=> (and ($main_sum504 (+ $i7079660 1) $i7079661)
             (< $i7079660 1000000))
        ($main_sum504 $i7079660 $i7079661))))

; __VERIFIER_assert precondition
(assert
  (forall (($i7079662 Int))
    (=> (and ($main_sum504 0 $i7079662))
        ($__VERIFIER_assert_pre (ite (= $i7079662 1000000) 1 0)))))

(check-sat)
