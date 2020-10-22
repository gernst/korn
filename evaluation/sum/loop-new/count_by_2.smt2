(set-logic HORN)

(declare-fun $main_inv506 (Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $assume_abort_if_not_if338 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_sum506 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if339 (Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if338 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond9669 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if338 cond cond9669))
        (assume_abort_if_not cond9669))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond9670 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond9670))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if339 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond9671 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if339 cond cond9671))
        (__VERIFIER_assert cond9671))))

; loop entry $main_inv506
(assert
        ($main_inv506 0))

; loop term $main_sum506
(assert
  (forall (($i7099672 Int))
    (=> (and (not (< $i7099672 1000000)))
        ($main_sum506 $i7099672 $i7099672))))

; forwards $main_inv506
(assert
  (forall (($i7099672 Int))
    (=> (and (< $i7099672 1000000)
             ($main_inv506 $i7099672))
        ($main_inv506 (+ $i7099672 2)))))

; backwards $main_sum506
(assert
  (forall (($i7099672 Int) ($i7099673 Int))
    (=> (and ($main_sum506 (+ $i7099672 2) $i7099673)
             (< $i7099672 1000000))
        ($main_sum506 $i7099672 $i7099673))))

; __VERIFIER_assert precondition
(assert
  (forall (($i7099674 Int))
    (=> (and ($main_sum506 0 $i7099674))
        ($__VERIFIER_assert_pre (ite (= $i7099674 1000000) 1 0)))))

(check-sat)
