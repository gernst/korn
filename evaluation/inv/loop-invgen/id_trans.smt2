(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_inv464 (Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $assume_abort_if_not_if220 (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if221 (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_sum464 (Int Int Int Int Int) Bool)
(declare-fun $main_if222 (Int Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if220 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond6085 Int))
    (=> (and ($assume_abort_if_not_if220 cond6085))
        (assume_abort_if_not cond6085))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond6086 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond6086))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if221 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6087 Int))
    (=> (and ($__VERIFIER_assert_if221 cond6087))
        (__VERIFIER_assert cond6087))))

; if else
(assert
  (forall (($k602 Int) ($int6089 Int) ($int6090 Int) ($j601 Int) ($int6088 Int))
    (=> (and (= $int6088 (div $int6089 32))
             (<= (- 2147483648) $int6090)
             (<= $int6090 2147483647)
             (<= (- 2147483648) $int6089)
             (<= $int6089 2147483647)
             (<= (- 2147483648) $int6088)
             (<= $int6088 2147483647))
        ($main_if222 $int6089 $int6090 $int6088 $j601 $k602))))

; loop entry $main_inv464
(assert
  (forall (($material_length5996092 Int) ($nlen6006093 Int) ($k6026095 Int) ($idBitLength5986091 Int) ($j6016094 Int))
    (=> (and ($main_if222 $idBitLength5986091 $material_length5996092 $nlen6006093 $j6016094 $k6026095))
        ($main_inv464 $idBitLength5986091 $material_length5996092 $nlen6006093 0 $k6026095))))

; loop term $main_sum464
(assert
  (forall (($k6026100 Int) ($nlen6006098 Int) ($material_length5996097 Int) ($idBitLength5986096 Int) ($j6016099 Int))
    (=> (and (not (and (< $j6016099 (div $idBitLength5986096 8)) (< $j6016099 $material_length5996097)))
             ($main_inv464 $idBitLength5986096 $material_length5996097 $nlen6006098 $j6016099 $k6026100))
        ($main_sum464 $idBitLength5986096 $material_length5996097 $nlen6006098 $j6016099 $k6026100))))

; __VERIFIER_assert precondition
(assert
  (forall (($k6026100 Int) ($nlen6006098 Int) ($material_length5996097 Int) ($idBitLength5986096 Int) ($j6016099 Int))
    (=> (and (< $j6016099 (div $idBitLength5986096 8))
             (< $j6016099 $material_length5996097)
             ($main_inv464 $idBitLength5986096 $material_length5996097 $nlen6006098 $j6016099 $k6026100))
        ($__VERIFIER_assert_pre (ite (<= 0 $j6016099) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($k6026100 Int) ($nlen6006098 Int) ($material_length5996097 Int) ($idBitLength5986096 Int) ($j6016099 Int))
    (=> (and (__VERIFIER_assert (ite (<= 0 $j6016099) 1 0))
             (< $j6016099 (div $idBitLength5986096 8))
             (< $j6016099 $material_length5996097)
             ($main_inv464 $idBitLength5986096 $material_length5996097 $nlen6006098 $j6016099 $k6026100))
        ($__VERIFIER_assert_pre (ite (< $j6016099 $material_length5996097) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($k6026100 Int) ($nlen6006098 Int) ($material_length5996097 Int) ($idBitLength5986096 Int) ($j6016099 Int))
    (=> (and (__VERIFIER_assert (ite (< $j6016099 $material_length5996097) 1 0))
             (__VERIFIER_assert (ite (<= 0 $j6016099) 1 0))
             (< $j6016099 (div $idBitLength5986096 8))
             (< $j6016099 $material_length5996097)
             ($main_inv464 $idBitLength5986096 $material_length5996097 $nlen6006098 $j6016099 $k6026100))
        ($__VERIFIER_assert_pre (ite (<= 0 (div $j6016099 4)) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($k6026100 Int) ($nlen6006098 Int) ($material_length5996097 Int) ($idBitLength5986096 Int) ($j6016099 Int))
    (=> (and (__VERIFIER_assert (ite (<= 0 (div $j6016099 4)) 1 0))
             (__VERIFIER_assert (ite (< $j6016099 $material_length5996097) 1 0))
             (__VERIFIER_assert (ite (<= 0 $j6016099) 1 0))
             (< $j6016099 (div $idBitLength5986096 8))
             (< $j6016099 $material_length5996097)
             ($main_inv464 $idBitLength5986096 $material_length5996097 $nlen6006098 $j6016099 $k6026100))
        ($__VERIFIER_assert_pre (ite (< (div $j6016099 4) $nlen6006098) 1 0)))))

; forwards $main_inv464
(assert
  (forall (($k6026100 Int) ($nlen6006098 Int) ($material_length5996097 Int) ($idBitLength5986096 Int) ($j6016099 Int))
    (=> (and (__VERIFIER_assert (ite (< (div $j6016099 4) $nlen6006098) 1 0))
             (__VERIFIER_assert (ite (<= 0 (div $j6016099 4)) 1 0))
             (__VERIFIER_assert (ite (< $j6016099 $material_length5996097) 1 0))
             (__VERIFIER_assert (ite (<= 0 $j6016099) 1 0))
             (< $j6016099 (div $idBitLength5986096 8))
             (< $j6016099 $material_length5996097)
             ($main_inv464 $idBitLength5986096 $material_length5996097 $nlen6006098 $j6016099 $k6026100))
        ($main_inv464 $idBitLength5986096 $material_length5996097 $nlen6006098 (+ $j6016099 1) $k6026100))))

(check-sat)
