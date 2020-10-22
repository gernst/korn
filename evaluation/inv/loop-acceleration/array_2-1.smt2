(set-logic HORN)

(declare-fun $main_inv432 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum432 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if158 (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond5617 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond5617))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if158 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5618 Int))
    (=> (and ($__VERIFIER_assert_if158 cond5618))
        (__VERIFIER_assert cond5618))))

; loop entry $main_inv432
(assert
  (forall (($A538 (Array Int Int)) ($B539 (Array Int Int)) ($tmp541 Int))
        ($main_inv432 $A538 $B539 0 $tmp541)))

; loop term $main_sum432
(assert
  (forall (($A5385619 (Array Int Int)) ($B5395620 (Array Int Int)) ($i5405621 Int) ($tmp5415622 Int))
    (=> (and (not (< $i5405621 2048))
             ($main_inv432 $A5385619 $B5395620 $i5405621 $tmp5415622))
        ($main_sum432 $A5385619 $B5395620 $i5405621 $tmp5415622))))

; forwards $main_inv432
(assert
  (forall (($A5385619 (Array Int Int)) ($B5395620 (Array Int Int)) ($i5405621 Int) ($tmp5415622 Int))
    (=> (and (< $i5405621 2048)
             ($main_inv432 $A5385619 $B5395620 $i5405621 $tmp5415622))
        ($main_inv432 $A5385619 (store $B5395620 $i5405621 (select $A5385619 $i5405621)) (+ $i5405621 1) (select $A5385619 $i5405621)))))

; __VERIFIER_assert precondition
(assert
  (forall (($A5385623 (Array Int Int)) ($B5395624 (Array Int Int)) ($i5405625 Int) ($tmp5415626 Int))
    (=> (and ($main_sum432 $A5385623 $B5395624 $i5405625 $tmp5415626))
        ($__VERIFIER_assert_pre (ite (not (= (select $A5385623 (div 2048 2)) (select $B5395624 (div 2048 2)))) 1 0)))))

(check-sat)
