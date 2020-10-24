(set-logic HORN)

(declare-fun $main_sum194 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum195 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_if59 (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv195 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv193 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv194 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum193 ((Array Int Int) (Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond3370 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond3370))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if59 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond3371 Int))
    (=> (and ($__VERIFIER_assert_if59 cond3371))
        (__VERIFIER_assert cond3371))))

; loop entry $main_inv193
(assert
  (forall (($a290 (Array Int Int)) ($b291 (Array Int Int)) ($i292 Int) ($x293 Int))
    (=> (and (= $i292 0))
        ($main_inv193 $a290 $b291 $i292 $x293))))

; loop term $main_sum193
(assert
  (forall (($a2903372 (Array Int Int)) ($b2913373 (Array Int Int)) ($i2923374 Int) ($x2933375 Int))
    (=> (and (not (< $i2923374 100000))
             ($main_inv193 $a2903372 $b2913373 $i2923374 $x2933375))
        ($main_sum193 $a2903372 $b2913373 $i2923374 $x2933375))))

; forwards $main_inv193
(assert
  (forall (($a2903372 (Array Int Int)) ($i2923374 Int) ($b2913373 (Array Int Int)) ($x2933375 Int))
    (=> (and (< $i2923374 100000)
             ($main_inv193 $a2903372 $b2913373 $i2923374 $x2933375))
        ($main_inv193 (store $a2903372 $i2923374 42) $b2913373 (+ $i2923374 1) $x2933375))))

; loop entry $main_inv194
(assert
  (forall (($a2903376 (Array Int Int)) ($b2913377 (Array Int Int)) ($x2933379 Int) ($i2923378 Int))
    (=> (and ($main_sum193 $a2903376 $b2913377 $i2923378 $x2933379))
        ($main_inv194 $a2903376 $b2913377 0 $x2933379))))

; loop term $main_sum194
(assert
  (forall (($a2903380 (Array Int Int)) ($b2913381 (Array Int Int)) ($i2923382 Int) ($x2933383 Int))
    (=> (and (not (< $i2923382 100000))
             ($main_inv194 $a2903380 $b2913381 $i2923382 $x2933383))
        ($main_sum194 $a2903380 $b2913381 $i2923382 $x2933383))))

; forwards $main_inv194
(assert
  (forall (($a2903380 (Array Int Int)) ($b2913381 (Array Int Int)) ($i2923382 Int) ($x2933383 Int))
    (=> (and (< $i2923382 100000)
             ($main_inv194 $a2903380 $b2913381 $i2923382 $x2933383))
        ($main_inv194 $a2903380 (store $b2913381 $i2923382 (select $a2903380 $i2923382)) (+ $i2923382 1) $x2933383))))

; loop entry $main_inv195
(assert
  (forall (($a2903384 (Array Int Int)) ($b2913385 (Array Int Int)) ($i2923386 Int) ($x2933387 Int))
    (=> (and ($main_sum194 $a2903384 $b2913385 $i2923386 $x2933387))
        ($main_inv195 $a2903384 $b2913385 $i2923386 0))))

; loop term $main_sum195
(assert
  (forall (($a2903388 (Array Int Int)) ($b2913389 (Array Int Int)) ($i2923390 Int) ($x2933391 Int))
    (=> (and (not (< $x2933391 100000))
             ($main_inv195 $a2903388 $b2913389 $i2923390 $x2933391))
        ($main_sum195 $a2903388 $b2913389 $i2923390 $x2933391))))

; __VERIFIER_assert precondition
(assert
  (forall (($b2913389 (Array Int Int)) ($x2933391 Int) ($a2903388 (Array Int Int)) ($i2923390 Int))
    (=> (and (< $x2933391 100000)
             ($main_inv195 $a2903388 $b2913389 $i2923390 $x2933391))
        ($__VERIFIER_assert_pre (ite (= (select $b2913389 $x2933391) 42) 1 0)))))

; forwards $main_inv195
(assert
  (forall (($a2903388 (Array Int Int)) ($b2913389 (Array Int Int)) ($i2923390 Int) ($x2933391 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $b2913389 $x2933391) 42) 1 0))
             (< $x2933391 100000)
             ($main_inv195 $a2903388 $b2913389 $i2923390 $x2933391))
        ($main_inv195 $a2903388 $b2913389 $i2923390 (+ $x2933391 1)))))

(check-sat)
