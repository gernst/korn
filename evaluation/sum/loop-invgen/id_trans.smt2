(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_inv464 (Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_if221 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $assume_abort_if_not_if220 (Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_sum464 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if222 (Int Int Int Int Int Int Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if220 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond8669 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if220 cond cond8669))
        (assume_abort_if_not cond8669))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond8670 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond8670))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if221 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond8671 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if221 cond cond8671))
        (__VERIFIER_assert cond8671))))

; if else
(assert
  (forall (($k602 Int) ($material_length599 Int) ($int8673 Int) ($int8674 Int) ($j601 Int) ($idBitLength598 Int) ($nlen600 Int) ($int8672 Int))
    (=> (and (= $int8672 (div $int8673 32))
             (<= (- 2147483648) $int8674)
             (<= $int8674 2147483647)
             (<= (- 2147483648) $int8673)
             (<= $int8673 2147483647)
             (<= (- 2147483648) $int8672)
             (<= $int8672 2147483647))
        ($main_if222 $idBitLength598 $material_length599 $nlen600 $j601 $k602 $int8673 $int8674 $int8672 $j601 $k602))))

; loop entry $main_inv464
(assert
  (forall (($material_length599 Int) ($k6028679 Int) ($j601 Int) ($idBitLength598 Int) ($idBitLength5988675 Int) ($nlen6008677 Int) ($material_length5998676 Int) ($nlen600 Int) ($j6018678 Int) ($k602 Int))
    (=> (and ($main_if222 $idBitLength598 $material_length599 $nlen600 $j601 $k602 $idBitLength5988675 $material_length5998676 $nlen6008677 $j6018678 $k6028679))
        ($main_inv464 $idBitLength5988675 $material_length5998676 $nlen6008677 0 $k6028679))))

; loop term $main_sum464
(assert
  (forall (($idBitLength5988680 Int) ($k6028684 Int) ($nlen6008682 Int) ($j6018683 Int) ($material_length5998681 Int))
    (=> (and (not (and (< $j6018683 (div $idBitLength5988680 8)) (< $j6018683 $material_length5998681))))
        ($main_sum464 $idBitLength5988680 $material_length5998681 $nlen6008682 $j6018683 $k6028684 $idBitLength5988680 $material_length5998681 $nlen6008682 $j6018683 $k6028684))))

; __VERIFIER_assert precondition
(assert
  (forall (($idBitLength5988680 Int) ($k6028684 Int) ($nlen6008682 Int) ($j6018683 Int) ($material_length5998681 Int))
    (=> (and (< $j6018683 (div $idBitLength5988680 8))
             (< $j6018683 $material_length5998681)
             ($main_inv464 $idBitLength5988680 $material_length5998681 $nlen6008682 $j6018683 $k6028684))
        ($__VERIFIER_assert_pre (ite (<= 0 $j6018683) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($idBitLength5988680 Int) ($k6028684 Int) ($nlen6008682 Int) ($j6018683 Int) ($material_length5998681 Int))
    (=> (and (__VERIFIER_assert (ite (<= 0 $j6018683) 1 0))
             (< $j6018683 (div $idBitLength5988680 8))
             (< $j6018683 $material_length5998681)
             ($main_inv464 $idBitLength5988680 $material_length5998681 $nlen6008682 $j6018683 $k6028684))
        ($__VERIFIER_assert_pre (ite (< $j6018683 $material_length5998681) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($idBitLength5988680 Int) ($k6028684 Int) ($nlen6008682 Int) ($j6018683 Int) ($material_length5998681 Int))
    (=> (and (__VERIFIER_assert (ite (< $j6018683 $material_length5998681) 1 0))
             (__VERIFIER_assert (ite (<= 0 $j6018683) 1 0))
             (< $j6018683 (div $idBitLength5988680 8))
             (< $j6018683 $material_length5998681)
             ($main_inv464 $idBitLength5988680 $material_length5998681 $nlen6008682 $j6018683 $k6028684))
        ($__VERIFIER_assert_pre (ite (<= 0 (div $j6018683 4)) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($idBitLength5988680 Int) ($k6028684 Int) ($nlen6008682 Int) ($j6018683 Int) ($material_length5998681 Int))
    (=> (and (__VERIFIER_assert (ite (<= 0 (div $j6018683 4)) 1 0))
             (__VERIFIER_assert (ite (< $j6018683 $material_length5998681) 1 0))
             (__VERIFIER_assert (ite (<= 0 $j6018683) 1 0))
             (< $j6018683 (div $idBitLength5988680 8))
             (< $j6018683 $material_length5998681)
             ($main_inv464 $idBitLength5988680 $material_length5998681 $nlen6008682 $j6018683 $k6028684))
        ($__VERIFIER_assert_pre (ite (< (div $j6018683 4) $nlen6008682) 1 0)))))

; forwards $main_inv464
(assert
  (forall (($idBitLength5988680 Int) ($k6028684 Int) ($nlen6008682 Int) ($j6018683 Int) ($material_length5998681 Int))
    (=> (and (__VERIFIER_assert (ite (< (div $j6018683 4) $nlen6008682) 1 0))
             (__VERIFIER_assert (ite (<= 0 (div $j6018683 4)) 1 0))
             (__VERIFIER_assert (ite (< $j6018683 $material_length5998681) 1 0))
             (__VERIFIER_assert (ite (<= 0 $j6018683) 1 0))
             (< $j6018683 (div $idBitLength5988680 8))
             (< $j6018683 $material_length5998681)
             ($main_inv464 $idBitLength5988680 $material_length5998681 $nlen6008682 $j6018683 $k6028684))
        ($main_inv464 $idBitLength5988680 $material_length5998681 $nlen6008682 (+ $j6018683 1) $k6028684))))

; backwards $main_sum464
(assert
  (forall (($nlen6008687 Int) ($idBitLength5988685 Int) ($k6028684 Int) ($material_length5998686 Int) ($j6018688 Int) ($nlen6008682 Int) ($j6018683 Int) ($material_length5998681 Int) ($idBitLength5988680 Int) ($k6028689 Int))
    (=> (and ($main_sum464 $idBitLength5988680 $material_length5998681 $nlen6008682 (+ $j6018683 1) $k6028684 $idBitLength5988685 $material_length5998686 $nlen6008687 $j6018688 $k6028689)
             (__VERIFIER_assert (ite (< (div $j6018683 4) $nlen6008682) 1 0))
             (__VERIFIER_assert (ite (<= 0 (div $j6018683 4)) 1 0))
             (__VERIFIER_assert (ite (< $j6018683 $material_length5998681) 1 0))
             (__VERIFIER_assert (ite (<= 0 $j6018683) 1 0))
             (< $j6018683 (div $idBitLength5988680 8))
             (< $j6018683 $material_length5998681))
        ($main_sum464 $idBitLength5988680 $material_length5998681 $nlen6008682 $j6018683 $k6028684 $idBitLength5988685 $material_length5998686 $nlen6008687 $j6018688 $k6028689))))

(check-sat)
