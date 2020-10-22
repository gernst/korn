(set-logic HORN)

(declare-fun $main_if556 (Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if555 (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $assume_abort_if_not_if554 (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_if557 (Int Int Int) Bool)
(declare-fun $main_inv176 (Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_sum176 (Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if554 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond13631 Int))
    (=> (and ($assume_abort_if_not_if554 cond13631))
        (assume_abort_if_not cond13631))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13632 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13632))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if555 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13633 Int))
    (=> (and ($__VERIFIER_assert_if555 cond13633))
        (__VERIFIER_assert cond13633))))

; if else
(assert
  (forall (($int13634 Int) ($i526 Int) ($j527 Int))
    (=> (and (<= $int13634 50000001)
             (<= (- 2147483648) $int13634)
             (<= $int13634 2147483647))
        ($main_if556 $int13634 $i526 $j527))))

; loop entry $main_inv176
(assert
  (forall (($n52513635 Int) ($i52613636 Int) ($j52713637 Int))
    (=> (and ($main_if556 $n52513635 $i52613636 $j52713637))
        ($main_inv176 $n52513635 0 0))))

; loop term $main_sum176
(assert
  (forall (($n52513638 Int) ($i52613639 Int) ($j52713640 Int))
    (=> (and (not (< $i52613639 $n52513638))
             ($main_inv176 $n52513638 $i52613639 $j52713640))
        ($main_sum176 $n52513638 $i52613639 $j52713640))))

; if then
(assert
  (forall (($n52513638 Int) ($i52613639 Int) ($j52713640 Int) ($int13641 Int))
    (=> (and (not (= $int13641 0))
             (<= (- 2147483648) $int13641)
             (<= $int13641 2147483647)
             (< $i52613639 $n52513638)
             ($main_inv176 $n52513638 $i52613639 $j52713640))
        ($main_if557 $n52513638 (+ $i52613639 6) $j52713640))))

; if else
(assert
  (forall (($n52513638 Int) ($i52613639 Int) ($j52713640 Int) ($int13641 Int))
    (=> (and (= $int13641 0)
             (<= (- 2147483648) $int13641)
             (<= $int13641 2147483647)
             (< $i52613639 $n52513638)
             ($main_inv176 $n52513638 $i52613639 $j52713640))
        ($main_if557 $n52513638 (+ $i52613639 3) $j52713640))))

; forwards $main_inv176
(assert
  (forall (($n52513642 Int) ($i52613643 Int) ($j52713644 Int))
    (=> (and ($main_if557 $n52513642 $i52613643 $j52713644))
        ($main_inv176 $n52513642 $i52613643 $j52713644))))

; __VERIFIER_assert precondition
(assert
  (forall (($i52613646 Int) ($n52513645 Int) ($j52713647 Int))
    (=> (and ($main_sum176 $n52513645 $i52613646 $j52713647))
        ($__VERIFIER_assert_pre (ite (= (mod $i52613646 3) 0) 1 0)))))

(check-sat)
