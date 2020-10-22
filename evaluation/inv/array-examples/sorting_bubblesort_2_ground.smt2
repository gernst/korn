(set-logic HORN)

(declare-fun $main_sum38 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum40 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if19 (Int) Bool)
(declare-fun $main_if20 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv41 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum39 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv40 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum41 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum42 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv38 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv42 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv39 ((Array Int Int) Int Int Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond514 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond514))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if19 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond515 Int))
    (=> (and ($__VERIFIER_assert_if19 cond515))
        (__VERIFIER_assert cond515))))

; loop entry $main_inv38
(assert
  (forall (($swapped93 Int) ($t95 Int) ($j92 Int) ($y97 Int) ($i94 Int) ($a91 (Array Int Int)) ($x96 Int))
    (=> (and (= $j92 0))
        ($main_inv38 $a91 $j92 $swapped93 $i94 $t95 $x96 $y97))))

; loop term $main_sum38
(assert
  (forall (($j92517 Int) ($a91516 (Array Int Int)) ($x96521 Int) ($swapped93518 Int) ($t95520 Int) ($i94519 Int) ($y97522 Int))
    (=> (and (not (< $j92517 100000))
             ($main_inv38 $a91516 $j92517 $swapped93518 $i94519 $t95520 $x96521 $y97522))
        ($main_sum38 $a91516 $j92517 $swapped93518 $i94519 $t95520 $x96521 $y97522))))

; forwards $main_inv38
(assert
  (forall (($j92517 Int) ($a91516 (Array Int Int)) ($x96521 Int) ($int523 Int) ($swapped93518 Int) ($t95520 Int) ($i94519 Int) ($y97522 Int))
    (=> (and (<= (- 2147483648) $int523)
             (<= $int523 2147483647)
             (< $j92517 100000)
             ($main_inv38 $a91516 $j92517 $swapped93518 $i94519 $t95520 $x96521 $y97522))
        ($main_inv38 (store $a91516 $j92517 $int523) (+ $j92517 1) $swapped93518 $i94519 $t95520 $x96521 $y97522))))

; loop entry $main_inv39
(assert
  (forall (($i94527 Int) ($x96529 Int) ($a91524 (Array Int Int)) ($swapped93526 Int) ($y97530 Int) ($j92525 Int) ($t95528 Int))
    (=> (and (= $swapped93526 1)
             ($main_sum38 $a91524 $j92525 $swapped93526 $i94527 $t95528 $x96529 $y97530))
        ($main_inv39 $a91524 $j92525 $swapped93526 $i94527 $t95528 $x96529 $y97530))))

; loop term $main_sum39
(assert
  (forall (($x96536 Int) ($a91531 (Array Int Int)) ($t95535 Int) ($swapped93533 Int) ($y97537 Int) ($i94534 Int) ($j92532 Int))
    (=> (and (= $swapped93533 0)
             ($main_inv39 $a91531 $j92532 $swapped93533 $i94534 $t95535 $x96536 $y97537))
        ($main_sum39 $a91531 $j92532 $swapped93533 $i94534 $t95535 $x96536 $y97537))))

; loop entry $main_inv40
(assert
  (forall (($x96536 Int) ($a91531 (Array Int Int)) ($t95535 Int) ($swapped93533 Int) ($y97537 Int) ($i94534 Int) ($j92532 Int))
    (=> (and (= $i94534 1)
             (not (= $swapped93533 0))
             ($main_inv39 $a91531 $j92532 $swapped93533 $i94534 $t95535 $x96536 $y97537))
        ($main_inv40 $a91531 $j92532 0 $i94534 $t95535 $x96536 $y97537))))

; loop term $main_sum40
(assert
  (forall (($i94541 Int) ($x96543 Int) ($y97544 Int) ($j92539 Int) ($swapped93540 Int) ($t95542 Int) ($a91538 (Array Int Int)))
    (=> (and (not (< $i94541 100000))
             ($main_inv40 $a91538 $j92539 $swapped93540 $i94541 $t95542 $x96543 $y97544))
        ($main_sum40 $a91538 $j92539 $swapped93540 $i94541 $t95542 $x96543 $y97544))))

; if then
(assert
  (forall (($i94541 Int) ($x96543 Int) ($y97544 Int) ($j92539 Int) ($swapped93540 Int) ($t95542 Int) ($a91538 (Array Int Int)))
    (=> (and (= $t95542 (select $a91538 $i94541))
             (> (select $a91538 $i94541) (select $a91538 (- $i94541 1)))
             (< $i94541 100000)
             ($main_inv40 $a91538 $j92539 $swapped93540 $i94541 $t95542 $x96543 $y97544))
        ($main_if20 (store (store $a91538 $i94541 (select $a91538 (- $i94541 1))) (- $i94541 1) $t95542) $j92539 1 $i94541 $t95542 $x96543 $y97544))))

; if else
(assert
  (forall (($i94541 Int) ($x96543 Int) ($y97544 Int) ($j92539 Int) ($swapped93540 Int) ($t95542 Int) ($a91538 (Array Int Int)))
    (=> (and (not (> (select $a91538 $i94541) (select $a91538 (- $i94541 1))))
             (< $i94541 100000)
             ($main_inv40 $a91538 $j92539 $swapped93540 $i94541 $t95542 $x96543 $y97544))
        ($main_if20 $a91538 $j92539 $swapped93540 $i94541 $t95542 $x96543 $y97544))))

; forwards $main_inv40
(assert
  (forall (($t95549 Int) ($a91545 (Array Int Int)) ($y97551 Int) ($j92546 Int) ($x96550 Int) ($i94548 Int) ($swapped93547 Int))
    (=> (and ($main_if20 $a91545 $j92546 $swapped93547 $i94548 $t95549 $x96550 $y97551))
        ($main_inv40 $a91545 $j92546 $swapped93547 (+ $i94548 1) $t95549 $x96550 $y97551))))

; forwards $main_inv39
(assert
  (forall (($x96557 Int) ($y97558 Int) ($j92553 Int) ($t95556 Int) ($a91552 (Array Int Int)) ($swapped93554 Int) ($i94555 Int))
    (=> (and ($main_sum40 $a91552 $j92553 $swapped93554 $i94555 $t95556 $x96557 $y97558))
        ($main_inv39 $a91552 $j92553 $swapped93554 $i94555 $t95556 $x96557 $y97558))))

; loop entry $main_inv41
(assert
  (forall (($swapped93561 Int) ($t95563 Int) ($j92560 Int) ($y97565 Int) ($i94562 Int) ($a91559 (Array Int Int)) ($x96564 Int))
    (=> (and ($main_sum39 $a91559 $j92560 $swapped93561 $i94562 $t95563 $x96564 $y97565))
        ($main_inv41 $a91559 $j92560 $swapped93561 $i94562 $t95563 0 $y97565))))

; loop term $main_sum41
(assert
  (forall (($j92567 Int) ($x96571 Int) ($y97572 Int) ($a91566 (Array Int Int)) ($i94569 Int) ($t95570 Int) ($swapped93568 Int))
    (=> (and (not (< $x96571 100000))
             ($main_inv41 $a91566 $j92567 $swapped93568 $i94569 $t95570 $x96571 $y97572))
        ($main_sum41 $a91566 $j92567 $swapped93568 $i94569 $t95570 $x96571 $y97572))))

; loop entry $main_inv42
(assert
  (forall (($j92567 Int) ($x96571 Int) ($y97572 Int) ($a91566 (Array Int Int)) ($i94569 Int) ($t95570 Int) ($swapped93568 Int))
    (=> (and (< $x96571 100000)
             ($main_inv41 $a91566 $j92567 $swapped93568 $i94569 $t95570 $x96571 $y97572))
        ($main_inv42 $a91566 $j92567 $swapped93568 $i94569 $t95570 $x96571 (+ $x96571 1)))))

; loop term $main_sum42
(assert
  (forall (($a91573 (Array Int Int)) ($y97579 Int) ($x96578 Int) ($j92574 Int) ($t95577 Int) ($swapped93575 Int) ($i94576 Int))
    (=> (and (not (< $y97579 100000))
             ($main_inv42 $a91573 $j92574 $swapped93575 $i94576 $t95577 $x96578 $y97579))
        ($main_sum42 $a91573 $j92574 $swapped93575 $i94576 $t95577 $x96578 $y97579))))

; __VERIFIER_assert precondition
(assert
  (forall (($a91573 (Array Int Int)) ($y97579 Int) ($x96578 Int) ($j92574 Int) ($t95577 Int) ($swapped93575 Int) ($i94576 Int))
    (=> (and (< $y97579 100000)
             ($main_inv42 $a91573 $j92574 $swapped93575 $i94576 $t95577 $x96578 $y97579))
        ($__VERIFIER_assert_pre (ite (<= (select $a91573 $x96578) (select $a91573 $y97579)) 1 0)))))

; forwards $main_inv42
(assert
  (forall (($a91573 (Array Int Int)) ($y97579 Int) ($x96578 Int) ($j92574 Int) ($t95577 Int) ($swapped93575 Int) ($i94576 Int))
    (=> (and (__VERIFIER_assert (ite (<= (select $a91573 $x96578) (select $a91573 $y97579)) 1 0))
             (< $y97579 100000)
             ($main_inv42 $a91573 $j92574 $swapped93575 $i94576 $t95577 $x96578 $y97579))
        ($main_inv42 $a91573 $j92574 $swapped93575 $i94576 $t95577 $x96578 (+ $y97579 1)))))

; forwards $main_inv41
(assert
  (forall (($a91580 (Array Int Int)) ($y97586 Int) ($j92581 Int) ($t95584 Int) ($swapped93582 Int) ($i94583 Int) ($x96585 Int))
    (=> (and ($main_sum42 $a91580 $j92581 $swapped93582 $i94583 $t95584 $x96585 $y97586))
        ($main_inv41 $a91580 $j92581 $swapped93582 $i94583 $t95584 (+ $x96585 1) $y97586))))

(check-sat)
