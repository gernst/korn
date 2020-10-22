(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_sum21 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int)) Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum19 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int)) Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv20 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $__VERIFIER_assert_if18 (Int Int) Bool)
(declare-fun $main_sum22 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int)) Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum24 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int)) Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $main_inv19 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv24 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv23 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum23 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int)) Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum20 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int)) Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv22 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv21 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond329 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond329))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if18 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond330 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if18 cond cond330))
        (__VERIFIER_assert cond330))))

; loop entry $main_inv19
(assert
  (forall (($B39 (Array Int (Array Int Int))) ($n37 Int) ($m36 Int) ($A38 (Array Int (Array Int Int))) ($C40 (Array Int (Array Int Int))))
    (=> (and (= $n37 1500)
             (= $m36 1000))
        ($main_inv19 0 0 $m36 $n37 $A38 $B39 $C40))))

; loop term $main_sum19
(assert
  (forall (($A38335 (Array Int (Array Int Int))) ($n37334 Int) ($j35332 Int) ($B39336 (Array Int (Array Int Int))) ($C40337 (Array Int (Array Int Int))) ($m36333 Int) ($i34331 Int))
    (=> (and (not (< $i34331 $m36333)))
        ($main_sum19 $i34331 $j35332 $m36333 $n37334 $A38335 $B39336 $C40337 $i34331 $j35332 $m36333 $n37334 $A38335 $B39336 $C40337))))

; loop entry $main_inv20
(assert
  (forall (($A38335 (Array Int (Array Int Int))) ($n37334 Int) ($j35332 Int) ($B39336 (Array Int (Array Int Int))) ($C40337 (Array Int (Array Int Int))) ($m36333 Int) ($i34331 Int))
    (=> (and (< $i34331 $m36333)
             ($main_inv19 $i34331 $j35332 $m36333 $n37334 $A38335 $B39336 $C40337))
        ($main_inv20 $i34331 0 $m36333 $n37334 $A38335 $B39336 $C40337))))

; loop term $main_sum20
(assert
  (forall (($j35339 Int) ($m36340 Int) ($C40344 (Array Int (Array Int Int))) ($i34338 Int) ($B39343 (Array Int (Array Int Int))) ($n37341 Int) ($A38342 (Array Int (Array Int Int))))
    (=> (and (not (< $j35339 $n37341)))
        ($main_sum20 $i34338 $j35339 $m36340 $n37341 $A38342 $B39343 $C40344 $i34338 $j35339 $m36340 $n37341 $A38342 $B39343 $C40344))))

; forwards $main_inv20
(assert
  (forall (($j35339 Int) ($m36340 Int) ($C40344 (Array Int (Array Int Int))) ($uint345 Int) ($B39343 (Array Int (Array Int Int))) ($uint346 Int) ($i34338 Int) ($n37341 Int) ($A38342 (Array Int (Array Int Int))))
    (=> (and (<= 0 $uint346)
             (<= $uint346 4294967295)
             (<= 0 $uint345)
             (<= $uint345 4294967295)
             (< $j35339 $n37341)
             ($main_inv20 $i34338 $j35339 $m36340 $n37341 $A38342 $B39343 $C40344))
        ($main_inv20 $i34338 (+ $j35339 1) $m36340 $n37341 (store $A38342 $i34338 (store (select $A38342 $i34338) $j35339 $uint345)) (store $B39343 $i34338 (store (select $B39343 $i34338) $j35339 $uint346)) $C40344))))

; backwards $main_sum20
(assert
  (forall (($j35339 Int) ($j35348 Int) ($C40344 (Array Int (Array Int Int))) ($uint345 Int) ($A38351 (Array Int (Array Int Int))) ($B39343 (Array Int (Array Int Int))) ($i34347 Int) ($m36340 Int) ($uint346 Int) ($i34338 Int) ($B39352 (Array Int (Array Int Int))) ($n37350 Int) ($C40353 (Array Int (Array Int Int))) ($n37341 Int) ($m36349 Int) ($A38342 (Array Int (Array Int Int))))
    (=> (and ($main_sum20 $i34338 (+ $j35339 1) $m36340 $n37341 (store $A38342 $i34338 (store (select $A38342 $i34338) $j35339 $uint345)) (store $B39343 $i34338 (store (select $B39343 $i34338) $j35339 $uint346)) $C40344 $i34347 $j35348 $m36349 $n37350 $A38351 $B39352 $C40353)
             (<= 0 $uint346)
             (<= $uint346 4294967295)
             (<= 0 $uint345)
             (<= $uint345 4294967295)
             (< $j35339 $n37341))
        ($main_sum20 $i34338 $j35339 $m36340 $n37341 $A38342 $B39343 $C40344 $i34347 $j35348 $m36349 $n37350 $A38351 $B39352 $C40353))))

; forwards $main_inv19
(assert
  (forall (($j35355 Int) ($A38335 (Array Int (Array Int Int))) ($n37334 Int) ($j35332 Int) ($B39336 (Array Int (Array Int Int))) ($C40337 (Array Int (Array Int Int))) ($B39359 (Array Int (Array Int Int))) ($m36356 Int) ($C40360 (Array Int (Array Int Int))) ($i34331 Int) ($A38358 (Array Int (Array Int Int))) ($n37357 Int) ($m36333 Int) ($i34354 Int))
    (=> (and ($main_sum20 $i34331 0 $m36333 $n37334 $A38335 $B39336 $C40337 $i34354 $j35355 $m36356 $n37357 $A38358 $B39359 $C40360)
             (< $i34331 $m36333)
             ($main_inv19 $i34331 $j35332 $m36333 $n37334 $A38335 $B39336 $C40337))
        ($main_inv19 (+ $i34354 1) $j35355 $m36356 $n37357 $A38358 $B39359 $C40360))))

; backwards $main_sum19
(assert
  (forall (($A38335 (Array Int (Array Int Int))) ($n37364 Int) ($n37334 Int) ($j35332 Int) ($C40337 (Array Int (Array Int Int))) ($i34361 Int) ($A38365 (Array Int (Array Int Int))) ($C40367 (Array Int (Array Int Int))) ($m36356 Int) ($C40360 (Array Int (Array Int Int))) ($i34331 Int) ($j35355 Int) ($B39366 (Array Int (Array Int Int))) ($B39336 (Array Int (Array Int Int))) ($j35362 Int) ($A38358 (Array Int (Array Int Int))) ($n37357 Int) ($m36363 Int) ($B39359 (Array Int (Array Int Int))) ($m36333 Int) ($i34354 Int))
    (=> (and ($main_sum19 (+ $i34354 1) $j35355 $m36356 $n37357 $A38358 $B39359 $C40360 $i34361 $j35362 $m36363 $n37364 $A38365 $B39366 $C40367)
             ($main_sum20 $i34331 0 $m36333 $n37334 $A38335 $B39336 $C40337 $i34354 $j35355 $m36356 $n37357 $A38358 $B39359 $C40360)
             (< $i34331 $m36333))
        ($main_sum19 $i34331 $j35332 $m36333 $n37334 $A38335 $B39336 $C40337 $i34361 $j35362 $m36363 $n37364 $A38365 $B39366 $C40367))))

; loop entry $main_inv21
(assert
  (forall (($B39 (Array Int (Array Int Int))) ($n37371 Int) ($m36370 Int) ($B39373 (Array Int (Array Int Int))) ($A38372 (Array Int (Array Int Int))) ($C40374 (Array Int (Array Int Int))) ($n37 Int) ($m36 Int) ($A38 (Array Int (Array Int Int))) ($j35369 Int) ($C40 (Array Int (Array Int Int))) ($i34368 Int))
    (=> (and ($main_sum19 0 0 $m36 $n37 $A38 $B39 $C40 $i34368 $j35369 $m36370 $n37371 $A38372 $B39373 $C40374)
             (= $n37 1500)
             (= $m36 1000))
        ($main_inv21 0 0 $m36370 $n37371 $A38372 $B39373 $C40374))))

; loop term $main_sum21
(assert
  (forall (($C40381 (Array Int (Array Int Int))) ($j35376 Int) ($m36377 Int) ($B39380 (Array Int (Array Int Int))) ($A38379 (Array Int (Array Int Int))) ($n37378 Int) ($i34375 Int))
    (=> (and (not (< $i34375 $m36377)))
        ($main_sum21 $i34375 $j35376 $m36377 $n37378 $A38379 $B39380 $C40381 $i34375 $j35376 $m36377 $n37378 $A38379 $B39380 $C40381))))

; loop entry $main_inv22
(assert
  (forall (($C40381 (Array Int (Array Int Int))) ($j35376 Int) ($m36377 Int) ($B39380 (Array Int (Array Int Int))) ($A38379 (Array Int (Array Int Int))) ($n37378 Int) ($i34375 Int))
    (=> (and (< $i34375 $m36377)
             ($main_inv21 $i34375 $j35376 $m36377 $n37378 $A38379 $B39380 $C40381))
        ($main_inv22 $i34375 0 $m36377 $n37378 $A38379 $B39380 $C40381))))

; loop term $main_sum22
(assert
  (forall (($B39387 (Array Int (Array Int Int))) ($i34382 Int) ($C40388 (Array Int (Array Int Int))) ($m36384 Int) ($n37385 Int) ($j35383 Int) ($A38386 (Array Int (Array Int Int))))
    (=> (and (not (< $j35383 $n37385)))
        ($main_sum22 $i34382 $j35383 $m36384 $n37385 $A38386 $B39387 $C40388 $i34382 $j35383 $m36384 $n37385 $A38386 $B39387 $C40388))))

; forwards $main_inv22
(assert
  (forall (($B39387 (Array Int (Array Int Int))) ($i34382 Int) ($C40388 (Array Int (Array Int Int))) ($m36384 Int) ($n37385 Int) ($j35383 Int) ($A38386 (Array Int (Array Int Int))))
    (=> (and (< $j35383 $n37385)
             ($main_inv22 $i34382 $j35383 $m36384 $n37385 $A38386 $B39387 $C40388))
        ($main_inv22 $i34382 (+ $j35383 1) $m36384 $n37385 $A38386 $B39387 (store $C40388 $i34382 (store (select $C40388 $i34382) $j35383 (+ (select (select $A38386 $i34382) $j35383) (select (select $B39387 $i34382) $j35383))))))))

; backwards $main_sum22
(assert
  (forall (($i34389 Int) ($B39387 (Array Int (Array Int Int))) ($i34382 Int) ($A38393 (Array Int (Array Int Int))) ($B39394 (Array Int (Array Int Int))) ($j35390 Int) ($m36391 Int) ($m36384 Int) ($n37385 Int) ($C40388 (Array Int (Array Int Int))) ($n37392 Int) ($C40395 (Array Int (Array Int Int))) ($j35383 Int) ($A38386 (Array Int (Array Int Int))))
    (=> (and ($main_sum22 $i34382 (+ $j35383 1) $m36384 $n37385 $A38386 $B39387 (store $C40388 $i34382 (store (select $C40388 $i34382) $j35383 (+ (select (select $A38386 $i34382) $j35383) (select (select $B39387 $i34382) $j35383)))) $i34389 $j35390 $m36391 $n37392 $A38393 $B39394 $C40395)
             (< $j35383 $n37385))
        ($main_sum22 $i34382 $j35383 $m36384 $n37385 $A38386 $B39387 $C40388 $i34389 $j35390 $m36391 $n37392 $A38393 $B39394 $C40395))))

; forwards $main_inv21
(assert
  (forall (($i34396 Int) ($j35376 Int) ($n37399 Int) ($j35397 Int) ($B39380 (Array Int (Array Int Int))) ($n37378 Int) ($B39401 (Array Int (Array Int Int))) ($i34375 Int) ($A38400 (Array Int (Array Int Int))) ($C40381 (Array Int (Array Int Int))) ($m36377 Int) ($C40402 (Array Int (Array Int Int))) ($A38379 (Array Int (Array Int Int))) ($m36398 Int))
    (=> (and ($main_sum22 $i34375 0 $m36377 $n37378 $A38379 $B39380 $C40381 $i34396 $j35397 $m36398 $n37399 $A38400 $B39401 $C40402)
             (< $i34375 $m36377)
             ($main_inv21 $i34375 $j35376 $m36377 $n37378 $A38379 $B39380 $C40381))
        ($main_inv21 (+ $i34396 1) $j35397 $m36398 $n37399 $A38400 $B39401 $C40402))))

; backwards $main_sum21
(assert
  (forall (($i34396 Int) ($j35404 Int) ($C40409 (Array Int (Array Int Int))) ($j35376 Int) ($m36405 Int) ($j35397 Int) ($B39380 (Array Int (Array Int Int))) ($B39401 (Array Int (Array Int Int))) ($A38407 (Array Int (Array Int Int))) ($B39408 (Array Int (Array Int Int))) ($i34375 Int) ($A38400 (Array Int (Array Int Int))) ($C40381 (Array Int (Array Int Int))) ($n37399 Int) ($i34403 Int) ($m36377 Int) ($C40402 (Array Int (Array Int Int))) ($A38379 (Array Int (Array Int Int))) ($m36398 Int) ($n37406 Int) ($n37378 Int))
    (=> (and ($main_sum21 (+ $i34396 1) $j35397 $m36398 $n37399 $A38400 $B39401 $C40402 $i34403 $j35404 $m36405 $n37406 $A38407 $B39408 $C40409)
             ($main_sum22 $i34375 0 $m36377 $n37378 $A38379 $B39380 $C40381 $i34396 $j35397 $m36398 $n37399 $A38400 $B39401 $C40402)
             (< $i34375 $m36377))
        ($main_sum21 $i34375 $j35376 $m36377 $n37378 $A38379 $B39380 $C40381 $i34403 $j35404 $m36405 $n37406 $A38407 $B39408 $C40409))))

; loop entry $main_inv23
(assert
  (forall (($B39 (Array Int (Array Int Int))) ($n37371 Int) ($m36370 Int) ($B39373 (Array Int (Array Int Int))) ($j35411 Int) ($n37 Int) ($m36412 Int) ($m36 Int) ($i34410 Int) ($A38 (Array Int (Array Int Int))) ($j35369 Int) ($A38372 (Array Int (Array Int Int))) ($C40416 (Array Int (Array Int Int))) ($n37413 Int) ($C40374 (Array Int (Array Int Int))) ($B39415 (Array Int (Array Int Int))) ($A38414 (Array Int (Array Int Int))) ($C40 (Array Int (Array Int Int))) ($i34368 Int))
    (=> (and ($main_sum21 0 0 $m36370 $n37371 $A38372 $B39373 $C40374 $i34410 $j35411 $m36412 $n37413 $A38414 $B39415 $C40416)
             ($main_sum19 0 0 $m36 $n37 $A38 $B39 $C40 $i34368 $j35369 $m36370 $n37371 $A38372 $B39373 $C40374)
             (= $n37 1500)
             (= $m36 1000))
        ($main_inv23 0 0 $m36412 $n37413 $A38414 $B39415 $C40416))))

; loop term $main_sum23
(assert
  (forall (($m36419 Int) ($n37420 Int) ($A38421 (Array Int (Array Int Int))) ($j35418 Int) ($i34417 Int) ($B39422 (Array Int (Array Int Int))) ($C40423 (Array Int (Array Int Int))))
    (=> (and (not (< $i34417 $m36419)))
        ($main_sum23 $i34417 $j35418 $m36419 $n37420 $A38421 $B39422 $C40423 $i34417 $j35418 $m36419 $n37420 $A38421 $B39422 $C40423))))

; loop entry $main_inv24
(assert
  (forall (($m36419 Int) ($n37420 Int) ($A38421 (Array Int (Array Int Int))) ($j35418 Int) ($i34417 Int) ($B39422 (Array Int (Array Int Int))) ($C40423 (Array Int (Array Int Int))))
    (=> (and (< $i34417 $m36419)
             ($main_inv23 $i34417 $j35418 $m36419 $n37420 $A38421 $B39422 $C40423))
        ($main_inv24 $i34417 0 $m36419 $n37420 $A38421 $B39422 $C40423))))

; loop term $main_sum24
(assert
  (forall (($j35425 Int) ($n37427 Int) ($C40430 (Array Int (Array Int Int))) ($i34424 Int) ($A38428 (Array Int (Array Int Int))) ($m36426 Int) ($B39429 (Array Int (Array Int Int))))
    (=> (and (not (< $j35425 $n37427)))
        ($main_sum24 $i34424 $j35425 $m36426 $n37427 $A38428 $B39429 $C40430 $i34424 $j35425 $m36426 $n37427 $A38428 $B39429 $C40430))))

; __VERIFIER_assert precondition
(assert
  (forall (($j35425 Int) ($n37427 Int) ($C40430 (Array Int (Array Int Int))) ($i34424 Int) ($A38428 (Array Int (Array Int Int))) ($m36426 Int) ($B39429 (Array Int (Array Int Int))))
    (=> (and (< $j35425 $n37427)
             ($main_inv24 $i34424 $j35425 $m36426 $n37427 $A38428 $B39429 $C40430))
        ($__VERIFIER_assert_pre (ite (= (select (select $C40430 $i34424) $j35425) (+ (select (select $A38428 $i34424) $j35425) (select (select $B39429 $i34424) $j35425))) 1 0)))))

; forwards $main_inv24
(assert
  (forall (($j35425 Int) ($n37427 Int) ($C40430 (Array Int (Array Int Int))) ($i34424 Int) ($A38428 (Array Int (Array Int Int))) ($m36426 Int) ($B39429 (Array Int (Array Int Int))))
    (=> (and (__VERIFIER_assert (ite (= (select (select $C40430 $i34424) $j35425) (+ (select (select $A38428 $i34424) $j35425) (select (select $B39429 $i34424) $j35425))) 1 0))
             (< $j35425 $n37427)
             ($main_inv24 $i34424 $j35425 $m36426 $n37427 $A38428 $B39429 $C40430))
        ($main_inv24 $i34424 (+ $j35425 1) $m36426 $n37427 $A38428 $B39429 $C40430))))

; backwards $main_sum24
(assert
  (forall (($j35425 Int) ($i34431 Int) ($A38435 (Array Int (Array Int Int))) ($n37427 Int) ($C40430 (Array Int (Array Int Int))) ($B39436 (Array Int (Array Int Int))) ($j35432 Int) ($i34424 Int) ($A38428 (Array Int (Array Int Int))) ($m36426 Int) ($C40437 (Array Int (Array Int Int))) ($B39429 (Array Int (Array Int Int))) ($n37434 Int) ($m36433 Int))
    (=> (and ($main_sum24 $i34424 (+ $j35425 1) $m36426 $n37427 $A38428 $B39429 $C40430 $i34431 $j35432 $m36433 $n37434 $A38435 $B39436 $C40437)
             (__VERIFIER_assert (ite (= (select (select $C40430 $i34424) $j35425) (+ (select (select $A38428 $i34424) $j35425) (select (select $B39429 $i34424) $j35425))) 1 0))
             (< $j35425 $n37427))
        ($main_sum24 $i34424 $j35425 $m36426 $n37427 $A38428 $B39429 $C40430 $i34431 $j35432 $m36433 $n37434 $A38435 $B39436 $C40437))))

; forwards $main_inv23
(assert
  (forall (($m36419 Int) ($n37420 Int) ($m36440 Int) ($A38421 (Array Int (Array Int Int))) ($j35418 Int) ($B39443 (Array Int (Array Int Int))) ($B39422 (Array Int (Array Int Int))) ($n37441 Int) ($i34438 Int) ($i34417 Int) ($j35439 Int) ($C40423 (Array Int (Array Int Int))) ($C40444 (Array Int (Array Int Int))) ($A38442 (Array Int (Array Int Int))))
    (=> (and ($main_sum24 $i34417 0 $m36419 $n37420 $A38421 $B39422 $C40423 $i34438 $j35439 $m36440 $n37441 $A38442 $B39443 $C40444)
             (< $i34417 $m36419)
             ($main_inv23 $i34417 $j35418 $m36419 $n37420 $A38421 $B39422 $C40423))
        ($main_inv23 (+ $i34438 1) $j35439 $m36440 $n37441 $A38442 $B39443 $C40444))))

; backwards $main_sum23
(assert
  (forall (($j35446 Int) ($m36419 Int) ($n37420 Int) ($m36440 Int) ($A38421 (Array Int (Array Int Int))) ($j35418 Int) ($B39443 (Array Int (Array Int Int))) ($B39422 (Array Int (Array Int Int))) ($n37441 Int) ($B39450 (Array Int (Array Int Int))) ($i34445 Int) ($i34438 Int) ($i34417 Int) ($A38449 (Array Int (Array Int Int))) ($n37448 Int) ($j35439 Int) ($C40423 (Array Int (Array Int Int))) ($C40444 (Array Int (Array Int Int))) ($A38442 (Array Int (Array Int Int))) ($m36447 Int) ($C40451 (Array Int (Array Int Int))))
    (=> (and ($main_sum23 (+ $i34438 1) $j35439 $m36440 $n37441 $A38442 $B39443 $C40444 $i34445 $j35446 $m36447 $n37448 $A38449 $B39450 $C40451)
             ($main_sum24 $i34417 0 $m36419 $n37420 $A38421 $B39422 $C40423 $i34438 $j35439 $m36440 $n37441 $A38442 $B39443 $C40444)
             (< $i34417 $m36419))
        ($main_sum23 $i34417 $j35418 $m36419 $n37420 $A38421 $B39422 $C40423 $i34445 $j35446 $m36447 $n37448 $A38449 $B39450 $C40451))))

(check-sat)
