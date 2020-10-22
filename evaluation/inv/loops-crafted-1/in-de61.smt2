(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_sum168 (Int Int Int Int) Bool)
(declare-fun $main_inv168 (Int Int Int Int) Bool)
(declare-fun $main_inv169 (Int Int Int Int) Bool)
(declare-fun $main_inv165 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if552 (Int) Bool)
(declare-fun $main_sum167 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $main_inv164 (Int Int Int Int) Bool)
(declare-fun $main_sum169 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum166 (Int Int Int Int) Bool)
(declare-fun $main_inv167 (Int Int Int Int) Bool)
(declare-fun $main_inv166 (Int Int Int Int) Bool)
(declare-fun $main_sum164 (Int Int Int Int) Bool)
(declare-fun $main_sum165 (Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13528 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13528))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if552 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13529 Int))
    (=> (and ($__VERIFIER_assert_if552 cond13529))
        (__VERIFIER_assert cond13529))))

; loop entry $main_inv164
(assert
  (forall (($uint13530 Int) ($x518 Int) ($z520 Int) ($y519 Int) ($n517 Int))
    (=> (and (= $y519 0)
             (= $x518 $n517)
             (= $n517 $uint13530)
             (<= 0 $uint13530)
             (<= $uint13530 4294967295))
        ($main_inv164 $n517 $x518 $y519 $z520))))

; loop term $main_sum164
(assert
  (forall (($n51713531 Int) ($x51813532 Int) ($y51913533 Int) ($z52013534 Int))
    (=> (and (not (> $x51813532 0))
             ($main_inv164 $n51713531 $x51813532 $y51913533 $z52013534))
        ($main_sum164 $n51713531 $x51813532 $y51913533 $z52013534))))

; forwards $main_inv164
(assert
  (forall (($n51713531 Int) ($x51813532 Int) ($y51913533 Int) ($z52013534 Int))
    (=> (and (> $x51813532 0)
             ($main_inv164 $n51713531 $x51813532 $y51913533 $z52013534))
        ($main_inv164 $n51713531 (- $x51813532 1) (+ $y51913533 1) $z52013534))))

; loop entry $main_inv165
(assert
  (forall (($n51713535 Int) ($x51813536 Int) ($y51913537 Int) ($z52013538 Int))
    (=> (and ($main_sum164 $n51713535 $x51813536 $y51913537 $z52013538))
        ($main_inv165 $n51713535 $x51813536 $y51913537 $y51913537))))

; loop term $main_sum165
(assert
  (forall (($n51713539 Int) ($x51813540 Int) ($y51913541 Int) ($z52013542 Int))
    (=> (and (not (> $z52013542 0))
             ($main_inv165 $n51713539 $x51813540 $y51913541 $z52013542))
        ($main_sum165 $n51713539 $x51813540 $y51913541 $z52013542))))

; forwards $main_inv165
(assert
  (forall (($n51713539 Int) ($x51813540 Int) ($y51913541 Int) ($z52013542 Int))
    (=> (and (> $z52013542 0)
             ($main_inv165 $n51713539 $x51813540 $y51913541 $z52013542))
        ($main_inv165 $n51713539 (+ $x51813540 1) $y51913541 (- $z52013542 1)))))

; loop entry $main_inv166
(assert
  (forall (($n51713543 Int) ($x51813544 Int) ($y51913545 Int) ($z52013546 Int))
    (=> (and ($main_sum165 $n51713543 $x51813544 $y51913545 $z52013546))
        ($main_inv166 $n51713543 $x51813544 $y51913545 $z52013546))))

; loop term $main_sum166
(assert
  (forall (($n51713547 Int) ($x51813548 Int) ($y51913549 Int) ($z52013550 Int))
    (=> (and (not (> $y51913549 0))
             ($main_inv166 $n51713547 $x51813548 $y51913549 $z52013550))
        ($main_sum166 $n51713547 $x51813548 $y51913549 $z52013550))))

; forwards $main_inv166
(assert
  (forall (($n51713547 Int) ($x51813548 Int) ($y51913549 Int) ($z52013550 Int))
    (=> (and (> $y51913549 0)
             ($main_inv166 $n51713547 $x51813548 $y51913549 $z52013550))
        ($main_inv166 $n51713547 $x51813548 (- $y51913549 1) (+ $z52013550 1)))))

; loop entry $main_inv167
(assert
  (forall (($n51713551 Int) ($x51813552 Int) ($y51913553 Int) ($z52013554 Int))
    (=> (and ($main_sum166 $n51713551 $x51813552 $y51913553 $z52013554))
        ($main_inv167 $n51713551 $x51813552 $y51913553 $z52013554))))

; loop term $main_sum167
(assert
  (forall (($n51713555 Int) ($x51813556 Int) ($y51913557 Int) ($z52013558 Int))
    (=> (and (not (> $x51813556 0))
             ($main_inv167 $n51713555 $x51813556 $y51913557 $z52013558))
        ($main_sum167 $n51713555 $x51813556 $y51913557 $z52013558))))

; forwards $main_inv167
(assert
  (forall (($n51713555 Int) ($x51813556 Int) ($y51913557 Int) ($z52013558 Int))
    (=> (and (> $x51813556 0)
             ($main_inv167 $n51713555 $x51813556 $y51913557 $z52013558))
        ($main_inv167 $n51713555 (- $x51813556 1) (+ $y51913557 1) $z52013558))))

; loop entry $main_inv168
(assert
  (forall (($n51713559 Int) ($x51813560 Int) ($y51913561 Int) ($z52013562 Int))
    (=> (and ($main_sum167 $n51713559 $x51813560 $y51913561 $z52013562))
        ($main_inv168 $n51713559 $x51813560 $y51913561 $z52013562))))

; loop term $main_sum168
(assert
  (forall (($n51713563 Int) ($x51813564 Int) ($y51913565 Int) ($z52013566 Int))
    (=> (and (not (> $z52013566 0))
             ($main_inv168 $n51713563 $x51813564 $y51913565 $z52013566))
        ($main_sum168 $n51713563 $x51813564 $y51913565 $z52013566))))

; forwards $main_inv168
(assert
  (forall (($n51713563 Int) ($x51813564 Int) ($y51913565 Int) ($z52013566 Int))
    (=> (and (> $z52013566 0)
             ($main_inv168 $n51713563 $x51813564 $y51913565 $z52013566))
        ($main_inv168 $n51713563 (+ $x51813564 1) $y51913565 (- $z52013566 1)))))

; loop entry $main_inv169
(assert
  (forall (($n51713567 Int) ($x51813568 Int) ($y51913569 Int) ($z52013570 Int))
    (=> (and ($main_sum168 $n51713567 $x51813568 $y51913569 $z52013570))
        ($main_inv169 $n51713567 $x51813568 $y51913569 $z52013570))))

; loop term $main_sum169
(assert
  (forall (($n51713571 Int) ($x51813572 Int) ($y51913573 Int) ($z52013574 Int))
    (=> (and (not (> $y51913573 0))
             ($main_inv169 $n51713571 $x51813572 $y51913573 $z52013574))
        ($main_sum169 $n51713571 $x51813572 $y51913573 $z52013574))))

; forwards $main_inv169
(assert
  (forall (($n51713571 Int) ($x51813572 Int) ($y51913573 Int) ($z52013574 Int))
    (=> (and (> $y51913573 0)
             ($main_inv169 $n51713571 $x51813572 $y51913573 $z52013574))
        ($main_inv169 $n51713571 $x51813572 (- $y51913573 1) (+ $z52013574 1)))))

; __VERIFIER_assert precondition
(assert
  (forall (($z52013578 Int) ($n51713575 Int) ($x51813576 Int) ($y51913577 Int))
    (=> (and ($main_sum169 $n51713575 $x51813576 $y51913577 $z52013578))
        ($__VERIFIER_assert_pre (ite (= $z52013578 $n51713575) 1 0)))))

(check-sat)
