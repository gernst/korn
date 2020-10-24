(set-logic HORN)

(declare-fun $main_inv104 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_if47 (Int) Bool)
(declare-fun $main_sum106 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum104 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum107 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv103 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum103 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_inv106 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv107 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum105 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv105 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond1548 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond1548))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if47 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond1549 Int))
    (=> (and ($__VERIFIER_assert_if47 cond1549))
        (__VERIFIER_assert cond1549))))

; loop entry $main_inv103
(assert
  (forall (($a4179 (Array Int Int)) ($a1176 (Array Int Int)) ($a3178 (Array Int Int)) ($i181 Int) ($x182 Int) ($a2177 (Array Int Int)))
        ($main_inv103 $a1176 $a2177 $a3178 $a4179 0 $i181 $x182)))

; loop term $main_sum103
(assert
  (forall (($a31781552 (Array Int Int)) ($a41791553 (Array Int Int)) ($a1801554 Int) ($a21771551 (Array Int Int)) ($x1821556 Int) ($a11761550 (Array Int Int)) ($i1811555 Int))
    (=> (and (not (< $a1801554 100000))
             ($main_inv103 $a11761550 $a21771551 $a31781552 $a41791553 $a1801554 $i1811555 $x1821556))
        ($main_sum103 $a11761550 $a21771551 $a31781552 $a41791553 $a1801554 $i1811555 $x1821556))))

; forwards $main_inv103
(assert
  (forall (($a31781552 (Array Int Int)) ($a41791553 (Array Int Int)) ($a1801554 Int) ($a21771551 (Array Int Int)) ($x1821556 Int) ($a11761550 (Array Int Int)) ($int1557 Int) ($i1811555 Int))
    (=> (and (<= (- 2147483648) $int1557)
             (<= $int1557 2147483647)
             (< $a1801554 100000)
             ($main_inv103 $a11761550 $a21771551 $a31781552 $a41791553 $a1801554 $i1811555 $x1821556))
        ($main_inv103 (store $a11761550 $a1801554 $int1557) $a21771551 $a31781552 $a41791553 (+ $a1801554 1) $i1811555 $x1821556))))

; loop entry $main_inv104
(assert
  (forall (($i1811563 Int) ($a1801562 Int) ($a11761558 (Array Int Int)) ($a21771559 (Array Int Int)) ($a41791561 (Array Int Int)) ($x1821564 Int) ($a31781560 (Array Int Int)))
    (=> (and ($main_sum103 $a11761558 $a21771559 $a31781560 $a41791561 $a1801562 $i1811563 $x1821564))
        ($main_inv104 $a11761558 $a21771559 $a31781560 $a41791561 $a1801562 0 $x1821564))))

; loop term $main_sum104
(assert
  (forall (($a31781567 (Array Int Int)) ($a21771566 (Array Int Int)) ($i1811570 Int) ($a1801569 Int) ($x1821571 Int) ($a11761565 (Array Int Int)) ($a41791568 (Array Int Int)))
    (=> (and (not (< $i1811570 100000))
             ($main_inv104 $a11761565 $a21771566 $a31781567 $a41791568 $a1801569 $i1811570 $x1821571))
        ($main_sum104 $a11761565 $a21771566 $a31781567 $a41791568 $a1801569 $i1811570 $x1821571))))

; forwards $main_inv104
(assert
  (forall (($a31781567 (Array Int Int)) ($a21771566 (Array Int Int)) ($i1811570 Int) ($a1801569 Int) ($x1821571 Int) ($a11761565 (Array Int Int)) ($a41791568 (Array Int Int)))
    (=> (and (< $i1811570 100000)
             ($main_inv104 $a11761565 $a21771566 $a31781567 $a41791568 $a1801569 $i1811570 $x1821571))
        ($main_inv104 $a11761565 (store $a21771566 $i1811570 (select $a11761565 $i1811570)) $a31781567 $a41791568 $a1801569 (+ $i1811570 1) $x1821571))))

; loop entry $main_inv105
(assert
  (forall (($i1811577 Int) ($x1821578 Int) ($a1801576 Int) ($a21771573 (Array Int Int)) ($a31781574 (Array Int Int)) ($a11761572 (Array Int Int)) ($a41791575 (Array Int Int)))
    (=> (and ($main_sum104 $a11761572 $a21771573 $a31781574 $a41791575 $a1801576 $i1811577 $x1821578))
        ($main_inv105 $a11761572 $a21771573 $a31781574 $a41791575 $a1801576 0 $x1821578))))

; loop term $main_sum105
(assert
  (forall (($a31781581 (Array Int Int)) ($a11761579 (Array Int Int)) ($a41791582 (Array Int Int)) ($x1821585 Int) ($a1801583 Int) ($a21771580 (Array Int Int)) ($i1811584 Int))
    (=> (and (not (< $i1811584 100000))
             ($main_inv105 $a11761579 $a21771580 $a31781581 $a41791582 $a1801583 $i1811584 $x1821585))
        ($main_sum105 $a11761579 $a21771580 $a31781581 $a41791582 $a1801583 $i1811584 $x1821585))))

; forwards $main_inv105
(assert
  (forall (($a31781581 (Array Int Int)) ($a11761579 (Array Int Int)) ($a41791582 (Array Int Int)) ($x1821585 Int) ($a1801583 Int) ($a21771580 (Array Int Int)) ($i1811584 Int))
    (=> (and (< $i1811584 100000)
             ($main_inv105 $a11761579 $a21771580 $a31781581 $a41791582 $a1801583 $i1811584 $x1821585))
        ($main_inv105 $a11761579 $a21771580 (store $a31781581 $i1811584 (select $a21771580 $i1811584)) $a41791582 $a1801583 (+ $i1811584 1) $x1821585))))

; loop entry $main_inv106
(assert
  (forall (($i1811591 Int) ($x1821592 Int) ($a11761586 (Array Int Int)) ($a1801590 Int) ($a41791589 (Array Int Int)) ($a21771587 (Array Int Int)) ($a31781588 (Array Int Int)))
    (=> (and ($main_sum105 $a11761586 $a21771587 $a31781588 $a41791589 $a1801590 $i1811591 $x1821592))
        ($main_inv106 $a11761586 $a21771587 $a31781588 $a41791589 $a1801590 0 $x1821592))))

; loop term $main_sum106
(assert
  (forall (($i1811598 Int) ($a1801597 Int) ($a11761593 (Array Int Int)) ($a41791596 (Array Int Int)) ($a31781595 (Array Int Int)) ($x1821599 Int) ($a21771594 (Array Int Int)))
    (=> (and (not (< $i1811598 100000))
             ($main_inv106 $a11761593 $a21771594 $a31781595 $a41791596 $a1801597 $i1811598 $x1821599))
        ($main_sum106 $a11761593 $a21771594 $a31781595 $a41791596 $a1801597 $i1811598 $x1821599))))

; forwards $main_inv106
(assert
  (forall (($i1811598 Int) ($a1801597 Int) ($a11761593 (Array Int Int)) ($a41791596 (Array Int Int)) ($a31781595 (Array Int Int)) ($x1821599 Int) ($a21771594 (Array Int Int)))
    (=> (and (< $i1811598 100000)
             ($main_inv106 $a11761593 $a21771594 $a31781595 $a41791596 $a1801597 $i1811598 $x1821599))
        ($main_inv106 $a11761593 $a21771594 $a31781595 (store $a41791596 $i1811598 (select $a31781595 $i1811598)) $a1801597 (+ $i1811598 1) $x1821599))))

; loop entry $main_inv107
(assert
  (forall (($a21771601 (Array Int Int)) ($x1821606 Int) ($a31781602 (Array Int Int)) ($a11761600 (Array Int Int)) ($a1801604 Int) ($a41791603 (Array Int Int)) ($i1811605 Int))
    (=> (and ($main_sum106 $a11761600 $a21771601 $a31781602 $a41791603 $a1801604 $i1811605 $x1821606))
        ($main_inv107 $a11761600 $a21771601 $a31781602 $a41791603 $a1801604 $i1811605 0))))

; loop term $main_sum107
(assert
  (forall (($i1811612 Int) ($a1801611 Int) ($a21771608 (Array Int Int)) ($a41791610 (Array Int Int)) ($a11761607 (Array Int Int)) ($x1821613 Int) ($a31781609 (Array Int Int)))
    (=> (and (not (< $x1821613 100000))
             ($main_inv107 $a11761607 $a21771608 $a31781609 $a41791610 $a1801611 $i1811612 $x1821613))
        ($main_sum107 $a11761607 $a21771608 $a31781609 $a41791610 $a1801611 $i1811612 $x1821613))))

; __VERIFIER_assert precondition
(assert
  (forall (($i1811612 Int) ($a1801611 Int) ($a21771608 (Array Int Int)) ($a41791610 (Array Int Int)) ($a11761607 (Array Int Int)) ($x1821613 Int) ($a31781609 (Array Int Int)))
    (=> (and (< $x1821613 100000)
             ($main_inv107 $a11761607 $a21771608 $a31781609 $a41791610 $a1801611 $i1811612 $x1821613))
        ($__VERIFIER_assert_pre (ite (= (select $a11761607 $x1821613) (select $a41791610 $x1821613)) 1 0)))))

; forwards $main_inv107
(assert
  (forall (($i1811612 Int) ($a1801611 Int) ($a21771608 (Array Int Int)) ($a41791610 (Array Int Int)) ($a11761607 (Array Int Int)) ($x1821613 Int) ($a31781609 (Array Int Int)))
    (=> (and (__VERIFIER_assert (ite (= (select $a11761607 $x1821613) (select $a41791610 $x1821613)) 1 0))
             (< $x1821613 100000)
             ($main_inv107 $a11761607 $a21771608 $a31781609 $a41791610 $a1801611 $i1811612 $x1821613))
        ($main_inv107 $a11761607 $a21771608 $a31781609 $a41791610 $a1801611 $i1811612 (+ $x1821613 1)))))

(check-sat)
