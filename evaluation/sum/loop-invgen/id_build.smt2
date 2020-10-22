(set-logic HORN)

(declare-fun $assume_abort_if_not_if218 (Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv463 (Int Int Int Int Int) Bool)
(declare-fun $main_sum462 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum463 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_inv462 (Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if219 (Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if218 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond8635 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if218 cond cond8635))
        (assume_abort_if_not cond8635))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond8636 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond8636))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if219 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond8637 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if219 cond cond8637))
        (__VERIFIER_assert cond8637))))

; loop entry $main_inv462
(assert
  (forall (($length594 Int) ($int8638 Int) ($j597 Int) ($offset593 Int) ($nlen595 Int))
    (=> (and (= $nlen595 $int8638)
             (<= (- 2147483648) $int8638)
             (<= $int8638 2147483647))
        ($main_inv462 $offset593 $length594 $nlen595 0 $j597))))

; loop term $main_sum462
(assert
  (forall (($j5978643 Int) ($length5948640 Int) ($nlen5958641 Int) ($offset5938639 Int) ($i5968642 Int))
    (=> (and (not (< $i5968642 $nlen5958641)))
        ($main_sum462 $offset5938639 $length5948640 $nlen5958641 $i5968642 $j5978643 $offset5938639 $length5948640 $nlen5958641 $i5968642 $j5978643))))

; loop entry $main_inv463
(assert
  (forall (($j5978643 Int) ($length5948640 Int) ($nlen5958641 Int) ($offset5938639 Int) ($i5968642 Int))
    (=> (and (< $i5968642 $nlen5958641)
             ($main_inv462 $offset5938639 $length5948640 $nlen5958641 $i5968642 $j5978643))
        ($main_inv463 $offset5938639 $length5948640 $nlen5958641 $i5968642 0))))

; loop term $main_sum463
(assert
  (forall (($offset5938644 Int) ($j5978648 Int) ($length5948645 Int) ($nlen5958646 Int) ($i5968647 Int))
    (=> (and (not (< $j5978648 8)))
        ($main_sum463 $offset5938644 $length5948645 $nlen5958646 $i5968647 $j5978648 $offset5938644 $length5948645 $nlen5958646 $i5968647 $j5978648))))

; __VERIFIER_assert precondition
(assert
  (forall (($offset5938644 Int) ($j5978648 Int) ($length5948645 Int) ($nlen5958646 Int) ($i5968647 Int))
    (=> (and (< $j5978648 8)
             ($main_inv463 $offset5938644 $length5948645 $nlen5958646 $i5968647 $j5978648))
        ($__VERIFIER_assert_pre (ite (<= 0 (- (- $nlen5958646 1) $i5968647)) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($offset5938644 Int) ($j5978648 Int) ($length5948645 Int) ($nlen5958646 Int) ($i5968647 Int))
    (=> (and (__VERIFIER_assert (ite (<= 0 (- (- $nlen5958646 1) $i5968647)) 1 0))
             (< $j5978648 8)
             ($main_inv463 $offset5938644 $length5948645 $nlen5958646 $i5968647 $j5978648))
        ($__VERIFIER_assert_pre (ite (< (- (- $nlen5958646 1) $i5968647) $nlen5958646) 1 0)))))

; forwards $main_inv463
(assert
  (forall (($offset5938644 Int) ($j5978648 Int) ($length5948645 Int) ($nlen5958646 Int) ($i5968647 Int))
    (=> (and (__VERIFIER_assert (ite (< (- (- $nlen5958646 1) $i5968647) $nlen5958646) 1 0))
             (__VERIFIER_assert (ite (<= 0 (- (- $nlen5958646 1) $i5968647)) 1 0))
             (< $j5978648 8)
             ($main_inv463 $offset5938644 $length5948645 $nlen5958646 $i5968647 $j5978648))
        ($main_inv463 $offset5938644 $length5948645 $nlen5958646 $i5968647 (+ $j5978648 1)))))

; backwards $main_sum463
(assert
  (forall (($i5968652 Int) ($offset5938649 Int) ($nlen5958651 Int) ($offset5938644 Int) ($j5978653 Int) ($length5948650 Int) ($j5978648 Int) ($length5948645 Int) ($nlen5958646 Int) ($i5968647 Int))
    (=> (and ($main_sum463 $offset5938644 $length5948645 $nlen5958646 $i5968647 (+ $j5978648 1) $offset5938649 $length5948650 $nlen5958651 $i5968652 $j5978653)
             (__VERIFIER_assert (ite (< (- (- $nlen5958646 1) $i5968647) $nlen5958646) 1 0))
             (__VERIFIER_assert (ite (<= 0 (- (- $nlen5958646 1) $i5968647)) 1 0))
             (< $j5978648 8))
        ($main_sum463 $offset5938644 $length5948645 $nlen5958646 $i5968647 $j5978648 $offset5938649 $length5948650 $nlen5958651 $i5968652 $j5978653))))

; forwards $main_inv462
(assert
  (forall (($offset5938654 Int) ($j5978643 Int) ($length5948640 Int) ($nlen5958641 Int) ($i5968657 Int) ($length5948655 Int) ($j5978658 Int) ($i5968642 Int) ($nlen5958656 Int) ($offset5938639 Int))
    (=> (and ($main_sum463 $offset5938639 $length5948640 $nlen5958641 $i5968642 0 $offset5938654 $length5948655 $nlen5958656 $i5968657 $j5978658)
             (< $i5968642 $nlen5958641)
             ($main_inv462 $offset5938639 $length5948640 $nlen5958641 $i5968642 $j5978643))
        ($main_inv462 $offset5938654 $length5948655 $nlen5958656 (+ $i5968657 1) $j5978658))))

; backwards $main_sum462
(assert
  (forall (($offset5938654 Int) ($j5978643 Int) ($nlen5958641 Int) ($i5968657 Int) ($j5978663 Int) ($length5948655 Int) ($j5978658 Int) ($i5968662 Int) ($offset5938659 Int) ($length5948660 Int) ($length5948640 Int) ($nlen5958656 Int) ($offset5938639 Int) ($nlen5958661 Int) ($i5968642 Int))
    (=> (and ($main_sum462 $offset5938654 $length5948655 $nlen5958656 (+ $i5968657 1) $j5978658 $offset5938659 $length5948660 $nlen5958661 $i5968662 $j5978663)
             ($main_sum463 $offset5938639 $length5948640 $nlen5958641 $i5968642 0 $offset5938654 $length5948655 $nlen5958656 $i5968657 $j5978658)
             (< $i5968642 $nlen5958641))
        ($main_sum462 $offset5938639 $length5948640 $nlen5958641 $i5968642 $j5978643 $offset5938659 $length5948660 $nlen5958661 $i5968662 $j5978663))))

(check-sat)
