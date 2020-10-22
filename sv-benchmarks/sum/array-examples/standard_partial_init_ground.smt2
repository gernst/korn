(set-logic HORN)

(declare-fun $main_inv336 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum337 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv339 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if90 (Int Int) Bool)
(declare-fun $main_sum336 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum339 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum338 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_if91 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv337 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv338 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond6394 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond6394))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if90 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6395 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if90 cond cond6395))
        (__VERIFIER_assert cond6395))))

; loop entry $main_inv336
(assert
  (forall (($B388 (Array Int Int)) ($j391 Int) ($A387 (Array Int Int)) ($x392 Int) ($C389 (Array Int Int)))
    (=> (and (= $j391 0))
        ($main_inv336 $A387 $B388 $C389 0 $j391 $x392))))

; loop term $main_sum336
(assert
  (forall (($i3906399 Int) ($j3916400 Int) ($B3886397 (Array Int Int)) ($x3926401 Int) ($C3896398 (Array Int Int)) ($A3876396 (Array Int Int)))
    (=> (and (not (< $i3906399 100000)))
        ($main_sum336 $A3876396 $B3886397 $C3896398 $i3906399 $j3916400 $x3926401 $A3876396 $B3886397 $C3896398 $i3906399 $j3916400 $x3926401))))

; forwards $main_inv336
(assert
  (forall (($i3906399 Int) ($j3916400 Int) ($B3886397 (Array Int Int)) ($int6403 Int) ($x3926401 Int) ($C3896398 (Array Int Int)) ($int6402 Int) ($A3876396 (Array Int Int)))
    (=> (and (<= (- 2147483648) $int6403)
             (<= $int6403 2147483647)
             (<= (- 2147483648) $int6402)
             (<= $int6402 2147483647)
             (< $i3906399 100000)
             ($main_inv336 $A3876396 $B3886397 $C3896398 $i3906399 $j3916400 $x3926401))
        ($main_inv336 (store $A3876396 $i3906399 $int6402) (store $B3886397 $i3906399 $int6403) $C3896398 (+ $i3906399 1) $j3916400 $x3926401))))

; backwards $main_sum336
(assert
  (forall (($i3906399 Int) ($A3876404 (Array Int Int)) ($C3896406 (Array Int Int)) ($B3886405 (Array Int Int)) ($j3916400 Int) ($x3926409 Int) ($j3916408 Int) ($B3886397 (Array Int Int)) ($x3926401 Int) ($C3896398 (Array Int Int)) ($int6403 Int) ($i3906407 Int) ($int6402 Int) ($A3876396 (Array Int Int)))
    (=> (and ($main_sum336 (store $A3876396 $i3906399 $int6402) (store $B3886397 $i3906399 $int6403) $C3896398 (+ $i3906399 1) $j3916400 $x3926401 $A3876404 $B3886405 $C3896406 $i3906407 $j3916408 $x3926409)
             (<= (- 2147483648) $int6403)
             (<= $int6403 2147483647)
             (<= (- 2147483648) $int6402)
             (<= $int6402 2147483647)
             (< $i3906399 100000))
        ($main_sum336 $A3876396 $B3886397 $C3896398 $i3906399 $j3916400 $x3926401 $A3876404 $B3886405 $C3896406 $i3906407 $j3916408 $x3926409))))

; loop entry $main_inv337
(assert
  (forall (($C3896412 (Array Int Int)) ($B388 (Array Int Int)) ($x3926415 Int) ($i3906413 Int) ($j391 Int) ($j3916414 Int) ($A387 (Array Int Int)) ($B3886411 (Array Int Int)) ($A3876410 (Array Int Int)) ($x392 Int) ($C389 (Array Int Int)))
    (=> (and ($main_sum336 $A387 $B388 $C389 0 $j391 $x392 $A3876410 $B3886411 $C3896412 $i3906413 $j3916414 $x3926415)
             (= $j391 0))
        ($main_inv337 $A3876410 $B3886411 $C3896412 0 $j3916414 $x3926415))))

; loop term $main_sum337
(assert
  (forall (($x3926421 Int) ($j3916420 Int) ($B3886417 (Array Int Int)) ($C3896418 (Array Int Int)) ($i3906419 Int) ($A3876416 (Array Int Int)))
    (=> (and (not (< $i3906419 100000)))
        ($main_sum337 $A3876416 $B3886417 $C3896418 $i3906419 $j3916420 $x3926421 $A3876416 $B3886417 $C3896418 $i3906419 $j3916420 $x3926421))))

; if then
(assert
  (forall (($x3926421 Int) ($j3916420 Int) ($B3886417 (Array Int Int)) ($C3896418 (Array Int Int)) ($i3906419 Int) ($A3876416 (Array Int Int)))
    (=> (and (= (select $A3876416 $i3906419) (select $B3886417 $i3906419))
             (< $i3906419 100000)
             ($main_inv337 $A3876416 $B3886417 $C3896418 $i3906419 $j3916420 $x3926421))
        ($main_if91 $A3876416 $B3886417 $C3896418 $i3906419 $j3916420 $x3926421 $A3876416 $B3886417 (store $C3896418 $j3916420 $i3906419) $i3906419 (+ $j3916420 1) $x3926421))))

; if else
(assert
  (forall (($x3926421 Int) ($j3916420 Int) ($B3886417 (Array Int Int)) ($C3896418 (Array Int Int)) ($i3906419 Int) ($A3876416 (Array Int Int)))
    (=> (and (not (= (select $A3876416 $i3906419) (select $B3886417 $i3906419)))
             (< $i3906419 100000)
             ($main_inv337 $A3876416 $B3886417 $C3896418 $i3906419 $j3916420 $x3926421))
        ($main_if91 $A3876416 $B3886417 $C3896418 $i3906419 $j3916420 $x3926421 $A3876416 $B3886417 $C3896418 $i3906419 $j3916420 $x3926421))))

; forwards $main_inv337
(assert
  (forall (($x3926427 Int) ($x3926421 Int) ($j3916420 Int) ($C3896424 (Array Int Int)) ($A3876422 (Array Int Int)) ($C3896418 (Array Int Int)) ($i3906419 Int) ($A3876416 (Array Int Int)) ($j3916426 Int) ($B3886417 (Array Int Int)) ($i3906425 Int) ($B3886423 (Array Int Int)))
    (=> (and ($main_if91 $A3876416 $B3886417 $C3896418 $i3906419 $j3916420 $x3926421 $A3876422 $B3886423 $C3896424 $i3906425 $j3916426 $x3926427))
        ($main_inv337 $A3876422 $B3886423 $C3896424 (+ $i3906425 1) $j3916426 $x3926427))))

; backwards $main_sum337
(assert
  (forall (($j3916432 Int) ($x3926421 Int) ($x3926433 Int) ($j3916420 Int) ($C3896430 (Array Int Int)) ($B3886429 (Array Int Int)) ($A3876422 (Array Int Int)) ($C3896418 (Array Int Int)) ($x3926427 Int) ($i3906431 Int) ($i3906419 Int) ($A3876416 (Array Int Int)) ($A3876428 (Array Int Int)) ($C3896424 (Array Int Int)) ($j3916426 Int) ($B3886417 (Array Int Int)) ($i3906425 Int) ($B3886423 (Array Int Int)))
    (=> (and ($main_sum337 $A3876422 $B3886423 $C3896424 (+ $i3906425 1) $j3916426 $x3926427 $A3876428 $B3886429 $C3896430 $i3906431 $j3916432 $x3926433)
             ($main_if91 $A3876416 $B3886417 $C3896418 $i3906419 $j3916420 $x3926421 $A3876422 $B3886423 $C3896424 $i3906425 $j3916426 $x3926427))
        ($main_sum337 $A3876416 $B3886417 $C3896418 $i3906419 $j3916420 $x3926421 $A3876428 $B3886429 $C3896430 $i3906431 $j3916432 $x3926433))))

; loop entry $main_inv338
(assert
  (forall (($B388 (Array Int Int)) ($x3926415 Int) ($i3906413 Int) ($B3886435 (Array Int Int)) ($j391 Int) ($A3876434 (Array Int Int)) ($j3916438 Int) ($j3916414 Int) ($C3896412 (Array Int Int)) ($C3896436 (Array Int Int)) ($i3906437 Int) ($B3886411 (Array Int Int)) ($A3876410 (Array Int Int)) ($x392 Int) ($C389 (Array Int Int)) ($A387 (Array Int Int)) ($x3926439 Int))
    (=> (and ($main_sum337 $A3876410 $B3886411 $C3896412 0 $j3916414 $x3926415 $A3876434 $B3886435 $C3896436 $i3906437 $j3916438 $x3926439)
             ($main_sum336 $A387 $B388 $C389 0 $j391 $x392 $A3876410 $B3886411 $C3896412 $i3906413 $j3916414 $x3926415)
             (= $j391 0))
        ($main_inv338 $A3876434 $B3886435 $C3896436 $i3906437 $j3916438 0))))

; loop term $main_sum338
(assert
  (forall (($x3926445 Int) ($j3916444 Int) ($i3906443 Int) ($C3896442 (Array Int Int)) ($A3876440 (Array Int Int)) ($B3886441 (Array Int Int)))
    (=> (and (not (< $x3926445 $j3916444)))
        ($main_sum338 $A3876440 $B3886441 $C3896442 $i3906443 $j3916444 $x3926445 $A3876440 $B3886441 $C3896442 $i3906443 $j3916444 $x3926445))))

; __VERIFIER_assert precondition
(assert
  (forall (($x3926445 Int) ($j3916444 Int) ($i3906443 Int) ($C3896442 (Array Int Int)) ($A3876440 (Array Int Int)) ($B3886441 (Array Int Int)))
    (=> (and (< $x3926445 $j3916444)
             ($main_inv338 $A3876440 $B3886441 $C3896442 $i3906443 $j3916444 $x3926445))
        ($__VERIFIER_assert_pre (ite (<= (select $C3896442 $x3926445) (- (+ $x3926445 $i3906443) $j3916444)) 1 0)))))

; forwards $main_inv338
(assert
  (forall (($x3926445 Int) ($j3916444 Int) ($i3906443 Int) ($C3896442 (Array Int Int)) ($A3876440 (Array Int Int)) ($B3886441 (Array Int Int)))
    (=> (and (__VERIFIER_assert (ite (<= (select $C3896442 $x3926445) (- (+ $x3926445 $i3906443) $j3916444)) 1 0))
             (< $x3926445 $j3916444)
             ($main_inv338 $A3876440 $B3886441 $C3896442 $i3906443 $j3916444 $x3926445))
        ($main_inv338 $A3876440 $B3886441 $C3896442 $i3906443 $j3916444 (+ $x3926445 1)))))

; backwards $main_sum338
(assert
  (forall (($x3926445 Int) ($j3916450 Int) ($j3916444 Int) ($i3906443 Int) ($C3896442 (Array Int Int)) ($A3876440 (Array Int Int)) ($C3896448 (Array Int Int)) ($B3886441 (Array Int Int)) ($A3876446 (Array Int Int)) ($B3886447 (Array Int Int)) ($x3926451 Int) ($i3906449 Int))
    (=> (and ($main_sum338 $A3876440 $B3886441 $C3896442 $i3906443 $j3916444 (+ $x3926445 1) $A3876446 $B3886447 $C3896448 $i3906449 $j3916450 $x3926451)
             (__VERIFIER_assert (ite (<= (select $C3896442 $x3926445) (- (+ $x3926445 $i3906443) $j3916444)) 1 0))
             (< $x3926445 $j3916444))
        ($main_sum338 $A3876440 $B3886441 $C3896442 $i3906443 $j3916444 $x3926445 $A3876446 $B3886447 $C3896448 $i3906449 $j3916450 $x3926451))))

; loop entry $main_inv339
(assert
  (forall (($B388 (Array Int Int)) ($x3926457 Int) ($x3926415 Int) ($B3886435 (Array Int Int)) ($A3876452 (Array Int Int)) ($j391 Int) ($j3916414 Int) ($C3896412 (Array Int Int)) ($C3896436 (Array Int Int)) ($i3906437 Int) ($C3896454 (Array Int Int)) ($B3886453 (Array Int Int)) ($i3906413 Int) ($B3886411 (Array Int Int)) ($A3876410 (Array Int Int)) ($x392 Int) ($C389 (Array Int Int)) ($j3916456 Int) ($A3876434 (Array Int Int)) ($i3906455 Int) ($j3916438 Int) ($A387 (Array Int Int)) ($x3926439 Int))
    (=> (and ($main_sum338 $A3876434 $B3886435 $C3896436 $i3906437 $j3916438 0 $A3876452 $B3886453 $C3896454 $i3906455 $j3916456 $x3926457)
             ($main_sum337 $A3876410 $B3886411 $C3896412 0 $j3916414 $x3926415 $A3876434 $B3886435 $C3896436 $i3906437 $j3916438 $x3926439)
             ($main_sum336 $A387 $B388 $C389 0 $j391 $x392 $A3876410 $B3886411 $C3896412 $i3906413 $j3916414 $x3926415)
             (= $j391 0))
        ($main_inv339 $A3876452 $B3886453 $C3896454 $i3906455 $j3916456 0))))

; loop term $main_sum339
(assert
  (forall (($B3886459 (Array Int Int)) ($i3906461 Int) ($C3896460 (Array Int Int)) ($A3876458 (Array Int Int)) ($j3916462 Int) ($x3926463 Int))
    (=> (and (not (< $x3926463 $j3916462)))
        ($main_sum339 $A3876458 $B3886459 $C3896460 $i3906461 $j3916462 $x3926463 $A3876458 $B3886459 $C3896460 $i3906461 $j3916462 $x3926463))))

; __VERIFIER_assert precondition
(assert
  (forall (($B3886459 (Array Int Int)) ($i3906461 Int) ($C3896460 (Array Int Int)) ($A3876458 (Array Int Int)) ($j3916462 Int) ($x3926463 Int))
    (=> (and (< $x3926463 $j3916462)
             ($main_inv339 $A3876458 $B3886459 $C3896460 $i3906461 $j3916462 $x3926463))
        ($__VERIFIER_assert_pre (ite (>= (select $C3896460 $x3926463) $x3926463) 1 0)))))

; forwards $main_inv339
(assert
  (forall (($B3886459 (Array Int Int)) ($i3906461 Int) ($C3896460 (Array Int Int)) ($A3876458 (Array Int Int)) ($j3916462 Int) ($x3926463 Int))
    (=> (and (__VERIFIER_assert (ite (>= (select $C3896460 $x3926463) $x3926463) 1 0))
             (< $x3926463 $j3916462)
             ($main_inv339 $A3876458 $B3886459 $C3896460 $i3906461 $j3916462 $x3926463))
        ($main_inv339 $A3876458 $B3886459 $C3896460 $i3906461 $j3916462 (+ $x3926463 1)))))

; backwards $main_sum339
(assert
  (forall (($B3886459 (Array Int Int)) ($i3906461 Int) ($C3896460 (Array Int Int)) ($B3886465 (Array Int Int)) ($A3876464 (Array Int Int)) ($C3896466 (Array Int Int)) ($x3926469 Int) ($A3876458 (Array Int Int)) ($j3916462 Int) ($i3906467 Int) ($j3916468 Int) ($x3926463 Int))
    (=> (and ($main_sum339 $A3876458 $B3886459 $C3896460 $i3906461 $j3916462 (+ $x3926463 1) $A3876464 $B3886465 $C3896466 $i3906467 $j3916468 $x3926469)
             (__VERIFIER_assert (ite (>= (select $C3896460 $x3926463) $x3926463) 1 0))
             (< $x3926463 $j3916462))
        ($main_sum339 $A3876458 $B3886459 $C3896460 $i3906461 $j3916462 $x3926463 $A3876464 $B3886465 $C3896466 $i3906467 $j3916468 $x3926469))))

(check-sat)
