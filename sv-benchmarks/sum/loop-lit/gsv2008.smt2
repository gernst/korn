(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_sum500 (Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_if320 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv500 (Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $assume_abort_if_not_if318 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if319 (Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if318 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond9560 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if318 cond cond9560))
        (assume_abort_if_not cond9560))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond9561 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond9561))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if319 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond9562 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if319 cond cond9562))
        (__VERIFIER_assert cond9562))))

; if else
(assert
  (forall (($x692 Int) ($y693 Int) ($int9563 Int))
    (=> (and (< (- 1000) $int9563)
             (< $int9563 1000000)
             (<= (- 2147483648) $int9563)
             (<= $int9563 2147483647))
        ($main_if320 $x692 $y693 (- 50) $int9563))))

; loop entry $main_inv500
(assert
  (forall (($x6929564 Int) ($y6939565 Int) ($x692 Int) ($y693 Int))
    (=> (and ($main_if320 $x692 $y693 $x6929564 $y6939565))
        ($main_inv500 $x6929564 $y6939565))))

; loop term $main_sum500
(assert
  (forall (($x6929566 Int) ($y6939567 Int))
    (=> (and (not (< $x6929566 0)))
        ($main_sum500 $x6929566 $y6939567 $x6929566 $y6939567))))

; forwards $main_inv500
(assert
  (forall (($x6929566 Int) ($y6939567 Int))
    (=> (and (< $x6929566 0)
             ($main_inv500 $x6929566 $y6939567))
        ($main_inv500 (+ $x6929566 $y6939567) (+ $y6939567 1)))))

; backwards $main_sum500
(assert
  (forall (($x6929566 Int) ($y6939567 Int) ($x6929568 Int) ($y6939569 Int))
    (=> (and ($main_sum500 (+ $x6929566 $y6939567) (+ $y6939567 1) $x6929568 $y6939569)
             (< $x6929566 0))
        ($main_sum500 $x6929566 $y6939567 $x6929568 $y6939569))))

; __VERIFIER_assert precondition
(assert
  (forall (($y693 Int) ($x692 Int) ($y6939565 Int) ($y6939571 Int) ($x6929564 Int) ($x6929570 Int))
    (=> (and ($main_sum500 $x6929564 $y6939565 $x6929570 $y6939571)
             ($main_if320 $x692 $y693 $x6929564 $y6939565))
        ($__VERIFIER_assert_pre (ite (> $y6939571 0) 1 0)))))

(check-sat)
