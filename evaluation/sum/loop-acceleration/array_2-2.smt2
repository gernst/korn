(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv433 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if159 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum433 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond8096 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond8096))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if159 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond8097 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if159 cond cond8097))
        (__VERIFIER_assert cond8097))))

; loop entry $main_inv433
(assert
  (forall (($A542 (Array Int Int)) ($B543 (Array Int Int)) ($tmp545 Int))
        ($main_inv433 $A542 $B543 0 $tmp545)))

; loop term $main_sum433
(assert
  (forall (($A5428098 (Array Int Int)) ($B5438099 (Array Int Int)) ($i5448100 Int) ($tmp5458101 Int))
    (=> (and (not (< $i5448100 2048)))
        ($main_sum433 $A5428098 $B5438099 $i5448100 $tmp5458101 $A5428098 $B5438099 $i5448100 $tmp5458101))))

; forwards $main_inv433
(assert
  (forall (($A5428098 (Array Int Int)) ($B5438099 (Array Int Int)) ($i5448100 Int) ($tmp5458101 Int))
    (=> (and (< $i5448100 2048)
             ($main_inv433 $A5428098 $B5438099 $i5448100 $tmp5458101))
        ($main_inv433 $A5428098 (store $B5438099 $i5448100 (select $A5428098 $i5448100)) (+ $i5448100 1) (select $A5428098 $i5448100)))))

; backwards $main_sum433
(assert
  (forall (($A5428098 (Array Int Int)) ($A5428102 (Array Int Int)) ($B5438099 (Array Int Int)) ($tmp5458105 Int) ($i5448100 Int) ($tmp5458101 Int) ($i5448104 Int) ($B5438103 (Array Int Int)))
    (=> (and ($main_sum433 $A5428098 (store $B5438099 $i5448100 (select $A5428098 $i5448100)) (+ $i5448100 1) (select $A5428098 $i5448100) $A5428102 $B5438103 $i5448104 $tmp5458105)
             (< $i5448100 2048))
        ($main_sum433 $A5428098 $B5438099 $i5448100 $tmp5458101 $A5428102 $B5438103 $i5448104 $tmp5458105))))

; __VERIFIER_assert precondition
(assert
  (forall (($A542 (Array Int Int)) ($tmp5458109 Int) ($i5448108 Int) ($B5438107 (Array Int Int)) ($B543 (Array Int Int)) ($tmp545 Int) ($A5428106 (Array Int Int)))
    (=> (and ($main_sum433 $A542 $B543 0 $tmp545 $A5428106 $B5438107 $i5448108 $tmp5458109))
        ($__VERIFIER_assert_pre (ite (= (select $A5428106 (div 2048 2)) (select $B5438107 (div 2048 2))) 1 0)))))

(check-sat)
