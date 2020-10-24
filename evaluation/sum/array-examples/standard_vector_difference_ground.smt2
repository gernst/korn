(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv407 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv409 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum407 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv408 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum409 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if130 (Int Int) Bool)
(declare-fun $main_sum408 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond7588 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond7588))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if130 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond7589 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if130 cond cond7589))
        (__VERIFIER_assert cond7589))))

; loop entry $main_inv407
(assert
  (forall (($x500 Int) ($i499 Int) ($c498 (Array Int Int)) ($a496 (Array Int Int)) ($b497 (Array Int Int)))
    (=> (and (= $i499 0))
        ($main_inv407 $a496 $b497 $c498 0 $x500))))

; loop term $main_sum407
(assert
  (forall (($x5007594 Int) ($i4997593 Int) ($b4977591 (Array Int Int)) ($a4967590 (Array Int Int)) ($c4987592 (Array Int Int)))
    (=> (and (not (< $i4997593 100000)))
        ($main_sum407 $a4967590 $b4977591 $c4987592 $i4997593 $x5007594 $a4967590 $b4977591 $c4987592 $i4997593 $x5007594))))

; forwards $main_inv407
(assert
  (forall (($x5007594 Int) ($i4997593 Int) ($int7596 Int) ($int7595 Int) ($b4977591 (Array Int Int)) ($a4967590 (Array Int Int)) ($c4987592 (Array Int Int)))
    (=> (and (<= (- 2147483648) $int7596)
             (<= $int7596 2147483647)
             (<= (- 2147483648) $int7595)
             (<= $int7595 2147483647)
             (< $i4997593 100000)
             ($main_inv407 $a4967590 $b4977591 $c4987592 $i4997593 $x5007594))
        ($main_inv407 (store $a4967590 $i4997593 $int7595) (store $b4977591 $i4997593 $int7596) $c4987592 (+ $i4997593 1) $x5007594))))

; backwards $main_sum407
(assert
  (forall (($x5007601 Int) ($x5007594 Int) ($i4997593 Int) ($int7596 Int) ($int7595 Int) ($b4977591 (Array Int Int)) ($a4967597 (Array Int Int)) ($i4997600 Int) ($a4967590 (Array Int Int)) ($c4987592 (Array Int Int)) ($b4977598 (Array Int Int)) ($c4987599 (Array Int Int)))
    (=> (and ($main_sum407 (store $a4967590 $i4997593 $int7595) (store $b4977591 $i4997593 $int7596) $c4987592 (+ $i4997593 1) $x5007594 $a4967597 $b4977598 $c4987599 $i4997600 $x5007601)
             (<= (- 2147483648) $int7596)
             (<= $int7596 2147483647)
             (<= (- 2147483648) $int7595)
             (<= $int7595 2147483647)
             (< $i4997593 100000))
        ($main_sum407 $a4967590 $b4977591 $c4987592 $i4997593 $x5007594 $a4967597 $b4977598 $c4987599 $i4997600 $x5007601))))

; loop entry $main_inv408
(assert
  (forall (($a4967602 (Array Int Int)) ($x500 Int) ($b4977603 (Array Int Int)) ($i499 Int) ($a496 (Array Int Int)) ($x5007606 Int) ($b497 (Array Int Int)) ($c498 (Array Int Int)) ($i4997605 Int) ($c4987604 (Array Int Int)))
    (=> (and ($main_sum407 $a496 $b497 $c498 0 $x500 $a4967602 $b4977603 $c4987604 $i4997605 $x5007606)
             (= $i499 0))
        ($main_inv408 $a4967602 $b4977603 $c4987604 0 $x5007606))))

; loop term $main_sum408
(assert
  (forall (($c4987609 (Array Int Int)) ($a4967607 (Array Int Int)) ($i4997610 Int) ($x5007611 Int) ($b4977608 (Array Int Int)))
    (=> (and (not (< $i4997610 100000)))
        ($main_sum408 $a4967607 $b4977608 $c4987609 $i4997610 $x5007611 $a4967607 $b4977608 $c4987609 $i4997610 $x5007611))))

; forwards $main_inv408
(assert
  (forall (($c4987609 (Array Int Int)) ($a4967607 (Array Int Int)) ($i4997610 Int) ($x5007611 Int) ($b4977608 (Array Int Int)))
    (=> (and (< $i4997610 100000)
             ($main_inv408 $a4967607 $b4977608 $c4987609 $i4997610 $x5007611))
        ($main_inv408 $a4967607 $b4977608 (store $c4987609 $i4997610 (- (select $a4967607 $i4997610) (select $b4977608 $i4997610))) (+ $i4997610 1) $x5007611))))

; backwards $main_sum408
(assert
  (forall (($i4997615 Int) ($x5007616 Int) ($a4967612 (Array Int Int)) ($c4987614 (Array Int Int)) ($c4987609 (Array Int Int)) ($a4967607 (Array Int Int)) ($b4977613 (Array Int Int)) ($i4997610 Int) ($x5007611 Int) ($b4977608 (Array Int Int)))
    (=> (and ($main_sum408 $a4967607 $b4977608 (store $c4987609 $i4997610 (- (select $a4967607 $i4997610) (select $b4977608 $i4997610))) (+ $i4997610 1) $x5007611 $a4967612 $b4977613 $c4987614 $i4997615 $x5007616)
             (< $i4997610 100000))
        ($main_sum408 $a4967607 $b4977608 $c4987609 $i4997610 $x5007611 $a4967612 $b4977613 $c4987614 $i4997615 $x5007616))))

; loop entry $main_inv409
(assert
  (forall (($x5007621 Int) ($i4997620 Int) ($a4967602 (Array Int Int)) ($x500 Int) ($b4977603 (Array Int Int)) ($i499 Int) ($a496 (Array Int Int)) ($c4987619 (Array Int Int)) ($x5007606 Int) ($a4967617 (Array Int Int)) ($c498 (Array Int Int)) ($i4997605 Int) ($c4987604 (Array Int Int)) ($b497 (Array Int Int)) ($b4977618 (Array Int Int)))
    (=> (and ($main_sum408 $a4967602 $b4977603 $c4987604 0 $x5007606 $a4967617 $b4977618 $c4987619 $i4997620 $x5007621)
             ($main_sum407 $a496 $b497 $c498 0 $x500 $a4967602 $b4977603 $c4987604 $i4997605 $x5007606)
             (= $i499 0))
        ($main_inv409 $a4967617 $b4977618 $c4987619 $i4997620 0))))

; loop term $main_sum409
(assert
  (forall (($c4987624 (Array Int Int)) ($x5007626 Int) ($a4967622 (Array Int Int)) ($b4977623 (Array Int Int)) ($i4997625 Int))
    (=> (and (not (< $x5007626 100000)))
        ($main_sum409 $a4967622 $b4977623 $c4987624 $i4997625 $x5007626 $a4967622 $b4977623 $c4987624 $i4997625 $x5007626))))

; __VERIFIER_assert precondition
(assert
  (forall (($c4987624 (Array Int Int)) ($x5007626 Int) ($a4967622 (Array Int Int)) ($b4977623 (Array Int Int)) ($i4997625 Int))
    (=> (and (< $x5007626 100000)
             ($main_inv409 $a4967622 $b4977623 $c4987624 $i4997625 $x5007626))
        ($__VERIFIER_assert_pre (ite (= (select $c4987624 $x5007626) (- (select $a4967622 $x5007626) (select $b4977623 $x5007626))) 1 0)))))

; forwards $main_inv409
(assert
  (forall (($c4987624 (Array Int Int)) ($x5007626 Int) ($a4967622 (Array Int Int)) ($b4977623 (Array Int Int)) ($i4997625 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $c4987624 $x5007626) (- (select $a4967622 $x5007626) (select $b4977623 $x5007626))) 1 0))
             (< $x5007626 100000)
             ($main_inv409 $a4967622 $b4977623 $c4987624 $i4997625 $x5007626))
        ($main_inv409 $a4967622 $b4977623 $c4987624 $i4997625 (+ $x5007626 1)))))

; backwards $main_sum409
(assert
  (forall (($b4977628 (Array Int Int)) ($c4987624 (Array Int Int)) ($c4987629 (Array Int Int)) ($x5007626 Int) ($a4967622 (Array Int Int)) ($i4997630 Int) ($a4967627 (Array Int Int)) ($x5007631 Int) ($b4977623 (Array Int Int)) ($i4997625 Int))
    (=> (and ($main_sum409 $a4967622 $b4977623 $c4987624 $i4997625 (+ $x5007626 1) $a4967627 $b4977628 $c4987629 $i4997630 $x5007631)
             (__VERIFIER_assert (ite (= (select $c4987624 $x5007626) (- (select $a4967622 $x5007626) (select $b4977623 $x5007626))) 1 0))
             (< $x5007626 100000))
        ($main_sum409 $a4967622 $b4977623 $c4987624 $i4997625 $x5007626 $a4967627 $b4977628 $c4987629 $i4997630 $x5007631))))

(check-sat)
