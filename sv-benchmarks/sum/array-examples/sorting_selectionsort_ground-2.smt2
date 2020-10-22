(set-logic HORN)

(declare-fun $main_if32 ((Array Int Int) Int Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum72 ((Array Int Int) Int Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv75 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum71 ((Array Int Int) Int Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv71 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum76 ((Array Int Int) Int Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv72 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum74 ((Array Int Int) Int Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv69 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum69 ((Array Int Int) Int Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if31 (Int Int) Bool)
(declare-fun $main_inv70 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv76 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum70 ((Array Int Int) Int Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv74 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if33 ((Array Int Int) Int Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv73 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum75 ((Array Int Int) Int Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum73 ((Array Int Int) Int Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond1447 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond1447))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if31 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond1448 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if31 cond cond1448))
        (__VERIFIER_assert cond1448))))

; loop entry $main_inv69
(assert
  (forall (($x129 Int) ($k132 Int) ($i128 Int) ($s133 Int) ($i131 Int) ($a127 (Array Int Int)) ($tmp134 Int) ($y130 Int))
    (=> (and (= $i131 0)
             (= $i128 0))
        ($main_inv69 $a127 $i128 $x129 $y130 $i131 $k132 $s133 $tmp134))))

; loop term $main_sum69
(assert
  (forall (($i1311453 Int) ($x1291451 Int) ($s1331455 Int) ($a1271449 (Array Int Int)) ($i1281450 Int) ($y1301452 Int) ($tmp1341456 Int) ($k1321454 Int))
    (=> (and (not (< $i1311453 100000)))
        ($main_sum69 $a1271449 $i1281450 $x1291451 $y1301452 $i1311453 $k1321454 $s1331455 $tmp1341456 $a1271449 $i1281450 $x1291451 $y1301452 $i1311453 $k1321454 $s1331455 $tmp1341456))))

; forwards $main_inv69
(assert
  (forall (($i1311453 Int) ($x1291451 Int) ($s1331455 Int) ($a1271449 (Array Int Int)) ($i1281450 Int) ($y1301452 Int) ($int1457 Int) ($tmp1341456 Int) ($k1321454 Int))
    (=> (and (<= (- 2147483648) $int1457)
             (<= $int1457 2147483647)
             (< $i1311453 100000)
             ($main_inv69 $a1271449 $i1281450 $x1291451 $y1301452 $i1311453 $k1321454 $s1331455 $tmp1341456))
        ($main_inv69 (store $a1271449 $i1311453 $int1457) $i1281450 $x1291451 $y1301452 (+ $i1311453 1) $k1321454 $s1331455 $tmp1341456))))

; backwards $main_sum69
(assert
  (forall (($i1311453 Int) ($x1291451 Int) ($s1331455 Int) ($i1281459 Int) ($a1271449 (Array Int Int)) ($i1311462 Int) ($i1281450 Int) ($y1301452 Int) ($tmp1341456 Int) ($k1321454 Int) ($tmp1341465 Int) ($y1301461 Int) ($s1331464 Int) ($x1291460 Int) ($k1321463 Int) ($int1457 Int) ($a1271458 (Array Int Int)))
    (=> (and ($main_sum69 (store $a1271449 $i1311453 $int1457) $i1281450 $x1291451 $y1301452 (+ $i1311453 1) $k1321454 $s1331455 $tmp1341456 $a1271458 $i1281459 $x1291460 $y1301461 $i1311462 $k1321463 $s1331464 $tmp1341465)
             (<= (- 2147483648) $int1457)
             (<= $int1457 2147483647)
             (< $i1311453 100000))
        ($main_sum69 $a1271449 $i1281450 $x1291451 $y1301452 $i1311453 $k1321454 $s1331455 $tmp1341456 $a1271458 $i1281459 $x1291460 $y1301461 $i1311462 $k1321463 $s1331464 $tmp1341465))))

; loop entry $main_inv70
(assert
  (forall (($a1271466 (Array Int Int)) ($k1321471 Int) ($x129 Int) ($i128 Int) ($i131 Int) ($tmp134 Int) ($y130 Int) ($i1281467 Int) ($x1291468 Int) ($s1331472 Int) ($tmp1341473 Int) ($k132 Int) ($s133 Int) ($y1301469 Int) ($i1311470 Int) ($a127 (Array Int Int)))
    (=> (and ($main_sum69 $a127 $i128 $x129 $y130 $i131 $k132 $s133 $tmp134 $a1271466 $i1281467 $x1291468 $y1301469 $i1311470 $k1321471 $s1331472 $tmp1341473)
             (= $i131 0)
             (= $i128 0))
        ($main_inv70 $a1271466 0 $x1291468 $y1301469 $i1311470 $k1321471 $s1331472 $tmp1341473))))

; loop term $main_sum70
(assert
  (forall (($k1321479 Int) ($i1311478 Int) ($y1301477 Int) ($a1271474 (Array Int Int)) ($i1281475 Int) ($s1331480 Int) ($tmp1341481 Int) ($x1291476 Int))
    (=> (and (not (< $i1281475 100000)))
        ($main_sum70 $a1271474 $i1281475 $x1291476 $y1301477 $i1311478 $k1321479 $s1331480 $tmp1341481 $a1271474 $i1281475 $x1291476 $y1301477 $i1311478 $k1321479 $s1331480 $tmp1341481))))

; loop entry $main_inv71
(assert
  (forall (($k1321479 Int) ($i1311478 Int) ($y1301477 Int) ($a1271474 (Array Int Int)) ($i1281475 Int) ($s1331480 Int) ($tmp1341481 Int) ($x1291476 Int))
    (=> (and (= $s1331480 $i1281475)
             (= $k1321479 (+ $i1281475 1))
             (< $i1281475 100000)
             ($main_inv70 $a1271474 $i1281475 $x1291476 $y1301477 $i1311478 $k1321479 $s1331480 $tmp1341481))
        ($main_inv71 $a1271474 $i1281475 $x1291476 $y1301477 $i1311478 $k1321479 $s1331480 $tmp1341481))))

; loop term $main_sum71
(assert
  (forall (($a1271482 (Array Int Int)) ($x1291484 Int) ($i1311486 Int) ($tmp1341489 Int) ($s1331488 Int) ($i1281483 Int) ($y1301485 Int) ($k1321487 Int))
    (=> (and (not (< $k1321487 100000)))
        ($main_sum71 $a1271482 $i1281483 $x1291484 $y1301485 $i1311486 $k1321487 $s1331488 $tmp1341489 $a1271482 $i1281483 $x1291484 $y1301485 $i1311486 $k1321487 $s1331488 $tmp1341489))))

; if then
(assert
  (forall (($a1271482 (Array Int Int)) ($x1291484 Int) ($i1311486 Int) ($tmp1341489 Int) ($s1331488 Int) ($i1281483 Int) ($y1301485 Int) ($k1321487 Int))
    (=> (and (< (select $a1271482 $k1321487) (select $a1271482 $s1331488))
             (< $k1321487 100000)
             ($main_inv71 $a1271482 $i1281483 $x1291484 $y1301485 $i1311486 $k1321487 $s1331488 $tmp1341489))
        ($main_if32 $a1271482 $i1281483 $x1291484 $y1301485 $i1311486 $k1321487 $s1331488 $tmp1341489 $a1271482 $i1281483 $x1291484 $y1301485 $i1311486 $k1321487 $k1321487 $tmp1341489))))

; if else
(assert
  (forall (($a1271482 (Array Int Int)) ($x1291484 Int) ($i1311486 Int) ($tmp1341489 Int) ($s1331488 Int) ($i1281483 Int) ($y1301485 Int) ($k1321487 Int))
    (=> (and (not (< (select $a1271482 $k1321487) (select $a1271482 $s1331488)))
             (< $k1321487 100000)
             ($main_inv71 $a1271482 $i1281483 $x1291484 $y1301485 $i1311486 $k1321487 $s1331488 $tmp1341489))
        ($main_if32 $a1271482 $i1281483 $x1291484 $y1301485 $i1311486 $k1321487 $s1331488 $tmp1341489 $a1271482 $i1281483 $x1291484 $y1301485 $i1311486 $k1321487 $s1331488 $tmp1341489))))

; forwards $main_inv71
(assert
  (forall (($i1311494 Int) ($a1271482 (Array Int Int)) ($x1291484 Int) ($k1321495 Int) ($tmp1341497 Int) ($tmp1341489 Int) ($s1331488 Int) ($i1281483 Int) ($x1291492 Int) ($a1271490 (Array Int Int)) ($y1301493 Int) ($i1311486 Int) ($i1281491 Int) ($y1301485 Int) ($k1321487 Int) ($s1331496 Int))
    (=> (and ($main_if32 $a1271482 $i1281483 $x1291484 $y1301485 $i1311486 $k1321487 $s1331488 $tmp1341489 $a1271490 $i1281491 $x1291492 $y1301493 $i1311494 $k1321495 $s1331496 $tmp1341497))
        ($main_inv71 $a1271490 $i1281491 $x1291492 $y1301493 $i1311494 (+ $k1321495 1) $s1331496 $tmp1341497))))

; backwards $main_sum71
(assert
  (forall (($i1311502 Int) ($i1281499 Int) ($s1331504 Int) ($i1311494 Int) ($x1291500 Int) ($k1321503 Int) ($a1271482 (Array Int Int)) ($x1291484 Int) ($k1321495 Int) ($tmp1341497 Int) ($tmp1341489 Int) ($i1281483 Int) ($y1301493 Int) ($y1301501 Int) ($a1271490 (Array Int Int)) ($i1311486 Int) ($i1281491 Int) ($s1331488 Int) ($a1271498 (Array Int Int)) ($tmp1341505 Int) ($x1291492 Int) ($y1301485 Int) ($k1321487 Int) ($s1331496 Int))
    (=> (and ($main_sum71 $a1271490 $i1281491 $x1291492 $y1301493 $i1311494 (+ $k1321495 1) $s1331496 $tmp1341497 $a1271498 $i1281499 $x1291500 $y1301501 $i1311502 $k1321503 $s1331504 $tmp1341505)
             ($main_if32 $a1271482 $i1281483 $x1291484 $y1301485 $i1311486 $k1321487 $s1331488 $tmp1341489 $a1271490 $i1281491 $x1291492 $y1301493 $i1311494 $k1321495 $s1331496 $tmp1341497))
        ($main_sum71 $a1271482 $i1281483 $x1291484 $y1301485 $i1311486 $k1321487 $s1331488 $tmp1341489 $a1271498 $i1281499 $x1291500 $y1301501 $i1311502 $k1321503 $s1331504 $tmp1341505))))

; if then
(assert
  (forall (($k1321479 Int) ($i1311478 Int) ($x1291508 Int) ($y1301477 Int) ($a1271474 (Array Int Int)) ($i1281475 Int) ($s1331480 Int) ($k1321511 Int) ($s1331512 Int) ($tmp1341481 Int) ($i1311510 Int) ($i1281507 Int) ($tmp1341513 Int) ($y1301509 Int) ($x1291476 Int) ($a1271506 (Array Int Int)))
    (=> (and (= $tmp1341513 (select $a1271506 $s1331512))
             (not (= $s1331512 $i1281507))
             ($main_sum71 $a1271474 $i1281475 $x1291476 $y1301477 $i1311478 $k1321479 $s1331480 $tmp1341481 $a1271506 $i1281507 $x1291508 $y1301509 $i1311510 $k1321511 $s1331512 $tmp1341513)
             (= $s1331480 $i1281475)
             (= $k1321479 (+ $i1281475 1))
             (< $i1281475 100000)
             ($main_inv70 $a1271474 $i1281475 $x1291476 $y1301477 $i1311478 $k1321479 $s1331480 $tmp1341481))
        ($main_if33 $a1271474 $i1281475 $x1291476 $y1301477 $i1311478 $k1321479 $s1331480 $tmp1341481 (store (store $a1271506 $s1331512 (select $a1271506 $i1281507)) $i1281507 $tmp1341513) $i1281507 $x1291508 $y1301509 $i1311510 $k1321511 $s1331512 $tmp1341513))))

; if else
(assert
  (forall (($k1321479 Int) ($i1311478 Int) ($x1291508 Int) ($y1301477 Int) ($a1271474 (Array Int Int)) ($i1281475 Int) ($s1331480 Int) ($k1321511 Int) ($s1331512 Int) ($tmp1341481 Int) ($i1311510 Int) ($i1281507 Int) ($tmp1341513 Int) ($y1301509 Int) ($x1291476 Int) ($a1271506 (Array Int Int)))
    (=> (and (= $s1331512 $i1281507)
             ($main_sum71 $a1271474 $i1281475 $x1291476 $y1301477 $i1311478 $k1321479 $s1331480 $tmp1341481 $a1271506 $i1281507 $x1291508 $y1301509 $i1311510 $k1321511 $s1331512 $tmp1341513)
             (= $s1331480 $i1281475)
             (= $k1321479 (+ $i1281475 1))
             (< $i1281475 100000)
             ($main_inv70 $a1271474 $i1281475 $x1291476 $y1301477 $i1311478 $k1321479 $s1331480 $tmp1341481))
        ($main_if33 $a1271474 $i1281475 $x1291476 $y1301477 $i1311478 $k1321479 $s1331480 $tmp1341481 $a1271506 $i1281507 $x1291508 $y1301509 $i1311510 $k1321511 $s1331512 $tmp1341513))))

; loop entry $main_inv72
(assert
  (forall (($k1321479 Int) ($s1331520 Int) ($y1301477 Int) ($a1271474 (Array Int Int)) ($i1281475 Int) ($tmp1341481 Int) ($i1281515 Int) ($a1271514 (Array Int Int)) ($x1291476 Int) ($tmp1341521 Int) ($i1311478 Int) ($i1311518 Int) ($k1321519 Int) ($s1331480 Int) ($y1301517 Int) ($x1291516 Int))
    (=> (and ($main_if33 $a1271474 $i1281475 $x1291476 $y1301477 $i1311478 $k1321479 $s1331480 $tmp1341481 $a1271514 $i1281515 $x1291516 $y1301517 $i1311518 $k1321519 $s1331520 $tmp1341521))
        ($main_inv72 $a1271514 $i1281515 0 $y1301517 $i1311518 $k1321519 $s1331520 $tmp1341521))))

; loop term $main_sum72
(assert
  (forall (($i1311526 Int) ($tmp1341529 Int) ($a1271522 (Array Int Int)) ($k1321527 Int) ($y1301525 Int) ($s1331528 Int) ($i1281523 Int) ($x1291524 Int))
    (=> (and (not (< $x1291524 $i1281523)))
        ($main_sum72 $a1271522 $i1281523 $x1291524 $y1301525 $i1311526 $k1321527 $s1331528 $tmp1341529 $a1271522 $i1281523 $x1291524 $y1301525 $i1311526 $k1321527 $s1331528 $tmp1341529))))

; loop entry $main_inv73
(assert
  (forall (($i1311526 Int) ($tmp1341529 Int) ($a1271522 (Array Int Int)) ($k1321527 Int) ($y1301525 Int) ($s1331528 Int) ($i1281523 Int) ($x1291524 Int))
    (=> (and (< $x1291524 $i1281523)
             ($main_inv72 $a1271522 $i1281523 $x1291524 $y1301525 $i1311526 $k1321527 $s1331528 $tmp1341529))
        ($main_inv73 $a1271522 $i1281523 $x1291524 (+ $x1291524 1) $i1311526 $k1321527 $s1331528 $tmp1341529))))

; loop term $main_sum73
(assert
  (forall (($s1331536 Int) ($k1321535 Int) ($tmp1341537 Int) ($a1271530 (Array Int Int)) ($i1311534 Int) ($i1281531 Int) ($y1301533 Int) ($x1291532 Int))
    (=> (and (not (< $y1301533 $i1281531)))
        ($main_sum73 $a1271530 $i1281531 $x1291532 $y1301533 $i1311534 $k1321535 $s1331536 $tmp1341537 $a1271530 $i1281531 $x1291532 $y1301533 $i1311534 $k1321535 $s1331536 $tmp1341537))))

; __VERIFIER_assert precondition
(assert
  (forall (($s1331536 Int) ($k1321535 Int) ($tmp1341537 Int) ($a1271530 (Array Int Int)) ($i1311534 Int) ($i1281531 Int) ($y1301533 Int) ($x1291532 Int))
    (=> (and (< $y1301533 $i1281531)
             ($main_inv73 $a1271530 $i1281531 $x1291532 $y1301533 $i1311534 $k1321535 $s1331536 $tmp1341537))
        ($__VERIFIER_assert_pre (ite (<= (select $a1271530 $x1291532) (select $a1271530 $y1301533)) 1 0)))))

; forwards $main_inv73
(assert
  (forall (($s1331536 Int) ($k1321535 Int) ($tmp1341537 Int) ($a1271530 (Array Int Int)) ($i1311534 Int) ($i1281531 Int) ($y1301533 Int) ($x1291532 Int))
    (=> (and (__VERIFIER_assert (ite (<= (select $a1271530 $x1291532) (select $a1271530 $y1301533)) 1 0))
             (< $y1301533 $i1281531)
             ($main_inv73 $a1271530 $i1281531 $x1291532 $y1301533 $i1311534 $k1321535 $s1331536 $tmp1341537))
        ($main_inv73 $a1271530 $i1281531 $x1291532 (+ $y1301533 1) $i1311534 $k1321535 $s1331536 $tmp1341537))))

; backwards $main_sum73
(assert
  (forall (($x1291540 Int) ($i1311542 Int) ($s1331536 Int) ($tmp1341537 Int) ($a1271530 (Array Int Int)) ($i1311534 Int) ($a1271538 (Array Int Int)) ($tmp1341545 Int) ($y1301533 Int) ($x1291532 Int) ($i1281539 Int) ($k1321543 Int) ($y1301541 Int) ($k1321535 Int) ($i1281531 Int) ($s1331544 Int))
    (=> (and ($main_sum73 $a1271530 $i1281531 $x1291532 (+ $y1301533 1) $i1311534 $k1321535 $s1331536 $tmp1341537 $a1271538 $i1281539 $x1291540 $y1301541 $i1311542 $k1321543 $s1331544 $tmp1341545)
             (__VERIFIER_assert (ite (<= (select $a1271530 $x1291532) (select $a1271530 $y1301533)) 1 0))
             (< $y1301533 $i1281531))
        ($main_sum73 $a1271530 $i1281531 $x1291532 $y1301533 $i1311534 $k1321535 $s1331536 $tmp1341537 $a1271538 $i1281539 $x1291540 $y1301541 $i1311542 $k1321543 $s1331544 $tmp1341545))))

; forwards $main_inv72
(assert
  (forall (($i1311526 Int) ($x1291548 Int) ($tmp1341529 Int) ($i1311550 Int) ($a1271522 (Array Int Int)) ($k1321551 Int) ($y1301549 Int) ($s1331552 Int) ($i1281547 Int) ($s1331528 Int) ($i1281523 Int) ($x1291524 Int) ($k1321527 Int) ($tmp1341553 Int) ($a1271546 (Array Int Int)) ($y1301525 Int))
    (=> (and ($main_sum73 $a1271522 $i1281523 $x1291524 (+ $x1291524 1) $i1311526 $k1321527 $s1331528 $tmp1341529 $a1271546 $i1281547 $x1291548 $y1301549 $i1311550 $k1321551 $s1331552 $tmp1341553)
             (< $x1291524 $i1281523)
             ($main_inv72 $a1271522 $i1281523 $x1291524 $y1301525 $i1311526 $k1321527 $s1331528 $tmp1341529))
        ($main_inv72 $a1271546 $i1281547 (+ $x1291548 1) $y1301549 $i1311550 $k1321551 $s1331552 $tmp1341553))))

; backwards $main_sum72
(assert
  (forall (($x1291548 Int) ($tmp1341529 Int) ($i1311550 Int) ($a1271522 (Array Int Int)) ($k1321551 Int) ($i1281555 Int) ($y1301549 Int) ($i1311526 Int) ($tmp1341561 Int) ($i1281523 Int) ($x1291524 Int) ($k1321527 Int) ($tmp1341553 Int) ($y1301557 Int) ($a1271554 (Array Int Int)) ($s1331552 Int) ($i1311558 Int) ($a1271546 (Array Int Int)) ($k1321559 Int) ($y1301525 Int) ($x1291556 Int) ($i1281547 Int) ($s1331560 Int) ($s1331528 Int))
    (=> (and ($main_sum72 $a1271546 $i1281547 (+ $x1291548 1) $y1301549 $i1311550 $k1321551 $s1331552 $tmp1341553 $a1271554 $i1281555 $x1291556 $y1301557 $i1311558 $k1321559 $s1331560 $tmp1341561)
             ($main_sum73 $a1271522 $i1281523 $x1291524 (+ $x1291524 1) $i1311526 $k1321527 $s1331528 $tmp1341529 $a1271546 $i1281547 $x1291548 $y1301549 $i1311550 $k1321551 $s1331552 $tmp1341553)
             (< $x1291524 $i1281523))
        ($main_sum72 $a1271522 $i1281523 $x1291524 $y1301525 $i1311526 $k1321527 $s1331528 $tmp1341529 $a1271554 $i1281555 $x1291556 $y1301557 $i1311558 $k1321559 $s1331560 $tmp1341561))))

; loop entry $main_inv74
(assert
  (forall (($k1321479 Int) ($s1331520 Int) ($y1301477 Int) ($a1271474 (Array Int Int)) ($k1321567 Int) ($i1281475 Int) ($s1331568 Int) ($i1281515 Int) ($x1291476 Int) ($i1311478 Int) ($i1311518 Int) ($k1321519 Int) ($y1301565 Int) ($i1311566 Int) ($s1331480 Int) ($x1291564 Int) ($i1281563 Int) ($tmp1341481 Int) ($y1301517 Int) ($x1291516 Int) ($a1271562 (Array Int Int)) ($a1271514 (Array Int Int)) ($tmp1341569 Int) ($tmp1341521 Int))
    (=> (and ($main_sum72 $a1271514 $i1281515 0 $y1301517 $i1311518 $k1321519 $s1331520 $tmp1341521 $a1271562 $i1281563 $x1291564 $y1301565 $i1311566 $k1321567 $s1331568 $tmp1341569)
             ($main_if33 $a1271474 $i1281475 $x1291476 $y1301477 $i1311478 $k1321479 $s1331480 $tmp1341481 $a1271514 $i1281515 $x1291516 $y1301517 $i1311518 $k1321519 $s1331520 $tmp1341521))
        ($main_inv74 $a1271562 $i1281563 $i1281563 $y1301565 $i1311566 $k1321567 $s1331568 $tmp1341569))))

; loop term $main_sum74
(assert
  (forall (($y1301573 Int) ($i1311574 Int) ($tmp1341577 Int) ($k1321575 Int) ($x1291572 Int) ($a1271570 (Array Int Int)) ($s1331576 Int) ($i1281571 Int))
    (=> (and (not (< $x1291572 100000)))
        ($main_sum74 $a1271570 $i1281571 $x1291572 $y1301573 $i1311574 $k1321575 $s1331576 $tmp1341577 $a1271570 $i1281571 $x1291572 $y1301573 $i1311574 $k1321575 $s1331576 $tmp1341577))))

; __VERIFIER_assert precondition
(assert
  (forall (($y1301573 Int) ($i1311574 Int) ($tmp1341577 Int) ($k1321575 Int) ($x1291572 Int) ($a1271570 (Array Int Int)) ($s1331576 Int) ($i1281571 Int))
    (=> (and (< $x1291572 100000)
             ($main_inv74 $a1271570 $i1281571 $x1291572 $y1301573 $i1311574 $k1321575 $s1331576 $tmp1341577))
        ($__VERIFIER_assert_pre (ite (>= (select $a1271570 $x1291572) (select $a1271570 $i1281571)) 1 0)))))

; forwards $main_inv74
(assert
  (forall (($y1301573 Int) ($i1311574 Int) ($tmp1341577 Int) ($k1321575 Int) ($x1291572 Int) ($a1271570 (Array Int Int)) ($s1331576 Int) ($i1281571 Int))
    (=> (and (__VERIFIER_assert (ite (>= (select $a1271570 $x1291572) (select $a1271570 $i1281571)) 1 0))
             (< $x1291572 100000)
             ($main_inv74 $a1271570 $i1281571 $x1291572 $y1301573 $i1311574 $k1321575 $s1331576 $tmp1341577))
        ($main_inv74 $a1271570 $i1281571 (+ $x1291572 1) $y1301573 $i1311574 $k1321575 $s1331576 $tmp1341577))))

; backwards $main_sum74
(assert
  (forall (($y1301573 Int) ($i1311574 Int) ($tmp1341577 Int) ($k1321575 Int) ($k1321583 Int) ($x1291572 Int) ($a1271570 (Array Int Int)) ($y1301581 Int) ($i1311582 Int) ($a1271578 (Array Int Int)) ($s1331584 Int) ($s1331576 Int) ($i1281571 Int) ($tmp1341585 Int) ($i1281579 Int) ($x1291580 Int))
    (=> (and ($main_sum74 $a1271570 $i1281571 (+ $x1291572 1) $y1301573 $i1311574 $k1321575 $s1331576 $tmp1341577 $a1271578 $i1281579 $x1291580 $y1301581 $i1311582 $k1321583 $s1331584 $tmp1341585)
             (__VERIFIER_assert (ite (>= (select $a1271570 $x1291572) (select $a1271570 $i1281571)) 1 0))
             (< $x1291572 100000))
        ($main_sum74 $a1271570 $i1281571 $x1291572 $y1301573 $i1311574 $k1321575 $s1331576 $tmp1341577 $a1271578 $i1281579 $x1291580 $y1301581 $i1311582 $k1321583 $s1331584 $tmp1341585))))

; forwards $main_inv70
(assert
  (forall (($x1291588 Int) ($s1331520 Int) ($tmp1341593 Int) ($a1271474 (Array Int Int)) ($k1321567 Int) ($k1321591 Int) ($s1331568 Int) ($i1311590 Int) ($i1281515 Int) ($x1291476 Int) ($s1331592 Int) ($k1321479 Int) ($i1311478 Int) ($i1311518 Int) ($y1301477 Int) ($i1281587 Int) ($i1281475 Int) ($a1271586 (Array Int Int)) ($k1321519 Int) ($y1301565 Int) ($i1311566 Int) ($s1331480 Int) ($x1291564 Int) ($i1281563 Int) ($tmp1341481 Int) ($y1301517 Int) ($x1291516 Int) ($y1301589 Int) ($a1271562 (Array Int Int)) ($a1271514 (Array Int Int)) ($tmp1341569 Int) ($tmp1341521 Int))
    (=> (and ($main_sum74 $a1271562 $i1281563 $i1281563 $y1301565 $i1311566 $k1321567 $s1331568 $tmp1341569 $a1271586 $i1281587 $x1291588 $y1301589 $i1311590 $k1321591 $s1331592 $tmp1341593)
             ($main_sum72 $a1271514 $i1281515 0 $y1301517 $i1311518 $k1321519 $s1331520 $tmp1341521 $a1271562 $i1281563 $x1291564 $y1301565 $i1311566 $k1321567 $s1331568 $tmp1341569)
             ($main_if33 $a1271474 $i1281475 $x1291476 $y1301477 $i1311478 $k1321479 $s1331480 $tmp1341481 $a1271514 $i1281515 $x1291516 $y1301517 $i1311518 $k1321519 $s1331520 $tmp1341521))
        ($main_inv70 $a1271586 (+ $i1281587 1) $x1291588 $y1301589 $i1311590 $k1321591 $s1331592 $tmp1341593))))

; backwards $main_sum70
(assert
  (forall (($x1291588 Int) ($s1331520 Int) ($tmp1341593 Int) ($a1271474 (Array Int Int)) ($k1321567 Int) ($i1281595 Int) ($k1321591 Int) ($s1331600 Int) ($i1281515 Int) ($y1301597 Int) ($x1291476 Int) ($k1321599 Int) ($s1331592 Int) ($k1321479 Int) ($i1311478 Int) ($i1311518 Int) ($y1301477 Int) ($i1281587 Int) ($i1281475 Int) ($a1271594 (Array Int Int)) ($a1271586 (Array Int Int)) ($k1321519 Int) ($y1301565 Int) ($i1311566 Int) ($s1331480 Int) ($s1331568 Int) ($i1311598 Int) ($tmp1341601 Int) ($i1311590 Int) ($x1291564 Int) ($i1281563 Int) ($tmp1341481 Int) ($y1301517 Int) ($x1291516 Int) ($y1301589 Int) ($x1291596 Int) ($a1271562 (Array Int Int)) ($a1271514 (Array Int Int)) ($tmp1341569 Int) ($tmp1341521 Int))
    (=> (and ($main_sum70 $a1271586 (+ $i1281587 1) $x1291588 $y1301589 $i1311590 $k1321591 $s1331592 $tmp1341593 $a1271594 $i1281595 $x1291596 $y1301597 $i1311598 $k1321599 $s1331600 $tmp1341601)
             ($main_sum74 $a1271562 $i1281563 $i1281563 $y1301565 $i1311566 $k1321567 $s1331568 $tmp1341569 $a1271586 $i1281587 $x1291588 $y1301589 $i1311590 $k1321591 $s1331592 $tmp1341593)
             ($main_sum72 $a1271514 $i1281515 0 $y1301517 $i1311518 $k1321519 $s1331520 $tmp1341521 $a1271562 $i1281563 $x1291564 $y1301565 $i1311566 $k1321567 $s1331568 $tmp1341569)
             ($main_if33 $a1271474 $i1281475 $x1291476 $y1301477 $i1311478 $k1321479 $s1331480 $tmp1341481 $a1271514 $i1281515 $x1291516 $y1301517 $i1311518 $k1321519 $s1331520 $tmp1341521))
        ($main_sum70 $a1271474 $i1281475 $x1291476 $y1301477 $i1311478 $k1321479 $s1331480 $tmp1341481 $a1271594 $i1281595 $x1291596 $y1301597 $i1311598 $k1321599 $s1331600 $tmp1341601))))

; loop entry $main_inv75
(assert
  (forall (($a1271466 (Array Int Int)) ($tmp1341609 Int) ($y1301605 Int) ($s1331608 Int) ($k1321471 Int) ($x129 Int) ($k1321607 Int) ($i128 Int) ($i131 Int) ($i1281603 Int) ($i1311606 Int) ($tmp134 Int) ($y130 Int) ($x1291468 Int) ($a1271602 (Array Int Int)) ($s1331472 Int) ($tmp1341473 Int) ($k132 Int) ($s133 Int) ($y1301469 Int) ($i1311470 Int) ($a127 (Array Int Int)) ($i1281467 Int) ($x1291604 Int))
    (=> (and ($main_sum70 $a1271466 0 $x1291468 $y1301469 $i1311470 $k1321471 $s1331472 $tmp1341473 $a1271602 $i1281603 $x1291604 $y1301605 $i1311606 $k1321607 $s1331608 $tmp1341609)
             ($main_sum69 $a127 $i128 $x129 $y130 $i131 $k132 $s133 $tmp134 $a1271466 $i1281467 $x1291468 $y1301469 $i1311470 $k1321471 $s1331472 $tmp1341473)
             (= $i131 0)
             (= $i128 0))
        ($main_inv75 $a1271602 $i1281603 0 $y1301605 $i1311606 $k1321607 $s1331608 $tmp1341609))))

; loop term $main_sum75
(assert
  (forall (($y1301613 Int) ($x1291612 Int) ($k1321615 Int) ($tmp1341617 Int) ($i1281611 Int) ($i1311614 Int) ($s1331616 Int) ($a1271610 (Array Int Int)))
    (=> (and (not (< $x1291612 100000)))
        ($main_sum75 $a1271610 $i1281611 $x1291612 $y1301613 $i1311614 $k1321615 $s1331616 $tmp1341617 $a1271610 $i1281611 $x1291612 $y1301613 $i1311614 $k1321615 $s1331616 $tmp1341617))))

; loop entry $main_inv76
(assert
  (forall (($y1301613 Int) ($x1291612 Int) ($k1321615 Int) ($tmp1341617 Int) ($i1281611 Int) ($i1311614 Int) ($s1331616 Int) ($a1271610 (Array Int Int)))
    (=> (and (< $x1291612 100000)
             ($main_inv75 $a1271610 $i1281611 $x1291612 $y1301613 $i1311614 $k1321615 $s1331616 $tmp1341617))
        ($main_inv76 $a1271610 $i1281611 $x1291612 (+ $x1291612 1) $i1311614 $k1321615 $s1331616 $tmp1341617))))

; loop term $main_sum76
(assert
  (forall (($s1331624 Int) ($i1281619 Int) ($i1311622 Int) ($k1321623 Int) ($x1291620 Int) ($y1301621 Int) ($a1271618 (Array Int Int)) ($tmp1341625 Int))
    (=> (and (not (< $y1301621 100000)))
        ($main_sum76 $a1271618 $i1281619 $x1291620 $y1301621 $i1311622 $k1321623 $s1331624 $tmp1341625 $a1271618 $i1281619 $x1291620 $y1301621 $i1311622 $k1321623 $s1331624 $tmp1341625))))

; __VERIFIER_assert precondition
(assert
  (forall (($s1331624 Int) ($i1281619 Int) ($i1311622 Int) ($k1321623 Int) ($x1291620 Int) ($y1301621 Int) ($a1271618 (Array Int Int)) ($tmp1341625 Int))
    (=> (and (< $y1301621 100000)
             ($main_inv76 $a1271618 $i1281619 $x1291620 $y1301621 $i1311622 $k1321623 $s1331624 $tmp1341625))
        ($__VERIFIER_assert_pre (ite (<= (select $a1271618 $x1291620) (select $a1271618 $y1301621)) 1 0)))))

; forwards $main_inv76
(assert
  (forall (($s1331624 Int) ($i1281619 Int) ($i1311622 Int) ($k1321623 Int) ($x1291620 Int) ($y1301621 Int) ($a1271618 (Array Int Int)) ($tmp1341625 Int))
    (=> (and (__VERIFIER_assert (ite (<= (select $a1271618 $x1291620) (select $a1271618 $y1301621)) 1 0))
             (< $y1301621 100000)
             ($main_inv76 $a1271618 $i1281619 $x1291620 $y1301621 $i1311622 $k1321623 $s1331624 $tmp1341625))
        ($main_inv76 $a1271618 $i1281619 $x1291620 (+ $y1301621 1) $i1311622 $k1321623 $s1331624 $tmp1341625))))

; backwards $main_sum76
(assert
  (forall (($y1301629 Int) ($i1311630 Int) ($s1331624 Int) ($i1281619 Int) ($i1311622 Int) ($x1291620 Int) ($x1291628 Int) ($a1271618 (Array Int Int)) ($tmp1341633 Int) ($tmp1341625 Int) ($a1271626 (Array Int Int)) ($k1321631 Int) ($k1321623 Int) ($s1331632 Int) ($i1281627 Int) ($y1301621 Int))
    (=> (and ($main_sum76 $a1271618 $i1281619 $x1291620 (+ $y1301621 1) $i1311622 $k1321623 $s1331624 $tmp1341625 $a1271626 $i1281627 $x1291628 $y1301629 $i1311630 $k1321631 $s1331632 $tmp1341633)
             (__VERIFIER_assert (ite (<= (select $a1271618 $x1291620) (select $a1271618 $y1301621)) 1 0))
             (< $y1301621 100000))
        ($main_sum76 $a1271618 $i1281619 $x1291620 $y1301621 $i1311622 $k1321623 $s1331624 $tmp1341625 $a1271626 $i1281627 $x1291628 $y1301629 $i1311630 $k1321631 $s1331632 $tmp1341633))))

; forwards $main_inv75
(assert
  (forall (($x1291636 Int) ($x1291612 Int) ($tmp1341617 Int) ($i1281611 Int) ($i1311614 Int) ($s1331616 Int) ($y1301637 Int) ($i1311638 Int) ($y1301613 Int) ($k1321639 Int) ($k1321615 Int) ($a1271634 (Array Int Int)) ($s1331640 Int) ($tmp1341641 Int) ($i1281635 Int) ($a1271610 (Array Int Int)))
    (=> (and ($main_sum76 $a1271610 $i1281611 $x1291612 (+ $x1291612 1) $i1311614 $k1321615 $s1331616 $tmp1341617 $a1271634 $i1281635 $x1291636 $y1301637 $i1311638 $k1321639 $s1331640 $tmp1341641)
             (< $x1291612 100000)
             ($main_inv75 $a1271610 $i1281611 $x1291612 $y1301613 $i1311614 $k1321615 $s1331616 $tmp1341617))
        ($main_inv75 $a1271634 $i1281635 (+ $x1291636 1) $y1301637 $i1311638 $k1321639 $s1331640 $tmp1341641))))

; backwards $main_sum75
(assert
  (forall (($y1301645 Int) ($tmp1341649 Int) ($x1291636 Int) ($x1291612 Int) ($k1321647 Int) ($a1271642 (Array Int Int)) ($i1311646 Int) ($tmp1341617 Int) ($i1311614 Int) ($s1331616 Int) ($y1301637 Int) ($i1311638 Int) ($y1301613 Int) ($k1321639 Int) ($k1321615 Int) ($a1271634 (Array Int Int)) ($x1291644 Int) ($i1281611 Int) ($s1331648 Int) ($s1331640 Int) ($tmp1341641 Int) ($i1281643 Int) ($i1281635 Int) ($a1271610 (Array Int Int)))
    (=> (and ($main_sum75 $a1271634 $i1281635 (+ $x1291636 1) $y1301637 $i1311638 $k1321639 $s1331640 $tmp1341641 $a1271642 $i1281643 $x1291644 $y1301645 $i1311646 $k1321647 $s1331648 $tmp1341649)
             ($main_sum76 $a1271610 $i1281611 $x1291612 (+ $x1291612 1) $i1311614 $k1321615 $s1331616 $tmp1341617 $a1271634 $i1281635 $x1291636 $y1301637 $i1311638 $k1321639 $s1331640 $tmp1341641)
             (< $x1291612 100000))
        ($main_sum75 $a1271610 $i1281611 $x1291612 $y1301613 $i1311614 $k1321615 $s1331616 $tmp1341617 $a1271642 $i1281643 $x1291644 $y1301645 $i1311646 $k1321647 $s1331648 $tmp1341649))))

(check-sat)
