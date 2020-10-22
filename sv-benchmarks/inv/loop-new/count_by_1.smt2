(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv504 (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $assume_abort_if_not_if334 (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_sum504 (Int) Bool)
(declare-fun $__VERIFIER_assert_if335 (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if334 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond6899 Int))
    (=> (and ($assume_abort_if_not_if334 cond6899))
        (assume_abort_if_not cond6899))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond6900 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond6900))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if335 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6901 Int))
    (=> (and ($__VERIFIER_assert_if335 cond6901))
        (__VERIFIER_assert cond6901))))

; loop entry $main_inv504
(assert
        ($main_inv504 0))

; loop term $main_sum504
(assert
  (forall (($i7076902 Int))
    (=> (and (not (< $i7076902 1000000))
             ($main_inv504 $i7076902))
        ($main_sum504 $i7076902))))

; forwards $main_inv504
(assert
  (forall (($i7076902 Int))
    (=> (and (< $i7076902 1000000)
             ($main_inv504 $i7076902))
        ($main_inv504 (+ $i7076902 1)))))

; __VERIFIER_assert precondition
(assert
  (forall (($i7076903 Int))
    (=> (and ($main_sum504 $i7076903))
        ($__VERIFIER_assert_pre (ite (= $i7076903 1000000) 1 0)))))

(check-sat)
