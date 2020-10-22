(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum484 (Int Int) Bool)
(declare-fun $main_if277 (Int Int) Bool)
(declare-fun $main_L1 (Int Int) Bool)
(declare-fun $main_inv484 (Int Int) Bool)
(declare-fun $main_inv483 (Int Int) Bool)
(declare-fun $main_STUCK (Int Int) Bool)
(declare-fun $assume_abort_if_not_if274 (Int) Bool)
(declare-fun $main_L2 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if275 (Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_L0 (Int Int) Bool)
(declare-fun $main_sum483 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_if276 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if274 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond6593 Int))
    (=> (and ($assume_abort_if_not_if274 cond6593))
        (assume_abort_if_not cond6593))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond6594 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond6594))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if275 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6595 Int))
    (=> (and ($__VERIFIER_assert_if275 cond6595))
        (__VERIFIER_assert cond6595))))

; label L0
(assert
  (forall (($i653 Int) ($j654 Int))
        ($main_L0 $i653 $j654)))

; label L1
(assert
  (forall (($j6546597 Int) ($i6536596 Int))
    (=> (and ($main_L0 $i6536596 $j6546597))
        ($main_L1 0 $j6546597))))

; loop entry $main_inv483
(assert
  (forall (($i6536598 Int) ($j6546599 Int))
    (=> (and ($main_L1 $i6536598 $j6546599))
        ($main_inv483 $i6536598 $j6546599))))

; loop term $main_sum483
(assert
  (forall (($i6536600 Int) ($j6546601 Int) ($int6602 Int))
    (=> (and (not (and (not (= $int6602 0)) (< $i6536600 1000000)))
             (<= (- 2147483648) $int6602)
             (<= $int6602 2147483647)
             ($main_inv483 $i6536600 $j6546601))
        ($main_sum483 $i6536600 $j6546601))))

; forwards $main_inv483
(assert
  (forall (($i6536600 Int) ($j6546601 Int) ($int6602 Int))
    (=> (and (not (= $int6602 0))
             (< $i6536600 1000000)
             (<= (- 2147483648) $int6602)
             (<= $int6602 2147483647)
             ($main_inv483 $i6536600 $j6546601))
        ($main_inv483 (+ $i6536600 1) $j6546601))))

; label STUCK
(assert
  (forall (($i6536603 Int) ($j6546604 Int))
    (=> (and (>= $i6536603 100)
             ($main_sum483 $i6536603 $j6546604))
        ($main_STUCK $i6536603 $j6546604))))

; if else
(assert
  (forall (($i6536603 Int) ($j6546604 Int))
    (=> (and (not (>= $i6536603 100))
             ($main_sum483 $i6536603 $j6546604))
        ($main_if276 $i6536603 $j6546604))))

; label L2
(assert
  (forall (($i6536607 Int) ($j6546608 Int))
    (=> (and ($main_if276 $i6536607 $j6546608))
        ($main_L2 $i6536607 0))))

; loop entry $main_inv484
(assert
  (forall (($i6536609 Int) ($j6546610 Int))
    (=> (and ($main_L2 $i6536609 $j6546610))
        ($main_inv484 $i6536609 $j6546610))))

; loop term $main_sum484
(assert
  (forall (($i6536611 Int) ($j6546612 Int) ($int6613 Int))
    (=> (and (not (and (not (= $int6613 0)) (< $i6536611 1000000)))
             (<= (- 2147483648) $int6613)
             (<= $int6613 2147483647)
             ($main_inv484 $i6536611 $j6546612))
        ($main_sum484 $i6536611 $j6546612))))

; forwards $main_inv484
(assert
  (forall (($i6536611 Int) ($j6546612 Int) ($int6613 Int))
    (=> (and (not (= $int6613 0))
             (< $i6536611 1000000)
             (<= (- 2147483648) $int6613)
             (<= $int6613 2147483647)
             ($main_inv484 $i6536611 $j6546612))
        ($main_inv484 (+ $i6536611 1) (+ $j6546612 1)))))

; goto STUCK
(assert
  (forall (($i6536614 Int) ($j6546615 Int))
    (=> (and (>= $j6546615 100)
             ($main_sum484 $i6536614 $j6546615))
        ($main_STUCK $i6536614 $j6546615))))

; if else
(assert
  (forall (($i6536614 Int) ($j6546615 Int))
    (=> (and (not (>= $j6546615 100))
             ($main_sum484 $i6536614 $j6546615))
        ($main_if277 $i6536614 $j6546615))))

; __VERIFIER_assert precondition
(assert
  (forall (($i6536616 Int) ($j6546617 Int))
    (=> (and ($main_if277 $i6536616 $j6546617))
        ($__VERIFIER_assert_pre (ite (< $i6536616 200) 1 0)))))

(check-sat)
