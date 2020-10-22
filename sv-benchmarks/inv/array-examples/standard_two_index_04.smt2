(set-logic HORN)

(declare-fun $main_inv388 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv387 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv386 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum386 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum387 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum388 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if123 (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond5057 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond5057))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if123 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5058 Int))
    (=> (and ($__VERIFIER_assert_if123 cond5058))
        (__VERIFIER_assert cond5058))))

; loop entry $main_inv386
(assert
  (forall (($a468 (Array Int Int)) ($b469 (Array Int Int)) ($i470 Int) ($j471 Int))
    (=> (and (= $j471 0)
             (= $i470 0))
        ($main_inv386 $a468 $b469 $i470 $j471))))

; loop term $main_sum386
(assert
  (forall (($a4685059 (Array Int Int)) ($b4695060 (Array Int Int)) ($i4705061 Int) ($j4715062 Int))
    (=> (and (not (< $i4705061 100000))
             ($main_inv386 $a4685059 $b4695060 $i4705061 $j4715062))
        ($main_sum386 $a4685059 $b4695060 $i4705061 $j4715062))))

; forwards $main_inv386
(assert
  (forall (($i4705061 Int) ($int5063 Int) ($b4695060 (Array Int Int)) ($a4685059 (Array Int Int)) ($j4715062 Int))
    (=> (and (<= (- 2147483648) $int5063)
             (<= $int5063 2147483647)
             (< $i4705061 100000)
             ($main_inv386 $a4685059 $b4695060 $i4705061 $j4715062))
        ($main_inv386 $a4685059 (store $b4695060 $i4705061 $int5063) (+ $i4705061 1) $j4715062))))

; loop entry $main_inv387
(assert
  (forall (($a4685064 (Array Int Int)) ($b4695065 (Array Int Int)) ($j4715067 Int) ($i4705066 Int))
    (=> (and ($main_sum386 $a4685064 $b4695065 $i4705066 $j4715067))
        ($main_inv387 $a4685064 $b4695065 1 $j4715067))))

; loop term $main_sum387
(assert
  (forall (($a4685068 (Array Int Int)) ($b4695069 (Array Int Int)) ($i4705070 Int) ($j4715071 Int))
    (=> (and (not (< $i4705070 100000))
             ($main_inv387 $a4685068 $b4695069 $i4705070 $j4715071))
        ($main_sum387 $a4685068 $b4695069 $i4705070 $j4715071))))

; forwards $main_inv387
(assert
  (forall (($a4685068 (Array Int Int)) ($j4715071 Int) ($b4695069 (Array Int Int)) ($i4705070 Int))
    (=> (and (< $i4705070 100000)
             ($main_inv387 $a4685068 $b4695069 $i4705070 $j4715071))
        ($main_inv387 (store $a4685068 $j4715071 (select $b4695069 $i4705070)) $b4695069 (+ $i4705070 4) (+ $j4715071 1)))))

; loop entry $main_inv388
(assert
  (forall (($a4685072 (Array Int Int)) ($b4695073 (Array Int Int)) ($i4705074 Int) ($j4715075 Int))
    (=> (and ($main_sum387 $a4685072 $b4695073 $i4705074 $j4715075))
        ($main_inv388 $a4685072 $b4695073 1 0))))

; loop term $main_sum388
(assert
  (forall (($a4685076 (Array Int Int)) ($b4695077 (Array Int Int)) ($i4705078 Int) ($j4715079 Int))
    (=> (and (not (< $i4705078 100000))
             ($main_inv388 $a4685076 $b4695077 $i4705078 $j4715079))
        ($main_sum388 $a4685076 $b4695077 $i4705078 $j4715079))))

; __VERIFIER_assert precondition
(assert
  (forall (($a4685076 (Array Int Int)) ($j4715079 Int) ($b4695077 (Array Int Int)) ($i4705078 Int))
    (=> (and (< $i4705078 100000)
             ($main_inv388 $a4685076 $b4695077 $i4705078 $j4715079))
        ($__VERIFIER_assert_pre (ite (= (select $a4685076 $j4715079) (select $b4695077 (+ (* 4 $j4715079) 1))) 1 0)))))

; forwards $main_inv388
(assert
  (forall (($a4685076 (Array Int Int)) ($b4695077 (Array Int Int)) ($i4705078 Int) ($j4715079 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a4685076 $j4715079) (select $b4695077 (+ (* 4 $j4715079) 1))) 1 0))
             (< $i4705078 100000)
             ($main_inv388 $a4685076 $b4695077 $i4705078 $j4715079))
        ($main_inv388 $a4685076 $b4695077 (+ $i4705078 4) (+ $j4715079 1)))))

(check-sat)
