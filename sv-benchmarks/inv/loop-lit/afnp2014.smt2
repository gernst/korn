(set-logic HORN)

(declare-fun $__VERIFIER_assert_if281 (Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_inv487 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $assume_abort_if_not_if280 (Int) Bool)
(declare-fun $main_if282 (Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_sum487 (Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if280 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond6638 Int))
    (=> (and ($assume_abort_if_not_if280 cond6638))
        (assume_abort_if_not cond6638))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond6639 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond6639))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if281 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6640 Int))
    (=> (and ($__VERIFIER_assert_if281 cond6640))
        (__VERIFIER_assert cond6640))))

; loop entry $main_inv487
(assert
  (forall (($x659 Int) ($y660 Int))
    (=> (and (= $y660 0)
             (= $x659 1))
        ($main_inv487 $x659 $y660))))

; and left
(assert
  (forall (($x6596641 Int) ($y6606642 Int))
    (=> (and ($main_inv487 $x6596641 $y6606642))
        ($main_if282 $x6596641 $y6606642))))

; and right
(assert
  (forall (($x6596641 Int) ($y6606642 Int) ($int6643 Int))
    (=> (and (<= (- 2147483648) $int6643)
             (<= $int6643 2147483647)
             (< $y6606642 1000)
             ($main_inv487 $x6596641 $y6606642))
        ($main_if282 $x6596641 $y6606642))))

; loop term $main_sum487
(assert
  (forall (($x6596644 Int) ($y6606645 Int) ($y6606642 Int) ($int6643 Int))
    (=> (and (not (and (< $y6606642 1000) (not (= $int6643 0))))
             ($main_if282 $x6596644 $y6606645))
        ($main_sum487 $x6596644 $y6606645))))

; forwards $main_inv487
(assert
  (forall (($x6596644 Int) ($y6606645 Int) ($y6606642 Int) ($int6643 Int))
    (=> (and (< $y6606642 1000)
             (not (= $int6643 0))
             ($main_if282 $x6596644 $y6606645))
        ($main_inv487 (+ $x6596644 $y6606645) (+ $y6606645 1)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x6596646 Int) ($y6606647 Int))
    (=> (and ($main_sum487 $x6596646 $y6606647))
        ($__VERIFIER_assert_pre (ite (>= $x6596646 $y6606647) 1 0)))))

(check-sat)
