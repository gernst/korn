(set-logic HORN)

(declare-sort Pointer 1)

(declare-fun $main_sum460 (Int (Pointer (Pointer Int)) Int Int Int Int Int Int (Pointer (Pointer Int)) Int Int Int Int Int) Bool)
(declare-fun $main_inv460 (Int (Pointer (Pointer Int)) Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_if214 (Int (Pointer (Pointer Int)) Int Int Int Int Int Int (Pointer (Pointer Int)) Int Int Int Int Int) Bool)
(declare-fun $main_inv461 (Int (Pointer (Pointer Int)) Int Int Int Int Int) Bool)
(declare-fun $main_if216 (Int (Pointer (Pointer Int)) Int Int Int Int Int Int (Pointer (Pointer Int)) Int Int Int Int Int) Bool)
(declare-fun $main_sum461 (Int (Pointer (Pointer Int)) Int Int Int Int Int Int (Pointer (Pointer Int)) Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $assume_abort_if_not_if210 (Int Int) Bool)
(declare-fun $main_if215 (Int (Pointer (Pointer Int)) Int Int Int Int Int Int (Pointer (Pointer Int)) Int Int Int Int Int) Bool)
(declare-fun $main_if217 (Int (Pointer (Pointer Int)) Int Int Int Int Int Int (Pointer (Pointer Int)) Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if211 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_if212 (Int (Pointer (Pointer Int)) Int Int Int Int Int Int (Pointer (Pointer Int)) Int Int Int Int Int) Bool)
(declare-fun $main_if213 (Int (Pointer (Pointer Int)) Int Int Int Int Int Int (Pointer (Pointer Int)) Int Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if210 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond8545 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if210 cond cond8545))
        (assume_abort_if_not cond8545))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond8546 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond8546))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if211 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond8547 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if211 cond cond8547))
        (__VERIFIER_assert cond8547))))

; if else
(assert
  (forall (($int8548 Int) ($i591 Int) ($n588 Int) ($r590 Int) (argc Int) ($l589 Int) (argv (Pointer (Pointer Int))) ($j592 Int))
    (=> (and (<= 1 $int8548)
             (<= $int8548 1000000)
             (<= (- 2147483648) $int8548)
             (<= $int8548 2147483647))
        ($main_if212 argc argv $n588 $l589 $r590 $i591 $j592 argc argv $int8548 $l589 $r590 $i591 $j592))))

; if then
(assert
  (forall (($i591 Int) ($l5898552 Int) (argc8549 Int) ($i5918554 Int) ($n588 Int) ($r5908553 Int) ($n5888551 Int) ($r590 Int) (argc Int) ($l589 Int) (argv (Pointer (Pointer Int))) ($j592 Int) ($j5928555 Int) (argv8550 (Pointer (Pointer Int))))
    (=> (and (> (+ (div $n5888551 2) 1) 1)
             ($main_if212 argc argv $n588 $l589 $r590 $i591 $j592 argc8549 argv8550 $n5888551 $l5898552 $r5908553 $i5918554 $j5928555))
        ($main_if213 argc argv $n588 $l589 $r590 $i591 $j592 argc8549 argv8550 $n5888551 (- (+ (div $n5888551 2) 1) 1) $n5888551 $i5918554 $j5928555))))

; if else
(assert
  (forall (($i591 Int) ($l5898552 Int) (argc8549 Int) ($i5918554 Int) ($n588 Int) ($r5908553 Int) ($n5888551 Int) ($r590 Int) (argc Int) ($l589 Int) (argv (Pointer (Pointer Int))) ($j592 Int) ($j5928555 Int) (argv8550 (Pointer (Pointer Int))))
    (=> (and (not (> (+ (div $n5888551 2) 1) 1))
             ($main_if212 argc argv $n588 $l589 $r590 $i591 $j592 argc8549 argv8550 $n5888551 $l5898552 $r5908553 $i5918554 $j5928555))
        ($main_if213 argc argv $n588 $l589 $r590 $i591 $j592 argc8549 argv8550 $n5888551 (+ (div $n5888551 2) 1) (- $n5888551 1) $i5918554 $j5928555))))

; loop entry $main_inv460
(assert
  (forall (($n5888558 Int) (argv8557 (Pointer (Pointer Int))) ($i591 Int) ($n588 Int) ($l5898559 Int) (argc Int) ($j5928562 Int) (argc8556 Int) (argv (Pointer (Pointer Int))) ($j592 Int) ($r590 Int) ($i5918561 Int) ($l589 Int) ($r5908560 Int))
    (=> (and ($main_if213 argc argv $n588 $l589 $r590 $i591 $j592 argc8556 argv8557 $n5888558 $l5898559 $r5908560 $i5918561 $j5928562))
        ($main_inv460 argc8556 argv8557 $n5888558 $l5898559 $r5908560 $i5918561 $j5928562))))

; loop term $main_sum460
(assert
  (forall (($n5888565 Int) ($r5908567 Int) (argc8563 Int) ($l5898566 Int) (argv8564 (Pointer (Pointer Int))) ($j5928569 Int) ($i5918568 Int))
    (=> (and (not (> $r5908567 1)))
        ($main_sum460 argc8563 argv8564 $n5888565 $l5898566 $r5908567 $i5918568 $j5928569 argc8563 argv8564 $n5888565 $l5898566 $r5908567 $i5918568 $j5928569))))

; loop entry $main_inv461
(assert
  (forall (($n5888565 Int) ($r5908567 Int) (argc8563 Int) ($l5898566 Int) (argv8564 (Pointer (Pointer Int))) ($j5928569 Int) ($i5918568 Int))
    (=> (and (> $r5908567 1)
             ($main_inv460 argc8563 argv8564 $n5888565 $l5898566 $r5908567 $i5918568 $j5928569))
        ($main_inv461 argc8563 argv8564 $n5888565 $l5898566 $r5908567 $l5898566 (* 2 $l5898566)))))

; loop term $main_sum461
(assert
  (forall ((argv8571 (Pointer (Pointer Int))) ($n5888572 Int) ($l5898573 Int) (argc8570 Int) ($i5918575 Int) ($j5928576 Int) ($r5908574 Int))
    (=> (and (not (<= $j5928576 $r5908574)))
        ($main_sum461 argc8570 argv8571 $n5888572 $l5898573 $r5908574 $i5918575 $j5928576 argc8570 argv8571 $n5888572 $l5898573 $r5908574 $i5918575 $j5928576))))

; __VERIFIER_assert precondition
(assert
  (forall ((argv8571 (Pointer (Pointer Int))) ($n5888572 Int) ($l5898573 Int) (argc8570 Int) ($i5918575 Int) ($j5928576 Int) ($r5908574 Int))
    (=> (and (< $j5928576 $r5908574)
             (<= $j5928576 $r5908574)
             ($main_inv461 argc8570 argv8571 $n5888572 $l5898573 $r5908574 $i5918575 $j5928576))
        ($__VERIFIER_assert_pre (ite (<= 1 $j5928576) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall ((argv8571 (Pointer (Pointer Int))) ($n5888572 Int) ($l5898573 Int) (argc8570 Int) ($i5918575 Int) ($j5928576 Int) ($r5908574 Int))
    (=> (and (__VERIFIER_assert (ite (<= 1 $j5928576) 1 0))
             (< $j5928576 $r5908574)
             (<= $j5928576 $r5908574)
             ($main_inv461 argc8570 argv8571 $n5888572 $l5898573 $r5908574 $i5918575 $j5928576))
        ($__VERIFIER_assert_pre (ite (<= $j5928576 $n5888572) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall ((argv8571 (Pointer (Pointer Int))) ($n5888572 Int) ($l5898573 Int) (argc8570 Int) ($i5918575 Int) ($j5928576 Int) ($r5908574 Int))
    (=> (and (__VERIFIER_assert (ite (<= $j5928576 $n5888572) 1 0))
             (__VERIFIER_assert (ite (<= 1 $j5928576) 1 0))
             (< $j5928576 $r5908574)
             (<= $j5928576 $r5908574)
             ($main_inv461 argc8570 argv8571 $n5888572 $l5898573 $r5908574 $i5918575 $j5928576))
        ($__VERIFIER_assert_pre (ite (<= 1 (+ $j5928576 1)) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall ((argv8571 (Pointer (Pointer Int))) ($n5888572 Int) ($l5898573 Int) (argc8570 Int) ($i5918575 Int) ($j5928576 Int) ($r5908574 Int))
    (=> (and (__VERIFIER_assert (ite (<= 1 (+ $j5928576 1)) 1 0))
             (__VERIFIER_assert (ite (<= $j5928576 $n5888572) 1 0))
             (__VERIFIER_assert (ite (<= 1 $j5928576) 1 0))
             (< $j5928576 $r5908574)
             (<= $j5928576 $r5908574)
             ($main_inv461 argc8570 argv8571 $n5888572 $l5898573 $r5908574 $i5918575 $j5928576))
        ($__VERIFIER_assert_pre (ite (<= (+ $j5928576 1) $n5888572) 1 0)))))

; if then
(assert
  (forall ((argv8571 (Pointer (Pointer Int))) ($n5888572 Int) ($l5898573 Int) (argc8570 Int) ($i5918575 Int) ($j5928576 Int) ($int8577 Int) ($r5908574 Int))
    (=> (and (not (= $int8577 0))
             (<= (- 2147483648) $int8577)
             (<= $int8577 2147483647)
             (__VERIFIER_assert (ite (<= (+ $j5928576 1) $n5888572) 1 0))
             (__VERIFIER_assert (ite (<= 1 (+ $j5928576 1)) 1 0))
             (__VERIFIER_assert (ite (<= $j5928576 $n5888572) 1 0))
             (__VERIFIER_assert (ite (<= 1 $j5928576) 1 0))
             (< $j5928576 $r5908574)
             (<= $j5928576 $r5908574)
             ($main_inv461 argc8570 argv8571 $n5888572 $l5898573 $r5908574 $i5918575 $j5928576))
        ($main_if214 argc8570 argv8571 $n5888572 $l5898573 $r5908574 $i5918575 $j5928576 argc8570 argv8571 $n5888572 $l5898573 $r5908574 $i5918575 (+ $j5928576 1)))))

; if else
(assert
  (forall ((argv8571 (Pointer (Pointer Int))) ($n5888572 Int) ($l5898573 Int) (argc8570 Int) ($i5918575 Int) ($j5928576 Int) ($int8577 Int) ($r5908574 Int))
    (=> (and (= $int8577 0)
             (<= (- 2147483648) $int8577)
             (<= $int8577 2147483647)
             (__VERIFIER_assert (ite (<= (+ $j5928576 1) $n5888572) 1 0))
             (__VERIFIER_assert (ite (<= 1 (+ $j5928576 1)) 1 0))
             (__VERIFIER_assert (ite (<= $j5928576 $n5888572) 1 0))
             (__VERIFIER_assert (ite (<= 1 $j5928576) 1 0))
             (< $j5928576 $r5908574)
             (<= $j5928576 $r5908574)
             ($main_inv461 argc8570 argv8571 $n5888572 $l5898573 $r5908574 $i5918575 $j5928576))
        ($main_if214 argc8570 argv8571 $n5888572 $l5898573 $r5908574 $i5918575 $j5928576 argc8570 argv8571 $n5888572 $l5898573 $r5908574 $i5918575 $j5928576))))

; if then
(assert
  (forall ((argv8571 (Pointer (Pointer Int))) ($n5888572 Int) (argc8578 Int) ($l5898573 Int) ($n5888580 Int) ($l5898581 Int) ($i5918583 Int) (argc8570 Int) ($r5908582 Int) ($j5928584 Int) ($i5918575 Int) (argv8579 (Pointer (Pointer Int))) ($j5928576 Int) ($r5908574 Int))
    (=> (and ($main_if214 argc8570 argv8571 $n5888572 $l5898573 $r5908574 $i5918575 $j5928576 argc8578 argv8579 $n5888580 $l5898581 $r5908582 $i5918583 $j5928584))
        ($main_if215 argc8570 argv8571 $n5888572 $l5898573 $r5908574 $i5918575 $j5928576 argc8578 argv8579 $n5888580 $l5898581 $r5908582 $i5918583 $j5928584))))

; if else
(assert
  (forall ((argv8571 (Pointer (Pointer Int))) ($n5888572 Int) ($l5898573 Int) (argc8570 Int) ($i5918575 Int) ($j5928576 Int) ($r5908574 Int))
    (=> (and (not (< $j5928576 $r5908574))
             (<= $j5928576 $r5908574)
             ($main_inv461 argc8570 argv8571 $n5888572 $l5898573 $r5908574 $i5918575 $j5928576))
        ($main_if215 argc8570 argv8571 $n5888572 $l5898573 $r5908574 $i5918575 $j5928576 argc8570 argv8571 $n5888572 $l5898573 $r5908574 $i5918575 $j5928576))))

; __VERIFIER_assert precondition
(assert
  (forall ((argv8571 (Pointer (Pointer Int))) ($n5888572 Int) ($l5898573 Int) (argc8585 Int) ($n5888587 Int) (argc8570 Int) ($i5918575 Int) ($j5928576 Int) ($r5908574 Int) ($i5918590 Int) ($l5898588 Int) ($j5928591 Int) ($r5908589 Int) (argv8586 (Pointer (Pointer Int))))
    (=> (and ($main_if215 argc8570 argv8571 $n5888572 $l5898573 $r5908574 $i5918575 $j5928576 argc8585 argv8586 $n5888587 $l5898588 $r5908589 $i5918590 $j5928591))
        ($__VERIFIER_assert_pre (ite (<= 1 $j5928591) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall ((argv8571 (Pointer (Pointer Int))) ($n5888572 Int) ($l5898573 Int) (argc8585 Int) ($n5888587 Int) (argc8570 Int) ($i5918575 Int) ($j5928576 Int) ($r5908574 Int) ($i5918590 Int) ($l5898588 Int) ($j5928591 Int) ($r5908589 Int) (argv8586 (Pointer (Pointer Int))))
    (=> (and (__VERIFIER_assert (ite (<= 1 $j5928591) 1 0))
             ($main_if215 argc8570 argv8571 $n5888572 $l5898573 $r5908574 $i5918575 $j5928576 argc8585 argv8586 $n5888587 $l5898588 $r5908589 $i5918590 $j5928591))
        ($__VERIFIER_assert_pre (ite (<= $j5928591 $n5888587) 1 0)))))

; break $main_sum461
(assert
  (forall ((argv8571 (Pointer (Pointer Int))) ($n5888572 Int) ($l5898573 Int) (argc8585 Int) ($n5888587 Int) (argc8570 Int) ($int8592 Int) ($i5918575 Int) ($j5928576 Int) ($r5908574 Int) ($i5918590 Int) ($l5898588 Int) ($j5928591 Int) ($r5908589 Int) (argv8586 (Pointer (Pointer Int))))
    (=> (and (not (= $int8592 0))
             (<= (- 2147483648) $int8592)
             (<= $int8592 2147483647)
             (__VERIFIER_assert (ite (<= $j5928591 $n5888587) 1 0))
             (__VERIFIER_assert (ite (<= 1 $j5928591) 1 0))
             ($main_if215 argc8570 argv8571 $n5888572 $l5898573 $r5908574 $i5918575 $j5928576 argc8585 argv8586 $n5888587 $l5898588 $r5908589 $i5918590 $j5928591))
        ($main_sum461 argc8570 argv8571 $n5888572 $l5898573 $r5908574 $i5918575 $j5928576 argc8585 argv8586 $n5888587 $l5898588 $r5908589 $i5918590 $j5928591))))

; if else
(assert
  (forall ((argv8571 (Pointer (Pointer Int))) ($n5888572 Int) ($l5898573 Int) (argc8585 Int) ($n5888587 Int) (argc8570 Int) ($int8592 Int) ($i5918575 Int) ($j5928576 Int) ($r5908574 Int) ($i5918590 Int) ($l5898588 Int) ($j5928591 Int) ($r5908589 Int) (argv8586 (Pointer (Pointer Int))))
    (=> (and (= $int8592 0)
             (<= (- 2147483648) $int8592)
             (<= $int8592 2147483647)
             (__VERIFIER_assert (ite (<= $j5928591 $n5888587) 1 0))
             (__VERIFIER_assert (ite (<= 1 $j5928591) 1 0))
             ($main_if215 argc8570 argv8571 $n5888572 $l5898573 $r5908574 $i5918575 $j5928576 argc8585 argv8586 $n5888587 $l5898588 $r5908589 $i5918590 $j5928591))
        ($main_if216 argc8570 argv8571 $n5888572 $l5898573 $r5908574 $i5918575 $j5928576 argc8585 argv8586 $n5888587 $l5898588 $r5908589 $i5918590 $j5928591))))

; __VERIFIER_assert precondition
(assert
  (forall ((argv8571 (Pointer (Pointer Int))) ($n5888572 Int) ($l5898573 Int) ($j5928599 Int) ($n5888595 Int) (argv8594 (Pointer (Pointer Int))) (argc8570 Int) ($i5918575 Int) (argc8593 Int) ($j5928576 Int) ($r5908574 Int) ($l5898596 Int) ($r5908597 Int) ($i5918598 Int))
    (=> (and ($main_if216 argc8570 argv8571 $n5888572 $l5898573 $r5908574 $i5918575 $j5928576 argc8593 argv8594 $n5888595 $l5898596 $r5908597 $i5918598 $j5928599))
        ($__VERIFIER_assert_pre (ite (<= 1 $i5918598) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall ((argv8571 (Pointer (Pointer Int))) ($n5888572 Int) ($l5898573 Int) ($j5928599 Int) ($n5888595 Int) (argv8594 (Pointer (Pointer Int))) (argc8570 Int) ($i5918575 Int) (argc8593 Int) ($j5928576 Int) ($r5908574 Int) ($l5898596 Int) ($r5908597 Int) ($i5918598 Int))
    (=> (and (__VERIFIER_assert (ite (<= 1 $i5918598) 1 0))
             ($main_if216 argc8570 argv8571 $n5888572 $l5898573 $r5908574 $i5918575 $j5928576 argc8593 argv8594 $n5888595 $l5898596 $r5908597 $i5918598 $j5928599))
        ($__VERIFIER_assert_pre (ite (<= $i5918598 $n5888595) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall ((argv8571 (Pointer (Pointer Int))) ($n5888572 Int) ($l5898573 Int) ($j5928599 Int) ($n5888595 Int) (argv8594 (Pointer (Pointer Int))) (argc8570 Int) ($i5918575 Int) (argc8593 Int) ($j5928576 Int) ($r5908574 Int) ($l5898596 Int) ($r5908597 Int) ($i5918598 Int))
    (=> (and (__VERIFIER_assert (ite (<= $i5918598 $n5888595) 1 0))
             (__VERIFIER_assert (ite (<= 1 $i5918598) 1 0))
             ($main_if216 argc8570 argv8571 $n5888572 $l5898573 $r5908574 $i5918575 $j5928576 argc8593 argv8594 $n5888595 $l5898596 $r5908597 $i5918598 $j5928599))
        ($__VERIFIER_assert_pre (ite (<= 1 $j5928599) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall ((argv8571 (Pointer (Pointer Int))) ($n5888572 Int) ($l5898573 Int) ($j5928599 Int) ($n5888595 Int) (argv8594 (Pointer (Pointer Int))) (argc8570 Int) ($i5918575 Int) (argc8593 Int) ($j5928576 Int) ($r5908574 Int) ($l5898596 Int) ($r5908597 Int) ($i5918598 Int))
    (=> (and (__VERIFIER_assert (ite (<= 1 $j5928599) 1 0))
             (__VERIFIER_assert (ite (<= $i5918598 $n5888595) 1 0))
             (__VERIFIER_assert (ite (<= 1 $i5918598) 1 0))
             ($main_if216 argc8570 argv8571 $n5888572 $l5898573 $r5908574 $i5918575 $j5928576 argc8593 argv8594 $n5888595 $l5898596 $r5908597 $i5918598 $j5928599))
        ($__VERIFIER_assert_pre (ite (<= $j5928599 $n5888595) 1 0)))))

; forwards $main_inv461
(assert
  (forall ((argv8571 (Pointer (Pointer Int))) ($n5888572 Int) ($l5898573 Int) ($j5928599 Int) ($n5888595 Int) (argv8594 (Pointer (Pointer Int))) (argc8570 Int) ($i5918575 Int) (argc8593 Int) ($j5928576 Int) ($r5908574 Int) ($l5898596 Int) ($r5908597 Int) ($i5918598 Int))
    (=> (and (__VERIFIER_assert (ite (<= $j5928599 $n5888595) 1 0))
             (__VERIFIER_assert (ite (<= 1 $j5928599) 1 0))
             (__VERIFIER_assert (ite (<= $i5918598 $n5888595) 1 0))
             (__VERIFIER_assert (ite (<= 1 $i5918598) 1 0))
             ($main_if216 argc8570 argv8571 $n5888572 $l5898573 $r5908574 $i5918575 $j5928576 argc8593 argv8594 $n5888595 $l5898596 $r5908597 $i5918598 $j5928599))
        ($main_inv461 argc8593 argv8594 $n5888595 $l5898596 $r5908597 $j5928599 (* 2 $j5928599)))))

; backwards $main_sum461
(assert
  (forall ((argv8571 (Pointer (Pointer Int))) ($n5888572 Int) ($j5928599 Int) ($n5888595 Int) (argv8594 (Pointer (Pointer Int))) ($r5908604 Int) (argc8593 Int) ($j5928576 Int) ($r5908574 Int) ($l5898596 Int) ($j5928606 Int) ($n5888602 Int) ($l5898573 Int) (argc8600 Int) (argv8601 (Pointer (Pointer Int))) (argc8570 Int) ($i5918598 Int) ($l5898603 Int) ($r5908597 Int) ($i5918575 Int) ($i5918605 Int))
    (=> (and ($main_sum461 argc8593 argv8594 $n5888595 $l5898596 $r5908597 $j5928599 (* 2 $j5928599) argc8600 argv8601 $n5888602 $l5898603 $r5908604 $i5918605 $j5928606)
             (__VERIFIER_assert (ite (<= $j5928599 $n5888595) 1 0))
             (__VERIFIER_assert (ite (<= 1 $j5928599) 1 0))
             (__VERIFIER_assert (ite (<= $i5918598 $n5888595) 1 0))
             (__VERIFIER_assert (ite (<= 1 $i5918598) 1 0))
             ($main_if216 argc8570 argv8571 $n5888572 $l5898573 $r5908574 $i5918575 $j5928576 argc8593 argv8594 $n5888595 $l5898596 $r5908597 $i5918598 $j5928599))
        ($main_sum461 argc8570 argv8571 $n5888572 $l5898573 $r5908574 $i5918575 $j5928576 argc8600 argv8601 $n5888602 $l5898603 $r5908604 $i5918605 $j5928606))))

; __VERIFIER_assert precondition
(assert
  (forall ((argc8607 Int) ($n5888565 Int) (argv8608 (Pointer (Pointer Int))) ($r5908567 Int) ($l5898566 Int) ($r5908611 Int) (argv8564 (Pointer (Pointer Int))) ($i5918612 Int) ($j5928613 Int) ($n5888609 Int) ($j5928569 Int) ($i5918568 Int) (argc8563 Int) ($l5898610 Int))
    (=> (and (> $l5898610 1)
             ($main_sum461 argc8563 argv8564 $n5888565 $l5898566 $r5908567 $l5898566 (* 2 $l5898566) argc8607 argv8608 $n5888609 $l5898610 $r5908611 $i5918612 $j5928613)
             (> $r5908567 1)
             ($main_inv460 argc8563 argv8564 $n5888565 $l5898566 $r5908567 $i5918568 $j5928569))
        ($__VERIFIER_assert_pre (ite (<= 1 $l5898610) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall ((argc8607 Int) ($n5888565 Int) (argv8608 (Pointer (Pointer Int))) ($r5908567 Int) ($l5898566 Int) ($r5908611 Int) (argv8564 (Pointer (Pointer Int))) ($i5918612 Int) ($j5928613 Int) ($n5888609 Int) ($j5928569 Int) ($i5918568 Int) (argc8563 Int) ($l5898610 Int))
    (=> (and (__VERIFIER_assert (ite (<= 1 $l5898610) 1 0))
             (> $l5898610 1)
             ($main_sum461 argc8563 argv8564 $n5888565 $l5898566 $r5908567 $l5898566 (* 2 $l5898566) argc8607 argv8608 $n5888609 $l5898610 $r5908611 $i5918612 $j5928613)
             (> $r5908567 1)
             ($main_inv460 argc8563 argv8564 $n5888565 $l5898566 $r5908567 $i5918568 $j5928569))
        ($__VERIFIER_assert_pre (ite (<= $l5898610 $n5888609) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall ((argc8607 Int) ($n5888565 Int) (argv8608 (Pointer (Pointer Int))) ($r5908567 Int) ($l5898566 Int) ($r5908611 Int) (argv8564 (Pointer (Pointer Int))) ($i5918612 Int) ($j5928613 Int) ($n5888609 Int) ($j5928569 Int) ($i5918568 Int) (argc8563 Int) ($l5898610 Int))
    (=> (and (not (> $l5898610 1))
             ($main_sum461 argc8563 argv8564 $n5888565 $l5898566 $r5908567 $l5898566 (* 2 $l5898566) argc8607 argv8608 $n5888609 $l5898610 $r5908611 $i5918612 $j5928613)
             (> $r5908567 1)
             ($main_inv460 argc8563 argv8564 $n5888565 $l5898566 $r5908567 $i5918568 $j5928569))
        ($__VERIFIER_assert_pre (ite (<= 1 $r5908611) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall ((argc8607 Int) ($n5888565 Int) (argv8608 (Pointer (Pointer Int))) ($r5908567 Int) ($l5898566 Int) ($r5908611 Int) (argv8564 (Pointer (Pointer Int))) ($i5918612 Int) ($j5928613 Int) ($n5888609 Int) ($j5928569 Int) ($i5918568 Int) (argc8563 Int) ($l5898610 Int))
    (=> (and (__VERIFIER_assert (ite (<= 1 $r5908611) 1 0))
             (not (> $l5898610 1))
             ($main_sum461 argc8563 argv8564 $n5888565 $l5898566 $r5908567 $l5898566 (* 2 $l5898566) argc8607 argv8608 $n5888609 $l5898610 $r5908611 $i5918612 $j5928613)
             (> $r5908567 1)
             ($main_inv460 argc8563 argv8564 $n5888565 $l5898566 $r5908567 $i5918568 $j5928569))
        ($__VERIFIER_assert_pre (ite (<= $r5908611 $n5888609) 1 0)))))

; if then
(assert
  (forall ((argc8607 Int) ($n5888565 Int) (argv8608 (Pointer (Pointer Int))) ($r5908567 Int) ($l5898566 Int) ($r5908611 Int) (argv8564 (Pointer (Pointer Int))) ($i5918612 Int) ($j5928613 Int) ($n5888609 Int) ($j5928569 Int) ($i5918568 Int) (argc8563 Int) ($l5898610 Int))
    (=> (and (__VERIFIER_assert (ite (<= $l5898610 $n5888609) 1 0))
             (__VERIFIER_assert (ite (<= 1 $l5898610) 1 0))
             (> $l5898610 1)
             ($main_sum461 argc8563 argv8564 $n5888565 $l5898566 $r5908567 $l5898566 (* 2 $l5898566) argc8607 argv8608 $n5888609 $l5898610 $r5908611 $i5918612 $j5928613)
             (> $r5908567 1)
             ($main_inv460 argc8563 argv8564 $n5888565 $l5898566 $r5908567 $i5918568 $j5928569))
        ($main_if217 argc8563 argv8564 $n5888565 $l5898566 $r5908567 $i5918568 $j5928569 argc8607 argv8608 $n5888609 (- $l5898610 1) $r5908611 $i5918612 $j5928613))))

; if else
(assert
  (forall ((argc8607 Int) ($n5888565 Int) (argv8608 (Pointer (Pointer Int))) ($r5908567 Int) ($l5898566 Int) ($r5908611 Int) (argv8564 (Pointer (Pointer Int))) ($i5918612 Int) ($j5928613 Int) ($n5888609 Int) ($j5928569 Int) ($i5918568 Int) (argc8563 Int) ($l5898610 Int))
    (=> (and (__VERIFIER_assert (ite (<= $r5908611 $n5888609) 1 0))
             (__VERIFIER_assert (ite (<= 1 $r5908611) 1 0))
             (not (> $l5898610 1))
             ($main_sum461 argc8563 argv8564 $n5888565 $l5898566 $r5908567 $l5898566 (* 2 $l5898566) argc8607 argv8608 $n5888609 $l5898610 $r5908611 $i5918612 $j5928613)
             (> $r5908567 1)
             ($main_inv460 argc8563 argv8564 $n5888565 $l5898566 $r5908567 $i5918568 $j5928569))
        ($main_if217 argc8563 argv8564 $n5888565 $l5898566 $r5908567 $i5918568 $j5928569 argc8607 argv8608 $n5888609 $l5898610 (- $r5908611 1) $i5918612 $j5928613))))

; forwards $main_inv460
(assert
  (forall (($n5888565 Int) ($i5918619 Int) ($r5908567 Int) (argc8563 Int) ($l5898566 Int) (argv8615 (Pointer (Pointer Int))) (argv8564 (Pointer (Pointer Int))) ($l5898617 Int) ($j5928569 Int) ($i5918568 Int) ($j5928620 Int) ($r5908618 Int) ($n5888616 Int) (argc8614 Int))
    (=> (and ($main_if217 argc8563 argv8564 $n5888565 $l5898566 $r5908567 $i5918568 $j5928569 argc8614 argv8615 $n5888616 $l5898617 $r5908618 $i5918619 $j5928620))
        ($main_inv460 argc8614 argv8615 $n5888616 $l5898617 $r5908618 $i5918619 $j5928620))))

; backwards $main_sum460
(assert
  (forall (($l5898624 Int) ($n5888565 Int) ($r5908567 Int) ($l5898566 Int) ($n5888623 Int) (argv8564 (Pointer (Pointer Int))) ($l5898617 Int) ($j5928569 Int) ($i5918568 Int) ($i5918626 Int) ($j5928620 Int) ($r5908618 Int) ($j5928627 Int) ($i5918619 Int) ($r5908625 Int) (argc8563 Int) (argv8615 (Pointer (Pointer Int))) (argv8622 (Pointer (Pointer Int))) (argc8621 Int) ($n5888616 Int) (argc8614 Int))
    (=> (and ($main_sum460 argc8614 argv8615 $n5888616 $l5898617 $r5908618 $i5918619 $j5928620 argc8621 argv8622 $n5888623 $l5898624 $r5908625 $i5918626 $j5928627)
             ($main_if217 argc8563 argv8564 $n5888565 $l5898566 $r5908567 $i5918568 $j5928569 argc8614 argv8615 $n5888616 $l5898617 $r5908618 $i5918619 $j5928620))
        ($main_sum460 argc8563 argv8564 $n5888565 $l5898566 $r5908567 $i5918568 $j5928569 argc8621 argv8622 $n5888623 $l5898624 $r5908625 $i5918626 $j5928627))))

(check-sat)
