(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum233 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_inv231 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum232 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_inv230 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if70 (Int Int) Bool)
(declare-fun $main_inv232 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum230 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_inv233 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum231 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond5343 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond5343))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if70 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5344 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if70 cond cond5344))
        (__VERIFIER_assert cond5344))))

; loop entry $main_inv230
(assert
  (forall (($a331 (Array Int Int)) ($i332 Int) ($x333 Int))
    (=> (and (= $i332 0))
        ($main_inv230 $a331 $i332 $x333))))

; loop term $main_sum230
(assert
  (forall (($a3315345 (Array Int Int)) ($i3325346 Int) ($x3335347 Int))
    (=> (and (not (< $i3325346 100000)))
        ($main_sum230 $a3315345 $i3325346 $x3335347 $a3315345 $i3325346 $x3335347))))

; forwards $main_inv230
(assert
  (forall (($a3315345 (Array Int Int)) ($i3325346 Int) ($x3335347 Int))
    (=> (and (< $i3325346 100000)
             ($main_inv230 $a3315345 $i3325346 $x3335347))
        ($main_inv230 (store $a3315345 $i3325346 42) (+ $i3325346 1) $x3335347))))

; backwards $main_sum230
(assert
  (forall (($i3325346 Int) ($x3335350 Int) ($x3335347 Int) ($a3315345 (Array Int Int)) ($a3315348 (Array Int Int)) ($i3325349 Int))
    (=> (and ($main_sum230 (store $a3315345 $i3325346 42) (+ $i3325346 1) $x3335347 $a3315348 $i3325349 $x3335350)
             (< $i3325346 100000))
        ($main_sum230 $a3315345 $i3325346 $x3335347 $a3315348 $i3325349 $x3335350))))

; loop entry $main_inv231
(assert
  (forall (($a3315351 (Array Int Int)) ($a331 (Array Int Int)) ($x333 Int) ($i332 Int) ($x3335353 Int) ($i3325352 Int))
    (=> (and ($main_sum230 $a331 $i332 $x333 $a3315351 $i3325352 $x3335353)
             (= $i332 0))
        ($main_inv231 $a3315351 0 $x3335353))))

; loop term $main_sum231
(assert
  (forall (($a3315354 (Array Int Int)) ($i3325355 Int) ($x3335356 Int))
    (=> (and (not (< $i3325355 100000)))
        ($main_sum231 $a3315354 $i3325355 $x3335356 $a3315354 $i3325355 $x3335356))))

; forwards $main_inv231
(assert
  (forall (($a3315354 (Array Int Int)) ($i3325355 Int) ($x3335356 Int))
    (=> (and (< $i3325355 100000)
             ($main_inv231 $a3315354 $i3325355 $x3335356))
        ($main_inv231 (store $a3315354 $i3325355 43) (+ $i3325355 1) $x3335356))))

; backwards $main_sum231
(assert
  (forall (($x3335359 Int) ($i3325358 Int) ($i3325355 Int) ($x3335356 Int) ($a3315357 (Array Int Int)) ($a3315354 (Array Int Int)))
    (=> (and ($main_sum231 (store $a3315354 $i3325355 43) (+ $i3325355 1) $x3335356 $a3315357 $i3325358 $x3335359)
             (< $i3325355 100000))
        ($main_sum231 $a3315354 $i3325355 $x3335356 $a3315357 $i3325358 $x3335359))))

; loop entry $main_inv232
(assert
  (forall (($a3315360 (Array Int Int)) ($a3315351 (Array Int Int)) ($x3335362 Int) ($a331 (Array Int Int)) ($x333 Int) ($i3325361 Int) ($i332 Int) ($x3335353 Int) ($i3325352 Int))
    (=> (and ($main_sum231 $a3315351 0 $x3335353 $a3315360 $i3325361 $x3335362)
             ($main_sum230 $a331 $i332 $x333 $a3315351 $i3325352 $x3335353)
             (= $i332 0))
        ($main_inv232 $a3315360 0 $x3335362))))

; loop term $main_sum232
(assert
  (forall (($a3315363 (Array Int Int)) ($i3325364 Int) ($x3335365 Int))
    (=> (and (not (< $i3325364 100000)))
        ($main_sum232 $a3315363 $i3325364 $x3335365 $a3315363 $i3325364 $x3335365))))

; forwards $main_inv232
(assert
  (forall (($a3315363 (Array Int Int)) ($i3325364 Int) ($x3335365 Int))
    (=> (and (< $i3325364 100000)
             ($main_inv232 $a3315363 $i3325364 $x3335365))
        ($main_inv232 (store $a3315363 $i3325364 44) (+ $i3325364 1) $x3335365))))

; backwards $main_sum232
(assert
  (forall (($i3325364 Int) ($x3335368 Int) ($x3335365 Int) ($a3315363 (Array Int Int)) ($a3315366 (Array Int Int)) ($i3325367 Int))
    (=> (and ($main_sum232 (store $a3315363 $i3325364 44) (+ $i3325364 1) $x3335365 $a3315366 $i3325367 $x3335368)
             (< $i3325364 100000))
        ($main_sum232 $a3315363 $i3325364 $x3335365 $a3315366 $i3325367 $x3335368))))

; loop entry $main_inv233
(assert
  (forall (($a3315360 (Array Int Int)) ($a3315351 (Array Int Int)) ($x3335362 Int) ($a331 (Array Int Int)) ($i3325361 Int) ($a3315369 (Array Int Int)) ($i332 Int) ($x3335353 Int) ($i3325352 Int) ($i3325370 Int) ($x333 Int) ($x3335371 Int))
    (=> (and ($main_sum232 $a3315360 0 $x3335362 $a3315369 $i3325370 $x3335371)
             ($main_sum231 $a3315351 0 $x3335353 $a3315360 $i3325361 $x3335362)
             ($main_sum230 $a331 $i332 $x333 $a3315351 $i3325352 $x3335353)
             (= $i332 0))
        ($main_inv233 $a3315369 $i3325370 0))))

; loop term $main_sum233
(assert
  (forall (($a3315372 (Array Int Int)) ($i3325373 Int) ($x3335374 Int))
    (=> (and (not (< $x3335374 100000)))
        ($main_sum233 $a3315372 $i3325373 $x3335374 $a3315372 $i3325373 $x3335374))))

; __VERIFIER_assert precondition
(assert
  (forall (($a3315372 (Array Int Int)) ($x3335374 Int) ($i3325373 Int))
    (=> (and (< $x3335374 100000)
             ($main_inv233 $a3315372 $i3325373 $x3335374))
        ($__VERIFIER_assert_pre (ite (= (select $a3315372 $x3335374) 44) 1 0)))))

; forwards $main_inv233
(assert
  (forall (($a3315372 (Array Int Int)) ($i3325373 Int) ($x3335374 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a3315372 $x3335374) 44) 1 0))
             (< $x3335374 100000)
             ($main_inv233 $a3315372 $i3325373 $x3335374))
        ($main_inv233 $a3315372 $i3325373 (+ $x3335374 1)))))

; backwards $main_sum233
(assert
  (forall (($i3325373 Int) ($a3315375 (Array Int Int)) ($x3335377 Int) ($i3325376 Int) ($x3335374 Int) ($a3315372 (Array Int Int)))
    (=> (and ($main_sum233 $a3315372 $i3325373 (+ $x3335374 1) $a3315375 $i3325376 $x3335377)
             (__VERIFIER_assert (ite (= (select $a3315372 $x3335374) 44) 1 0))
             (< $x3335374 100000))
        ($main_sum233 $a3315372 $i3325373 $x3335374 $a3315375 $i3325376 $x3335377))))

(check-sat)
