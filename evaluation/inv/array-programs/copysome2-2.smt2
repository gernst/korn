(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum431 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if155 (Int) Bool)
(declare-fun $main_if156 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_if157 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv429 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum430 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum429 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv430 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv428 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum428 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv431 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond5552 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond5552))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if155 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5553 Int))
    (=> (and ($__VERIFIER_assert_if155 cond5553))
        (__VERIFIER_assert cond5553))))

; loop entry $main_inv428
(assert
  (forall (($a1532 (Array Int Int)) ($a2533 (Array Int Int)) ($a3534 (Array Int Int)) ($x537 Int))
        ($main_inv428 $a1532 $a2533 $a3534 0 150000 $x537)))

; loop term $main_sum428
(assert
  (forall (($a25335555 (Array Int Int)) ($a35345556 (Array Int Int)) ($x5375559 Int) ($z5365558 Int) ($a15325554 (Array Int Int)) ($i5355557 Int))
    (=> (and (not (< $i5355557 200000))
             ($main_inv428 $a15325554 $a25335555 $a35345556 $i5355557 $z5365558 $x5375559))
        ($main_sum428 $a15325554 $a25335555 $a35345556 $i5355557 $z5365558 $x5375559))))

; forwards $main_inv428
(assert
  (forall (($a25335555 (Array Int Int)) ($a35345556 (Array Int Int)) ($x5375559 Int) ($int5562 Int) ($z5365558 Int) ($int5561 Int) ($int5560 Int) ($a15325554 (Array Int Int)) ($i5355557 Int))
    (=> (and (<= (- 2147483648) $int5562)
             (<= $int5562 2147483647)
             (<= (- 2147483648) $int5561)
             (<= $int5561 2147483647)
             (<= (- 2147483648) $int5560)
             (<= $int5560 2147483647)
             (< $i5355557 200000)
             ($main_inv428 $a15325554 $a25335555 $a35345556 $i5355557 $z5365558 $x5375559))
        ($main_inv428 (store $a15325554 $i5355557 $int5560) (store $a25335555 $i5355557 $int5561) (store $a35345556 $i5355557 $int5562) (+ $i5355557 1) $z5365558 $x5375559))))

; loop entry $main_inv429
(assert
  (forall (($i5355566 Int) ($a25335564 (Array Int Int)) ($a35345565 (Array Int Int)) ($z5365567 Int) ($x5375568 Int) ($a15325563 (Array Int Int)))
    (=> (and ($main_sum428 $a15325563 $a25335564 $a35345565 $i5355566 $z5365567 $x5375568))
        ($main_inv429 $a15325563 $a25335564 $a35345565 0 $z5365567 $x5375568))))

; loop term $main_sum429
(assert
  (forall (($z5365573 Int) ($a15325569 (Array Int Int)) ($a25335570 (Array Int Int)) ($i5355572 Int) ($x5375574 Int) ($a35345571 (Array Int Int)))
    (=> (and (not (< $i5355572 200000))
             ($main_inv429 $a15325569 $a25335570 $a35345571 $i5355572 $z5365573 $x5375574))
        ($main_sum429 $a15325569 $a25335570 $a35345571 $i5355572 $z5365573 $x5375574))))

; if then
(assert
  (forall (($z5365573 Int) ($a15325569 (Array Int Int)) ($a25335570 (Array Int Int)) ($i5355572 Int) ($x5375574 Int) ($a35345571 (Array Int Int)))
    (=> (and (not (= $i5355572 $z5365573))
             (< $i5355572 200000)
             ($main_inv429 $a15325569 $a25335570 $a35345571 $i5355572 $z5365573 $x5375574))
        ($main_if156 $a15325569 (store $a25335570 $i5355572 (select $a15325569 $i5355572)) $a35345571 $i5355572 $z5365573 $x5375574))))

; if else
(assert
  (forall (($z5365573 Int) ($a15325569 (Array Int Int)) ($a25335570 (Array Int Int)) ($i5355572 Int) ($x5375574 Int) ($a35345571 (Array Int Int)))
    (=> (and (= $i5355572 $z5365573)
             (< $i5355572 200000)
             ($main_inv429 $a15325569 $a25335570 $a35345571 $i5355572 $z5365573 $x5375574))
        ($main_if156 $a15325569 $a25335570 $a35345571 $i5355572 $z5365573 $x5375574))))

; forwards $main_inv429
(assert
  (forall (($a35345577 (Array Int Int)) ($z5365579 Int) ($x5375580 Int) ($a15325575 (Array Int Int)) ($i5355578 Int) ($a25335576 (Array Int Int)))
    (=> (and ($main_if156 $a15325575 $a25335576 $a35345577 $i5355578 $z5365579 $x5375580))
        ($main_inv429 $a15325575 $a25335576 $a35345577 (+ $i5355578 1) $z5365579 $x5375580))))

; loop entry $main_inv430
(assert
  (forall (($a35345583 (Array Int Int)) ($z5365585 Int) ($a25335582 (Array Int Int)) ($a15325581 (Array Int Int)) ($i5355584 Int) ($x5375586 Int))
    (=> (and ($main_sum429 $a15325581 $a25335582 $a35345583 $i5355584 $z5365585 $x5375586))
        ($main_inv430 $a15325581 $a25335582 $a35345583 0 $z5365585 $x5375586))))

; loop term $main_sum430
(assert
  (forall (($i5355590 Int) ($a35345589 (Array Int Int)) ($z5365591 Int) ($x5375592 Int) ($a15325587 (Array Int Int)) ($a25335588 (Array Int Int)))
    (=> (and (not (< $i5355590 200000))
             ($main_inv430 $a15325587 $a25335588 $a35345589 $i5355590 $z5365591 $x5375592))
        ($main_sum430 $a15325587 $a25335588 $a35345589 $i5355590 $z5365591 $x5375592))))

; if then
(assert
  (forall (($i5355590 Int) ($a35345589 (Array Int Int)) ($z5365591 Int) ($x5375592 Int) ($a15325587 (Array Int Int)) ($a25335588 (Array Int Int)))
    (=> (and (not (= $i5355590 $z5365591))
             (< $i5355590 200000)
             ($main_inv430 $a15325587 $a25335588 $a35345589 $i5355590 $z5365591 $x5375592))
        ($main_if157 $a15325587 $a25335588 (store $a35345589 $i5355590 (select $a25335588 $i5355590)) $i5355590 $z5365591 $x5375592))))

; if else
(assert
  (forall (($i5355590 Int) ($a35345589 (Array Int Int)) ($z5365591 Int) ($x5375592 Int) ($a15325587 (Array Int Int)) ($a25335588 (Array Int Int)))
    (=> (and (= $i5355590 $z5365591)
             (< $i5355590 200000)
             ($main_inv430 $a15325587 $a25335588 $a35345589 $i5355590 $z5365591 $x5375592))
        ($main_if157 $a15325587 $a25335588 (store $a35345589 $i5355590 (select $a15325587 $i5355590)) $i5355590 $z5365591 $x5375592))))

; forwards $main_inv430
(assert
  (forall (($x5375598 Int) ($i5355596 Int) ($a35345595 (Array Int Int)) ($z5365597 Int) ($a15325593 (Array Int Int)) ($a25335594 (Array Int Int)))
    (=> (and ($main_if157 $a15325593 $a25335594 $a35345595 $i5355596 $z5365597 $x5375598))
        ($main_inv430 $a15325593 $a25335594 $a35345595 (+ $i5355596 1) $z5365597 $x5375598))))

; loop entry $main_inv431
(assert
  (forall (($z5365603 Int) ($a25335600 (Array Int Int)) ($a15325599 (Array Int Int)) ($x5375604 Int) ($i5355602 Int) ($a35345601 (Array Int Int)))
    (=> (and ($main_sum430 $a15325599 $a25335600 $a35345601 $i5355602 $z5365603 $x5375604))
        ($main_inv431 $a15325599 $a25335600 $a35345601 $i5355602 $z5365603 0))))

; loop term $main_sum431
(assert
  (forall (($a15325605 (Array Int Int)) ($x5375610 Int) ($a25335606 (Array Int Int)) ($i5355608 Int) ($z5365609 Int) ($a35345607 (Array Int Int)))
    (=> (and (not (< $x5375610 200000))
             ($main_inv431 $a15325605 $a25335606 $a35345607 $i5355608 $z5365609 $x5375610))
        ($main_sum431 $a15325605 $a25335606 $a35345607 $i5355608 $z5365609 $x5375610))))

; __VERIFIER_assert precondition
(assert
  (forall (($a15325605 (Array Int Int)) ($x5375610 Int) ($a25335606 (Array Int Int)) ($i5355608 Int) ($z5365609 Int) ($a35345607 (Array Int Int)))
    (=> (and (< $x5375610 200000)
             ($main_inv431 $a15325605 $a25335606 $a35345607 $i5355608 $z5365609 $x5375610))
        ($__VERIFIER_assert_pre (ite (= (select $a25335606 $x5375610) (select $a35345607 $x5375610)) 1 0)))))

; forwards $main_inv431
(assert
  (forall (($a15325605 (Array Int Int)) ($x5375610 Int) ($a25335606 (Array Int Int)) ($i5355608 Int) ($z5365609 Int) ($a35345607 (Array Int Int)))
    (=> (and (__VERIFIER_assert (ite (= (select $a25335606 $x5375610) (select $a35345607 $x5375610)) 1 0))
             (< $x5375610 200000)
             ($main_inv431 $a15325605 $a25335606 $a35345607 $i5355608 $z5365609 $x5375610))
        ($main_inv431 $a15325605 $a25335606 $a35345607 $i5355608 $z5365609 (+ $x5375610 1)))))

(check-sat)
