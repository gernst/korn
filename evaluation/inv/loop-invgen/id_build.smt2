(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_inv463 (Int Int Int Int Int) Bool)
(declare-fun $main_sum462 (Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if219 (Int) Bool)
(declare-fun $main_sum463 (Int Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $assume_abort_if_not_if218 (Int) Bool)
(declare-fun $main_inv462 (Int Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if218 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond6061 Int))
    (=> (and ($assume_abort_if_not_if218 cond6061))
        (assume_abort_if_not cond6061))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond6062 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond6062))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if219 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6063 Int))
    (=> (and ($__VERIFIER_assert_if219 cond6063))
        (__VERIFIER_assert cond6063))))

; loop entry $main_inv462
(assert
  (forall (($length594 Int) ($int6064 Int) ($j597 Int) ($offset593 Int) ($nlen595 Int))
    (=> (and (= $nlen595 $int6064)
             (<= (- 2147483648) $int6064)
             (<= $int6064 2147483647))
        ($main_inv462 $offset593 $length594 $nlen595 0 $j597))))

; loop term $main_sum462
(assert
  (forall (($j5976069 Int) ($i5966068 Int) ($nlen5956067 Int) ($length5946066 Int) ($offset5936065 Int))
    (=> (and (not (< $i5966068 $nlen5956067))
             ($main_inv462 $offset5936065 $length5946066 $nlen5956067 $i5966068 $j5976069))
        ($main_sum462 $offset5936065 $length5946066 $nlen5956067 $i5966068 $j5976069))))

; loop entry $main_inv463
(assert
  (forall (($j5976069 Int) ($i5966068 Int) ($nlen5956067 Int) ($length5946066 Int) ($offset5936065 Int))
    (=> (and (< $i5966068 $nlen5956067)
             ($main_inv462 $offset5936065 $length5946066 $nlen5956067 $i5966068 $j5976069))
        ($main_inv463 $offset5936065 $length5946066 $nlen5956067 $i5966068 0))))

; loop term $main_sum463
(assert
  (forall (($offset5936070 Int) ($length5946071 Int) ($i5966073 Int) ($nlen5956072 Int) ($j5976074 Int))
    (=> (and (not (< $j5976074 8))
             ($main_inv463 $offset5936070 $length5946071 $nlen5956072 $i5966073 $j5976074))
        ($main_sum463 $offset5936070 $length5946071 $nlen5956072 $i5966073 $j5976074))))

; __VERIFIER_assert precondition
(assert
  (forall (($offset5936070 Int) ($length5946071 Int) ($i5966073 Int) ($nlen5956072 Int) ($j5976074 Int))
    (=> (and (< $j5976074 8)
             ($main_inv463 $offset5936070 $length5946071 $nlen5956072 $i5966073 $j5976074))
        ($__VERIFIER_assert_pre (ite (<= 0 (- (- $nlen5956072 1) $i5966073)) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($offset5936070 Int) ($length5946071 Int) ($i5966073 Int) ($nlen5956072 Int) ($j5976074 Int))
    (=> (and (__VERIFIER_assert (ite (<= 0 (- (- $nlen5956072 1) $i5966073)) 1 0))
             (< $j5976074 8)
             ($main_inv463 $offset5936070 $length5946071 $nlen5956072 $i5966073 $j5976074))
        ($__VERIFIER_assert_pre (ite (< (- (- $nlen5956072 1) $i5966073) $nlen5956072) 1 0)))))

; forwards $main_inv463
(assert
  (forall (($offset5936070 Int) ($length5946071 Int) ($i5966073 Int) ($nlen5956072 Int) ($j5976074 Int))
    (=> (and (__VERIFIER_assert (ite (< (- (- $nlen5956072 1) $i5966073) $nlen5956072) 1 0))
             (__VERIFIER_assert (ite (<= 0 (- (- $nlen5956072 1) $i5966073)) 1 0))
             (< $j5976074 8)
             ($main_inv463 $offset5936070 $length5946071 $nlen5956072 $i5966073 $j5976074))
        ($main_inv463 $offset5936070 $length5946071 $nlen5956072 $i5966073 (+ $j5976074 1)))))

; forwards $main_inv462
(assert
  (forall (($j5976079 Int) ($length5946076 Int) ($i5966078 Int) ($offset5936075 Int) ($nlen5956077 Int))
    (=> (and ($main_sum463 $offset5936075 $length5946076 $nlen5956077 $i5966078 $j5976079))
        ($main_inv462 $offset5936075 $length5946076 $nlen5956077 (+ $i5966078 1) $j5976079))))

(check-sat)
