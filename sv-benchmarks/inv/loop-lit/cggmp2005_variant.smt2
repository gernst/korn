(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv493 (Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_if293 (Int Int Int) Bool)
(declare-fun $main_sum493 (Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $__VERIFIER_assert_if292 (Int) Bool)
(declare-fun $assume_abort_if_not_if291 (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if291 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond6697 Int))
    (=> (and ($assume_abort_if_not_if291 cond6697))
        (assume_abort_if_not cond6697))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond6698 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond6698))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if292 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6699 Int))
    (=> (and ($__VERIFIER_assert_if292 cond6699))
        (__VERIFIER_assert cond6699))))

; if else
(assert
  (forall (($int6700 Int) ($hi672 Int))
    (=> (and (> $int6700 0)
             (<= $int6700 1000000)
             (<= (- 2147483648) $int6700)
             (<= $int6700 2147483647))
        ($main_if293 0 $int6700 $hi672))))

; loop entry $main_inv493
(assert
  (forall (($lo6706701 Int) ($mid6716702 Int) ($hi6726703 Int))
    (=> (and ($main_if293 $lo6706701 $mid6716702 $hi6726703))
        ($main_inv493 $lo6706701 $mid6716702 (* 2 $mid6716702)))))

; loop term $main_sum493
(assert
  (forall (($lo6706704 Int) ($mid6716705 Int) ($hi6726706 Int))
    (=> (and (not (> $mid6716705 0))
             ($main_inv493 $lo6706704 $mid6716705 $hi6726706))
        ($main_sum493 $lo6706704 $mid6716705 $hi6726706))))

; forwards $main_inv493
(assert
  (forall (($lo6706704 Int) ($mid6716705 Int) ($hi6726706 Int))
    (=> (and (> $mid6716705 0)
             ($main_inv493 $lo6706704 $mid6716705 $hi6726706))
        ($main_inv493 (+ $lo6706704 1) (- $mid6716705 1) (- $hi6726706 1)))))

; __VERIFIER_assert precondition
(assert
  (forall (($lo6706707 Int) ($hi6726709 Int) ($mid6716708 Int))
    (=> (and ($main_sum493 $lo6706707 $mid6716708 $hi6726709))
        ($__VERIFIER_assert_pre (ite (= $lo6706707 $hi6726709) 1 0)))))

(check-sat)
