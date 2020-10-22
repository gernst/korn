(set-logic HORN)

(declare-fun $main_sum26 ((Array Int Int) Int Int Int Int Int (Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $main_sum28 ((Array Int Int) Int Int Int Int Int (Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if9 (Int Int) Bool)
(declare-fun $main_inv25 ((Array Int Int) Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv26 ((Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_if11 ((Array Int Int) Int Int Int Int Int (Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $main_sum27 ((Array Int Int) Int Int Int Int Int (Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $main_if12 ((Array Int Int) Int Int Int Int Int (Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv27 ((Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $main_if10 ((Array Int Int) Int Int Int Int Int (Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $main_inv28 ((Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $main_sum25 ((Array Int Int) Int Int Int Int Int (Array Int Int) Int Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond497 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond497))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if9 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond498 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if9 cond cond498))
        (__VERIFIER_assert cond498))))

; loop entry $main_inv25
(assert
  (forall (($x78 Int) ($array73 (Array Int Int)) ($largest276 Int) ($largest175 Int) ($temp77 Int))
        ($main_inv25 $array73 0 $largest175 $largest276 $temp77 $x78)))

; loop term $main_sum25
(assert
  (forall (($x78504 Int) ($largest175501 Int) ($largest276502 Int) ($temp77503 Int) ($array73499 (Array Int Int)) ($i74500 Int))
    (=> (and (not (< $i74500 100000)))
        ($main_sum25 $array73499 $i74500 $largest175501 $largest276502 $temp77503 $x78504 $array73499 $i74500 $largest175501 $largest276502 $temp77503 $x78504))))

; forwards $main_inv25
(assert
  (forall (($int505 Int) ($x78504 Int) ($largest175501 Int) ($largest276502 Int) ($temp77503 Int) ($array73499 (Array Int Int)) ($i74500 Int))
    (=> (and (<= (- 2147483648) $int505)
             (<= $int505 2147483647)
             (< $i74500 100000)
             ($main_inv25 $array73499 $i74500 $largest175501 $largest276502 $temp77503 $x78504))
        ($main_inv25 (store $array73499 $i74500 $int505) (+ $i74500 1) $largest175501 $largest276502 $temp77503 $x78504))))

; backwards $main_sum25
(assert
  (forall (($array73506 (Array Int Int)) ($x78511 Int) ($i74507 Int) ($int505 Int) ($x78504 Int) ($largest175501 Int) ($largest175508 Int) ($largest276502 Int) ($array73499 (Array Int Int)) ($i74500 Int) ($largest276509 Int) ($temp77510 Int) ($temp77503 Int))
    (=> (and ($main_sum25 (store $array73499 $i74500 $int505) (+ $i74500 1) $largest175501 $largest276502 $temp77503 $x78504 $array73506 $i74507 $largest175508 $largest276509 $temp77510 $x78511)
             (<= (- 2147483648) $int505)
             (<= $int505 2147483647)
             (< $i74500 100000))
        ($main_sum25 $array73499 $i74500 $largest175501 $largest276502 $temp77503 $x78504 $array73506 $i74507 $largest175508 $largest276509 $temp77510 $x78511))))

; if then
(assert
  (forall (($array73512 (Array Int Int)) ($x78 Int) ($x78517 Int) ($largest175514 Int) ($array73 (Array Int Int)) ($largest175 Int) ($temp77 Int) ($temp77516 Int) ($largest276515 Int) ($i74513 Int) ($largest276 Int) ($i74 Int))
    (=> (and (< (select $array73512 0) (select $array73512 1))
             ($main_sum25 $array73 0 $largest175 $largest276 $temp77 $x78 $array73512 $i74513 $largest175514 $largest276515 $temp77516 $x78517))
        ($main_if10 $array73 $i74 $largest175 $largest276 $temp77 $x78 $array73512 $i74513 (select $array73512 1) (select $array73512 0) (select $array73512 0) $x78517))))

; if else
(assert
  (forall (($array73512 (Array Int Int)) ($x78 Int) ($x78517 Int) ($largest175514 Int) ($array73 (Array Int Int)) ($largest175 Int) ($temp77 Int) ($temp77516 Int) ($largest276515 Int) ($i74513 Int) ($largest276 Int) ($i74 Int))
    (=> (and (not (< (select $array73512 0) (select $array73512 1)))
             ($main_sum25 $array73 0 $largest175 $largest276 $temp77 $x78 $array73512 $i74513 $largest175514 $largest276515 $temp77516 $x78517))
        ($main_if10 $array73 $i74 $largest175 $largest276 $temp77 $x78 $array73512 $i74513 (select $array73512 0) (select $array73512 1) $temp77516 $x78517))))

; loop entry $main_inv26
(assert
  (forall (($x78 Int) ($largest175520 Int) ($array73 (Array Int Int)) ($i74519 Int) ($temp77 Int) ($temp77522 Int) ($largest276521 Int) ($array73518 (Array Int Int)) ($largest276 Int) ($i74 Int) ($x78523 Int) ($largest175 Int))
    (=> (and ($main_if10 $array73 $i74 $largest175 $largest276 $temp77 $x78 $array73518 $i74519 $largest175520 $largest276521 $temp77522 $x78523))
        ($main_inv26 $array73518 2 $largest175520 $largest276521 $temp77522 $x78523))))

; loop term $main_sum26
(assert
  (forall (($largest175526 Int) ($largest276527 Int) ($array73524 (Array Int Int)) ($temp77528 Int) ($i74525 Int) ($x78529 Int))
    (=> (and (not (< $i74525 100000)))
        ($main_sum26 $array73524 $i74525 $largest175526 $largest276527 $temp77528 $x78529 $array73524 $i74525 $largest175526 $largest276527 $temp77528 $x78529))))

; if then
(assert
  (forall (($largest175526 Int) ($largest276527 Int) ($array73524 (Array Int Int)) ($temp77528 Int) ($i74525 Int) ($x78529 Int))
    (=> (and (> (select $array73524 $i74525) $largest276527)
             (not (>= (select $array73524 $i74525) $largest175526))
             (< $i74525 100000)
             ($main_inv26 $array73524 $i74525 $largest175526 $largest276527 $temp77528 $x78529))
        ($main_if11 $array73524 $i74525 $largest175526 $largest276527 $temp77528 $x78529 $array73524 $i74525 $largest175526 (select $array73524 $i74525) $temp77528 $x78529))))

; if else
(assert
  (forall (($largest175526 Int) ($largest276527 Int) ($array73524 (Array Int Int)) ($temp77528 Int) ($i74525 Int) ($x78529 Int))
    (=> (and (not (> (select $array73524 $i74525) $largest276527))
             (not (>= (select $array73524 $i74525) $largest175526))
             (< $i74525 100000)
             ($main_inv26 $array73524 $i74525 $largest175526 $largest276527 $temp77528 $x78529))
        ($main_if11 $array73524 $i74525 $largest175526 $largest276527 $temp77528 $x78529 $array73524 $i74525 $largest175526 $largest276527 $temp77528 $x78529))))

; if then
(assert
  (forall (($largest175526 Int) ($largest276527 Int) ($array73524 (Array Int Int)) ($temp77528 Int) ($i74525 Int) ($x78529 Int))
    (=> (and (>= (select $array73524 $i74525) $largest175526)
             (< $i74525 100000)
             ($main_inv26 $array73524 $i74525 $largest175526 $largest276527 $temp77528 $x78529))
        ($main_if12 $array73524 $i74525 $largest175526 $largest276527 $temp77528 $x78529 $array73524 $i74525 (select $array73524 $i74525) $largest175526 $temp77528 $x78529))))

; if else
(assert
  (forall (($largest175526 Int) ($i74531 Int) ($largest276533 Int) ($largest175532 Int) ($temp77534 Int) ($largest276527 Int) ($temp77528 Int) ($x78535 Int) ($i74525 Int) ($x78529 Int) ($array73530 (Array Int Int)) ($array73524 (Array Int Int)))
    (=> (and ($main_if11 $array73524 $i74525 $largest175526 $largest276527 $temp77528 $x78529 $array73530 $i74531 $largest175532 $largest276533 $temp77534 $x78535))
        ($main_if12 $array73524 $i74525 $largest175526 $largest276527 $temp77528 $x78529 $array73530 $i74531 $largest175532 $largest276533 $temp77534 $x78535))))

; forwards $main_inv26
(assert
  (forall (($largest175526 Int) ($largest175538 Int) ($array73524 (Array Int Int)) ($i74537 Int) ($array73536 (Array Int Int)) ($largest276539 Int) ($i74525 Int) ($x78529 Int) ($largest276527 Int) ($temp77540 Int) ($temp77528 Int) ($x78541 Int))
    (=> (and ($main_if12 $array73524 $i74525 $largest175526 $largest276527 $temp77528 $x78529 $array73536 $i74537 $largest175538 $largest276539 $temp77540 $x78541))
        ($main_inv26 $array73536 (+ $i74537 1) $largest175538 $largest276539 $temp77540 $x78541))))

; backwards $main_sum26
(assert
  (forall (($largest175526 Int) ($largest175538 Int) ($largest276545 Int) ($temp77546 Int) ($x78547 Int) ($array73524 (Array Int Int)) ($i74537 Int) ($array73536 (Array Int Int)) ($largest276539 Int) ($array73542 (Array Int Int)) ($i74525 Int) ($x78529 Int) ($largest276527 Int) ($temp77540 Int) ($i74543 Int) ($largest175544 Int) ($temp77528 Int) ($x78541 Int))
    (=> (and ($main_sum26 $array73536 (+ $i74537 1) $largest175538 $largest276539 $temp77540 $x78541 $array73542 $i74543 $largest175544 $largest276545 $temp77546 $x78547)
             ($main_if12 $array73524 $i74525 $largest175526 $largest276527 $temp77528 $x78529 $array73536 $i74537 $largest175538 $largest276539 $temp77540 $x78541))
        ($main_sum26 $array73524 $i74525 $largest175526 $largest276527 $temp77528 $x78529 $array73542 $i74543 $largest175544 $largest276545 $temp77546 $x78547))))

; loop entry $main_inv27
(assert
  (forall (($x78553 Int) ($x78 Int) ($largest175520 Int) ($largest276551 Int) ($i74519 Int) ($temp77 Int) ($temp77522 Int) ($array73518 (Array Int Int)) ($array73548 (Array Int Int)) ($array73 (Array Int Int)) ($i74549 Int) ($temp77552 Int) ($largest276 Int) ($i74 Int) ($x78523 Int) ($largest175 Int) ($largest175550 Int) ($largest276521 Int))
    (=> (and ($main_sum26 $array73518 2 $largest175520 $largest276521 $temp77522 $x78523 $array73548 $i74549 $largest175550 $largest276551 $temp77552 $x78553)
             ($main_if10 $array73 $i74 $largest175 $largest276 $temp77 $x78 $array73518 $i74519 $largest175520 $largest276521 $temp77522 $x78523))
        ($main_inv27 $array73548 $i74549 $largest175550 $largest276551 $temp77552 0))))

; loop term $main_sum27
(assert
  (forall (($largest276557 Int) ($temp77558 Int) ($x78559 Int) ($array73554 (Array Int Int)) ($i74555 Int) ($largest175556 Int))
    (=> (and (not (< $x78559 100000)))
        ($main_sum27 $array73554 $i74555 $largest175556 $largest276557 $temp77558 $x78559 $array73554 $i74555 $largest175556 $largest276557 $temp77558 $x78559))))

; __VERIFIER_assert precondition
(assert
  (forall (($largest276557 Int) ($temp77558 Int) ($x78559 Int) ($array73554 (Array Int Int)) ($i74555 Int) ($largest175556 Int))
    (=> (and (< $x78559 100000)
             ($main_inv27 $array73554 $i74555 $largest175556 $largest276557 $temp77558 $x78559))
        ($__VERIFIER_assert_pre (ite (<= (select $array73554 $x78559) $largest175556) 1 0)))))

; forwards $main_inv27
(assert
  (forall (($largest276557 Int) ($temp77558 Int) ($x78559 Int) ($array73554 (Array Int Int)) ($i74555 Int) ($largest175556 Int))
    (=> (and (__VERIFIER_assert (ite (<= (select $array73554 $x78559) $largest175556) 1 0))
             (< $x78559 100000)
             ($main_inv27 $array73554 $i74555 $largest175556 $largest276557 $temp77558 $x78559))
        ($main_inv27 $array73554 $i74555 $largest175556 $largest276557 $temp77558 (+ $x78559 1)))))

; backwards $main_sum27
(assert
  (forall (($temp77564 Int) ($largest276557 Int) ($temp77558 Int) ($array73560 (Array Int Int)) ($x78559 Int) ($largest175556 Int) ($x78565 Int) ($largest175562 Int) ($largest276563 Int) ($array73554 (Array Int Int)) ($i74561 Int) ($i74555 Int))
    (=> (and ($main_sum27 $array73554 $i74555 $largest175556 $largest276557 $temp77558 (+ $x78559 1) $array73560 $i74561 $largest175562 $largest276563 $temp77564 $x78565)
             (__VERIFIER_assert (ite (<= (select $array73554 $x78559) $largest175556) 1 0))
             (< $x78559 100000))
        ($main_sum27 $array73554 $i74555 $largest175556 $largest276557 $temp77558 $x78559 $array73560 $i74561 $largest175562 $largest276563 $temp77564 $x78565))))

; loop entry $main_inv28
(assert
  (forall (($x78553 Int) ($x78571 Int) ($x78 Int) ($array73566 (Array Int Int)) ($largest276569 Int) ($temp77 Int) ($temp77522 Int) ($array73518 (Array Int Int)) ($array73548 (Array Int Int)) ($i74567 Int) ($largest175520 Int) ($array73 (Array Int Int)) ($i74549 Int) ($temp77552 Int) ($largest276 Int) ($i74 Int) ($largest276551 Int) ($temp77570 Int) ($largest175568 Int) ($i74519 Int) ($x78523 Int) ($largest175 Int) ($largest175550 Int) ($largest276521 Int))
    (=> (and ($main_sum27 $array73548 $i74549 $largest175550 $largest276551 $temp77552 0 $array73566 $i74567 $largest175568 $largest276569 $temp77570 $x78571)
             ($main_sum26 $array73518 2 $largest175520 $largest276521 $temp77522 $x78523 $array73548 $i74549 $largest175550 $largest276551 $temp77552 $x78553)
             ($main_if10 $array73 $i74 $largest175 $largest276 $temp77 $x78 $array73518 $i74519 $largest175520 $largest276521 $temp77522 $x78523))
        ($main_inv28 $array73566 $i74567 $largest175568 $largest276569 $temp77570 0))))

; loop term $main_sum28
(assert
  (forall (($array73572 (Array Int Int)) ($i74573 Int) ($largest175574 Int) ($x78577 Int) ($temp77576 Int) ($largest276575 Int))
    (=> (and (not (< $x78577 100000)))
        ($main_sum28 $array73572 $i74573 $largest175574 $largest276575 $temp77576 $x78577 $array73572 $i74573 $largest175574 $largest276575 $temp77576 $x78577))))

; __VERIFIER_assert precondition
(assert
  (forall (($array73572 (Array Int Int)) ($i74573 Int) ($largest175574 Int) ($x78577 Int) ($temp77576 Int) ($largest276575 Int))
    (=> (and (< $x78577 100000)
             ($main_inv28 $array73572 $i74573 $largest175574 $largest276575 $temp77576 $x78577))
        ($__VERIFIER_assert_pre (ite (or (<= (select $array73572 $x78577) $largest276575) (= (select $array73572 $x78577) $largest175574)) 1 0)))))

; forwards $main_inv28
(assert
  (forall (($array73572 (Array Int Int)) ($i74573 Int) ($largest175574 Int) ($x78577 Int) ($temp77576 Int) ($largest276575 Int))
    (=> (and (__VERIFIER_assert (ite (or (<= (select $array73572 $x78577) $largest276575) (= (select $array73572 $x78577) $largest175574)) 1 0))
             (< $x78577 100000)
             ($main_inv28 $array73572 $i74573 $largest175574 $largest276575 $temp77576 $x78577))
        ($main_inv28 $array73572 $i74573 $largest175574 $largest276575 $temp77576 (+ $x78577 1)))))

; backwards $main_sum28
(assert
  (forall (($array73572 (Array Int Int)) ($largest175580 Int) ($temp77576 Int) ($largest276575 Int) ($x78583 Int) ($i74573 Int) ($largest175574 Int) ($array73578 (Array Int Int)) ($x78577 Int) ($temp77582 Int) ($largest276581 Int) ($i74579 Int))
    (=> (and ($main_sum28 $array73572 $i74573 $largest175574 $largest276575 $temp77576 (+ $x78577 1) $array73578 $i74579 $largest175580 $largest276581 $temp77582 $x78583)
             (__VERIFIER_assert (ite (or (<= (select $array73572 $x78577) $largest276575) (= (select $array73572 $x78577) $largest175574)) 1 0))
             (< $x78577 100000))
        ($main_sum28 $array73572 $i74573 $largest175574 $largest276575 $temp77576 $x78577 $array73578 $i74579 $largest175580 $largest276581 $temp77582 $x78583))))

(check-sat)
