(set-logic HORN)

(declare-fun $__VERIFIER_assert_if552 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_sum168 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv168 (Int Int Int Int) Bool)
(declare-fun $main_inv169 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv165 (Int Int Int Int) Bool)
(declare-fun $main_sum167 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $main_inv164 (Int Int Int Int) Bool)
(declare-fun $main_sum169 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum166 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv167 (Int Int Int Int) Bool)
(declare-fun $main_inv166 (Int Int Int Int) Bool)
(declare-fun $main_sum164 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum165 (Int Int Int Int Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond14503 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond14503))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if552 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14504 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if552 cond cond14504))
        (__VERIFIER_assert cond14504))))

; loop entry $main_inv164
(assert
  (forall (($uint14505 Int) ($x518 Int) ($z520 Int) ($y519 Int) ($n517 Int))
    (=> (and (= $y519 0)
             (= $x518 $n517)
             (= $n517 $uint14505)
             (<= 0 $uint14505)
             (<= $uint14505 4294967295))
        ($main_inv164 $n517 $x518 $y519 $z520))))

; loop term $main_sum164
(assert
  (forall (($n51714506 Int) ($x51814507 Int) ($y51914508 Int) ($z52014509 Int))
    (=> (and (not (> $x51814507 0)))
        ($main_sum164 $n51714506 $x51814507 $y51914508 $z52014509 $n51714506 $x51814507 $y51914508 $z52014509))))

; forwards $main_inv164
(assert
  (forall (($n51714506 Int) ($x51814507 Int) ($y51914508 Int) ($z52014509 Int))
    (=> (and (> $x51814507 0)
             ($main_inv164 $n51714506 $x51814507 $y51914508 $z52014509))
        ($main_inv164 $n51714506 (- $x51814507 1) (+ $y51914508 1) $z52014509))))

; backwards $main_sum164
(assert
  (forall (($n51714510 Int) ($y51914508 Int) ($x51814511 Int) ($n51714506 Int) ($z52014513 Int) ($y51914512 Int) ($x51814507 Int) ($z52014509 Int))
    (=> (and ($main_sum164 $n51714506 (- $x51814507 1) (+ $y51914508 1) $z52014509 $n51714510 $x51814511 $y51914512 $z52014513)
             (> $x51814507 0))
        ($main_sum164 $n51714506 $x51814507 $y51914508 $z52014509 $n51714510 $x51814511 $y51914512 $z52014513))))

; loop entry $main_inv165
(assert
  (forall (($uint14505 Int) ($x518 Int) ($z520 Int) ($x51814515 Int) ($n51714514 Int) ($z52014517 Int) ($y519 Int) ($n517 Int) ($y51914516 Int))
    (=> (and ($main_sum164 $n517 $x518 $y519 $z520 $n51714514 $x51814515 $y51914516 $z52014517)
             (= $y519 0)
             (= $x518 $n517)
             (= $n517 $uint14505)
             (<= 0 $uint14505)
             (<= $uint14505 4294967295))
        ($main_inv165 $n51714514 $x51814515 $y51914516 $y51914516))))

; loop term $main_sum165
(assert
  (forall (($n51714518 Int) ($x51814519 Int) ($y51914520 Int) ($z52014521 Int))
    (=> (and (not (> $z52014521 0)))
        ($main_sum165 $n51714518 $x51814519 $y51914520 $z52014521 $n51714518 $x51814519 $y51914520 $z52014521))))

; forwards $main_inv165
(assert
  (forall (($n51714518 Int) ($x51814519 Int) ($y51914520 Int) ($z52014521 Int))
    (=> (and (> $z52014521 0)
             ($main_inv165 $n51714518 $x51814519 $y51914520 $z52014521))
        ($main_inv165 $n51714518 (+ $x51814519 1) $y51914520 (- $z52014521 1)))))

; backwards $main_sum165
(assert
  (forall (($n51714522 Int) ($z52014521 Int) ($n51714518 Int) ($y51914524 Int) ($x51814523 Int) ($y51914520 Int) ($x51814519 Int) ($z52014525 Int))
    (=> (and ($main_sum165 $n51714518 (+ $x51814519 1) $y51914520 (- $z52014521 1) $n51714522 $x51814523 $y51914524 $z52014525)
             (> $z52014521 0))
        ($main_sum165 $n51714518 $x51814519 $y51914520 $z52014521 $n51714522 $x51814523 $y51914524 $z52014525))))

; loop entry $main_inv166
(assert
  (forall (($uint14505 Int) ($x518 Int) ($x51814527 Int) ($z520 Int) ($x51814515 Int) ($n51714526 Int) ($n51714514 Int) ($y51914528 Int) ($z52014529 Int) ($z52014517 Int) ($y519 Int) ($n517 Int) ($y51914516 Int))
    (=> (and ($main_sum165 $n51714514 $x51814515 $y51914516 $y51914516 $n51714526 $x51814527 $y51914528 $z52014529)
             ($main_sum164 $n517 $x518 $y519 $z520 $n51714514 $x51814515 $y51914516 $z52014517)
             (= $y519 0)
             (= $x518 $n517)
             (= $n517 $uint14505)
             (<= 0 $uint14505)
             (<= $uint14505 4294967295))
        ($main_inv166 $n51714526 $x51814527 $y51914528 $z52014529))))

; loop term $main_sum166
(assert
  (forall (($n51714530 Int) ($x51814531 Int) ($y51914532 Int) ($z52014533 Int))
    (=> (and (not (> $y51914532 0)))
        ($main_sum166 $n51714530 $x51814531 $y51914532 $z52014533 $n51714530 $x51814531 $y51914532 $z52014533))))

; forwards $main_inv166
(assert
  (forall (($n51714530 Int) ($x51814531 Int) ($y51914532 Int) ($z52014533 Int))
    (=> (and (> $y51914532 0)
             ($main_inv166 $n51714530 $x51814531 $y51914532 $z52014533))
        ($main_inv166 $n51714530 $x51814531 (- $y51914532 1) (+ $z52014533 1)))))

; backwards $main_sum166
(assert
  (forall (($y51914532 Int) ($x51814531 Int) ($n51714534 Int) ($y51914536 Int) ($z52014537 Int) ($n51714530 Int) ($z52014533 Int) ($x51814535 Int))
    (=> (and ($main_sum166 $n51714530 $x51814531 (- $y51914532 1) (+ $z52014533 1) $n51714534 $x51814535 $y51914536 $z52014537)
             (> $y51914532 0))
        ($main_sum166 $n51714530 $x51814531 $y51914532 $z52014533 $n51714534 $x51814535 $y51914536 $z52014537))))

; loop entry $main_inv167
(assert
  (forall (($uint14505 Int) ($x518 Int) ($x51814527 Int) ($z520 Int) ($x51814515 Int) ($n51714526 Int) ($n51714538 Int) ($n51714514 Int) ($y51914528 Int) ($z52014529 Int) ($z52014517 Int) ($y519 Int) ($y51914516 Int) ($x51814539 Int) ($z52014541 Int) ($n517 Int) ($y51914540 Int))
    (=> (and ($main_sum166 $n51714526 $x51814527 $y51914528 $z52014529 $n51714538 $x51814539 $y51914540 $z52014541)
             ($main_sum165 $n51714514 $x51814515 $y51914516 $y51914516 $n51714526 $x51814527 $y51914528 $z52014529)
             ($main_sum164 $n517 $x518 $y519 $z520 $n51714514 $x51814515 $y51914516 $z52014517)
             (= $y519 0)
             (= $x518 $n517)
             (= $n517 $uint14505)
             (<= 0 $uint14505)
             (<= $uint14505 4294967295))
        ($main_inv167 $n51714538 $x51814539 $y51914540 $z52014541))))

; loop term $main_sum167
(assert
  (forall (($n51714542 Int) ($x51814543 Int) ($y51914544 Int) ($z52014545 Int))
    (=> (and (not (> $x51814543 0)))
        ($main_sum167 $n51714542 $x51814543 $y51914544 $z52014545 $n51714542 $x51814543 $y51914544 $z52014545))))

; forwards $main_inv167
(assert
  (forall (($n51714542 Int) ($x51814543 Int) ($y51914544 Int) ($z52014545 Int))
    (=> (and (> $x51814543 0)
             ($main_inv167 $n51714542 $x51814543 $y51914544 $z52014545))
        ($main_inv167 $n51714542 (- $x51814543 1) (+ $y51914544 1) $z52014545))))

; backwards $main_sum167
(assert
  (forall (($x51814543 Int) ($y51914548 Int) ($z52014549 Int) ($n51714542 Int) ($z52014545 Int) ($y51914544 Int) ($n51714546 Int) ($x51814547 Int))
    (=> (and ($main_sum167 $n51714542 (- $x51814543 1) (+ $y51914544 1) $z52014545 $n51714546 $x51814547 $y51914548 $z52014549)
             (> $x51814543 0))
        ($main_sum167 $n51714542 $x51814543 $y51914544 $z52014545 $n51714546 $x51814547 $y51914548 $z52014549))))

; loop entry $main_inv168
(assert
  (forall (($uint14505 Int) ($x518 Int) ($x51814527 Int) ($z520 Int) ($x51814515 Int) ($n51714526 Int) ($n51714538 Int) ($n51714514 Int) ($y51914528 Int) ($z52014529 Int) ($z52014517 Int) ($x51814551 Int) ($y51914552 Int) ($z52014553 Int) ($y519 Int) ($y51914516 Int) ($x51814539 Int) ($z52014541 Int) ($n517 Int) ($y51914540 Int) ($n51714550 Int))
    (=> (and ($main_sum167 $n51714538 $x51814539 $y51914540 $z52014541 $n51714550 $x51814551 $y51914552 $z52014553)
             ($main_sum166 $n51714526 $x51814527 $y51914528 $z52014529 $n51714538 $x51814539 $y51914540 $z52014541)
             ($main_sum165 $n51714514 $x51814515 $y51914516 $y51914516 $n51714526 $x51814527 $y51914528 $z52014529)
             ($main_sum164 $n517 $x518 $y519 $z520 $n51714514 $x51814515 $y51914516 $z52014517)
             (= $y519 0)
             (= $x518 $n517)
             (= $n517 $uint14505)
             (<= 0 $uint14505)
             (<= $uint14505 4294967295))
        ($main_inv168 $n51714550 $x51814551 $y51914552 $z52014553))))

; loop term $main_sum168
(assert
  (forall (($n51714554 Int) ($x51814555 Int) ($y51914556 Int) ($z52014557 Int))
    (=> (and (not (> $z52014557 0)))
        ($main_sum168 $n51714554 $x51814555 $y51914556 $z52014557 $n51714554 $x51814555 $y51914556 $z52014557))))

; forwards $main_inv168
(assert
  (forall (($n51714554 Int) ($x51814555 Int) ($y51914556 Int) ($z52014557 Int))
    (=> (and (> $z52014557 0)
             ($main_inv168 $n51714554 $x51814555 $y51914556 $z52014557))
        ($main_inv168 $n51714554 (+ $x51814555 1) $y51914556 (- $z52014557 1)))))

; backwards $main_sum168
(assert
  (forall (($n51714554 Int) ($z52014561 Int) ($y51914560 Int) ($z52014557 Int) ($x51814555 Int) ($y51914556 Int) ($x51814559 Int) ($n51714558 Int))
    (=> (and ($main_sum168 $n51714554 (+ $x51814555 1) $y51914556 (- $z52014557 1) $n51714558 $x51814559 $y51914560 $z52014561)
             (> $z52014557 0))
        ($main_sum168 $n51714554 $x51814555 $y51914556 $z52014557 $n51714558 $x51814559 $y51914560 $z52014561))))

; loop entry $main_inv169
(assert
  (forall (($uint14505 Int) ($x518 Int) ($x51814527 Int) ($z520 Int) ($x51814515 Int) ($n51714526 Int) ($n51714538 Int) ($n51714514 Int) ($z52014529 Int) ($z52014517 Int) ($x51814551 Int) ($y51914552 Int) ($z52014553 Int) ($x51814539 Int) ($z52014541 Int) ($x51814563 Int) ($y51914528 Int) ($y519 Int) ($y51914564 Int) ($n51714562 Int) ($n517 Int) ($y51914540 Int) ($n51714550 Int) ($y51914516 Int) ($z52014565 Int))
    (=> (and ($main_sum168 $n51714550 $x51814551 $y51914552 $z52014553 $n51714562 $x51814563 $y51914564 $z52014565)
             ($main_sum167 $n51714538 $x51814539 $y51914540 $z52014541 $n51714550 $x51814551 $y51914552 $z52014553)
             ($main_sum166 $n51714526 $x51814527 $y51914528 $z52014529 $n51714538 $x51814539 $y51914540 $z52014541)
             ($main_sum165 $n51714514 $x51814515 $y51914516 $y51914516 $n51714526 $x51814527 $y51914528 $z52014529)
             ($main_sum164 $n517 $x518 $y519 $z520 $n51714514 $x51814515 $y51914516 $z52014517)
             (= $y519 0)
             (= $x518 $n517)
             (= $n517 $uint14505)
             (<= 0 $uint14505)
             (<= $uint14505 4294967295))
        ($main_inv169 $n51714562 $x51814563 $y51914564 $z52014565))))

; loop term $main_sum169
(assert
  (forall (($n51714566 Int) ($x51814567 Int) ($y51914568 Int) ($z52014569 Int))
    (=> (and (not (> $y51914568 0)))
        ($main_sum169 $n51714566 $x51814567 $y51914568 $z52014569 $n51714566 $x51814567 $y51914568 $z52014569))))

; forwards $main_inv169
(assert
  (forall (($n51714566 Int) ($x51814567 Int) ($y51914568 Int) ($z52014569 Int))
    (=> (and (> $y51914568 0)
             ($main_inv169 $n51714566 $x51814567 $y51914568 $z52014569))
        ($main_inv169 $n51714566 $x51814567 (- $y51914568 1) (+ $z52014569 1)))))

; backwards $main_sum169
(assert
  (forall (($n51714570 Int) ($y51914568 Int) ($x51814567 Int) ($x51814571 Int) ($n51714566 Int) ($z52014573 Int) ($y51914572 Int) ($z52014569 Int))
    (=> (and ($main_sum169 $n51714566 $x51814567 (- $y51914568 1) (+ $z52014569 1) $n51714570 $x51814571 $y51914572 $z52014573)
             (> $y51914568 0))
        ($main_sum169 $n51714566 $x51814567 $y51914568 $z52014569 $n51714570 $x51814571 $y51914572 $z52014573))))

; __VERIFIER_assert precondition
(assert
  (forall (($z52014577 Int) ($uint14505 Int) ($x51814527 Int) ($x51814515 Int) ($n51714526 Int) ($n51714538 Int) ($n51714514 Int) ($z52014529 Int) ($z52014517 Int) ($x51814551 Int) ($y51914552 Int) ($z52014553 Int) ($y51914576 Int) ($x51814539 Int) ($z52014541 Int) ($x518 Int) ($x51814575 Int) ($z520 Int) ($n51714574 Int) ($x51814563 Int) ($y51914528 Int) ($y519 Int) ($y51914564 Int) ($n51714562 Int) ($n517 Int) ($y51914540 Int) ($n51714550 Int) ($y51914516 Int) ($z52014565 Int))
    (=> (and ($main_sum169 $n51714562 $x51814563 $y51914564 $z52014565 $n51714574 $x51814575 $y51914576 $z52014577)
             ($main_sum168 $n51714550 $x51814551 $y51914552 $z52014553 $n51714562 $x51814563 $y51914564 $z52014565)
             ($main_sum167 $n51714538 $x51814539 $y51914540 $z52014541 $n51714550 $x51814551 $y51914552 $z52014553)
             ($main_sum166 $n51714526 $x51814527 $y51914528 $z52014529 $n51714538 $x51814539 $y51914540 $z52014541)
             ($main_sum165 $n51714514 $x51814515 $y51914516 $y51914516 $n51714526 $x51814527 $y51914528 $z52014529)
             ($main_sum164 $n517 $x518 $y519 $z520 $n51714514 $x51814515 $y51914516 $z52014517)
             (= $y519 0)
             (= $x518 $n517)
             (= $n517 $uint14505)
             (<= 0 $uint14505)
             (<= $uint14505 4294967295))
        ($__VERIFIER_assert_pre (ite (= $z52014577 $n51714574) 1 0)))))

(check-sat)
