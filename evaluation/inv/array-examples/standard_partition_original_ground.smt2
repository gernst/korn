(set-logic HORN)

(declare-fun $main_sum351 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv351 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv350 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if98 (Int) Bool)
(declare-fun $main_sum349 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_if99 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv349 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum348 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum350 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv348 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond4609 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond4609))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if98 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond4610 Int))
    (=> (and ($__VERIFIER_assert_if98 cond4610))
        (__VERIFIER_assert cond4610))))

; loop entry $main_inv348
(assert
  (forall (($bb412 (Array Int Int)) ($aa408 (Array Int Int)) ($b410 Int) ($a409 Int) ($c411 Int) ($i414 Int) ($cc413 (Array Int Int)) ($x415 Int))
    (=> (and (= $i414 0)
             (= $c411 0)
             (= $b410 0)
             (= $a409 0))
        ($main_inv348 $aa408 $a409 $b410 $c411 $bb412 $cc413 $i414 $x415))))

; loop term $main_sum348
(assert
  (forall (($x4154618 Int) ($b4104613 Int) ($cc4134616 (Array Int Int)) ($i4144617 Int) ($aa4084611 (Array Int Int)) ($a4094612 Int) ($c4114614 Int) ($bb4124615 (Array Int Int)))
    (=> (and (not (< $i4144617 100000))
             ($main_inv348 $aa4084611 $a4094612 $b4104613 $c4114614 $bb4124615 $cc4134616 $i4144617 $x4154618))
        ($main_sum348 $aa4084611 $a4094612 $b4104613 $c4114614 $bb4124615 $cc4134616 $i4144617 $x4154618))))

; forwards $main_inv348
(assert
  (forall (($x4154618 Int) ($b4104613 Int) ($int4619 Int) ($cc4134616 (Array Int Int)) ($i4144617 Int) ($aa4084611 (Array Int Int)) ($a4094612 Int) ($c4114614 Int) ($bb4124615 (Array Int Int)))
    (=> (and (<= (- 2147483648) $int4619)
             (<= $int4619 2147483647)
             (< $i4144617 100000)
             ($main_inv348 $aa4084611 $a4094612 $b4104613 $c4114614 $bb4124615 $cc4134616 $i4144617 $x4154618))
        ($main_inv348 (store $aa4084611 $i4144617 $int4619) $a4094612 $b4104613 $c4114614 $bb4124615 $cc4134616 (+ $i4144617 1) $x4154618))))

; loop entry $main_inv349
(assert
  (forall (($i4144626 Int) ($b4104622 Int) ($aa4084620 (Array Int Int)) ($x4154627 Int) ($cc4134625 (Array Int Int)) ($c4114623 Int) ($a4094621 Int) ($bb4124624 (Array Int Int)))
    (=> (and ($main_sum348 $aa4084620 $a4094621 $b4104622 $c4114623 $bb4124624 $cc4134625 $i4144626 $x4154627))
        ($main_inv349 $aa4084620 $a4094621 $b4104622 $c4114623 $bb4124624 $cc4134625 $i4144626 $x4154627))))

; loop term $main_sum349
(assert
  (forall (($bb4124632 (Array Int Int)) ($aa4084628 (Array Int Int)) ($b4104630 Int) ($x4154635 Int) ($c4114631 Int) ($cc4134633 (Array Int Int)) ($a4094629 Int) ($i4144634 Int))
    (=> (and (not (< $a4094629 100000))
             ($main_inv349 $aa4084628 $a4094629 $b4104630 $c4114631 $bb4124632 $cc4134633 $i4144634 $x4154635))
        ($main_sum349 $aa4084628 $a4094629 $b4104630 $c4114631 $bb4124632 $cc4134633 $i4144634 $x4154635))))

; if then
(assert
  (forall (($bb4124632 (Array Int Int)) ($aa4084628 (Array Int Int)) ($b4104630 Int) ($x4154635 Int) ($c4114631 Int) ($cc4134633 (Array Int Int)) ($a4094629 Int) ($i4144634 Int))
    (=> (and (>= (select $aa4084628 $a4094629) 0)
             (< $a4094629 100000)
             ($main_inv349 $aa4084628 $a4094629 $b4104630 $c4114631 $bb4124632 $cc4134633 $i4144634 $x4154635))
        ($main_if99 $aa4084628 $a4094629 (+ $b4104630 1) $c4114631 (store $bb4124632 $b4104630 (select $aa4084628 $a4094629)) $cc4134633 $i4144634 $x4154635))))

; if else
(assert
  (forall (($bb4124632 (Array Int Int)) ($aa4084628 (Array Int Int)) ($b4104630 Int) ($x4154635 Int) ($c4114631 Int) ($cc4134633 (Array Int Int)) ($a4094629 Int) ($i4144634 Int))
    (=> (and (not (>= (select $aa4084628 $a4094629) 0))
             (< $a4094629 100000)
             ($main_inv349 $aa4084628 $a4094629 $b4104630 $c4114631 $bb4124632 $cc4134633 $i4144634 $x4154635))
        ($main_if99 $aa4084628 $a4094629 $b4104630 (+ $c4114631 1) $bb4124632 (store $cc4134633 $c4114631 (select $aa4084628 $a4094629)) $i4144634 $x4154635))))

; forwards $main_inv349
(assert
  (forall (($x4154643 Int) ($aa4084636 (Array Int Int)) ($a4094637 Int) ($i4144642 Int) ($cc4134641 (Array Int Int)) ($b4104638 Int) ($bb4124640 (Array Int Int)) ($c4114639 Int))
    (=> (and ($main_if99 $aa4084636 $a4094637 $b4104638 $c4114639 $bb4124640 $cc4134641 $i4144642 $x4154643))
        ($main_inv349 $aa4084636 (+ $a4094637 1) $b4104638 $c4114639 $bb4124640 $cc4134641 $i4144642 $x4154643))))

; loop entry $main_inv350
(assert
  (forall (($aa4084644 (Array Int Int)) ($b4104646 Int) ($bb4124648 (Array Int Int)) ($c4114647 Int) ($cc4134649 (Array Int Int)) ($x4154651 Int) ($a4094645 Int) ($i4144650 Int))
    (=> (and ($main_sum349 $aa4084644 $a4094645 $b4104646 $c4114647 $bb4124648 $cc4134649 $i4144650 $x4154651))
        ($main_inv350 $aa4084644 $a4094645 $b4104646 $c4114647 $bb4124648 $cc4134649 $i4144650 0))))

; loop term $main_sum350
(assert
  (forall (($aa4084652 (Array Int Int)) ($c4114655 Int) ($bb4124656 (Array Int Int)) ($x4154659 Int) ($a4094653 Int) ($b4104654 Int) ($i4144658 Int) ($cc4134657 (Array Int Int)))
    (=> (and (not (< $x4154659 $b4104654))
             ($main_inv350 $aa4084652 $a4094653 $b4104654 $c4114655 $bb4124656 $cc4134657 $i4144658 $x4154659))
        ($main_sum350 $aa4084652 $a4094653 $b4104654 $c4114655 $bb4124656 $cc4134657 $i4144658 $x4154659))))

; __VERIFIER_assert precondition
(assert
  (forall (($aa4084652 (Array Int Int)) ($c4114655 Int) ($bb4124656 (Array Int Int)) ($x4154659 Int) ($a4094653 Int) ($b4104654 Int) ($i4144658 Int) ($cc4134657 (Array Int Int)))
    (=> (and (< $x4154659 $b4104654)
             ($main_inv350 $aa4084652 $a4094653 $b4104654 $c4114655 $bb4124656 $cc4134657 $i4144658 $x4154659))
        ($__VERIFIER_assert_pre (ite (>= (select $bb4124656 $x4154659) 0) 1 0)))))

; forwards $main_inv350
(assert
  (forall (($aa4084652 (Array Int Int)) ($c4114655 Int) ($bb4124656 (Array Int Int)) ($x4154659 Int) ($a4094653 Int) ($b4104654 Int) ($i4144658 Int) ($cc4134657 (Array Int Int)))
    (=> (and (__VERIFIER_assert (ite (>= (select $bb4124656 $x4154659) 0) 1 0))
             (< $x4154659 $b4104654)
             ($main_inv350 $aa4084652 $a4094653 $b4104654 $c4114655 $bb4124656 $cc4134657 $i4144658 $x4154659))
        ($main_inv350 $aa4084652 $a4094653 $b4104654 $c4114655 $bb4124656 $cc4134657 $i4144658 (+ $x4154659 1)))))

; loop entry $main_inv351
(assert
  (forall (($cc4134665 (Array Int Int)) ($i4144666 Int) ($c4114663 Int) ($a4094661 Int) ($b4104662 Int) ($aa4084660 (Array Int Int)) ($x4154667 Int) ($bb4124664 (Array Int Int)))
    (=> (and ($main_sum350 $aa4084660 $a4094661 $b4104662 $c4114663 $bb4124664 $cc4134665 $i4144666 $x4154667))
        ($main_inv351 $aa4084660 $a4094661 $b4104662 $c4114663 $bb4124664 $cc4134665 $i4144666 0))))

; loop term $main_sum351
(assert
  (forall (($cc4134673 (Array Int Int)) ($aa4084668 (Array Int Int)) ($i4144674 Int) ($b4104670 Int) ($bb4124672 (Array Int Int)) ($x4154675 Int) ($c4114671 Int) ($a4094669 Int))
    (=> (and (not (< $x4154675 $c4114671))
             ($main_inv351 $aa4084668 $a4094669 $b4104670 $c4114671 $bb4124672 $cc4134673 $i4144674 $x4154675))
        ($main_sum351 $aa4084668 $a4094669 $b4104670 $c4114671 $bb4124672 $cc4134673 $i4144674 $x4154675))))

; __VERIFIER_assert precondition
(assert
  (forall (($cc4134673 (Array Int Int)) ($aa4084668 (Array Int Int)) ($i4144674 Int) ($b4104670 Int) ($bb4124672 (Array Int Int)) ($x4154675 Int) ($c4114671 Int) ($a4094669 Int))
    (=> (and (< $x4154675 $c4114671)
             ($main_inv351 $aa4084668 $a4094669 $b4104670 $c4114671 $bb4124672 $cc4134673 $i4144674 $x4154675))
        ($__VERIFIER_assert_pre (ite (< (select $cc4134673 $x4154675) 0) 1 0)))))

; forwards $main_inv351
(assert
  (forall (($cc4134673 (Array Int Int)) ($aa4084668 (Array Int Int)) ($i4144674 Int) ($b4104670 Int) ($bb4124672 (Array Int Int)) ($x4154675 Int) ($c4114671 Int) ($a4094669 Int))
    (=> (and (__VERIFIER_assert (ite (< (select $cc4134673 $x4154675) 0) 1 0))
             (< $x4154675 $c4114671)
             ($main_inv351 $aa4084668 $a4094669 $b4104670 $c4114671 $bb4124672 $cc4134673 $i4144674 $x4154675))
        ($main_inv351 $aa4084668 $a4094669 $b4104670 $c4114671 $bb4124672 $cc4134673 $i4144674 (+ $x4154675 1)))))

(check-sat)
