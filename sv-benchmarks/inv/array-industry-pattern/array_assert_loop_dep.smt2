(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum410 (Int (Array Int Int)) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_inv411 (Int (Array Int Int)) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv410 (Int (Array Int Int)) Bool)
(declare-fun $__VERIFIER_assert_if131 (Int) Bool)
(declare-fun $main_if132 (Int (Array Int Int)) Bool)
(declare-fun $main_sum411 (Int (Array Int Int)) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond5280 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond5280))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if131 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5281 Int))
    (=> (and ($__VERIFIER_assert_if131 cond5281))
        (__VERIFIER_assert cond5281))))

; loop entry $main_inv410
(assert
  (forall (($a502 (Array Int Int)))
        ($main_inv410 0 $a502)))

; loop term $main_sum410
(assert
  (forall (($i5015282 Int) ($a5025283 (Array Int Int)))
    (=> (and (not (< $i5015282 100000))
             ($main_inv410 $i5015282 $a5025283))
        ($main_sum410 $i5015282 $a5025283))))

; forwards $main_inv410
(assert
  (forall (($i5015282 Int) ($a5025283 (Array Int Int)))
    (=> (and (< $i5015282 100000)
             ($main_inv410 $i5015282 $a5025283))
        ($main_inv410 (+ $i5015282 1) (store $a5025283 $i5015282 10)))))

; loop entry $main_inv411
(assert
  (forall (($a5025285 (Array Int Int)) ($i5015284 Int))
    (=> (and ($main_sum410 $i5015284 $a5025285))
        ($main_inv411 0 $a5025285))))

; loop term $main_sum411
(assert
  (forall (($i5015286 Int) ($a5025287 (Array Int Int)))
    (=> (and (not (< $i5015286 100000))
             ($main_inv411 $i5015286 $a5025287))
        ($main_sum411 $i5015286 $a5025287))))

; __VERIFIER_assert precondition
(assert
  (forall (($a5025287 (Array Int Int)) ($i5015286 Int))
    (=> (and (< $i5015286 100000)
             ($main_inv411 $i5015286 $a5025287))
        ($__VERIFIER_assert_pre (ite (= (select $a5025287 $i5015286) 10) 1 0)))))

; if then
(assert
  (forall (($i5015286 Int) ($a5025287 (Array Int Int)))
    (=> (and (not (= (+ $i5015286 1) 15000))
             (__VERIFIER_assert (ite (= (select $a5025287 $i5015286) 10) 1 0))
             (< $i5015286 100000)
             ($main_inv411 $i5015286 $a5025287))
        ($main_if132 $i5015286 (store $a5025287 (+ $i5015286 1) 20)))))

; if else
(assert
  (forall (($i5015286 Int) ($a5025287 (Array Int Int)))
    (=> (and (= (+ $i5015286 1) 15000)
             (__VERIFIER_assert (ite (= (select $a5025287 $i5015286) 10) 1 0))
             (< $i5015286 100000)
             ($main_inv411 $i5015286 $a5025287))
        ($main_if132 $i5015286 $a5025287))))

; forwards $main_inv411
(assert
  (forall (($i5015288 Int) ($a5025289 (Array Int Int)))
    (=> (and ($main_if132 $i5015288 $a5025289))
        ($main_inv411 (+ $i5015288 1) $a5025289))))

(check-sat)
