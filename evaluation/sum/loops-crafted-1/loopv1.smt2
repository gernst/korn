(set-logic HORN)

(declare-fun $main_if556 (Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_if557 (Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if555 (Int Int) Bool)
(declare-fun $main_inv176 (Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_sum176 (Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_if554 (Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if554 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond14654 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if554 cond cond14654))
        (assume_abort_if_not cond14654))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond14655 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond14655))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if555 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14656 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if555 cond cond14656))
        (__VERIFIER_assert cond14656))))

; if else
(assert
  (forall (($n525 Int) ($i526 Int) ($j527 Int) ($int14657 Int))
    (=> (and (<= $int14657 50000001)
             (<= (- 2147483648) $int14657)
             (<= $int14657 2147483647))
        ($main_if556 $n525 $i526 $j527 $int14657 $i526 $j527))))

; loop entry $main_inv176
(assert
  (forall (($i52614659 Int) ($j52714660 Int) ($j527 Int) ($n52514658 Int) ($n525 Int) ($i526 Int))
    (=> (and ($main_if556 $n525 $i526 $j527 $n52514658 $i52614659 $j52714660))
        ($main_inv176 $n52514658 0 0))))

; loop term $main_sum176
(assert
  (forall (($n52514661 Int) ($i52614662 Int) ($j52714663 Int))
    (=> (and (not (< $i52614662 $n52514661)))
        ($main_sum176 $n52514661 $i52614662 $j52714663 $n52514661 $i52614662 $j52714663))))

; if then
(assert
  (forall (($n52514661 Int) ($i52614662 Int) ($j52714663 Int) ($int14664 Int))
    (=> (and (not (= $int14664 0))
             (<= (- 2147483648) $int14664)
             (<= $int14664 2147483647)
             (< $i52614662 $n52514661)
             ($main_inv176 $n52514661 $i52614662 $j52714663))
        ($main_if557 $n52514661 $i52614662 $j52714663 $n52514661 (+ $i52614662 6) $j52714663))))

; if else
(assert
  (forall (($n52514661 Int) ($i52614662 Int) ($j52714663 Int) ($int14664 Int))
    (=> (and (= $int14664 0)
             (<= (- 2147483648) $int14664)
             (<= $int14664 2147483647)
             (< $i52614662 $n52514661)
             ($main_inv176 $n52514661 $i52614662 $j52714663))
        ($main_if557 $n52514661 $i52614662 $j52714663 $n52514661 (+ $i52614662 3) $j52714663))))

; forwards $main_inv176
(assert
  (forall (($n52514661 Int) ($i52614666 Int) ($j52714667 Int) ($i52614662 Int) ($j52714663 Int) ($n52514665 Int))
    (=> (and ($main_if557 $n52514661 $i52614662 $j52714663 $n52514665 $i52614666 $j52714667))
        ($main_inv176 $n52514665 $i52614666 $j52714667))))

; backwards $main_sum176
(assert
  (forall (($n52514661 Int) ($i52614666 Int) ($j52714667 Int) ($i52614662 Int) ($j52714663 Int) ($n52514665 Int) ($n52514668 Int) ($j52714670 Int) ($i52614669 Int))
    (=> (and ($main_sum176 $n52514665 $i52614666 $j52714667 $n52514668 $i52614669 $j52714670)
             ($main_if557 $n52514661 $i52614662 $j52714663 $n52514665 $i52614666 $j52714667))
        ($main_sum176 $n52514661 $i52614662 $j52714663 $n52514668 $i52614669 $j52714670))))

; __VERIFIER_assert precondition
(assert
  (forall (($i52614672 Int) ($i52614659 Int) ($j52714660 Int) ($j52714673 Int) ($j527 Int) ($n52514658 Int) ($n52514671 Int) ($n525 Int) ($i526 Int))
    (=> (and ($main_sum176 $n52514658 0 0 $n52514671 $i52614672 $j52714673)
             ($main_if556 $n525 $i526 $j527 $n52514658 $i52614659 $j52714660))
        ($__VERIFIER_assert_pre (ite (= (mod $i52614672 3) 0) 1 0)))))

(check-sat)
