(set-logic HORN)

(declare-fun $main_inv506 (Int) Bool)
(declare-fun $main_sum506 (Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $__VERIFIER_assert_if339 (Int) Bool)
(declare-fun $assume_abort_if_not_if338 (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if338 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond6909 Int))
    (=> (and ($assume_abort_if_not_if338 cond6909))
        (assume_abort_if_not cond6909))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond6910 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond6910))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if339 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6911 Int))
    (=> (and ($__VERIFIER_assert_if339 cond6911))
        (__VERIFIER_assert cond6911))))

; loop entry $main_inv506
(assert
        ($main_inv506 0))

; loop term $main_sum506
(assert
  (forall (($i7096912 Int))
    (=> (and (not (< $i7096912 1000000))
             ($main_inv506 $i7096912))
        ($main_sum506 $i7096912))))

; forwards $main_inv506
(assert
  (forall (($i7096912 Int))
    (=> (and (< $i7096912 1000000)
             ($main_inv506 $i7096912))
        ($main_inv506 (+ $i7096912 2)))))

; __VERIFIER_assert precondition
(assert
  (forall (($i7096913 Int))
    (=> (and ($main_sum506 $i7096913))
        ($__VERIFIER_assert_pre (ite (= $i7096913 1000000) 1 0)))))

(check-sat)
