(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum390 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if124 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv390 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv389 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv391 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum389 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum391 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond7354 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond7354))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if124 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond7355 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if124 cond cond7355))
        (__VERIFIER_assert cond7355))))

; loop entry $main_inv389
(assert
  (forall (($a472 (Array Int Int)) ($b473 (Array Int Int)) ($i474 Int) ($j475 Int))
    (=> (and (= $j475 0)
             (= $i474 0))
        ($main_inv389 $a472 $b473 $i474 $j475))))

; loop term $main_sum389
(assert
  (forall (($a4727356 (Array Int Int)) ($b4737357 (Array Int Int)) ($i4747358 Int) ($j4757359 Int))
    (=> (and (not (< $i4747358 100000)))
        ($main_sum389 $a4727356 $b4737357 $i4747358 $j4757359 $a4727356 $b4737357 $i4747358 $j4757359))))

; forwards $main_inv389
(assert
  (forall (($i4747358 Int) ($a4727356 (Array Int Int)) ($b4737357 (Array Int Int)) ($j4757359 Int) ($int7360 Int))
    (=> (and (<= (- 2147483648) $int7360)
             (<= $int7360 2147483647)
             (< $i4747358 100000)
             ($main_inv389 $a4727356 $b4737357 $i4747358 $j4757359))
        ($main_inv389 $a4727356 (store $b4737357 $i4747358 $int7360) (+ $i4747358 1) $j4757359))))

; backwards $main_sum389
(assert
  (forall (($i4747358 Int) ($i4747363 Int) ($a4727356 (Array Int Int)) ($b4737357 (Array Int Int)) ($b4737362 (Array Int Int)) ($j4757359 Int) ($j4757364 Int) ($int7360 Int) ($a4727361 (Array Int Int)))
    (=> (and ($main_sum389 $a4727356 (store $b4737357 $i4747358 $int7360) (+ $i4747358 1) $j4757359 $a4727361 $b4737362 $i4747363 $j4757364)
             (<= (- 2147483648) $int7360)
             (<= $int7360 2147483647)
             (< $i4747358 100000))
        ($main_sum389 $a4727356 $b4737357 $i4747358 $j4757359 $a4727361 $b4737362 $i4747363 $j4757364))))

; loop entry $main_inv390
(assert
  (forall (($a472 (Array Int Int)) ($b4737366 (Array Int Int)) ($j475 Int) ($b473 (Array Int Int)) ($i474 Int) ($a4727365 (Array Int Int)) ($i4747367 Int) ($j4757368 Int))
    (=> (and ($main_sum389 $a472 $b473 $i474 $j475 $a4727365 $b4737366 $i4747367 $j4757368)
             (= $j475 0)
             (= $i474 0))
        ($main_inv390 $a4727365 $b4737366 1 $j4757368))))

; loop term $main_sum390
(assert
  (forall (($a4727369 (Array Int Int)) ($b4737370 (Array Int Int)) ($i4747371 Int) ($j4757372 Int))
    (=> (and (not (< $i4747371 100000)))
        ($main_sum390 $a4727369 $b4737370 $i4747371 $j4757372 $a4727369 $b4737370 $i4747371 $j4757372))))

; forwards $main_inv390
(assert
  (forall (($a4727369 (Array Int Int)) ($j4757372 Int) ($b4737370 (Array Int Int)) ($i4747371 Int))
    (=> (and (< $i4747371 100000)
             ($main_inv390 $a4727369 $b4737370 $i4747371 $j4757372))
        ($main_inv390 (store $a4727369 $j4757372 (select $b4737370 $i4747371)) $b4737370 (+ $i4747371 5) (+ $j4757372 1)))))

; backwards $main_sum390
(assert
  (forall (($b4737370 (Array Int Int)) ($i4747371 Int) ($a4727369 (Array Int Int)) ($i4747375 Int) ($j4757376 Int) ($j4757372 Int) ($a4727373 (Array Int Int)) ($b4737374 (Array Int Int)))
    (=> (and ($main_sum390 (store $a4727369 $j4757372 (select $b4737370 $i4747371)) $b4737370 (+ $i4747371 5) (+ $j4757372 1) $a4727373 $b4737374 $i4747375 $j4757376)
             (< $i4747371 100000))
        ($main_sum390 $a4727369 $b4737370 $i4747371 $j4757372 $a4727373 $b4737374 $i4747375 $j4757376))))

; loop entry $main_inv391
(assert
  (forall (($a4727377 (Array Int Int)) ($a472 (Array Int Int)) ($j475 Int) ($b473 (Array Int Int)) ($a4727365 (Array Int Int)) ($j4757380 Int) ($i4747379 Int) ($b4737366 (Array Int Int)) ($i474 Int) ($b4737378 (Array Int Int)) ($i4747367 Int) ($j4757368 Int))
    (=> (and ($main_sum390 $a4727365 $b4737366 1 $j4757368 $a4727377 $b4737378 $i4747379 $j4757380)
             ($main_sum389 $a472 $b473 $i474 $j475 $a4727365 $b4737366 $i4747367 $j4757368)
             (= $j475 0)
             (= $i474 0))
        ($main_inv391 $a4727377 $b4737378 1 0))))

; loop term $main_sum391
(assert
  (forall (($a4727381 (Array Int Int)) ($b4737382 (Array Int Int)) ($i4747383 Int) ($j4757384 Int))
    (=> (and (not (< $i4747383 100000)))
        ($main_sum391 $a4727381 $b4737382 $i4747383 $j4757384 $a4727381 $b4737382 $i4747383 $j4757384))))

; __VERIFIER_assert precondition
(assert
  (forall (($a4727381 (Array Int Int)) ($j4757384 Int) ($b4737382 (Array Int Int)) ($i4747383 Int))
    (=> (and (< $i4747383 100000)
             ($main_inv391 $a4727381 $b4737382 $i4747383 $j4757384))
        ($__VERIFIER_assert_pre (ite (= (select $a4727381 $j4757384) (select $b4737382 (+ (* 5 $j4757384) 1))) 1 0)))))

; forwards $main_inv391
(assert
  (forall (($a4727381 (Array Int Int)) ($b4737382 (Array Int Int)) ($i4747383 Int) ($j4757384 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a4727381 $j4757384) (select $b4737382 (+ (* 5 $j4757384) 1))) 1 0))
             (< $i4747383 100000)
             ($main_inv391 $a4727381 $b4737382 $i4747383 $j4757384))
        ($main_inv391 $a4727381 $b4737382 (+ $i4747383 5) (+ $j4757384 1)))))

; backwards $main_sum391
(assert
  (forall (($i4747387 Int) ($j4757388 Int) ($i4747383 Int) ($a4727381 (Array Int Int)) ($a4727385 (Array Int Int)) ($j4757384 Int) ($b4737382 (Array Int Int)) ($b4737386 (Array Int Int)))
    (=> (and ($main_sum391 $a4727381 $b4737382 (+ $i4747383 5) (+ $j4757384 1) $a4727385 $b4737386 $i4747387 $j4757388)
             (__VERIFIER_assert (ite (= (select $a4727381 $j4757384) (select $b4737382 (+ (* 5 $j4757384) 1))) 1 0))
             (< $i4747383 100000))
        ($main_sum391 $a4727381 $b4737382 $i4747383 $j4757384 $a4727385 $b4737386 $i4747387 $j4757388))))

(check-sat)
