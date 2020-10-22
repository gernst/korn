(set-logic HORN)

(declare-fun $main_inv103 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv104 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if486 (Int Int) Bool)
(declare-fun $main_sum104 (Int Int Int Int) Bool)
(declare-fun $main_sum103 (Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond13771 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond13771))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if486 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13772 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if486 cond cond13772))
        (__VERIFIER_assert cond13772))))

; loop entry $main_inv103
(assert
  (forall (($x414 Int) ($y415 Int))
    (=> (and (= $y415 0)
             (= $x414 0))
        ($main_inv103 $x414 $y415))))

; loop term $main_sum103
(assert
  (forall (($x41413773 Int) ($y41513774 Int))
    (=> (and (not (< $x41413773 268435455)))
        ($main_sum103 $x41413773 $y41513774 $x41413773 $y41513774))))

; loop entry $main_inv104
(assert
  (forall (($x41413773 Int) ($y41513774 Int))
    (=> (and (< $x41413773 268435455)
             ($main_inv103 $x41413773 $y41513774))
        ($main_inv104 $x41413773 0))))

; loop term $main_sum104
(assert
  (forall (($x41413775 Int) ($y41513776 Int))
    (=> (and (not (< $y41513776 10)))
        ($main_sum104 $x41413775 $y41513776 $x41413775 $y41513776))))

; forwards $main_inv104
(assert
  (forall (($x41413775 Int) ($y41513776 Int))
    (=> (and (< $y41513776 10)
             ($main_inv104 $x41413775 $y41513776))
        ($main_inv104 $x41413775 (+ $y41513776 1)))))

; backwards $main_sum104
(assert
  (forall (($x41413775 Int) ($y41513776 Int) ($x41413777 Int) ($y41513778 Int))
    (=> (and ($main_sum104 $x41413775 (+ $y41513776 1) $x41413777 $y41513778)
             (< $y41513776 10))
        ($main_sum104 $x41413775 $y41513776 $x41413777 $y41513778))))

; forwards $main_inv103
(assert
  (forall (($x41413779 Int) ($y41513780 Int) ($x41413773 Int) ($y41513774 Int))
    (=> (and ($main_sum104 $x41413773 0 $x41413779 $y41513780)
             (< $x41413773 268435455)
             ($main_inv103 $x41413773 $y41513774))
        ($main_inv103 (+ $x41413779 1) $y41513780))))

; backwards $main_sum103
(assert
  (forall (($x41413781 Int) ($y41513782 Int) ($x41413773 Int) ($y41513780 Int) ($y41513774 Int) ($x41413779 Int))
    (=> (and ($main_sum103 (+ $x41413779 1) $y41513780 $x41413781 $y41513782)
             ($main_sum104 $x41413773 0 $x41413779 $y41513780)
             (< $x41413773 268435455))
        ($main_sum103 $x41413773 $y41513774 $x41413781 $y41513782))))

; __VERIFIER_assert precondition
(assert
  (forall (($x41413783 Int) ($x414 Int) ($y415 Int) ($y41513784 Int))
    (=> (and ($main_sum103 $x414 $y415 $x41413783 $y41513784)
             (= $y415 0)
             (= $x414 0))
        ($__VERIFIER_assert_pre (ite (= (mod $x41413783 2) 0) 1 0)))))

(check-sat)
