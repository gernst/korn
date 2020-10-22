(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $assume_abort_if_not_if336 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum505 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_inv505 (Int) Bool)
(declare-fun $__VERIFIER_assert_if337 (Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if336 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond9663 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if336 cond cond9663))
        (assume_abort_if_not cond9663))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond9664 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond9664))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if337 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond9665 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if337 cond cond9665))
        (__VERIFIER_assert cond9665))))

; loop entry $main_inv505
(assert
        ($main_inv505 0))

; loop term $main_sum505
(assert
  (forall (($i7089666 Int))
    (=> (and (= $i7089666 1000000))
        ($main_sum505 $i7089666 $i7089666))))

; __VERIFIER_assert precondition
(assert
  (forall (($i7089666 Int))
    (=> (and (not (= $i7089666 1000000))
             ($main_inv505 $i7089666))
        ($__VERIFIER_assert_pre (ite (<= $i7089666 1000000) 1 0)))))

; forwards $main_inv505
(assert
  (forall (($i7089666 Int))
    (=> (and (__VERIFIER_assert (ite (<= $i7089666 1000000) 1 0))
             (not (= $i7089666 1000000))
             ($main_inv505 $i7089666))
        ($main_inv505 (+ $i7089666 1)))))

; backwards $main_sum505
(assert
  (forall (($i7089666 Int) ($i7089667 Int))
    (=> (and ($main_sum505 (+ $i7089666 1) $i7089667)
             (__VERIFIER_assert (ite (<= $i7089666 1000000) 1 0))
             (not (= $i7089666 1000000)))
        ($main_sum505 $i7089666 $i7089667))))

(check-sat)
