(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv457 (Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_if203 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum455 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if205 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_if206 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum457 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv456 (Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if204 (Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_sum456 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv455 (Int Int Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if203 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond8441 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if203 cond cond8441))
        (assume_abort_if_not cond8441))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond8442 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond8442))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if204 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond8443 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if204 cond cond8443))
        (__VERIFIER_assert cond8443))))

; loop entry $main_inv455
(assert
  (forall (($j583 Int) ($k581 Int) ($n582 Int) ($int8444 Int) ($tmp___1580 Int))
    (=> (and (<= (- 2147483648) $int8444)
             (<= $int8444 2147483647)
             (= $k581 0))
        ($main_inv455 0 $int8444 $tmp___1580 $k581 $n582 $j583))))

; loop term $main_sum455
(assert
  (forall (($pvlen5798446 Int) ($k5818448 Int) ($n5828449 Int) ($j5838450 Int) ($i5788445 Int) ($int8451 Int) ($tmp___15808447 Int))
    (=> (and (not (and (not (= $int8451 0)) (<= $i5788445 1000000)))
             (<= (- 2147483648) $int8451)
             (<= $int8451 2147483647))
        ($main_sum455 $i5788445 $pvlen5798446 $tmp___15808447 $k5818448 $n5828449 $j5838450 $i5788445 $pvlen5798446 $tmp___15808447 $k5818448 $n5828449 $j5838450))))

; forwards $main_inv455
(assert
  (forall (($pvlen5798446 Int) ($k5818448 Int) ($n5828449 Int) ($j5838450 Int) ($i5788445 Int) ($int8451 Int) ($tmp___15808447 Int))
    (=> (and (not (= $int8451 0))
             (<= $i5788445 1000000)
             (<= (- 2147483648) $int8451)
             (<= $int8451 2147483647)
             ($main_inv455 $i5788445 $pvlen5798446 $tmp___15808447 $k5818448 $n5828449 $j5838450))
        ($main_inv455 (+ $i5788445 1) $pvlen5798446 $tmp___15808447 $k5818448 $n5828449 $j5838450))))

; backwards $main_sum455
(assert
  (forall (($k5818448 Int) ($k5818455 Int) ($pvlen5798453 Int) ($i5788452 Int) ($n5828449 Int) ($j5838457 Int) ($j5838450 Int) ($pvlen5798446 Int) ($n5828456 Int) ($int8451 Int) ($tmp___15808447 Int) ($tmp___15808454 Int) ($i5788445 Int))
    (=> (and ($main_sum455 (+ $i5788445 1) $pvlen5798446 $tmp___15808447 $k5818448 $n5828449 $j5838450 $i5788452 $pvlen5798453 $tmp___15808454 $k5818455 $n5828456 $j5838457)
             (not (= $int8451 0))
             (<= $i5788445 1000000)
             (<= (- 2147483648) $int8451)
             (<= $int8451 2147483647))
        ($main_sum455 $i5788445 $pvlen5798446 $tmp___15808447 $k5818448 $n5828449 $j5838450 $i5788452 $pvlen5798453 $tmp___15808454 $k5818455 $n5828456 $j5838457))))

; if then
(assert
  (forall (($k5818461 Int) ($k581 Int) ($n582 Int) ($i5788458 Int) ($tmp___15808460 Int) ($pvlen5798459 Int) ($pvlen579 Int) ($n5828462 Int) ($i578 Int) ($j5838463 Int) ($j583 Int) ($int8444 Int) ($tmp___1580 Int))
    (=> (and (> $i5788458 $pvlen5798459)
             ($main_sum455 0 $int8444 $tmp___1580 $k581 $n582 $j583 $i5788458 $pvlen5798459 $tmp___15808460 $k5818461 $n5828462 $j5838463)
             (<= (- 2147483648) $int8444)
             (<= $int8444 2147483647)
             (= $k581 0))
        ($main_if205 $i578 $pvlen579 $tmp___1580 $k581 $n582 $j583 $i5788458 $i5788458 $tmp___15808460 $k5818461 $n5828462 $j5838463))))

; if else
(assert
  (forall (($k5818461 Int) ($k581 Int) ($n582 Int) ($i5788458 Int) ($tmp___15808460 Int) ($pvlen5798459 Int) ($pvlen579 Int) ($n5828462 Int) ($i578 Int) ($j5838463 Int) ($j583 Int) ($int8444 Int) ($tmp___1580 Int))
    (=> (and (not (> $i5788458 $pvlen5798459))
             ($main_sum455 0 $int8444 $tmp___1580 $k581 $n582 $j583 $i5788458 $pvlen5798459 $tmp___15808460 $k5818461 $n5828462 $j5838463)
             (<= (- 2147483648) $int8444)
             (<= $int8444 2147483647)
             (= $k581 0))
        ($main_if205 $i578 $pvlen579 $tmp___1580 $k581 $n582 $j583 $i5788458 $pvlen5798459 $tmp___15808460 $k5818461 $n5828462 $j5838463))))

; loop entry $main_inv456
(assert
  (forall (($k581 Int) ($n582 Int) ($tmp___15808466 Int) ($n5828468 Int) ($tmp___1580 Int) ($i5788464 Int) ($i578 Int) ($j583 Int) ($k5818467 Int) ($j5838469 Int) ($pvlen579 Int) ($pvlen5798465 Int))
    (=> (and ($main_if205 $i578 $pvlen579 $tmp___1580 $k581 $n582 $j583 $i5788464 $pvlen5798465 $tmp___15808466 $k5818467 $n5828468 $j5838469))
        ($main_inv456 0 $pvlen5798465 $tmp___15808466 $k5818467 $n5828468 $j5838469))))

; loop term $main_sum456
(assert
  (forall (($k5818473 Int) ($j5838475 Int) ($int8476 Int) ($i5788470 Int) ($n5828474 Int) ($pvlen5798471 Int) ($tmp___15808472 Int))
    (=> (and (not (and (not (= $int8476 0)) (<= $i5788470 1000000)))
             (<= (- 2147483648) $int8476)
             (<= $int8476 2147483647))
        ($main_sum456 $i5788470 $pvlen5798471 $tmp___15808472 $k5818473 $n5828474 $j5838475 $i5788470 $pvlen5798471 $tmp___15808472 $k5818473 $n5828474 $j5838475))))

; forwards $main_inv456
(assert
  (forall (($k5818473 Int) ($j5838475 Int) ($int8476 Int) ($i5788470 Int) ($n5828474 Int) ($pvlen5798471 Int) ($tmp___15808472 Int))
    (=> (and (not (= $int8476 0))
             (<= $i5788470 1000000)
             (<= (- 2147483648) $int8476)
             (<= $int8476 2147483647)
             ($main_inv456 $i5788470 $pvlen5798471 $tmp___15808472 $k5818473 $n5828474 $j5838475))
        ($main_inv456 (+ $i5788470 1) $pvlen5798471 $i5788470 (+ $k5818473 1) $n5828474 $j5838475))))

; backwards $main_sum456
(assert
  (forall (($pvlen5798478 Int) ($tmp___15808479 Int) ($n5828481 Int) ($k5818473 Int) ($j5838475 Int) ($int8476 Int) ($k5818480 Int) ($j5838482 Int) ($n5828474 Int) ($pvlen5798471 Int) ($tmp___15808472 Int) ($i5788470 Int) ($i5788477 Int))
    (=> (and ($main_sum456 (+ $i5788470 1) $pvlen5798471 $i5788470 (+ $k5818473 1) $n5828474 $j5838475 $i5788477 $pvlen5798478 $tmp___15808479 $k5818480 $n5828481 $j5838482)
             (not (= $int8476 0))
             (<= $i5788470 1000000)
             (<= (- 2147483648) $int8476)
             (<= $int8476 2147483647))
        ($main_sum456 $i5788470 $pvlen5798471 $tmp___15808472 $k5818473 $n5828474 $j5838475 $i5788477 $pvlen5798478 $tmp___15808479 $k5818480 $n5828481 $j5838482))))

; loop entry $main_inv457
(assert
  (forall (($k581 Int) ($n582 Int) ($j5838488 Int) ($n5828487 Int) ($n5828468 Int) ($tmp___15808485 Int) ($k5818486 Int) ($tmp___1580 Int) ($i5788464 Int) ($pvlen5798484 Int) ($i578 Int) ($j583 Int) ($tmp___15808466 Int) ($i5788483 Int) ($k5818467 Int) ($j5838469 Int) ($pvlen579 Int) ($pvlen5798465 Int))
    (=> (and (= $j5838488 0)
             ($main_sum456 0 $pvlen5798465 $tmp___15808466 $k5818467 $n5828468 $j5838469 $i5788483 $pvlen5798484 $tmp___15808485 $k5818486 $n5828487 $j5838488)
             ($main_if205 $i578 $pvlen579 $tmp___1580 $k581 $n582 $j583 $i5788464 $pvlen5798465 $tmp___15808466 $k5818467 $n5828468 $j5838469))
        ($main_inv457 $i5788483 $pvlen5798484 $tmp___15808485 $k5818486 $i5788483 $j5838488))))

; loop term $main_sum457
(assert
  (forall (($pvlen5798490 Int) ($tmp___15808491 Int) ($i5788489 Int) ($k5818492 Int) ($n5828493 Int) ($j5838494 Int))
    (=> (and (= 1 0))
        ($main_sum457 $i5788489 $pvlen5798490 $tmp___15808491 $k5818492 $n5828493 $j5838494 $i5788489 $pvlen5798490 $tmp___15808491 $k5818492 $n5828493 $j5838494))))

; __VERIFIER_assert precondition
(assert
  (forall (($pvlen5798490 Int) ($tmp___15808491 Int) ($i5788489 Int) ($k5818492 Int) ($n5828493 Int) ($j5838494 Int))
    (=> (and (not (= 1 0))
             ($main_inv457 $i5788489 $pvlen5798490 $tmp___15808491 $k5818492 $n5828493 $j5838494))
        ($__VERIFIER_assert_pre (ite (>= $k5818492 0) 1 0)))))

; break $main_sum457
(assert
  (forall (($pvlen5798490 Int) ($tmp___15808491 Int) ($i5788489 Int) ($k5818492 Int) ($n5828493 Int) ($j5838494 Int))
    (=> (and (>= (+ $j5838494 1) $n5828493)
             (__VERIFIER_assert (ite (>= $k5818492 0) 1 0))
             (not (= 1 0))
             ($main_inv457 $i5788489 $pvlen5798490 $tmp___15808491 $k5818492 $n5828493 $j5838494))
        ($main_sum457 $i5788489 $pvlen5798490 $tmp___15808491 $k5818492 $n5828493 $j5838494 (- $i5788489 1) $pvlen5798490 $tmp___15808491 (- $k5818492 1) $n5828493 (+ $j5838494 1)))))

; if else
(assert
  (forall (($pvlen5798490 Int) ($tmp___15808491 Int) ($i5788489 Int) ($k5818492 Int) ($n5828493 Int) ($j5838494 Int))
    (=> (and (not (>= (+ $j5838494 1) $n5828493))
             (__VERIFIER_assert (ite (>= $k5818492 0) 1 0))
             (not (= 1 0))
             ($main_inv457 $i5788489 $pvlen5798490 $tmp___15808491 $k5818492 $n5828493 $j5838494))
        ($main_if206 $i5788489 $pvlen5798490 $tmp___15808491 $k5818492 $n5828493 $j5838494 (- $i5788489 1) $pvlen5798490 $tmp___15808491 (- $k5818492 1) $n5828493 (+ $j5838494 1)))))

; forwards $main_inv457
(assert
  (forall (($pvlen5798490 Int) ($j5838500 Int) ($tmp___15808491 Int) ($i5788489 Int) ($n5828499 Int) ($n5828493 Int) ($tmp___15808497 Int) ($j5838494 Int) ($k5818492 Int) ($pvlen5798496 Int) ($i5788495 Int) ($k5818498 Int))
    (=> (and ($main_if206 $i5788489 $pvlen5798490 $tmp___15808491 $k5818492 $n5828493 $j5838494 $i5788495 $pvlen5798496 $tmp___15808497 $k5818498 $n5828499 $j5838500))
        ($main_inv457 $i5788495 $pvlen5798496 $tmp___15808497 $k5818498 $n5828499 $j5838500))))

; backwards $main_sum457
(assert
  (forall (($n5828505 Int) ($pvlen5798490 Int) ($j5838506 Int) ($j5838500 Int) ($tmp___15808491 Int) ($i5788489 Int) ($n5828493 Int) ($tmp___15808497 Int) ($i5788501 Int) ($j5838494 Int) ($k5818504 Int) ($pvlen5798502 Int) ($n5828499 Int) ($tmp___15808503 Int) ($k5818492 Int) ($pvlen5798496 Int) ($i5788495 Int) ($k5818498 Int))
    (=> (and ($main_sum457 $i5788495 $pvlen5798496 $tmp___15808497 $k5818498 $n5828499 $j5838500 $i5788501 $pvlen5798502 $tmp___15808503 $k5818504 $n5828505 $j5838506)
             ($main_if206 $i5788489 $pvlen5798490 $tmp___15808491 $k5818492 $n5828493 $j5838494 $i5788495 $pvlen5798496 $tmp___15808497 $k5818498 $n5828499 $j5838500))
        ($main_sum457 $i5788489 $pvlen5798490 $tmp___15808491 $k5818492 $n5828493 $j5838494 $i5788501 $pvlen5798502 $tmp___15808503 $k5818504 $n5828505 $j5838506))))

(check-sat)
