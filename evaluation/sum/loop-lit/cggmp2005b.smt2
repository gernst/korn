(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum490 (Int Int Int Int Int Int) Bool)
(declare-fun $main_inv490 (Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum489 (Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_if287 (Int Int) Bool)
(declare-fun $main_inv489 (Int Int Int) Bool)
(declare-fun $main_inv491 (Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_sum491 (Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $__VERIFIER_assert_if288 (Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if287 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond9379 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if287 cond cond9379))
        (assume_abort_if_not cond9379))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond9380 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond9380))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if288 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond9381 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if288 cond cond9381))
        (__VERIFIER_assert cond9381))))

; loop entry $main_inv489
(assert
        ($main_inv489 0 (- 100) 9))

; loop term $main_sum489
(assert
  (forall (($i6659382 Int) ($j6669383 Int) ($k6679384 Int))
    (=> (and (not (<= $i6659382 100)))
        ($main_sum489 $i6659382 $j6669383 $k6679384 $i6659382 $j6669383 $k6679384))))

; loop entry $main_inv490
(assert
  (forall (($i6659382 Int) ($j6669383 Int) ($k6679384 Int))
    (=> (and (<= $i6659382 100)
             ($main_inv489 $i6659382 $j6669383 $k6679384))
        ($main_inv490 (+ $i6659382 1) $j6669383 $k6679384))))

; loop term $main_sum490
(assert
  (forall (($i6659385 Int) ($j6669386 Int) ($k6679387 Int))
    (=> (and (not (< $j6669386 20)))
        ($main_sum490 $i6659385 $j6669386 $k6679387 $i6659385 $j6669386 $k6679387))))

; forwards $main_inv490
(assert
  (forall (($i6659385 Int) ($j6669386 Int) ($k6679387 Int))
    (=> (and (< $j6669386 20)
             ($main_inv490 $i6659385 $j6669386 $k6679387))
        ($main_inv490 $i6659385 (+ $i6659385 $j6669386) $k6679387))))

; backwards $main_sum490
(assert
  (forall (($j6669389 Int) ($i6659385 Int) ($j6669386 Int) ($k6679387 Int) ($k6679390 Int) ($i6659388 Int))
    (=> (and ($main_sum490 $i6659385 (+ $i6659385 $j6669386) $k6679387 $i6659388 $j6669389 $k6679390)
             (< $j6669386 20))
        ($main_sum490 $i6659385 $j6669386 $k6679387 $i6659388 $j6669389 $k6679390))))

; loop entry $main_inv491
(assert
  (forall (($j6669392 Int) ($k6679393 Int) ($i6659382 Int) ($j6669383 Int) ($i6659391 Int) ($k6679384 Int))
    (=> (and ($main_sum490 (+ $i6659382 1) $j6669383 $k6679384 $i6659391 $j6669392 $k6679393)
             (<= $i6659382 100)
             ($main_inv489 $i6659382 $j6669383 $k6679384))
        ($main_inv491 $i6659391 $j6669392 4))))

; loop term $main_sum491
(assert
  (forall (($i6659394 Int) ($j6669395 Int) ($k6679396 Int))
    (=> (and (not (<= $k6679396 3)))
        ($main_sum491 $i6659394 $j6669395 $k6679396 $i6659394 $j6669395 $k6679396))))

; forwards $main_inv491
(assert
  (forall (($i6659394 Int) ($j6669395 Int) ($k6679396 Int))
    (=> (and (<= $k6679396 3)
             ($main_inv491 $i6659394 $j6669395 $k6679396))
        ($main_inv491 $i6659394 $j6669395 (+ $k6679396 1)))))

; backwards $main_sum491
(assert
  (forall (($k6679399 Int) ($k6679396 Int) ($i6659394 Int) ($j6669395 Int) ($j6669398 Int) ($i6659397 Int))
    (=> (and ($main_sum491 $i6659394 $j6669395 (+ $k6679396 1) $i6659397 $j6669398 $k6679399)
             (<= $k6679396 3))
        ($main_sum491 $i6659394 $j6669395 $k6679396 $i6659397 $j6669398 $k6679399))))

; forwards $main_inv489
(assert
  (forall (($k6679393 Int) ($j6669401 Int) ($i6659382 Int) ($i6659400 Int) ($j6669383 Int) ($k6679402 Int) ($j6669392 Int) ($i6659391 Int) ($k6679384 Int))
    (=> (and ($main_sum491 $i6659391 $j6669392 4 $i6659400 $j6669401 $k6679402)
             ($main_sum490 (+ $i6659382 1) $j6669383 $k6679384 $i6659391 $j6669392 $k6679393)
             (<= $i6659382 100)
             ($main_inv489 $i6659382 $j6669383 $k6679384))
        ($main_inv489 $i6659400 $j6669401 $k6679402))))

; backwards $main_sum489
(assert
  (forall (($k6679405 Int) ($i6659403 Int) ($j6669401 Int) ($i6659382 Int) ($i6659400 Int) ($j6669383 Int) ($k6679402 Int) ($j6669392 Int) ($i6659391 Int) ($k6679384 Int) ($j6669404 Int) ($k6679393 Int))
    (=> (and ($main_sum489 $i6659400 $j6669401 $k6679402 $i6659403 $j6669404 $k6679405)
             ($main_sum491 $i6659391 $j6669392 4 $i6659400 $j6669401 $k6679402)
             ($main_sum490 (+ $i6659382 1) $j6669383 $k6679384 $i6659391 $j6669392 $k6679393)
             (<= $i6659382 100))
        ($main_sum489 $i6659382 $j6669383 $k6679384 $i6659403 $j6669404 $k6679405))))

; __VERIFIER_assert precondition
(assert
  (forall (($k6679408 Int) ($i6659406 Int) ($j6669407 Int))
    (=> (and ($main_sum489 0 (- 100) 9 $i6659406 $j6669407 $k6679408))
        ($__VERIFIER_assert_pre (ite (= $k6679408 4) 1 0)))))

(check-sat)
