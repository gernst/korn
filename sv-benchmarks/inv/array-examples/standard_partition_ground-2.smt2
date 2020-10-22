(set-logic HORN)

(declare-fun $main_sum345 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum346 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv345 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_if96 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv346 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv344 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_if97 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum344 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv347 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if95 (Int) Bool)
(declare-fun $main_sum347 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond4526 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond4526))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if95 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond4527 Int))
    (=> (and ($__VERIFIER_assert_if95 cond4527))
        (__VERIFIER_assert cond4527))))

; loop entry $main_inv344
(assert
  (forall (($i406 Int) ($b402 Int) ($a401 Int) ($c403 Int) ($bb404 (Array Int Int)) ($aa400 (Array Int Int)) ($x407 Int) ($cc405 (Array Int Int)))
    (=> (and (= $i406 0)
             (= $c403 0)
             (= $b402 0)
             (= $a401 0))
        ($main_inv344 $aa400 $a401 $b402 $c403 $bb404 $cc405 $i406 $x407))))

; loop term $main_sum344
(assert
  (forall (($a4014529 Int) ($c4034531 Int) ($bb4044532 (Array Int Int)) ($aa4004528 (Array Int Int)) ($i4064534 Int) ($b4024530 Int) ($x4074535 Int) ($cc4054533 (Array Int Int)))
    (=> (and (not (< $i4064534 100000))
             ($main_inv344 $aa4004528 $a4014529 $b4024530 $c4034531 $bb4044532 $cc4054533 $i4064534 $x4074535))
        ($main_sum344 $aa4004528 $a4014529 $b4024530 $c4034531 $bb4044532 $cc4054533 $i4064534 $x4074535))))

; forwards $main_inv344
(assert
  (forall (($a4014529 Int) ($int4536 Int) ($c4034531 Int) ($bb4044532 (Array Int Int)) ($aa4004528 (Array Int Int)) ($i4064534 Int) ($b4024530 Int) ($x4074535 Int) ($cc4054533 (Array Int Int)))
    (=> (and (<= (- 2147483648) $int4536)
             (<= $int4536 2147483647)
             (< $i4064534 100000)
             ($main_inv344 $aa4004528 $a4014529 $b4024530 $c4034531 $bb4044532 $cc4054533 $i4064534 $x4074535))
        ($main_inv344 (store $aa4004528 $i4064534 $int4536) $a4014529 $b4024530 $c4034531 $bb4044532 $cc4054533 (+ $i4064534 1) $x4074535))))

; loop entry $main_inv345
(assert
  (forall (($a4014538 Int) ($x4074544 Int) ($i4064543 Int) ($c4034540 Int) ($b4024539 Int) ($bb4044541 (Array Int Int)) ($aa4004537 (Array Int Int)) ($cc4054542 (Array Int Int)))
    (=> (and ($main_sum344 $aa4004537 $a4014538 $b4024539 $c4034540 $bb4044541 $cc4054542 $i4064543 $x4074544))
        ($main_inv345 $aa4004537 $a4014538 $b4024539 $c4034540 $bb4044541 $cc4054542 $i4064543 $x4074544))))

; loop term $main_sum345
(assert
  (forall (($cc4054550 (Array Int Int)) ($aa4004545 (Array Int Int)) ($a4014546 Int) ($bb4044549 (Array Int Int)) ($x4074552 Int) ($c4034548 Int) ($b4024547 Int) ($i4064551 Int))
    (=> (and (not (< $a4014546 100000))
             ($main_inv345 $aa4004545 $a4014546 $b4024547 $c4034548 $bb4044549 $cc4054550 $i4064551 $x4074552))
        ($main_sum345 $aa4004545 $a4014546 $b4024547 $c4034548 $bb4044549 $cc4054550 $i4064551 $x4074552))))

; if then
(assert
  (forall (($cc4054550 (Array Int Int)) ($aa4004545 (Array Int Int)) ($a4014546 Int) ($bb4044549 (Array Int Int)) ($x4074552 Int) ($c4034548 Int) ($b4024547 Int) ($i4064551 Int))
    (=> (and (>= (select $aa4004545 $a4014546) 0)
             (< $a4014546 100000)
             ($main_inv345 $aa4004545 $a4014546 $b4024547 $c4034548 $bb4044549 $cc4054550 $i4064551 $x4074552))
        ($main_if96 $aa4004545 $a4014546 (+ $b4024547 1) $c4034548 (store $bb4044549 $b4024547 (select $aa4004545 $a4014546)) $cc4054550 $i4064551 $x4074552))))

; if else
(assert
  (forall (($cc4054550 (Array Int Int)) ($aa4004545 (Array Int Int)) ($a4014546 Int) ($bb4044549 (Array Int Int)) ($x4074552 Int) ($c4034548 Int) ($b4024547 Int) ($i4064551 Int))
    (=> (and (not (>= (select $aa4004545 $a4014546) 0))
             (< $a4014546 100000)
             ($main_inv345 $aa4004545 $a4014546 $b4024547 $c4034548 $bb4044549 $cc4054550 $i4064551 $x4074552))
        ($main_if96 $aa4004545 $a4014546 $b4024547 $c4034548 $bb4044549 $cc4054550 $i4064551 $x4074552))))

; forwards $main_inv345
(assert
  (forall (($aa4004553 (Array Int Int)) ($a4014554 Int) ($x4074560 Int) ($c4034556 Int) ($cc4054558 (Array Int Int)) ($b4024555 Int) ($bb4044557 (Array Int Int)) ($i4064559 Int))
    (=> (and ($main_if96 $aa4004553 $a4014554 $b4024555 $c4034556 $bb4044557 $cc4054558 $i4064559 $x4074560))
        ($main_inv345 $aa4004553 (+ $a4014554 1) $b4024555 $c4034556 $bb4044557 $cc4054558 $i4064559 $x4074560))))

; loop entry $main_inv346
(assert
  (forall (($b4024563 Int) ($x4074568 Int) ($c4034564 Int) ($i4064567 Int) ($a4014562 Int) ($aa4004561 (Array Int Int)) ($bb4044565 (Array Int Int)) ($cc4054566 (Array Int Int)))
    (=> (and ($main_sum345 $aa4004561 $a4014562 $b4024563 $c4034564 $bb4044565 $cc4054566 $i4064567 $x4074568))
        ($main_inv346 $aa4004561 0 $b4024563 $c4034564 $bb4044565 $cc4054566 $i4064567 $x4074568))))

; loop term $main_sum346
(assert
  (forall (($bb4044573 (Array Int Int)) ($x4074576 Int) ($aa4004569 (Array Int Int)) ($cc4054574 (Array Int Int)) ($a4014570 Int) ($b4024571 Int) ($c4034572 Int) ($i4064575 Int))
    (=> (and (not (< $a4014570 100000))
             ($main_inv346 $aa4004569 $a4014570 $b4024571 $c4034572 $bb4044573 $cc4054574 $i4064575 $x4074576))
        ($main_sum346 $aa4004569 $a4014570 $b4024571 $c4034572 $bb4044573 $cc4054574 $i4064575 $x4074576))))

; if then
(assert
  (forall (($bb4044573 (Array Int Int)) ($x4074576 Int) ($aa4004569 (Array Int Int)) ($cc4054574 (Array Int Int)) ($a4014570 Int) ($b4024571 Int) ($c4034572 Int) ($i4064575 Int))
    (=> (and (< (select $aa4004569 $a4014570) 0)
             (< $a4014570 100000)
             ($main_inv346 $aa4004569 $a4014570 $b4024571 $c4034572 $bb4044573 $cc4054574 $i4064575 $x4074576))
        ($main_if97 $aa4004569 $a4014570 $b4024571 (+ $c4034572 1) $bb4044573 (store $cc4054574 $c4034572 (select $aa4004569 $a4014570)) $i4064575 $x4074576))))

; if else
(assert
  (forall (($bb4044573 (Array Int Int)) ($x4074576 Int) ($aa4004569 (Array Int Int)) ($cc4054574 (Array Int Int)) ($a4014570 Int) ($b4024571 Int) ($c4034572 Int) ($i4064575 Int))
    (=> (and (not (< (select $aa4004569 $a4014570) 0))
             (< $a4014570 100000)
             ($main_inv346 $aa4004569 $a4014570 $b4024571 $c4034572 $bb4044573 $cc4054574 $i4064575 $x4074576))
        ($main_if97 $aa4004569 $a4014570 $b4024571 $c4034572 $bb4044573 $cc4054574 $i4064575 $x4074576))))

; forwards $main_inv346
(assert
  (forall (($i4064583 Int) ($x4074584 Int) ($b4024579 Int) ($bb4044581 (Array Int Int)) ($a4014578 Int) ($c4034580 Int) ($aa4004577 (Array Int Int)) ($cc4054582 (Array Int Int)))
    (=> (and ($main_if97 $aa4004577 $a4014578 $b4024579 $c4034580 $bb4044581 $cc4054582 $i4064583 $x4074584))
        ($main_inv346 $aa4004577 (+ $a4014578 1) $b4024579 $c4034580 $bb4044581 $cc4054582 $i4064583 $x4074584))))

; loop entry $main_inv347
(assert
  (forall (($bb4044589 (Array Int Int)) ($i4064591 Int) ($cc4054590 (Array Int Int)) ($aa4004585 (Array Int Int)) ($x4074592 Int) ($b4024587 Int) ($c4034588 Int) ($a4014586 Int))
    (=> (and ($main_sum346 $aa4004585 $a4014586 $b4024587 $c4034588 $bb4044589 $cc4054590 $i4064591 $x4074592))
        ($main_inv347 $aa4004585 $a4014586 $b4024587 $c4034588 $bb4044589 $cc4054590 $i4064591 0))))

; loop term $main_sum347
(assert
  (forall (($cc4054598 (Array Int Int)) ($bb4044597 (Array Int Int)) ($i4064599 Int) ($a4014594 Int) ($x4074600 Int) ($b4024595 Int) ($aa4004593 (Array Int Int)) ($c4034596 Int))
    (=> (and (not (< $x4074600 $b4024595))
             ($main_inv347 $aa4004593 $a4014594 $b4024595 $c4034596 $bb4044597 $cc4054598 $i4064599 $x4074600))
        ($main_sum347 $aa4004593 $a4014594 $b4024595 $c4034596 $bb4044597 $cc4054598 $i4064599 $x4074600))))

; __VERIFIER_assert precondition
(assert
  (forall (($cc4054598 (Array Int Int)) ($bb4044597 (Array Int Int)) ($i4064599 Int) ($a4014594 Int) ($x4074600 Int) ($b4024595 Int) ($aa4004593 (Array Int Int)) ($c4034596 Int))
    (=> (and (< $x4074600 $b4024595)
             ($main_inv347 $aa4004593 $a4014594 $b4024595 $c4034596 $bb4044597 $cc4054598 $i4064599 $x4074600))
        ($__VERIFIER_assert_pre (ite (>= (select $bb4044597 $x4074600) 0) 1 0)))))

; forwards $main_inv347
(assert
  (forall (($cc4054598 (Array Int Int)) ($bb4044597 (Array Int Int)) ($i4064599 Int) ($a4014594 Int) ($x4074600 Int) ($b4024595 Int) ($aa4004593 (Array Int Int)) ($c4034596 Int))
    (=> (and (__VERIFIER_assert (ite (>= (select $bb4044597 $x4074600) 0) 1 0))
             (< $x4074600 $b4024595)
             ($main_inv347 $aa4004593 $a4014594 $b4024595 $c4034596 $bb4044597 $cc4054598 $i4064599 $x4074600))
        ($main_inv347 $aa4004593 $a4014594 $b4024595 $c4034596 $bb4044597 $cc4054598 $i4064599 (+ $x4074600 1)))))

(check-sat)
