(set-logic HORN)

(declare-fun $main_inv163 (Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $__VERIFIER_assert_if551 (Int Int) Bool)
(declare-fun $main_sum163 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv159 (Int Int Int Int) Bool)
(declare-fun $main_inv160 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $main_inv162 (Int Int Int Int) Bool)
(declare-fun $main_sum159 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum160 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum161 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum162 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv161 (Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond14440 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond14440))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if551 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14441 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if551 cond cond14441))
        (__VERIFIER_assert cond14441))))

; loop entry $main_inv159
(assert
  (forall (($z516 Int) ($y515 Int) ($uint14442 Int) ($x514 Int) ($n513 Int))
    (=> (and (= $y515 0)
             (= $x514 $n513)
             (= $n513 $uint14442)
             (<= 0 $uint14442)
             (<= $uint14442 4294967295))
        ($main_inv159 $n513 $x514 $y515 $z516))))

; loop term $main_sum159
(assert
  (forall (($n51314443 Int) ($x51414444 Int) ($y51514445 Int) ($z51614446 Int))
    (=> (and (not (> $x51414444 0)))
        ($main_sum159 $n51314443 $x51414444 $y51514445 $z51614446 $n51314443 $x51414444 $y51514445 $z51614446))))

; forwards $main_inv159
(assert
  (forall (($n51314443 Int) ($x51414444 Int) ($y51514445 Int) ($z51614446 Int))
    (=> (and (> $x51414444 0)
             ($main_inv159 $n51314443 $x51414444 $y51514445 $z51614446))
        ($main_inv159 $n51314443 (- $x51414444 1) (+ $y51514445 1) $z51614446))))

; backwards $main_sum159
(assert
  (forall (($y51514449 Int) ($n51314447 Int) ($x51414444 Int) ($z51614446 Int) ($x51414448 Int) ($z51614450 Int) ($y51514445 Int) ($n51314443 Int))
    (=> (and ($main_sum159 $n51314443 (- $x51414444 1) (+ $y51514445 1) $z51614446 $n51314447 $x51414448 $y51514449 $z51614450)
             (> $x51414444 0))
        ($main_sum159 $n51314443 $x51414444 $y51514445 $z51614446 $n51314447 $x51414448 $y51514449 $z51614450))))

; loop entry $main_inv160
(assert
  (forall (($z516 Int) ($y515 Int) ($y51514453 Int) ($uint14442 Int) ($n51314451 Int) ($x51414452 Int) ($n513 Int) ($z51614454 Int) ($x514 Int))
    (=> (and ($main_sum159 $n513 $x514 $y515 $z516 $n51314451 $x51414452 $y51514453 $z51614454)
             (= $y515 0)
             (= $x514 $n513)
             (= $n513 $uint14442)
             (<= 0 $uint14442)
             (<= $uint14442 4294967295))
        ($main_inv160 $n51314451 $x51414452 $y51514453 $y51514453))))

; loop term $main_sum160
(assert
  (forall (($n51314455 Int) ($x51414456 Int) ($y51514457 Int) ($z51614458 Int))
    (=> (and (not (> $z51614458 0)))
        ($main_sum160 $n51314455 $x51414456 $y51514457 $z51614458 $n51314455 $x51414456 $y51514457 $z51614458))))

; forwards $main_inv160
(assert
  (forall (($n51314455 Int) ($x51414456 Int) ($y51514457 Int) ($z51614458 Int))
    (=> (and (> $z51614458 0)
             ($main_inv160 $n51314455 $x51414456 $y51514457 $z51614458))
        ($main_inv160 $n51314455 (+ $x51414456 1) $y51514457 (- $z51614458 1)))))

; backwards $main_sum160
(assert
  (forall (($x51414460 Int) ($n51314455 Int) ($y51514457 Int) ($y51514461 Int) ($x51414456 Int) ($z51614458 Int) ($n51314459 Int) ($z51614462 Int))
    (=> (and ($main_sum160 $n51314455 (+ $x51414456 1) $y51514457 (- $z51614458 1) $n51314459 $x51414460 $y51514461 $z51614462)
             (> $z51614458 0))
        ($main_sum160 $n51314455 $x51414456 $y51514457 $z51614458 $n51314459 $x51414460 $y51514461 $z51614462))))

; loop entry $main_inv161
(assert
  (forall (($z516 Int) ($y51514465 Int) ($z51614466 Int) ($y515 Int) ($y51514453 Int) ($uint14442 Int) ($x51414464 Int) ($n51314451 Int) ($x51414452 Int) ($n513 Int) ($z51614454 Int) ($x514 Int) ($n51314463 Int))
    (=> (and ($main_sum160 $n51314451 $x51414452 $y51514453 $y51514453 $n51314463 $x51414464 $y51514465 $z51614466)
             ($main_sum159 $n513 $x514 $y515 $z516 $n51314451 $x51414452 $y51514453 $z51614454)
             (= $y515 0)
             (= $x514 $n513)
             (= $n513 $uint14442)
             (<= 0 $uint14442)
             (<= $uint14442 4294967295))
        ($main_inv161 $n51314463 $x51414464 $y51514465 $z51614466))))

; loop term $main_sum161
(assert
  (forall (($n51314467 Int) ($x51414468 Int) ($y51514469 Int) ($z51614470 Int))
    (=> (and (not (> $y51514469 0)))
        ($main_sum161 $n51314467 $x51414468 $y51514469 $z51614470 $n51314467 $x51414468 $y51514469 $z51614470))))

; forwards $main_inv161
(assert
  (forall (($n51314467 Int) ($x51414468 Int) ($y51514469 Int) ($z51614470 Int))
    (=> (and (> $y51514469 0)
             ($main_inv161 $n51314467 $x51414468 $y51514469 $z51614470))
        ($main_inv161 $n51314467 $x51414468 (- $y51514469 1) (+ $z51614470 1)))))

; backwards $main_sum161
(assert
  (forall (($x51414468 Int) ($y51514469 Int) ($y51514473 Int) ($z51614474 Int) ($z51614470 Int) ($n51314467 Int) ($x51414472 Int) ($n51314471 Int))
    (=> (and ($main_sum161 $n51314467 $x51414468 (- $y51514469 1) (+ $z51614470 1) $n51314471 $x51414472 $y51514473 $z51614474)
             (> $y51514469 0))
        ($main_sum161 $n51314467 $x51414468 $y51514469 $z51614470 $n51314471 $x51414472 $y51514473 $z51614474))))

; loop entry $main_inv162
(assert
  (forall (($n51314475 Int) ($z516 Int) ($y51514465 Int) ($z51614466 Int) ($y515 Int) ($y51514453 Int) ($x51414464 Int) ($n51314451 Int) ($z51614478 Int) ($x51414476 Int) ($x51414452 Int) ($n513 Int) ($y51514477 Int) ($uint14442 Int) ($z51614454 Int) ($x514 Int) ($n51314463 Int))
    (=> (and ($main_sum161 $n51314463 $x51414464 $y51514465 $z51614466 $n51314475 $x51414476 $y51514477 $z51614478)
             ($main_sum160 $n51314451 $x51414452 $y51514453 $y51514453 $n51314463 $x51414464 $y51514465 $z51614466)
             ($main_sum159 $n513 $x514 $y515 $z516 $n51314451 $x51414452 $y51514453 $z51614454)
             (= $y515 0)
             (= $x514 $n513)
             (= $n513 $uint14442)
             (<= 0 $uint14442)
             (<= $uint14442 4294967295))
        ($main_inv162 $n51314475 $x51414476 $y51514477 $z51614478))))

; loop term $main_sum162
(assert
  (forall (($n51314479 Int) ($x51414480 Int) ($y51514481 Int) ($z51614482 Int))
    (=> (and (not (> $x51414480 0)))
        ($main_sum162 $n51314479 $x51414480 $y51514481 $z51614482 $n51314479 $x51414480 $y51514481 $z51614482))))

; forwards $main_inv162
(assert
  (forall (($n51314479 Int) ($x51414480 Int) ($y51514481 Int) ($z51614482 Int))
    (=> (and (> $x51414480 0)
             ($main_inv162 $n51314479 $x51414480 $y51514481 $z51614482))
        ($main_inv162 $n51314479 (- $x51414480 1) (+ $y51514481 1) $z51614482))))

; backwards $main_sum162
(assert
  (forall (($x51414484 Int) ($n51314479 Int) ($n51314483 Int) ($z51614482 Int) ($y51514481 Int) ($z51614486 Int) ($y51514485 Int) ($x51414480 Int))
    (=> (and ($main_sum162 $n51314479 (- $x51414480 1) (+ $y51514481 1) $z51614482 $n51314483 $x51414484 $y51514485 $z51614486)
             (> $x51414480 0))
        ($main_sum162 $n51314479 $x51414480 $y51514481 $z51614482 $n51314483 $x51414484 $y51514485 $z51614486))))

; loop entry $main_inv163
(assert
  (forall (($z516 Int) ($y51514465 Int) ($z51614466 Int) ($y51514453 Int) ($x51414464 Int) ($z51614490 Int) ($n51314451 Int) ($z51614478 Int) ($n51314487 Int) ($x51414476 Int) ($x51414452 Int) ($n513 Int) ($n51314475 Int) ($y51514489 Int) ($x51414488 Int) ($y515 Int) ($y51514477 Int) ($uint14442 Int) ($z51614454 Int) ($x514 Int) ($n51314463 Int))
    (=> (and ($main_sum162 $n51314475 $x51414476 $y51514477 $z51614478 $n51314487 $x51414488 $y51514489 $z51614490)
             ($main_sum161 $n51314463 $x51414464 $y51514465 $z51614466 $n51314475 $x51414476 $y51514477 $z51614478)
             ($main_sum160 $n51314451 $x51414452 $y51514453 $y51514453 $n51314463 $x51414464 $y51514465 $z51614466)
             ($main_sum159 $n513 $x514 $y515 $z516 $n51314451 $x51414452 $y51514453 $z51614454)
             (= $y515 0)
             (= $x514 $n513)
             (= $n513 $uint14442)
             (<= 0 $uint14442)
             (<= $uint14442 4294967295))
        ($main_inv163 $n51314487 $x51414488 $y51514489 $z51614490))))

; loop term $main_sum163
(assert
  (forall (($n51314491 Int) ($x51414492 Int) ($y51514493 Int) ($z51614494 Int))
    (=> (and (not (> $z51614494 0)))
        ($main_sum163 $n51314491 $x51414492 $y51514493 $z51614494 $n51314491 $x51414492 $y51514493 $z51614494))))

; forwards $main_inv163
(assert
  (forall (($n51314491 Int) ($x51414492 Int) ($y51514493 Int) ($z51614494 Int))
    (=> (and (> $z51614494 0)
             ($main_inv163 $n51314491 $x51414492 $y51514493 $z51614494))
        ($main_inv163 $n51314491 $x51414492 (- $y51514493 1) (- $z51614494 1)))))

; backwards $main_sum163
(assert
  (forall (($z51614494 Int) ($x51414496 Int) ($z51614498 Int) ($x51414492 Int) ($n51314495 Int) ($y51514497 Int) ($y51514493 Int) ($n51314491 Int))
    (=> (and ($main_sum163 $n51314491 $x51414492 (- $y51514493 1) (- $z51614494 1) $n51314495 $x51414496 $y51514497 $z51614498)
             (> $z51614494 0))
        ($main_sum163 $n51314491 $x51414492 $y51514493 $z51614494 $n51314495 $x51414496 $y51514497 $z51614498))))

; __VERIFIER_assert precondition
(assert
  (forall (($z516 Int) ($y51514465 Int) ($z51614466 Int) ($y51514453 Int) ($z51614490 Int) ($n51314451 Int) ($z51614478 Int) ($n51314487 Int) ($x51414452 Int) ($y51514501 Int) ($n51314499 Int) ($n513 Int) ($n51314475 Int) ($y51514489 Int) ($x51414488 Int) ($y515 Int) ($y51514477 Int) ($uint14442 Int) ($x51414464 Int) ($z51614502 Int) ($x51414500 Int) ($x51414476 Int) ($z51614454 Int) ($x514 Int) ($n51314463 Int))
    (=> (and ($main_sum163 $n51314487 $x51414488 $y51514489 $z51614490 $n51314499 $x51414500 $y51514501 $z51614502)
             ($main_sum162 $n51314475 $x51414476 $y51514477 $z51614478 $n51314487 $x51414488 $y51514489 $z51614490)
             ($main_sum161 $n51314463 $x51414464 $y51514465 $z51614466 $n51314475 $x51414476 $y51514477 $z51614478)
             ($main_sum160 $n51314451 $x51414452 $y51514453 $y51514453 $n51314463 $x51414464 $y51514465 $z51614466)
             ($main_sum159 $n513 $x514 $y515 $z516 $n51314451 $x51414452 $y51514453 $z51614454)
             (= $y515 0)
             (= $x514 $n513)
             (= $n513 $uint14442)
             (<= 0 $uint14442)
             (<= $uint14442 4294967295))
        ($__VERIFIER_assert_pre (ite (= $y51514501 0) 1 0)))))

(check-sat)
