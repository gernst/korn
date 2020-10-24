(set-logic HORN)

(declare-fun $main_inv527 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_inv526 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_inv529 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_sum528 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_sum527 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_inv528 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_sum529 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_sum526 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_if380 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_if378 (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $assume_abort_if_not_if377 (Int) Bool)
(declare-fun $main_if379 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if377 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond7197 Int))
    (=> (and ($assume_abort_if_not_if377 cond7197))
        (assume_abort_if_not cond7197))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond7198 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond7198))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if378 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond7199 Int))
    (=> (and ($__VERIFIER_assert_if378 cond7199))
        (__VERIFIER_assert cond7199))))

; loop entry $main_inv526
(assert
  (forall (($C761 (Array Int Int)) ($uint7200 Int) ($A759 (Array Int Int)) ($B760 (Array Int Int)) ($M758 Int))
    (=> (and (= $M758 $uint7200)
             (<= 0 $uint7200)
             (<= $uint7200 4294967295))
        ($main_inv526 $M758 $A759 $B760 $C761 0))))

; loop term $main_sum526
(assert
  (forall (($C7617204 (Array Int Int)) ($i7627205 Int) ($B7607203 (Array Int Int)) ($M7587201 Int) ($A7597202 (Array Int Int)))
    (=> (and (not (< $i7627205 $M7587201))
             ($main_inv526 $M7587201 $A7597202 $B7607203 $C7617204 $i7627205))
        ($main_sum526 $M7587201 $A7597202 $B7607203 $C7617204 $i7627205))))

; if else
(assert
  (forall (($int7206 Int) ($C7617204 (Array Int Int)) ($i7627205 Int) ($B7607203 (Array Int Int)) ($M7587201 Int) ($A7597202 (Array Int Int)))
    (=> (and (<= (select (store $A7597202 $i7627205 $int7206) $i7627205) 1000000)
             (<= (- 2147483648) $int7206)
             (<= $int7206 2147483647)
             (< $i7627205 $M7587201)
             ($main_inv526 $M7587201 $A7597202 $B7607203 $C7617204 $i7627205))
        ($main_if379 $M7587201 (store $A7597202 $i7627205 $int7206) $B7607203 $C7617204 $i7627205))))

; forwards $main_inv526
(assert
  (forall (($B7607209 (Array Int Int)) ($i7627211 Int) ($C7617210 (Array Int Int)) ($M7587207 Int) ($A7597208 (Array Int Int)))
    (=> (and ($main_if379 $M7587207 $A7597208 $B7607209 $C7617210 $i7627211))
        ($main_inv526 $M7587207 $A7597208 $B7607209 $C7617210 (+ $i7627211 1)))))

; loop entry $main_inv527
(assert
  (forall (($i7627216 Int) ($C7617215 (Array Int Int)) ($B7607214 (Array Int Int)) ($A7597213 (Array Int Int)) ($M7587212 Int))
    (=> (and ($main_sum526 $M7587212 $A7597213 $B7607214 $C7617215 $i7627216))
        ($main_inv527 $M7587212 $A7597213 $B7607214 $C7617215 0))))

; loop term $main_sum527
(assert
  (forall (($i7627221 Int) ($A7597218 (Array Int Int)) ($B7607219 (Array Int Int)) ($M7587217 Int) ($C7617220 (Array Int Int)))
    (=> (and (not (< $i7627221 $M7587217))
             ($main_inv527 $M7587217 $A7597218 $B7607219 $C7617220 $i7627221))
        ($main_sum527 $M7587217 $A7597218 $B7607219 $C7617220 $i7627221))))

; if else
(assert
  (forall (($i7627221 Int) ($A7597218 (Array Int Int)) ($B7607219 (Array Int Int)) ($int7222 Int) ($M7587217 Int) ($C7617220 (Array Int Int)))
    (=> (and (<= (select (store $B7607219 $i7627221 $int7222) $i7627221) 1000000)
             (<= (- 2147483648) $int7222)
             (<= $int7222 2147483647)
             (< $i7627221 $M7587217)
             ($main_inv527 $M7587217 $A7597218 $B7607219 $C7617220 $i7627221))
        ($main_if380 $M7587217 $A7597218 (store $B7607219 $i7627221 $int7222) $C7617220 $i7627221))))

; forwards $main_inv527
(assert
  (forall (($B7607225 (Array Int Int)) ($C7617226 (Array Int Int)) ($M7587223 Int) ($i7627227 Int) ($A7597224 (Array Int Int)))
    (=> (and ($main_if380 $M7587223 $A7597224 $B7607225 $C7617226 $i7627227))
        ($main_inv527 $M7587223 $A7597224 $B7607225 $C7617226 (+ $i7627227 1)))))

; loop entry $main_inv528
(assert
  (forall (($C7617231 (Array Int Int)) ($M7587228 Int) ($i7627232 Int) ($B7607230 (Array Int Int)) ($A7597229 (Array Int Int)))
    (=> (and ($main_sum527 $M7587228 $A7597229 $B7607230 $C7617231 $i7627232))
        ($main_inv528 $M7587228 $A7597229 $B7607230 $C7617231 0))))

; loop term $main_sum528
(assert
  (forall (($C7617236 (Array Int Int)) ($i7627237 Int) ($M7587233 Int) ($A7597234 (Array Int Int)) ($B7607235 (Array Int Int)))
    (=> (and (not (< $i7627237 $M7587233))
             ($main_inv528 $M7587233 $A7597234 $B7607235 $C7617236 $i7627237))
        ($main_sum528 $M7587233 $A7597234 $B7607235 $C7617236 $i7627237))))

; forwards $main_inv528
(assert
  (forall (($C7617236 (Array Int Int)) ($i7627237 Int) ($M7587233 Int) ($A7597234 (Array Int Int)) ($B7607235 (Array Int Int)))
    (=> (and (< $i7627237 $M7587233)
             ($main_inv528 $M7587233 $A7597234 $B7607235 $C7617236 $i7627237))
        ($main_inv528 $M7587233 $A7597234 $B7607235 (store $C7617236 $i7627237 (+ (select $A7597234 $i7627237) (select $B7607235 $i7627237))) (+ $i7627237 1)))))

; loop entry $main_inv529
(assert
  (forall (($A7597239 (Array Int Int)) ($C7617241 (Array Int Int)) ($i7627242 Int) ($M7587238 Int) ($B7607240 (Array Int Int)))
    (=> (and ($main_sum528 $M7587238 $A7597239 $B7607240 $C7617241 $i7627242))
        ($main_inv529 $M7587238 $A7597239 $B7607240 $C7617241 0))))

; loop term $main_sum529
(assert
  (forall (($A7597244 (Array Int Int)) ($C7617246 (Array Int Int)) ($i7627247 Int) ($B7607245 (Array Int Int)) ($M7587243 Int))
    (=> (and (not (< $i7627247 $M7587243))
             ($main_inv529 $M7587243 $A7597244 $B7607245 $C7617246 $i7627247))
        ($main_sum529 $M7587243 $A7597244 $B7607245 $C7617246 $i7627247))))

; __VERIFIER_assert precondition
(assert
  (forall (($A7597244 (Array Int Int)) ($C7617246 (Array Int Int)) ($i7627247 Int) ($B7607245 (Array Int Int)) ($M7587243 Int))
    (=> (and (< $i7627247 $M7587243)
             ($main_inv529 $M7587243 $A7597244 $B7607245 $C7617246 $i7627247))
        ($__VERIFIER_assert_pre (ite (= (select $C7617246 $i7627247) (+ (select $A7597244 $i7627247) (select $B7607245 $i7627247))) 1 0)))))

; forwards $main_inv529
(assert
  (forall (($A7597244 (Array Int Int)) ($C7617246 (Array Int Int)) ($i7627247 Int) ($B7607245 (Array Int Int)) ($M7587243 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $C7617246 $i7627247) (+ (select $A7597244 $i7627247) (select $B7607245 $i7627247))) 1 0))
             (< $i7627247 $M7587243)
             ($main_inv529 $M7587243 $A7597244 $B7607245 $C7617246 $i7627247))
        ($main_inv529 $M7587243 $A7597244 $B7607245 $C7617246 (+ $i7627247 1)))))

(check-sat)
