(set-logic HORN)

(declare-fun $main_inv163 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv160 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv158 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum162 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv157 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum158 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum156 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv159 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum159 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum160 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv162 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum157 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum163 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum155 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if55 (Int) Bool)
(declare-fun $main_inv161 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv156 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum161 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv155 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond2480 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond2480))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if55 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond2481 Int))
    (=> (and ($__VERIFIER_assert_if55 cond2481))
        (__VERIFIER_assert cond2481))))

; loop entry $main_inv155
(assert
  (forall (($a8251 (Array Int Int)) ($i253 Int) ($a4247 (Array Int Int)) ($a6249 (Array Int Int)) ($a2245 (Array Int Int)) ($x254 Int) ($a5248 (Array Int Int)) ($a1244 (Array Int Int)) ($a3246 (Array Int Int)) ($a7250 (Array Int Int)))
        ($main_inv155 $a1244 $a2245 $a3246 $a4247 $a5248 $a6249 $a7250 $a8251 0 $i253 $x254)))

; loop term $main_sum155
(assert
  (forall (($a2522490 Int) ($a52482486 (Array Int Int)) ($a82512489 (Array Int Int)) ($a22452483 (Array Int Int)) ($a62492487 (Array Int Int)) ($a42472485 (Array Int Int)) ($a12442482 (Array Int Int)) ($a72502488 (Array Int Int)) ($a32462484 (Array Int Int)) ($i2532491 Int) ($x2542492 Int))
    (=> (and (not (< $a2522490 100000))
             ($main_inv155 $a12442482 $a22452483 $a32462484 $a42472485 $a52482486 $a62492487 $a72502488 $a82512489 $a2522490 $i2532491 $x2542492))
        ($main_sum155 $a12442482 $a22452483 $a32462484 $a42472485 $a52482486 $a62492487 $a72502488 $a82512489 $a2522490 $i2532491 $x2542492))))

; forwards $main_inv155
(assert
  (forall (($a2522490 Int) ($a52482486 (Array Int Int)) ($int2493 Int) ($a82512489 (Array Int Int)) ($a22452483 (Array Int Int)) ($a62492487 (Array Int Int)) ($int2494 Int) ($a42472485 (Array Int Int)) ($a12442482 (Array Int Int)) ($a72502488 (Array Int Int)) ($a32462484 (Array Int Int)) ($i2532491 Int) ($x2542492 Int))
    (=> (and (<= (- 2147483648) $int2494)
             (<= $int2494 2147483647)
             (<= (- 2147483648) $int2493)
             (<= $int2493 2147483647)
             (< $a2522490 100000)
             ($main_inv155 $a12442482 $a22452483 $a32462484 $a42472485 $a52482486 $a62492487 $a72502488 $a82512489 $a2522490 $i2532491 $x2542492))
        ($main_inv155 (store $a12442482 $a2522490 $int2493) $a22452483 $a32462484 $a42472485 $a52482486 $a62492487 (store $a72502488 $a2522490 $int2494) $a82512489 (+ $a2522490 1) $i2532491 $x2542492))))

; loop entry $main_inv156
(assert
  (forall (($a82512502 (Array Int Int)) ($a62492500 (Array Int Int)) ($a2522503 Int) ($i2532504 Int) ($x2542505 Int) ($a52482499 (Array Int Int)) ($a32462497 (Array Int Int)) ($a42472498 (Array Int Int)) ($a72502501 (Array Int Int)) ($a22452496 (Array Int Int)) ($a12442495 (Array Int Int)))
    (=> (and ($main_sum155 $a12442495 $a22452496 $a32462497 $a42472498 $a52482499 $a62492500 $a72502501 $a82512502 $a2522503 $i2532504 $x2542505))
        ($main_inv156 $a12442495 $a22452496 $a32462497 $a42472498 $a52482499 $a62492500 $a72502501 $a82512502 $a2522503 0 $x2542505))))

; loop term $main_sum156
(assert
  (forall (($a42472509 (Array Int Int)) ($i2532515 Int) ($a62492511 (Array Int Int)) ($a2522514 Int) ($a12442506 (Array Int Int)) ($a72502512 (Array Int Int)) ($a32462508 (Array Int Int)) ($a82512513 (Array Int Int)) ($x2542516 Int) ($a22452507 (Array Int Int)) ($a52482510 (Array Int Int)))
    (=> (and (not (< $i2532515 100000))
             ($main_inv156 $a12442506 $a22452507 $a32462508 $a42472509 $a52482510 $a62492511 $a72502512 $a82512513 $a2522514 $i2532515 $x2542516))
        ($main_sum156 $a12442506 $a22452507 $a32462508 $a42472509 $a52482510 $a62492511 $a72502512 $a82512513 $a2522514 $i2532515 $x2542516))))

; forwards $main_inv156
(assert
  (forall (($a42472509 (Array Int Int)) ($i2532515 Int) ($a62492511 (Array Int Int)) ($a2522514 Int) ($a12442506 (Array Int Int)) ($a72502512 (Array Int Int)) ($a32462508 (Array Int Int)) ($a82512513 (Array Int Int)) ($x2542516 Int) ($a22452507 (Array Int Int)) ($a52482510 (Array Int Int)))
    (=> (and (< $i2532515 100000)
             ($main_inv156 $a12442506 $a22452507 $a32462508 $a42472509 $a52482510 $a62492511 $a72502512 $a82512513 $a2522514 $i2532515 $x2542516))
        ($main_inv156 $a12442506 (store $a22452507 $i2532515 (select $a12442506 $i2532515)) $a32462508 $a42472509 $a52482510 $a62492511 $a72502512 $a82512513 $a2522514 (+ $i2532515 1) $x2542516))))

; loop entry $main_inv157
(assert
  (forall (($a82512524 (Array Int Int)) ($a22452518 (Array Int Int)) ($a42472520 (Array Int Int)) ($a62492522 (Array Int Int)) ($a2522525 Int) ($x2542527 Int) ($a72502523 (Array Int Int)) ($a12442517 (Array Int Int)) ($a52482521 (Array Int Int)) ($a32462519 (Array Int Int)) ($i2532526 Int))
    (=> (and ($main_sum156 $a12442517 $a22452518 $a32462519 $a42472520 $a52482521 $a62492522 $a72502523 $a82512524 $a2522525 $i2532526 $x2542527))
        ($main_inv157 $a12442517 $a22452518 $a32462519 $a42472520 $a52482521 $a62492522 $a72502523 $a82512524 $a2522525 0 $x2542527))))

; loop term $main_sum157
(assert
  (forall (($i2532537 Int) ($a82512535 (Array Int Int)) ($a2522536 Int) ($a12442528 (Array Int Int)) ($x2542538 Int) ($a62492533 (Array Int Int)) ($a32462530 (Array Int Int)) ($a22452529 (Array Int Int)) ($a42472531 (Array Int Int)) ($a52482532 (Array Int Int)) ($a72502534 (Array Int Int)))
    (=> (and (not (< $i2532537 100000))
             ($main_inv157 $a12442528 $a22452529 $a32462530 $a42472531 $a52482532 $a62492533 $a72502534 $a82512535 $a2522536 $i2532537 $x2542538))
        ($main_sum157 $a12442528 $a22452529 $a32462530 $a42472531 $a52482532 $a62492533 $a72502534 $a82512535 $a2522536 $i2532537 $x2542538))))

; forwards $main_inv157
(assert
  (forall (($i2532537 Int) ($a82512535 (Array Int Int)) ($a2522536 Int) ($a12442528 (Array Int Int)) ($x2542538 Int) ($a62492533 (Array Int Int)) ($a32462530 (Array Int Int)) ($a22452529 (Array Int Int)) ($a42472531 (Array Int Int)) ($a52482532 (Array Int Int)) ($a72502534 (Array Int Int)))
    (=> (and (< $i2532537 100000)
             ($main_inv157 $a12442528 $a22452529 $a32462530 $a42472531 $a52482532 $a62492533 $a72502534 $a82512535 $a2522536 $i2532537 $x2542538))
        ($main_inv157 $a12442528 $a22452529 (store $a32462530 $i2532537 (select $a22452529 $i2532537)) $a42472531 $a52482532 $a62492533 $a72502534 $a82512535 $a2522536 (+ $i2532537 1) $x2542538))))

; loop entry $main_inv158
(assert
  (forall (($a22452540 (Array Int Int)) ($a52482543 (Array Int Int)) ($a72502545 (Array Int Int)) ($a12442539 (Array Int Int)) ($x2542549 Int) ($a42472542 (Array Int Int)) ($a62492544 (Array Int Int)) ($a2522547 Int) ($a32462541 (Array Int Int)) ($i2532548 Int) ($a82512546 (Array Int Int)))
    (=> (and ($main_sum157 $a12442539 $a22452540 $a32462541 $a42472542 $a52482543 $a62492544 $a72502545 $a82512546 $a2522547 $i2532548 $x2542549))
        ($main_inv158 $a12442539 $a22452540 $a32462541 $a42472542 $a52482543 $a62492544 $a72502545 $a82512546 $a2522547 0 $x2542549))))

; loop term $main_sum158
(assert
  (forall (($a2522558 Int) ($x2542560 Int) ($a12442550 (Array Int Int)) ($a42472553 (Array Int Int)) ($a32462552 (Array Int Int)) ($a52482554 (Array Int Int)) ($a72502556 (Array Int Int)) ($a22452551 (Array Int Int)) ($i2532559 Int) ($a62492555 (Array Int Int)) ($a82512557 (Array Int Int)))
    (=> (and (not (< $i2532559 100000))
             ($main_inv158 $a12442550 $a22452551 $a32462552 $a42472553 $a52482554 $a62492555 $a72502556 $a82512557 $a2522558 $i2532559 $x2542560))
        ($main_sum158 $a12442550 $a22452551 $a32462552 $a42472553 $a52482554 $a62492555 $a72502556 $a82512557 $a2522558 $i2532559 $x2542560))))

; forwards $main_inv158
(assert
  (forall (($a2522558 Int) ($x2542560 Int) ($a12442550 (Array Int Int)) ($a42472553 (Array Int Int)) ($a32462552 (Array Int Int)) ($a52482554 (Array Int Int)) ($a72502556 (Array Int Int)) ($a22452551 (Array Int Int)) ($i2532559 Int) ($a62492555 (Array Int Int)) ($a82512557 (Array Int Int)))
    (=> (and (< $i2532559 100000)
             ($main_inv158 $a12442550 $a22452551 $a32462552 $a42472553 $a52482554 $a62492555 $a72502556 $a82512557 $a2522558 $i2532559 $x2542560))
        ($main_inv158 $a12442550 $a22452551 $a32462552 (store $a42472553 $i2532559 (select $a32462552 $i2532559)) $a52482554 $a62492555 $a72502556 $a82512557 $a2522558 (+ $i2532559 1) $x2542560))))

; loop entry $main_inv159
(assert
  (forall (($a72502567 (Array Int Int)) ($a2522569 Int) ($a42472564 (Array Int Int)) ($a32462563 (Array Int Int)) ($i2532570 Int) ($a62492566 (Array Int Int)) ($a82512568 (Array Int Int)) ($x2542571 Int) ($a52482565 (Array Int Int)) ($a22452562 (Array Int Int)) ($a12442561 (Array Int Int)))
    (=> (and ($main_sum158 $a12442561 $a22452562 $a32462563 $a42472564 $a52482565 $a62492566 $a72502567 $a82512568 $a2522569 $i2532570 $x2542571))
        ($main_inv159 $a12442561 $a22452562 $a32462563 $a42472564 $a52482565 $a62492566 $a72502567 $a82512568 $a2522569 0 $x2542571))))

; loop term $main_sum159
(assert
  (forall (($a52482576 (Array Int Int)) ($a62492577 (Array Int Int)) ($a2522580 Int) ($a72502578 (Array Int Int)) ($a82512579 (Array Int Int)) ($a22452573 (Array Int Int)) ($i2532581 Int) ($a12442572 (Array Int Int)) ($a32462574 (Array Int Int)) ($x2542582 Int) ($a42472575 (Array Int Int)))
    (=> (and (not (< $i2532581 100000))
             ($main_inv159 $a12442572 $a22452573 $a32462574 $a42472575 $a52482576 $a62492577 $a72502578 $a82512579 $a2522580 $i2532581 $x2542582))
        ($main_sum159 $a12442572 $a22452573 $a32462574 $a42472575 $a52482576 $a62492577 $a72502578 $a82512579 $a2522580 $i2532581 $x2542582))))

; forwards $main_inv159
(assert
  (forall (($a52482576 (Array Int Int)) ($a62492577 (Array Int Int)) ($a2522580 Int) ($a72502578 (Array Int Int)) ($a82512579 (Array Int Int)) ($a22452573 (Array Int Int)) ($i2532581 Int) ($a12442572 (Array Int Int)) ($a32462574 (Array Int Int)) ($x2542582 Int) ($a42472575 (Array Int Int)))
    (=> (and (< $i2532581 100000)
             ($main_inv159 $a12442572 $a22452573 $a32462574 $a42472575 $a52482576 $a62492577 $a72502578 $a82512579 $a2522580 $i2532581 $x2542582))
        ($main_inv159 $a12442572 $a22452573 $a32462574 $a42472575 (store $a52482576 $i2532581 (select $a42472575 $i2532581)) $a62492577 $a72502578 $a82512579 $a2522580 (+ $i2532581 1) $x2542582))))

; loop entry $main_inv160
(assert
  (forall (($a32462585 (Array Int Int)) ($a62492588 (Array Int Int)) ($a82512590 (Array Int Int)) ($i2532592 Int) ($a2522591 Int) ($a12442583 (Array Int Int)) ($a52482587 (Array Int Int)) ($x2542593 Int) ($a22452584 (Array Int Int)) ($a72502589 (Array Int Int)) ($a42472586 (Array Int Int)))
    (=> (and ($main_sum159 $a12442583 $a22452584 $a32462585 $a42472586 $a52482587 $a62492588 $a72502589 $a82512590 $a2522591 $i2532592 $x2542593))
        ($main_inv160 $a12442583 $a22452584 $a32462585 $a42472586 $a52482587 $a62492588 $a72502589 $a82512590 $a2522591 0 $x2542593))))

; loop term $main_sum160
(assert
  (forall (($a2522602 Int) ($a12442594 (Array Int Int)) ($a32462596 (Array Int Int)) ($a82512601 (Array Int Int)) ($i2532603 Int) ($a42472597 (Array Int Int)) ($a52482598 (Array Int Int)) ($x2542604 Int) ($a22452595 (Array Int Int)) ($a62492599 (Array Int Int)) ($a72502600 (Array Int Int)))
    (=> (and (not (< $i2532603 100000))
             ($main_inv160 $a12442594 $a22452595 $a32462596 $a42472597 $a52482598 $a62492599 $a72502600 $a82512601 $a2522602 $i2532603 $x2542604))
        ($main_sum160 $a12442594 $a22452595 $a32462596 $a42472597 $a52482598 $a62492599 $a72502600 $a82512601 $a2522602 $i2532603 $x2542604))))

; forwards $main_inv160
(assert
  (forall (($a2522602 Int) ($a12442594 (Array Int Int)) ($a32462596 (Array Int Int)) ($a82512601 (Array Int Int)) ($i2532603 Int) ($a42472597 (Array Int Int)) ($a52482598 (Array Int Int)) ($x2542604 Int) ($a22452595 (Array Int Int)) ($a62492599 (Array Int Int)) ($a72502600 (Array Int Int)))
    (=> (and (< $i2532603 100000)
             ($main_inv160 $a12442594 $a22452595 $a32462596 $a42472597 $a52482598 $a62492599 $a72502600 $a82512601 $a2522602 $i2532603 $x2542604))
        ($main_inv160 $a12442594 $a22452595 $a32462596 $a42472597 $a52482598 (store $a62492599 $i2532603 (select $a52482598 $i2532603)) $a72502600 $a82512601 $a2522602 (+ $i2532603 1) $x2542604))))

; loop entry $main_inv161
(assert
  (forall (($a52482609 (Array Int Int)) ($x2542615 Int) ($a22452606 (Array Int Int)) ($a12442605 (Array Int Int)) ($a42472608 (Array Int Int)) ($a32462607 (Array Int Int)) ($a62492610 (Array Int Int)) ($a72502611 (Array Int Int)) ($a2522613 Int) ($i2532614 Int) ($a82512612 (Array Int Int)))
    (=> (and ($main_sum160 $a12442605 $a22452606 $a32462607 $a42472608 $a52482609 $a62492610 $a72502611 $a82512612 $a2522613 $i2532614 $x2542615))
        ($main_inv161 $a12442605 $a22452606 $a32462607 $a42472608 $a52482609 $a62492610 $a72502611 $a82512612 $a2522613 0 $x2542615))))

; loop term $main_sum161
(assert
  (forall (($a72502622 (Array Int Int)) ($a2522624 Int) ($a32462618 (Array Int Int)) ($a12442616 (Array Int Int)) ($a42472619 (Array Int Int)) ($i2532625 Int) ($a62492621 (Array Int Int)) ($a22452617 (Array Int Int)) ($a52482620 (Array Int Int)) ($a82512623 (Array Int Int)) ($x2542626 Int))
    (=> (and (not (< $i2532625 100000))
             ($main_inv161 $a12442616 $a22452617 $a32462618 $a42472619 $a52482620 $a62492621 $a72502622 $a82512623 $a2522624 $i2532625 $x2542626))
        ($main_sum161 $a12442616 $a22452617 $a32462618 $a42472619 $a52482620 $a62492621 $a72502622 $a82512623 $a2522624 $i2532625 $x2542626))))

; forwards $main_inv161
(assert
  (forall (($a72502622 (Array Int Int)) ($a2522624 Int) ($a32462618 (Array Int Int)) ($a12442616 (Array Int Int)) ($a42472619 (Array Int Int)) ($i2532625 Int) ($a62492621 (Array Int Int)) ($a22452617 (Array Int Int)) ($a52482620 (Array Int Int)) ($a82512623 (Array Int Int)) ($x2542626 Int))
    (=> (and (< $i2532625 100000)
             ($main_inv161 $a12442616 $a22452617 $a32462618 $a42472619 $a52482620 $a62492621 $a72502622 $a82512623 $a2522624 $i2532625 $x2542626))
        ($main_inv161 $a12442616 $a22452617 $a32462618 $a42472619 $a52482620 $a62492621 $a72502622 (store $a82512623 $i2532625 (select $a62492621 $i2532625)) $a2522624 (+ $i2532625 1) $x2542626))))

; loop entry $main_inv162
(assert
  (forall (($a32462629 (Array Int Int)) ($i2532636 Int) ($a52482631 (Array Int Int)) ($a12442627 (Array Int Int)) ($a2522635 Int) ($a22452628 (Array Int Int)) ($a72502633 (Array Int Int)) ($a42472630 (Array Int Int)) ($x2542637 Int) ($a62492632 (Array Int Int)) ($a82512634 (Array Int Int)))
    (=> (and ($main_sum161 $a12442627 $a22452628 $a32462629 $a42472630 $a52482631 $a62492632 $a72502633 $a82512634 $a2522635 $i2532636 $x2542637))
        ($main_inv162 $a12442627 $a22452628 $a32462629 $a42472630 $a52482631 $a62492632 $a72502633 $a82512634 $a2522635 0 $x2542637))))

; loop term $main_sum162
(assert
  (forall (($a52482642 (Array Int Int)) ($a82512645 (Array Int Int)) ($a22452639 (Array Int Int)) ($a62492643 (Array Int Int)) ($a72502644 (Array Int Int)) ($i2532647 Int) ($a2522646 Int) ($a32462640 (Array Int Int)) ($x2542648 Int) ($a12442638 (Array Int Int)) ($a42472641 (Array Int Int)))
    (=> (and (not (< $i2532647 100000))
             ($main_inv162 $a12442638 $a22452639 $a32462640 $a42472641 $a52482642 $a62492643 $a72502644 $a82512645 $a2522646 $i2532647 $x2542648))
        ($main_sum162 $a12442638 $a22452639 $a32462640 $a42472641 $a52482642 $a62492643 $a72502644 $a82512645 $a2522646 $i2532647 $x2542648))))

; forwards $main_inv162
(assert
  (forall (($a52482642 (Array Int Int)) ($a82512645 (Array Int Int)) ($a22452639 (Array Int Int)) ($a62492643 (Array Int Int)) ($a72502644 (Array Int Int)) ($i2532647 Int) ($a2522646 Int) ($a32462640 (Array Int Int)) ($x2542648 Int) ($a12442638 (Array Int Int)) ($a42472641 (Array Int Int)))
    (=> (and (< $i2532647 100000)
             ($main_inv162 $a12442638 $a22452639 $a32462640 $a42472641 $a52482642 $a62492643 $a72502644 $a82512645 $a2522646 $i2532647 $x2542648))
        ($main_inv162 $a12442638 $a22452639 $a32462640 $a42472641 $a52482642 $a62492643 $a72502644 (store $a82512645 $i2532647 (select $a72502644 $i2532647)) $a2522646 (+ $i2532647 1) $x2542648))))

; loop entry $main_inv163
(assert
  (forall (($a52482653 (Array Int Int)) ($a2522657 Int) ($a62492654 (Array Int Int)) ($a32462651 (Array Int Int)) ($x2542659 Int) ($i2532658 Int) ($a42472652 (Array Int Int)) ($a12442649 (Array Int Int)) ($a72502655 (Array Int Int)) ($a82512656 (Array Int Int)) ($a22452650 (Array Int Int)))
    (=> (and ($main_sum162 $a12442649 $a22452650 $a32462651 $a42472652 $a52482653 $a62492654 $a72502655 $a82512656 $a2522657 $i2532658 $x2542659))
        ($main_inv163 $a12442649 $a22452650 $a32462651 $a42472652 $a52482653 $a62492654 $a72502655 $a82512656 $a2522657 $i2532658 0))))

; loop term $main_sum163
(assert
  (forall (($a12442660 (Array Int Int)) ($a2522668 Int) ($a32462662 (Array Int Int)) ($a52482664 (Array Int Int)) ($i2532669 Int) ($a72502666 (Array Int Int)) ($x2542670 Int) ($a22452661 (Array Int Int)) ($a62492665 (Array Int Int)) ($a42472663 (Array Int Int)) ($a82512667 (Array Int Int)))
    (=> (and (not (< $x2542670 100000))
             ($main_inv163 $a12442660 $a22452661 $a32462662 $a42472663 $a52482664 $a62492665 $a72502666 $a82512667 $a2522668 $i2532669 $x2542670))
        ($main_sum163 $a12442660 $a22452661 $a32462662 $a42472663 $a52482664 $a62492665 $a72502666 $a82512667 $a2522668 $i2532669 $x2542670))))

; __VERIFIER_assert precondition
(assert
  (forall (($a12442660 (Array Int Int)) ($a2522668 Int) ($a32462662 (Array Int Int)) ($a52482664 (Array Int Int)) ($i2532669 Int) ($a72502666 (Array Int Int)) ($x2542670 Int) ($a22452661 (Array Int Int)) ($a62492665 (Array Int Int)) ($a42472663 (Array Int Int)) ($a82512667 (Array Int Int)))
    (=> (and (< $x2542670 100000)
             ($main_inv163 $a12442660 $a22452661 $a32462662 $a42472663 $a52482664 $a62492665 $a72502666 $a82512667 $a2522668 $i2532669 $x2542670))
        ($__VERIFIER_assert_pre (ite (= (select $a12442660 $x2542670) (select $a82512667 $x2542670)) 1 0)))))

; forwards $main_inv163
(assert
  (forall (($a12442660 (Array Int Int)) ($a2522668 Int) ($a32462662 (Array Int Int)) ($a52482664 (Array Int Int)) ($i2532669 Int) ($a72502666 (Array Int Int)) ($x2542670 Int) ($a22452661 (Array Int Int)) ($a62492665 (Array Int Int)) ($a42472663 (Array Int Int)) ($a82512667 (Array Int Int)))
    (=> (and (__VERIFIER_assert (ite (= (select $a12442660 $x2542670) (select $a82512667 $x2542670)) 1 0))
             (< $x2542670 100000)
             ($main_inv163 $a12442660 $a22452661 $a32462662 $a42472663 $a52482664 $a62492665 $a72502666 $a82512667 $a2522668 $i2532669 $x2542670))
        ($main_inv163 $a12442660 $a22452661 $a32462662 $a42472663 $a52482664 $a62492665 $a72502666 $a82512667 $a2522668 $i2532669 (+ $x2542670 1)))))

(check-sat)
