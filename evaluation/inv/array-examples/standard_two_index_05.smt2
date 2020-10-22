(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum389 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum390 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv390 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if124 (Int) Bool)
(declare-fun $main_inv389 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv391 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum391 ((Array Int Int) (Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond5084 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond5084))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if124 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5085 Int))
    (=> (and ($__VERIFIER_assert_if124 cond5085))
        (__VERIFIER_assert cond5085))))

; loop entry $main_inv389
(assert
  (forall (($a472 (Array Int Int)) ($b473 (Array Int Int)) ($i474 Int) ($j475 Int))
    (=> (and (= $j475 0)
             (= $i474 0))
        ($main_inv389 $a472 $b473 $i474 $j475))))

; loop term $main_sum389
(assert
  (forall (($a4725086 (Array Int Int)) ($b4735087 (Array Int Int)) ($i4745088 Int) ($j4755089 Int))
    (=> (and (not (< $i4745088 100000))
             ($main_inv389 $a4725086 $b4735087 $i4745088 $j4755089))
        ($main_sum389 $a4725086 $b4735087 $i4745088 $j4755089))))

; forwards $main_inv389
(assert
  (forall (($int5090 Int) ($j4755089 Int) ($b4735087 (Array Int Int)) ($a4725086 (Array Int Int)) ($i4745088 Int))
    (=> (and (<= (- 2147483648) $int5090)
             (<= $int5090 2147483647)
             (< $i4745088 100000)
             ($main_inv389 $a4725086 $b4735087 $i4745088 $j4755089))
        ($main_inv389 $a4725086 (store $b4735087 $i4745088 $int5090) (+ $i4745088 1) $j4755089))))

; loop entry $main_inv390
(assert
  (forall (($a4725091 (Array Int Int)) ($b4735092 (Array Int Int)) ($j4755094 Int) ($i4745093 Int))
    (=> (and ($main_sum389 $a4725091 $b4735092 $i4745093 $j4755094))
        ($main_inv390 $a4725091 $b4735092 1 $j4755094))))

; loop term $main_sum390
(assert
  (forall (($a4725095 (Array Int Int)) ($b4735096 (Array Int Int)) ($i4745097 Int) ($j4755098 Int))
    (=> (and (not (< $i4745097 100000))
             ($main_inv390 $a4725095 $b4735096 $i4745097 $j4755098))
        ($main_sum390 $a4725095 $b4735096 $i4745097 $j4755098))))

; forwards $main_inv390
(assert
  (forall (($a4725095 (Array Int Int)) ($j4755098 Int) ($b4735096 (Array Int Int)) ($i4745097 Int))
    (=> (and (< $i4745097 100000)
             ($main_inv390 $a4725095 $b4735096 $i4745097 $j4755098))
        ($main_inv390 (store $a4725095 $j4755098 (select $b4735096 $i4745097)) $b4735096 (+ $i4745097 5) (+ $j4755098 1)))))

; loop entry $main_inv391
(assert
  (forall (($a4725099 (Array Int Int)) ($b4735100 (Array Int Int)) ($i4745101 Int) ($j4755102 Int))
    (=> (and ($main_sum390 $a4725099 $b4735100 $i4745101 $j4755102))
        ($main_inv391 $a4725099 $b4735100 1 0))))

; loop term $main_sum391
(assert
  (forall (($a4725103 (Array Int Int)) ($b4735104 (Array Int Int)) ($i4745105 Int) ($j4755106 Int))
    (=> (and (not (< $i4745105 100000))
             ($main_inv391 $a4725103 $b4735104 $i4745105 $j4755106))
        ($main_sum391 $a4725103 $b4735104 $i4745105 $j4755106))))

; __VERIFIER_assert precondition
(assert
  (forall (($a4725103 (Array Int Int)) ($j4755106 Int) ($b4735104 (Array Int Int)) ($i4745105 Int))
    (=> (and (< $i4745105 100000)
             ($main_inv391 $a4725103 $b4735104 $i4745105 $j4755106))
        ($__VERIFIER_assert_pre (ite (= (select $a4725103 $j4755106) (select $b4735104 (+ (* 5 $j4755106) 1))) 1 0)))))

; forwards $main_inv391
(assert
  (forall (($a4725103 (Array Int Int)) ($b4735104 (Array Int Int)) ($i4745105 Int) ($j4755106 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a4725103 $j4755106) (select $b4735104 (+ (* 5 $j4755106) 1))) 1 0))
             (< $i4745105 100000)
             ($main_inv391 $a4725103 $b4735104 $i4745105 $j4755106))
        ($main_inv391 $a4725103 $b4735104 (+ $i4745105 5) (+ $j4755106 1)))))

(check-sat)
