(set-logic HORN)

(declare-fun $main_if12 ((Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $main_inv25 ((Array Int Int) Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv26 ((Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if9 (Int) Bool)
(declare-fun $main_if10 ((Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $main_sum28 ((Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $main_sum27 ((Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $main_sum25 ((Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $main_if11 ((Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $main_sum26 ((Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv27 ((Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $main_inv28 ((Array Int Int) Int Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond361 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond361))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if9 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond362 Int))
    (=> (and ($__VERIFIER_assert_if9 cond362))
        (__VERIFIER_assert cond362))))

; loop entry $main_inv25
(assert
  (forall (($x78 Int) ($array73 (Array Int Int)) ($largest276 Int) ($largest175 Int) ($temp77 Int))
        ($main_inv25 $array73 0 $largest175 $largest276 $temp77 $x78)))

; loop term $main_sum25
(assert
  (forall (($largest276366 Int) ($array73363 (Array Int Int)) ($temp77367 Int) ($x78368 Int) ($i74364 Int) ($largest175365 Int))
    (=> (and (not (< $i74364 100000))
             ($main_inv25 $array73363 $i74364 $largest175365 $largest276366 $temp77367 $x78368))
        ($main_sum25 $array73363 $i74364 $largest175365 $largest276366 $temp77367 $x78368))))

; forwards $main_inv25
(assert
  (forall (($int369 Int) ($largest276366 Int) ($array73363 (Array Int Int)) ($temp77367 Int) ($x78368 Int) ($i74364 Int) ($largest175365 Int))
    (=> (and (<= (- 2147483648) $int369)
             (<= $int369 2147483647)
             (< $i74364 100000)
             ($main_inv25 $array73363 $i74364 $largest175365 $largest276366 $temp77367 $x78368))
        ($main_inv25 (store $array73363 $i74364 $int369) (+ $i74364 1) $largest175365 $largest276366 $temp77367 $x78368))))

; if then
(assert
  (forall (($largest276373 Int) ($i74371 Int) ($largest175372 Int) ($x78375 Int) ($array73370 (Array Int Int)) ($temp77374 Int))
    (=> (and (< (select $array73370 0) (select $array73370 1))
             ($main_sum25 $array73370 $i74371 $largest175372 $largest276373 $temp77374 $x78375))
        ($main_if10 $array73370 $i74371 (select $array73370 1) (select $array73370 0) (select $array73370 0) $x78375))))

; if else
(assert
  (forall (($largest276373 Int) ($i74371 Int) ($largest175372 Int) ($x78375 Int) ($array73370 (Array Int Int)) ($temp77374 Int))
    (=> (and (not (< (select $array73370 0) (select $array73370 1)))
             ($main_sum25 $array73370 $i74371 $largest175372 $largest276373 $temp77374 $x78375))
        ($main_if10 $array73370 $i74371 (select $array73370 0) (select $array73370 1) $temp77374 $x78375))))

; loop entry $main_inv26
(assert
  (forall (($largest175378 Int) ($temp77380 Int) ($i74377 Int) ($largest276379 Int) ($array73376 (Array Int Int)) ($x78381 Int))
    (=> (and ($main_if10 $array73376 $i74377 $largest175378 $largest276379 $temp77380 $x78381))
        ($main_inv26 $array73376 2 $largest175378 $largest276379 $temp77380 $x78381))))

; loop term $main_sum26
(assert
  (forall (($largest276385 Int) ($x78387 Int) ($temp77386 Int) ($array73382 (Array Int Int)) ($i74383 Int) ($largest175384 Int))
    (=> (and (not (< $i74383 100000))
             ($main_inv26 $array73382 $i74383 $largest175384 $largest276385 $temp77386 $x78387))
        ($main_sum26 $array73382 $i74383 $largest175384 $largest276385 $temp77386 $x78387))))

; if then
(assert
  (forall (($largest276385 Int) ($x78387 Int) ($temp77386 Int) ($array73382 (Array Int Int)) ($i74383 Int) ($largest175384 Int))
    (=> (and (> (select $array73382 $i74383) $largest276385)
             (not (>= (select $array73382 $i74383) $largest175384))
             (< $i74383 100000)
             ($main_inv26 $array73382 $i74383 $largest175384 $largest276385 $temp77386 $x78387))
        ($main_if11 $array73382 $i74383 $largest175384 (select $array73382 $i74383) $temp77386 $x78387))))

; if else
(assert
  (forall (($largest276385 Int) ($x78387 Int) ($temp77386 Int) ($array73382 (Array Int Int)) ($i74383 Int) ($largest175384 Int))
    (=> (and (not (> (select $array73382 $i74383) $largest276385))
             (not (>= (select $array73382 $i74383) $largest175384))
             (< $i74383 100000)
             ($main_inv26 $array73382 $i74383 $largest175384 $largest276385 $temp77386 $x78387))
        ($main_if11 $array73382 $i74383 $largest175384 $largest276385 $temp77386 $x78387))))

; if then
(assert
  (forall (($largest276385 Int) ($x78387 Int) ($temp77386 Int) ($array73382 (Array Int Int)) ($i74383 Int) ($largest175384 Int))
    (=> (and (>= (select $array73382 $i74383) $largest175384)
             (< $i74383 100000)
             ($main_inv26 $array73382 $i74383 $largest175384 $largest276385 $temp77386 $x78387))
        ($main_if12 $array73382 $i74383 (select $array73382 $i74383) $largest175384 $temp77386 $x78387))))

; if else
(assert
  (forall (($largest175390 Int) ($largest276391 Int) ($temp77392 Int) ($array73388 (Array Int Int)) ($i74389 Int) ($x78393 Int))
    (=> (and ($main_if11 $array73388 $i74389 $largest175390 $largest276391 $temp77392 $x78393))
        ($main_if12 $array73388 $i74389 $largest175390 $largest276391 $temp77392 $x78393))))

; forwards $main_inv26
(assert
  (forall (($x78399 Int) ($largest276397 Int) ($i74395 Int) ($array73394 (Array Int Int)) ($largest175396 Int) ($temp77398 Int))
    (=> (and ($main_if12 $array73394 $i74395 $largest175396 $largest276397 $temp77398 $x78399))
        ($main_inv26 $array73394 (+ $i74395 1) $largest175396 $largest276397 $temp77398 $x78399))))

; loop entry $main_inv27
(assert
  (forall (($largest175402 Int) ($largest276403 Int) ($array73400 (Array Int Int)) ($x78405 Int) ($i74401 Int) ($temp77404 Int))
    (=> (and ($main_sum26 $array73400 $i74401 $largest175402 $largest276403 $temp77404 $x78405))
        ($main_inv27 $array73400 $i74401 $largest175402 $largest276403 $temp77404 0))))

; loop term $main_sum27
(assert
  (forall (($array73406 (Array Int Int)) ($x78411 Int) ($largest276409 Int) ($temp77410 Int) ($largest175408 Int) ($i74407 Int))
    (=> (and (not (< $x78411 100000))
             ($main_inv27 $array73406 $i74407 $largest175408 $largest276409 $temp77410 $x78411))
        ($main_sum27 $array73406 $i74407 $largest175408 $largest276409 $temp77410 $x78411))))

; __VERIFIER_assert precondition
(assert
  (forall (($array73406 (Array Int Int)) ($x78411 Int) ($largest276409 Int) ($temp77410 Int) ($largest175408 Int) ($i74407 Int))
    (=> (and (< $x78411 100000)
             ($main_inv27 $array73406 $i74407 $largest175408 $largest276409 $temp77410 $x78411))
        ($__VERIFIER_assert_pre (ite (<= (select $array73406 $x78411) $largest175408) 1 0)))))

; forwards $main_inv27
(assert
  (forall (($array73406 (Array Int Int)) ($x78411 Int) ($largest276409 Int) ($temp77410 Int) ($largest175408 Int) ($i74407 Int))
    (=> (and (__VERIFIER_assert (ite (<= (select $array73406 $x78411) $largest175408) 1 0))
             (< $x78411 100000)
             ($main_inv27 $array73406 $i74407 $largest175408 $largest276409 $temp77410 $x78411))
        ($main_inv27 $array73406 $i74407 $largest175408 $largest276409 $temp77410 (+ $x78411 1)))))

; loop entry $main_inv28
(assert
  (forall (($i74413 Int) ($largest276415 Int) ($array73412 (Array Int Int)) ($x78417 Int) ($temp77416 Int) ($largest175414 Int))
    (=> (and ($main_sum27 $array73412 $i74413 $largest175414 $largest276415 $temp77416 $x78417))
        ($main_inv28 $array73412 $i74413 $largest175414 $largest276415 $temp77416 0))))

; loop term $main_sum28
(assert
  (forall (($largest276421 Int) ($largest175420 Int) ($temp77422 Int) ($x78423 Int) ($array73418 (Array Int Int)) ($i74419 Int))
    (=> (and (not (< $x78423 100000))
             ($main_inv28 $array73418 $i74419 $largest175420 $largest276421 $temp77422 $x78423))
        ($main_sum28 $array73418 $i74419 $largest175420 $largest276421 $temp77422 $x78423))))

; __VERIFIER_assert precondition
(assert
  (forall (($largest276421 Int) ($largest175420 Int) ($temp77422 Int) ($x78423 Int) ($array73418 (Array Int Int)) ($i74419 Int))
    (=> (and (< $x78423 100000)
             ($main_inv28 $array73418 $i74419 $largest175420 $largest276421 $temp77422 $x78423))
        ($__VERIFIER_assert_pre (ite (or (<= (select $array73418 $x78423) $largest276421) (= (select $array73418 $x78423) $largest175420)) 1 0)))))

; forwards $main_inv28
(assert
  (forall (($largest276421 Int) ($largest175420 Int) ($temp77422 Int) ($x78423 Int) ($array73418 (Array Int Int)) ($i74419 Int))
    (=> (and (__VERIFIER_assert (ite (or (<= (select $array73418 $x78423) $largest276421) (= (select $array73418 $x78423) $largest175420)) 1 0))
             (< $x78423 100000)
             ($main_inv28 $array73418 $i74419 $largest175420 $largest276421 $temp77422 $x78423))
        ($main_inv28 $array73418 $i74419 $largest175420 $largest276421 $temp77422 (+ $x78423 1)))))

(check-sat)
