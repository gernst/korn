(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_if285 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_if286 (Int Int Int Int) Bool)
(declare-fun $main_sum488 (Int Int Int Int) Bool)
(declare-fun $main_inv488 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $assume_abort_if_not_if283 (Int) Bool)
(declare-fun $__VERIFIER_assert_if284 (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if283 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond6648 Int))
    (=> (and ($assume_abort_if_not_if283 cond6648))
        (assume_abort_if_not cond6648))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond6649 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond6649))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if284 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6650 Int))
    (=> (and ($__VERIFIER_assert_if284 cond6650))
        (__VERIFIER_assert cond6650))))

; if else
(assert
  (forall (($int6651 Int))
    (=> (and (>= $int6651 0)
             (<= $int6651 1000000)
             (<= (- 2147483648) $int6651)
             (<= $int6651 2147483647))
        ($main_if285 0 $int6651 0 0))))

; loop entry $main_inv488
(assert
  (forall (($i6616652 Int) ($n6626653 Int) ($a6636654 Int) ($b6646655 Int))
    (=> (and ($main_if285 $i6616652 $n6626653 $a6636654 $b6646655))
        ($main_inv488 $i6616652 $n6626653 $a6636654 $b6646655))))

; loop term $main_sum488
(assert
  (forall (($i6616656 Int) ($n6626657 Int) ($a6636658 Int) ($b6646659 Int))
    (=> (and (not (< $i6616656 $n6626657))
             ($main_inv488 $i6616656 $n6626657 $a6636658 $b6646659))
        ($main_sum488 $i6616656 $n6626657 $a6636658 $b6646659))))

; if then
(assert
  (forall (($int6660 Int) ($i6616656 Int) ($b6646659 Int) ($n6626657 Int) ($a6636658 Int))
    (=> (and (not (= $int6660 0))
             (<= (- 2147483648) $int6660)
             (<= $int6660 2147483647)
             (< $i6616656 $n6626657)
             ($main_inv488 $i6616656 $n6626657 $a6636658 $b6646659))
        ($main_if286 $i6616656 $n6626657 (+ $a6636658 1) (+ $b6646659 2)))))

; if else
(assert
  (forall (($int6660 Int) ($i6616656 Int) ($b6646659 Int) ($n6626657 Int) ($a6636658 Int))
    (=> (and (= $int6660 0)
             (<= (- 2147483648) $int6660)
             (<= $int6660 2147483647)
             (< $i6616656 $n6626657)
             ($main_inv488 $i6616656 $n6626657 $a6636658 $b6646659))
        ($main_if286 $i6616656 $n6626657 (+ $a6636658 2) (+ $b6646659 1)))))

; forwards $main_inv488
(assert
  (forall (($i6616661 Int) ($n6626662 Int) ($a6636663 Int) ($b6646664 Int))
    (=> (and ($main_if286 $i6616661 $n6626662 $a6636663 $b6646664))
        ($main_inv488 (+ $i6616661 1) $n6626662 $a6636663 $b6646664))))

; __VERIFIER_assert precondition
(assert
  (forall (($a6636667 Int) ($b6646668 Int) ($n6626666 Int) ($i6616665 Int))
    (=> (and ($main_sum488 $i6616665 $n6626666 $a6636667 $b6646668))
        ($__VERIFIER_assert_pre (ite (= (+ $a6636667 $b6646668) (* 3 $n6626666)) 1 0)))))

(check-sat)
