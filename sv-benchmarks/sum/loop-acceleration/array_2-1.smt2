(set-logic HORN)

(declare-fun $main_inv432 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum432 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if158 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond8082 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond8082))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if158 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond8083 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if158 cond cond8083))
        (__VERIFIER_assert cond8083))))

; loop entry $main_inv432
(assert
  (forall (($A538 (Array Int Int)) ($B539 (Array Int Int)) ($tmp541 Int))
        ($main_inv432 $A538 $B539 0 $tmp541)))

; loop term $main_sum432
(assert
  (forall (($A5388084 (Array Int Int)) ($B5398085 (Array Int Int)) ($i5408086 Int) ($tmp5418087 Int))
    (=> (and (not (< $i5408086 2048)))
        ($main_sum432 $A5388084 $B5398085 $i5408086 $tmp5418087 $A5388084 $B5398085 $i5408086 $tmp5418087))))

; forwards $main_inv432
(assert
  (forall (($A5388084 (Array Int Int)) ($B5398085 (Array Int Int)) ($i5408086 Int) ($tmp5418087 Int))
    (=> (and (< $i5408086 2048)
             ($main_inv432 $A5388084 $B5398085 $i5408086 $tmp5418087))
        ($main_inv432 $A5388084 (store $B5398085 $i5408086 (select $A5388084 $i5408086)) (+ $i5408086 1) (select $A5388084 $i5408086)))))

; backwards $main_sum432
(assert
  (forall (($A5388084 (Array Int Int)) ($tmp5418091 Int) ($i5408090 Int) ($tmp5418087 Int) ($B5398089 (Array Int Int)) ($B5398085 (Array Int Int)) ($i5408086 Int) ($A5388088 (Array Int Int)))
    (=> (and ($main_sum432 $A5388084 (store $B5398085 $i5408086 (select $A5388084 $i5408086)) (+ $i5408086 1) (select $A5388084 $i5408086) $A5388088 $B5398089 $i5408090 $tmp5418091)
             (< $i5408086 2048))
        ($main_sum432 $A5388084 $B5398085 $i5408086 $tmp5418087 $A5388088 $B5398089 $i5408090 $tmp5418091))))

; __VERIFIER_assert precondition
(assert
  (forall (($B5398093 (Array Int Int)) ($i5408094 Int) ($A5388092 (Array Int Int)) ($tmp541 Int) ($A538 (Array Int Int)) ($B539 (Array Int Int)) ($tmp5418095 Int))
    (=> (and ($main_sum432 $A538 $B539 0 $tmp541 $A5388092 $B5398093 $i5408094 $tmp5418095))
        ($__VERIFIER_assert_pre (ite (not (= (select $A5388092 (div 2048 2)) (select $B5398093 (div 2048 2)))) 1 0)))))

(check-sat)
