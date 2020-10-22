(set-logic HORN)

(declare-fun $main_sum292 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if760 (Int Int) Bool)
(declare-fun $main_if761 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_nondet_unsigned_int (Int) Bool)
(declare-fun $main_sum290 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_if759 (Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_inv292 (Int Int Int Int Int Int) Bool)
(declare-fun $main_inv290 (Int Int Int Int Int Int) Bool)
(declare-fun $main_sum291 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv291 (Int Int Int Int Int Int) Bool)
(declare-fun $main_if763 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_unsigned_int_pre () Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_if762 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if759 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond17355 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if759 cond cond17355))
        (assume_abort_if_not cond17355))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond17356 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond17356))
        false)))

; if then
(assert
  (forall ((cond Int) (cond17356 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond17356))
        ($__VERIFIER_assert_if760 cond cond17356))))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if760 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond17357 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if760 cond cond17357))
        (__VERIFIER_assert cond17357))))

; assume_abort_if_not precondition
(assert
  (forall (($int17358 Int) ($int17359 Int))
    (=> (and (<= 0 $int17359)
             (<= $int17359 4294967295)
             (<= 0 $int17358)
             (<= $int17358 4294967295))
        ($assume_abort_if_not_pre (ite (>= $int17358 1) 1 0)))))

; assume_abort_if_not precondition
(assert
  (forall (($int17359 Int) ($int17358 Int))
    (=> (and (assume_abort_if_not (ite (>= $int17358 1) 1 0))
             (<= 0 $int17359)
             (<= $int17359 4294967295)
             (<= 0 $int17358)
             (<= $int17358 4294967295))
        ($assume_abort_if_not_pre (ite (>= $int17359 1) 1 0)))))

; assume_abort_if_not precondition
(assert
  (forall (($int17358 Int) ($int17359 Int))
    (=> (and (assume_abort_if_not (ite (>= $int17359 1) 1 0))
             (assume_abort_if_not (ite (>= $int17358 1) 1 0))
             (<= 0 $int17359)
             (<= $int17359 4294967295)
             (<= 0 $int17358)
             (<= $int17358 4294967295))
        ($assume_abort_if_not_pre (ite (<= $int17358 65535) 1 0)))))

; assume_abort_if_not precondition
(assert
  (forall (($int17359 Int) ($int17358 Int))
    (=> (and (assume_abort_if_not (ite (<= $int17358 65535) 1 0))
             (assume_abort_if_not (ite (>= $int17359 1) 1 0))
             (assume_abort_if_not (ite (>= $int17358 1) 1 0))
             (<= 0 $int17359)
             (<= $int17359 4294967295)
             (<= 0 $int17358)
             (<= $int17358 4294967295))
        ($assume_abort_if_not_pre (ite (<= $int17359 65535) 1 0)))))

; loop entry $main_inv290
(assert
  (forall (($int17358 Int) ($int17359 Int))
    (=> (and (assume_abort_if_not (ite (<= $int17359 65535) 1 0))
             (assume_abort_if_not (ite (<= $int17358 65535) 1 0))
             (assume_abort_if_not (ite (>= $int17359 1) 1 0))
             (assume_abort_if_not (ite (>= $int17358 1) 1 0))
             (<= 0 $int17359)
             (<= $int17359 4294967295)
             (<= 0 $int17358)
             (<= $int17358 4294967295))
        ($main_inv290 $int17358 $int17359 $int17358 $int17359 $int17359 0))))

; loop term $main_sum290
(assert
  (forall (($b83617361 Int) ($x83717362 Int) ($u83917364 Int) ($y83817363 Int) ($a83517360 Int) ($v84017365 Int))
    (=> (and (= 1 0))
        ($main_sum290 $a83517360 $b83617361 $x83717362 $y83817363 $u83917364 $v84017365 $a83517360 $b83617361 $x83717362 $y83817363 $u83917364 $v84017365))))

; __VERIFIER_assert precondition
(assert
  (forall (($b83617361 Int) ($x83717362 Int) ($u83917364 Int) ($y83817363 Int) ($a83517360 Int) ($v84017365 Int))
    (=> (and (not (= 1 0))
             ($main_inv290 $a83517360 $b83617361 $x83717362 $y83817363 $u83917364 $v84017365))
        ($__VERIFIER_assert_pre (ite (= (+ (* $x83717362 $u83917364) (* $y83817363 $v84017365)) (* $a83517360 $b83617361)) 1 0)))))

; break $main_sum290
(assert
  (forall (($b83617361 Int) ($x83717362 Int) ($u83917364 Int) ($y83817363 Int) ($a83517360 Int) ($v84017365 Int))
    (=> (and (= $x83717362 $y83817363)
             (__VERIFIER_assert (ite (= (+ (* $x83717362 $u83917364) (* $y83817363 $v84017365)) (* $a83517360 $b83617361)) 1 0))
             (not (= 1 0))
             ($main_inv290 $a83517360 $b83617361 $x83717362 $y83817363 $u83917364 $v84017365))
        ($main_sum290 $a83517360 $b83617361 $x83717362 $y83817363 $u83917364 $v84017365 $a83517360 $b83617361 $x83717362 $y83817363 $u83917364 $v84017365))))

; if else
(assert
  (forall (($b83617361 Int) ($x83717362 Int) ($u83917364 Int) ($y83817363 Int) ($a83517360 Int) ($v84017365 Int))
    (=> (and (not (= $x83717362 $y83817363))
             (__VERIFIER_assert (ite (= (+ (* $x83717362 $u83917364) (* $y83817363 $v84017365)) (* $a83517360 $b83617361)) 1 0))
             (not (= 1 0))
             ($main_inv290 $a83517360 $b83617361 $x83717362 $y83817363 $u83917364 $v84017365))
        ($main_if761 $a83517360 $b83617361 $x83717362 $y83817363 $u83917364 $v84017365 $a83517360 $b83617361 $x83717362 $y83817363 $u83917364 $v84017365))))

; loop entry $main_inv291
(assert
  (forall (($b83617361 Int) ($x83717362 Int) ($a83517366 Int) ($b83617367 Int) ($u83917370 Int) ($u83917364 Int) ($y83817369 Int) ($y83817363 Int) ($v84017365 Int) ($v84017371 Int) ($a83517360 Int) ($x83717368 Int))
    (=> (and ($main_if761 $a83517360 $b83617361 $x83717362 $y83817363 $u83917364 $v84017365 $a83517366 $b83617367 $x83717368 $y83817369 $u83917370 $v84017371))
        ($main_inv291 $a83517366 $b83617367 $x83717368 $y83817369 $u83917370 $v84017371))))

; loop term $main_sum291
(assert
  (forall (($a83517372 Int) ($u83917376 Int) ($y83817375 Int) ($x83717374 Int) ($v84017377 Int) ($b83617373 Int))
    (=> (and (= 1 0))
        ($main_sum291 $a83517372 $b83617373 $x83717374 $y83817375 $u83917376 $v84017377 $a83517372 $b83617373 $x83717374 $y83817375 $u83917376 $v84017377))))

; __VERIFIER_assert precondition
(assert
  (forall (($a83517372 Int) ($u83917376 Int) ($y83817375 Int) ($x83717374 Int) ($v84017377 Int) ($b83617373 Int))
    (=> (and (not (= 1 0))
             ($main_inv291 $a83517372 $b83617373 $x83717374 $y83817375 $u83917376 $v84017377))
        ($__VERIFIER_assert_pre (ite (= (+ (* $x83717374 $u83917376) (* $y83817375 $v84017377)) (* $a83517372 $b83617373)) 1 0)))))

; break $main_sum291
(assert
  (forall (($a83517372 Int) ($u83917376 Int) ($y83817375 Int) ($x83717374 Int) ($v84017377 Int) ($b83617373 Int))
    (=> (and (not (> $x83717374 $y83817375))
             (__VERIFIER_assert (ite (= (+ (* $x83717374 $u83917376) (* $y83817375 $v84017377)) (* $a83517372 $b83617373)) 1 0))
             (not (= 1 0))
             ($main_inv291 $a83517372 $b83617373 $x83717374 $y83817375 $u83917376 $v84017377))
        ($main_sum291 $a83517372 $b83617373 $x83717374 $y83817375 $u83917376 $v84017377 $a83517372 $b83617373 $x83717374 $y83817375 $u83917376 $v84017377))))

; if else
(assert
  (forall (($a83517372 Int) ($u83917376 Int) ($y83817375 Int) ($x83717374 Int) ($v84017377 Int) ($b83617373 Int))
    (=> (and (> $x83717374 $y83817375)
             (__VERIFIER_assert (ite (= (+ (* $x83717374 $u83917376) (* $y83817375 $v84017377)) (* $a83517372 $b83617373)) 1 0))
             (not (= 1 0))
             ($main_inv291 $a83517372 $b83617373 $x83717374 $y83817375 $u83917376 $v84017377))
        ($main_if762 $a83517372 $b83617373 $x83717374 $y83817375 $u83917376 $v84017377 $a83517372 $b83617373 $x83717374 $y83817375 $u83917376 $v84017377))))

; forwards $main_inv291
(assert
  (forall (($b83617379 Int) ($y83817381 Int) ($v84017383 Int) ($a83517372 Int) ($u83917382 Int) ($u83917376 Int) ($a83517378 Int) ($x83717380 Int) ($y83817375 Int) ($x83717374 Int) ($v84017377 Int) ($b83617373 Int))
    (=> (and ($main_if762 $a83517372 $b83617373 $x83717374 $y83817375 $u83917376 $v84017377 $a83517378 $b83617379 $x83717380 $y83817381 $u83917382 $v84017383))
        ($main_inv291 $a83517378 $b83617379 (- $x83717380 $y83817381) $y83817381 $u83917382 (+ $v84017383 $u83917382)))))

; backwards $main_sum291
(assert
  (forall (($b83617379 Int) ($x83717386 Int) ($y83817381 Int) ($a83517372 Int) ($u83917382 Int) ($b83617385 Int) ($a83517378 Int) ($y83817375 Int) ($x83717374 Int) ($u83917388 Int) ($v84017383 Int) ($y83817387 Int) ($v84017377 Int) ($b83617373 Int) ($a83517384 Int) ($u83917376 Int) ($x83717380 Int) ($v84017389 Int))
    (=> (and ($main_sum291 $a83517378 $b83617379 (- $x83717380 $y83817381) $y83817381 $u83917382 (+ $v84017383 $u83917382) $a83517384 $b83617385 $x83717386 $y83817387 $u83917388 $v84017389)
             ($main_if762 $a83517372 $b83617373 $x83717374 $y83817375 $u83917376 $v84017377 $a83517378 $b83617379 $x83717380 $y83817381 $u83917382 $v84017383))
        ($main_sum291 $a83517372 $b83617373 $x83717374 $y83817375 $u83917376 $v84017377 $a83517384 $b83617385 $x83717386 $y83817387 $u83917388 $v84017389))))

; loop entry $main_inv292
(assert
  (forall (($b83617361 Int) ($b83617391 Int) ($x83717362 Int) ($b83617367 Int) ($u83917370 Int) ($u83917364 Int) ($y83817369 Int) ($a83517390 Int) ($u83917394 Int) ($y83817363 Int) ($y83817393 Int) ($v84017365 Int) ($a83517366 Int) ($x83717392 Int) ($v84017371 Int) ($a83517360 Int) ($x83717368 Int) ($v84017395 Int))
    (=> (and ($main_sum291 $a83517366 $b83617367 $x83717368 $y83817369 $u83917370 $v84017371 $a83517390 $b83617391 $x83717392 $y83817393 $u83917394 $v84017395)
             ($main_if761 $a83517360 $b83617361 $x83717362 $y83817363 $u83917364 $v84017365 $a83517366 $b83617367 $x83717368 $y83817369 $u83917370 $v84017371))
        ($main_inv292 $a83517390 $b83617391 $x83717392 $y83817393 $u83917394 $v84017395))))

; loop term $main_sum292
(assert
  (forall (($u83917400 Int) ($x83717398 Int) ($y83817399 Int) ($a83517396 Int) ($v84017401 Int) ($b83617397 Int))
    (=> (and (= 1 0))
        ($main_sum292 $a83517396 $b83617397 $x83717398 $y83817399 $u83917400 $v84017401 $a83517396 $b83617397 $x83717398 $y83817399 $u83917400 $v84017401))))

; __VERIFIER_assert precondition
(assert
  (forall (($u83917400 Int) ($x83717398 Int) ($y83817399 Int) ($a83517396 Int) ($v84017401 Int) ($b83617397 Int))
    (=> (and (not (= 1 0))
             ($main_inv292 $a83517396 $b83617397 $x83717398 $y83817399 $u83917400 $v84017401))
        ($__VERIFIER_assert_pre (ite (= (+ (* $x83717398 $u83917400) (* $y83817399 $v84017401)) (* $a83517396 $b83617397)) 1 0)))))

; break $main_sum292
(assert
  (forall (($u83917400 Int) ($x83717398 Int) ($y83817399 Int) ($a83517396 Int) ($v84017401 Int) ($b83617397 Int))
    (=> (and (not (< $x83717398 $y83817399))
             (__VERIFIER_assert (ite (= (+ (* $x83717398 $u83917400) (* $y83817399 $v84017401)) (* $a83517396 $b83617397)) 1 0))
             (not (= 1 0))
             ($main_inv292 $a83517396 $b83617397 $x83717398 $y83817399 $u83917400 $v84017401))
        ($main_sum292 $a83517396 $b83617397 $x83717398 $y83817399 $u83917400 $v84017401 $a83517396 $b83617397 $x83717398 $y83817399 $u83917400 $v84017401))))

; if else
(assert
  (forall (($u83917400 Int) ($x83717398 Int) ($y83817399 Int) ($a83517396 Int) ($v84017401 Int) ($b83617397 Int))
    (=> (and (< $x83717398 $y83817399)
             (__VERIFIER_assert (ite (= (+ (* $x83717398 $u83917400) (* $y83817399 $v84017401)) (* $a83517396 $b83617397)) 1 0))
             (not (= 1 0))
             ($main_inv292 $a83517396 $b83617397 $x83717398 $y83817399 $u83917400 $v84017401))
        ($main_if763 $a83517396 $b83617397 $x83717398 $y83817399 $u83917400 $v84017401 $a83517396 $b83617397 $x83717398 $y83817399 $u83917400 $v84017401))))

; forwards $main_inv292
(assert
  (forall (($u83917400 Int) ($u83917406 Int) ($x83717404 Int) ($a83517402 Int) ($x83717398 Int) ($a83517396 Int) ($v84017407 Int) ($y83817405 Int) ($b83617403 Int) ($y83817399 Int) ($v84017401 Int) ($b83617397 Int))
    (=> (and ($main_if763 $a83517396 $b83617397 $x83717398 $y83817399 $u83917400 $v84017401 $a83517402 $b83617403 $x83717404 $y83817405 $u83917406 $v84017407))
        ($main_inv292 $a83517402 $b83617403 $x83717404 (- $y83817405 $x83717404) (+ $u83917406 $v84017407) $v84017407))))

; backwards $main_sum292
(assert
  (forall (($u83917400 Int) ($b83617409 Int) ($u83917406 Int) ($x83717404 Int) ($a83517402 Int) ($u83917412 Int) ($x83717398 Int) ($a83517396 Int) ($v84017407 Int) ($a83517408 Int) ($y83817405 Int) ($x83717410 Int) ($b83617403 Int) ($y83817399 Int) ($y83817411 Int) ($v84017413 Int) ($v84017401 Int) ($b83617397 Int))
    (=> (and ($main_sum292 $a83517402 $b83617403 $x83717404 (- $y83817405 $x83717404) (+ $u83917406 $v84017407) $v84017407 $a83517408 $b83617409 $x83717410 $y83817411 $u83917412 $v84017413)
             ($main_if763 $a83517396 $b83617397 $x83717398 $y83817399 $u83917400 $v84017401 $a83517402 $b83617403 $x83717404 $y83817405 $u83917406 $v84017407))
        ($main_sum292 $a83517396 $b83617397 $x83717398 $y83817399 $u83917400 $v84017401 $a83517408 $b83617409 $x83717410 $y83817411 $u83917412 $v84017413))))

; forwards $main_inv290
(assert
  (forall (($b83617361 Int) ($b83617391 Int) ($x83717362 Int) ($x83717416 Int) ($b83617415 Int) ($y83817417 Int) ($u83917370 Int) ($u83917364 Int) ($y83817369 Int) ($u83917394 Int) ($y83817363 Int) ($y83817393 Int) ($v84017419 Int) ($v84017365 Int) ($a83517366 Int) ($x83717392 Int) ($b83617367 Int) ($a83517414 Int) ($u83917418 Int) ($a83517390 Int) ($v84017371 Int) ($a83517360 Int) ($x83717368 Int) ($v84017395 Int))
    (=> (and ($main_sum292 $a83517390 $b83617391 $x83717392 $y83817393 $u83917394 $v84017395 $a83517414 $b83617415 $x83717416 $y83817417 $u83917418 $v84017419)
             ($main_sum291 $a83517366 $b83617367 $x83717368 $y83817369 $u83917370 $v84017371 $a83517390 $b83617391 $x83717392 $y83817393 $u83917394 $v84017395)
             ($main_if761 $a83517360 $b83617361 $x83717362 $y83817363 $u83917364 $v84017365 $a83517366 $b83617367 $x83717368 $y83817369 $u83917370 $v84017371))
        ($main_inv290 $a83517414 $b83617415 $x83717416 $y83817417 $u83917418 $v84017419))))

; backwards $main_sum290
(assert
  (forall (($b83617361 Int) ($x83717362 Int) ($x83717416 Int) ($y83817417 Int) ($u83917370 Int) ($u83917364 Int) ($y83817369 Int) ($u83917394 Int) ($y83817363 Int) ($y83817393 Int) ($x83717422 Int) ($v84017419 Int) ($v84017365 Int) ($b83617421 Int) ($u83917424 Int) ($b83617391 Int) ($a83517366 Int) ($x83717392 Int) ($b83617367 Int) ($a83517414 Int) ($b83617415 Int) ($v84017425 Int) ($a83517420 Int) ($y83817423 Int) ($u83917418 Int) ($a83517390 Int) ($v84017371 Int) ($a83517360 Int) ($x83717368 Int) ($v84017395 Int))
    (=> (and ($main_sum290 $a83517414 $b83617415 $x83717416 $y83817417 $u83917418 $v84017419 $a83517420 $b83617421 $x83717422 $y83817423 $u83917424 $v84017425)
             ($main_sum292 $a83517390 $b83617391 $x83717392 $y83817393 $u83917394 $v84017395 $a83517414 $b83617415 $x83717416 $y83817417 $u83917418 $v84017419)
             ($main_sum291 $a83517366 $b83617367 $x83717368 $y83817369 $u83917370 $v84017371 $a83517390 $b83617391 $x83717392 $y83817393 $u83917394 $v84017395)
             ($main_if761 $a83517360 $b83617361 $x83717362 $y83817363 $u83917364 $v84017365 $a83517366 $b83617367 $x83717368 $y83817369 $u83917370 $v84017371))
        ($main_sum290 $a83517360 $b83617361 $x83717362 $y83817363 $u83917364 $v84017365 $a83517420 $b83617421 $x83717422 $y83817423 $u83917424 $v84017425))))

; __VERIFIER_assert precondition
(assert
  (forall (($v84017431 Int) ($y83817429 Int) ($int17358 Int) ($int17359 Int) ($a83517426 Int) ($x83717428 Int) ($b83617427 Int) ($u83917430 Int))
    (=> (and ($main_sum290 $int17358 $int17359 $int17358 $int17359 $int17359 0 $a83517426 $b83617427 $x83717428 $y83817429 $u83917430 $v84017431)
             (assume_abort_if_not (ite (<= $int17359 65535) 1 0))
             (assume_abort_if_not (ite (<= $int17358 65535) 1 0))
             (assume_abort_if_not (ite (>= $int17359 1) 1 0))
             (assume_abort_if_not (ite (>= $int17358 1) 1 0))
             (<= 0 $int17359)
             (<= $int17359 4294967295)
             (<= 0 $int17358)
             (<= $int17358 4294967295))
        ($__VERIFIER_assert_pre (ite (= (+ (* $u83917430 $y83817429) (* $v84017431 $y83817429)) (* $a83517426 $b83617427)) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($v84017431 Int) ($y83817429 Int) ($int17358 Int) ($int17359 Int) ($a83517426 Int) ($x83717428 Int) ($b83617427 Int) ($u83917430 Int))
    (=> (and (__VERIFIER_assert (ite (= (+ (* $u83917430 $y83817429) (* $v84017431 $y83817429)) (* $a83517426 $b83617427)) 1 0))
             ($main_sum290 $int17358 $int17359 $int17358 $int17359 $int17359 0 $a83517426 $b83617427 $x83717428 $y83817429 $u83917430 $v84017431)
             (assume_abort_if_not (ite (<= $int17359 65535) 1 0))
             (assume_abort_if_not (ite (<= $int17358 65535) 1 0))
             (assume_abort_if_not (ite (>= $int17359 1) 1 0))
             (assume_abort_if_not (ite (>= $int17358 1) 1 0))
             (<= 0 $int17359)
             (<= $int17359 4294967295)
             (<= 0 $int17358)
             (<= $int17358 4294967295))
        ($__VERIFIER_assert_pre (ite (= $x83717428 $y83817429) 1 0)))))

(check-sat)
