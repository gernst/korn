(set-logic HORN)

(declare-fun $main_inv42 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv41 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum41 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum38 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_inv37 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum43 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv39 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum40 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv40 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $main_sum37 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $__VERIFIER_assert_if22 (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv44 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv38 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum39 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv43 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum44 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum42 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond489 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond489))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if22 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond490 Int))
    (=> (and ($__VERIFIER_assert_if22 cond490))
        (__VERIFIER_assert cond490))))

; loop entry $main_inv37
(assert
  (forall (($A58 (Array Int (Array Int Int))) ($C60 (Array Int (Array Int Int))) ($m56 Int) ($B59 (Array Int (Array Int Int))) ($n57 Int))
    (=> (and (= $n57 1500)
             (= $m56 1000))
        ($main_inv37 0 0 $m56 $n57 $A58 $B59 $C60))))

; loop term $main_sum37
(assert
  (forall (($B59496 (Array Int (Array Int Int))) ($n57494 Int) ($j55492 Int) ($A58495 (Array Int (Array Int Int))) ($i54491 Int) ($m56493 Int) ($C60497 (Array Int (Array Int Int))))
    (=> (and (not (< $i54491 $m56493))
             ($main_inv37 $i54491 $j55492 $m56493 $n57494 $A58495 $B59496 $C60497))
        ($main_sum37 $i54491 $j55492 $m56493 $n57494 $A58495 $B59496 $C60497))))

; loop entry $main_inv38
(assert
  (forall (($B59496 (Array Int (Array Int Int))) ($n57494 Int) ($j55492 Int) ($A58495 (Array Int (Array Int Int))) ($i54491 Int) ($m56493 Int) ($C60497 (Array Int (Array Int Int))))
    (=> (and (< $i54491 $m56493)
             ($main_inv37 $i54491 $j55492 $m56493 $n57494 $A58495 $B59496 $C60497))
        ($main_inv38 $i54491 0 $m56493 $n57494 $A58495 $B59496 $C60497))))

; loop term $main_sum38
(assert
  (forall (($A58502 (Array Int (Array Int Int))) ($i54498 Int) ($m56500 Int) ($j55499 Int) ($B59503 (Array Int (Array Int Int))) ($C60504 (Array Int (Array Int Int))) ($n57501 Int))
    (=> (and (not (< $j55499 $n57501))
             ($main_inv38 $i54498 $j55499 $m56500 $n57501 $A58502 $B59503 $C60504))
        ($main_sum38 $i54498 $j55499 $m56500 $n57501 $A58502 $B59503 $C60504))))

; forwards $main_inv38
(assert
  (forall (($A58502 (Array Int (Array Int Int))) ($i54498 Int) ($m56500 Int) ($j55499 Int) ($uint506 Int) ($C60504 (Array Int (Array Int Int))) ($n57501 Int) ($B59503 (Array Int (Array Int Int))) ($uint505 Int))
    (=> (and (<= 0 $uint506)
             (<= $uint506 4294967295)
             (<= 0 $uint505)
             (<= $uint505 4294967295)
             (< $j55499 $n57501)
             ($main_inv38 $i54498 $j55499 $m56500 $n57501 $A58502 $B59503 $C60504))
        ($main_inv38 $i54498 (+ $j55499 1) $m56500 $n57501 (store $A58502 $i54498 (store (select $A58502 $i54498) $j55499 $uint505)) (store $B59503 $i54498 (store (select $B59503 $i54498) $j55499 $uint506)) $C60504))))

; forwards $main_inv37
(assert
  (forall (($m56509 Int) ($i54507 Int) ($A58511 (Array Int (Array Int Int))) ($j55508 Int) ($C60513 (Array Int (Array Int Int))) ($n57510 Int) ($B59512 (Array Int (Array Int Int))))
    (=> (and ($main_sum38 $i54507 $j55508 $m56509 $n57510 $A58511 $B59512 $C60513))
        ($main_inv37 (+ $i54507 1) $j55508 $m56509 $n57510 $A58511 $B59512 $C60513))))

; loop entry $main_inv39
(assert
  (forall (($B59519 (Array Int (Array Int Int))) ($j55515 Int) ($A58518 (Array Int (Array Int Int))) ($i54514 Int) ($n57517 Int) ($C60520 (Array Int (Array Int Int))) ($m56516 Int))
    (=> (and ($main_sum37 $i54514 $j55515 $m56516 $n57517 $A58518 $B59519 $C60520))
        ($main_inv39 0 0 $m56516 $n57517 $A58518 $B59519 $C60520))))

; loop term $main_sum39
(assert
  (forall (($n57524 Int) ($C60527 (Array Int (Array Int Int))) ($m56523 Int) ($i54521 Int) ($B59526 (Array Int (Array Int Int))) ($j55522 Int) ($A58525 (Array Int (Array Int Int))))
    (=> (and (not (< $i54521 $m56523))
             ($main_inv39 $i54521 $j55522 $m56523 $n57524 $A58525 $B59526 $C60527))
        ($main_sum39 $i54521 $j55522 $m56523 $n57524 $A58525 $B59526 $C60527))))

; loop entry $main_inv40
(assert
  (forall (($n57524 Int) ($C60527 (Array Int (Array Int Int))) ($m56523 Int) ($i54521 Int) ($B59526 (Array Int (Array Int Int))) ($j55522 Int) ($A58525 (Array Int (Array Int Int))))
    (=> (and (< $i54521 $m56523)
             ($main_inv39 $i54521 $j55522 $m56523 $n57524 $A58525 $B59526 $C60527))
        ($main_inv40 $i54521 0 $m56523 $n57524 $A58525 $B59526 $C60527))))

; loop term $main_sum40
(assert
  (forall (($n57531 Int) ($A58532 (Array Int (Array Int Int))) ($j55529 Int) ($m56530 Int) ($C60534 (Array Int (Array Int Int))) ($B59533 (Array Int (Array Int Int))) ($i54528 Int))
    (=> (and (not (< $j55529 $n57531))
             ($main_inv40 $i54528 $j55529 $m56530 $n57531 $A58532 $B59533 $C60534))
        ($main_sum40 $i54528 $j55529 $m56530 $n57531 $A58532 $B59533 $C60534))))

; forwards $main_inv40
(assert
  (forall (($n57531 Int) ($uint536 Int) ($A58532 (Array Int (Array Int Int))) ($j55529 Int) ($m56530 Int) ($C60534 (Array Int (Array Int Int))) ($i54528 Int) ($B59533 (Array Int (Array Int Int))) ($uint535 Int))
    (=> (and (<= 0 $uint536)
             (<= $uint536 4294967295)
             (<= 0 $uint535)
             (<= $uint535 4294967295)
             (< $j55529 $n57531)
             ($main_inv40 $i54528 $j55529 $m56530 $n57531 $A58532 $B59533 $C60534))
        ($main_inv40 $i54528 (+ $j55529 1) $m56530 $n57531 (store $A58532 $i54528 (store (select $A58532 $i54528) $j55529 $uint535)) (store $B59533 $i54528 (store (select $B59533 $i54528) $j55529 $uint536)) $C60534))))

; forwards $main_inv39
(assert
  (forall (($m56539 Int) ($B59542 (Array Int (Array Int Int))) ($C60543 (Array Int (Array Int Int))) ($j55538 Int) ($A58541 (Array Int (Array Int Int))) ($i54537 Int) ($n57540 Int))
    (=> (and ($main_sum40 $i54537 $j55538 $m56539 $n57540 $A58541 $B59542 $C60543))
        ($main_inv39 (+ $i54537 1) $j55538 $m56539 $n57540 $A58541 $B59542 $C60543))))

; loop entry $main_inv41
(assert
  (forall (($n57547 Int) ($C60550 (Array Int (Array Int Int))) ($B59549 (Array Int (Array Int Int))) ($i54544 Int) ($j55545 Int) ($A58548 (Array Int (Array Int Int))) ($m56546 Int))
    (=> (and ($main_sum39 $i54544 $j55545 $m56546 $n57547 $A58548 $B59549 $C60550))
        ($main_inv41 0 0 $m56546 $n57547 $A58548 $B59549 $C60550))))

; loop term $main_sum41
(assert
  (forall (($m56553 Int) ($n57554 Int) ($B59556 (Array Int (Array Int Int))) ($C60557 (Array Int (Array Int Int))) ($i54551 Int) ($j55552 Int) ($A58555 (Array Int (Array Int Int))))
    (=> (and (not (< $i54551 $m56553))
             ($main_inv41 $i54551 $j55552 $m56553 $n57554 $A58555 $B59556 $C60557))
        ($main_sum41 $i54551 $j55552 $m56553 $n57554 $A58555 $B59556 $C60557))))

; loop entry $main_inv42
(assert
  (forall (($m56553 Int) ($n57554 Int) ($B59556 (Array Int (Array Int Int))) ($C60557 (Array Int (Array Int Int))) ($i54551 Int) ($j55552 Int) ($A58555 (Array Int (Array Int Int))))
    (=> (and (< $i54551 $m56553)
             ($main_inv41 $i54551 $j55552 $m56553 $n57554 $A58555 $B59556 $C60557))
        ($main_inv42 $i54551 0 $m56553 $n57554 $A58555 $B59556 $C60557))))

; loop term $main_sum42
(assert
  (forall (($C60564 (Array Int (Array Int Int))) ($j55559 Int) ($n57561 Int) ($m56560 Int) ($A58562 (Array Int (Array Int Int))) ($B59563 (Array Int (Array Int Int))) ($i54558 Int))
    (=> (and (not (< $j55559 $n57561))
             ($main_inv42 $i54558 $j55559 $m56560 $n57561 $A58562 $B59563 $C60564))
        ($main_sum42 $i54558 $j55559 $m56560 $n57561 $A58562 $B59563 $C60564))))

; forwards $main_inv42
(assert
  (forall (($C60564 (Array Int (Array Int Int))) ($j55559 Int) ($n57561 Int) ($m56560 Int) ($A58562 (Array Int (Array Int Int))) ($B59563 (Array Int (Array Int Int))) ($i54558 Int))
    (=> (and (< $j55559 $n57561)
             ($main_inv42 $i54558 $j55559 $m56560 $n57561 $A58562 $B59563 $C60564))
        ($main_inv42 $i54558 (+ $j55559 1) $m56560 $n57561 $A58562 $B59563 (store $C60564 $i54558 (store (select $C60564 $i54558) $j55559 (- (select (select $A58562 $i54558) $j55559) (select (select $B59563 $i54558) $j55559))))))))

; forwards $main_inv41
(assert
  (forall (($i54565 Int) ($B59570 (Array Int (Array Int Int))) ($n57568 Int) ($j55566 Int) ($C60571 (Array Int (Array Int Int))) ($m56567 Int) ($A58569 (Array Int (Array Int Int))))
    (=> (and ($main_sum42 $i54565 $j55566 $m56567 $n57568 $A58569 $B59570 $C60571))
        ($main_inv41 (+ $i54565 1) $j55566 $m56567 $n57568 $A58569 $B59570 $C60571))))

; loop entry $main_inv43
(assert
  (forall (($B59577 (Array Int (Array Int Int))) ($C60578 (Array Int (Array Int Int))) ($A58576 (Array Int (Array Int Int))) ($n57575 Int) ($i54572 Int) ($m56574 Int) ($j55573 Int))
    (=> (and ($main_sum41 $i54572 $j55573 $m56574 $n57575 $A58576 $B59577 $C60578))
        ($main_inv43 0 0 $m56574 $n57575 $A58576 $B59577 $C60578))))

; loop term $main_sum43
(assert
  (forall (($i54579 Int) ($j55580 Int) ($A58583 (Array Int (Array Int Int))) ($C60585 (Array Int (Array Int Int))) ($m56581 Int) ($n57582 Int) ($B59584 (Array Int (Array Int Int))))
    (=> (and (not (< $i54579 $m56581))
             ($main_inv43 $i54579 $j55580 $m56581 $n57582 $A58583 $B59584 $C60585))
        ($main_sum43 $i54579 $j55580 $m56581 $n57582 $A58583 $B59584 $C60585))))

; loop entry $main_inv44
(assert
  (forall (($i54579 Int) ($j55580 Int) ($A58583 (Array Int (Array Int Int))) ($C60585 (Array Int (Array Int Int))) ($m56581 Int) ($n57582 Int) ($B59584 (Array Int (Array Int Int))))
    (=> (and (< $i54579 $m56581)
             ($main_inv43 $i54579 $j55580 $m56581 $n57582 $A58583 $B59584 $C60585))
        ($main_inv44 $i54579 0 $m56581 $n57582 $A58583 $B59584 $C60585))))

; loop term $main_sum44
(assert
  (forall (($B59591 (Array Int (Array Int Int))) ($n57589 Int) ($m56588 Int) ($j55587 Int) ($i54586 Int) ($C60592 (Array Int (Array Int Int))) ($A58590 (Array Int (Array Int Int))))
    (=> (and (not (< $j55587 $n57589))
             ($main_inv44 $i54586 $j55587 $m56588 $n57589 $A58590 $B59591 $C60592))
        ($main_sum44 $i54586 $j55587 $m56588 $n57589 $A58590 $B59591 $C60592))))

; __VERIFIER_assert precondition
(assert
  (forall (($B59591 (Array Int (Array Int Int))) ($n57589 Int) ($m56588 Int) ($j55587 Int) ($i54586 Int) ($C60592 (Array Int (Array Int Int))) ($A58590 (Array Int (Array Int Int))))
    (=> (and (< $j55587 $n57589)
             ($main_inv44 $i54586 $j55587 $m56588 $n57589 $A58590 $B59591 $C60592))
        ($__VERIFIER_assert_pre (ite (= (select (select $C60592 $i54586) $j55587) (- (select (select $A58590 $i54586) $j55587) (select (select $B59591 $i54586) $j55587))) 1 0)))))

; forwards $main_inv44
(assert
  (forall (($B59591 (Array Int (Array Int Int))) ($n57589 Int) ($m56588 Int) ($j55587 Int) ($i54586 Int) ($C60592 (Array Int (Array Int Int))) ($A58590 (Array Int (Array Int Int))))
    (=> (and (__VERIFIER_assert (ite (= (select (select $C60592 $i54586) $j55587) (- (select (select $A58590 $i54586) $j55587) (select (select $B59591 $i54586) $j55587))) 1 0))
             (< $j55587 $n57589)
             ($main_inv44 $i54586 $j55587 $m56588 $n57589 $A58590 $B59591 $C60592))
        ($main_inv44 $i54586 (+ $j55587 1) $m56588 $n57589 $A58590 $B59591 $C60592))))

; forwards $main_inv43
(assert
  (forall (($j55594 Int) ($B59598 (Array Int (Array Int Int))) ($C60599 (Array Int (Array Int Int))) ($m56595 Int) ($n57596 Int) ($i54593 Int) ($A58597 (Array Int (Array Int Int))))
    (=> (and ($main_sum44 $i54593 $j55594 $m56595 $n57596 $A58597 $B59598 $C60599))
        ($main_inv43 (+ $i54593 1) $j55594 $m56595 $n57596 $A58597 $B59598 $C60599))))

(check-sat)
