(set-logic HORN)

(declare-fun $main_inv44 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum45 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum47 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv47 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_if22 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv43 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum43 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if21 (Int) Bool)
(declare-fun $main_inv45 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum44 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv46 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum46 ((Array Int Int) Int Int Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond594 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond594))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if21 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond595 Int))
    (=> (and ($__VERIFIER_assert_if21 cond595))
        (__VERIFIER_assert cond595))))

; loop entry $main_inv43
(assert
  (forall (($t102 Int) ($j99 Int) ($x103 Int) ($swapped100 Int) ($a98 (Array Int Int)) ($y104 Int) ($i101 Int))
    (=> (and (= $j99 0))
        ($main_inv43 $a98 $j99 $swapped100 $i101 $t102 $x103 $y104))))

; loop term $main_sum43
(assert
  (forall (($y104602 Int) ($t102600 Int) ($j99597 Int) ($a98596 (Array Int Int)) ($i101599 Int) ($swapped100598 Int) ($x103601 Int))
    (=> (and (not (< $j99597 100000))
             ($main_inv43 $a98596 $j99597 $swapped100598 $i101599 $t102600 $x103601 $y104602))
        ($main_sum43 $a98596 $j99597 $swapped100598 $i101599 $t102600 $x103601 $y104602))))

; forwards $main_inv43
(assert
  (forall (($y104602 Int) ($t102600 Int) ($int603 Int) ($j99597 Int) ($a98596 (Array Int Int)) ($i101599 Int) ($swapped100598 Int) ($x103601 Int))
    (=> (and (<= (- 2147483648) $int603)
             (<= $int603 2147483647)
             (< $j99597 100000)
             ($main_inv43 $a98596 $j99597 $swapped100598 $i101599 $t102600 $x103601 $y104602))
        ($main_inv43 (store $a98596 $j99597 $int603) (+ $j99597 1) $swapped100598 $i101599 $t102600 $x103601 $y104602))))

; loop entry $main_inv44
(assert
  (forall (($x103609 Int) ($swapped100606 Int) ($j99605 Int) ($y104610 Int) ($a98604 (Array Int Int)) ($t102608 Int) ($i101607 Int))
    (=> (and (= $swapped100606 1)
             ($main_sum43 $a98604 $j99605 $swapped100606 $i101607 $t102608 $x103609 $y104610))
        ($main_inv44 $a98604 $j99605 $swapped100606 $i101607 $t102608 $x103609 $y104610))))

; loop term $main_sum44
(assert
  (forall (($y104617 Int) ($i101614 Int) ($j99612 Int) ($x103616 Int) ($swapped100613 Int) ($t102615 Int) ($a98611 (Array Int Int)))
    (=> (and (= $swapped100613 0)
             ($main_inv44 $a98611 $j99612 $swapped100613 $i101614 $t102615 $x103616 $y104617))
        ($main_sum44 $a98611 $j99612 $swapped100613 $i101614 $t102615 $x103616 $y104617))))

; loop entry $main_inv45
(assert
  (forall (($y104617 Int) ($i101614 Int) ($j99612 Int) ($x103616 Int) ($swapped100613 Int) ($t102615 Int) ($a98611 (Array Int Int)))
    (=> (and (= $i101614 1)
             (not (= $swapped100613 0))
             ($main_inv44 $a98611 $j99612 $swapped100613 $i101614 $t102615 $x103616 $y104617))
        ($main_inv45 $a98611 $j99612 0 $i101614 $t102615 $x103616 $y104617))))

; loop term $main_sum45
(assert
  (forall (($y104624 Int) ($j99619 Int) ($t102622 Int) ($x103623 Int) ($i101621 Int) ($a98618 (Array Int Int)) ($swapped100620 Int))
    (=> (and (not (< $i101621 100000))
             ($main_inv45 $a98618 $j99619 $swapped100620 $i101621 $t102622 $x103623 $y104624))
        ($main_sum45 $a98618 $j99619 $swapped100620 $i101621 $t102622 $x103623 $y104624))))

; if then
(assert
  (forall (($y104624 Int) ($j99619 Int) ($t102622 Int) ($x103623 Int) ($i101621 Int) ($a98618 (Array Int Int)) ($swapped100620 Int))
    (=> (and (= $t102622 (select $a98618 $i101621))
             (> (select $a98618 (- $i101621 1)) (select $a98618 $i101621))
             (< $i101621 100000)
             ($main_inv45 $a98618 $j99619 $swapped100620 $i101621 $t102622 $x103623 $y104624))
        ($main_if22 (store (store $a98618 $i101621 (select $a98618 (- $i101621 1))) (- $i101621 1) $t102622) $j99619 1 $i101621 $t102622 $x103623 $y104624))))

; if else
(assert
  (forall (($y104624 Int) ($j99619 Int) ($t102622 Int) ($x103623 Int) ($i101621 Int) ($a98618 (Array Int Int)) ($swapped100620 Int))
    (=> (and (not (> (select $a98618 (- $i101621 1)) (select $a98618 $i101621)))
             (< $i101621 100000)
             ($main_inv45 $a98618 $j99619 $swapped100620 $i101621 $t102622 $x103623 $y104624))
        ($main_if22 $a98618 $j99619 $swapped100620 $i101621 $t102622 $x103623 $y104624))))

; forwards $main_inv45
(assert
  (forall (($y104631 Int) ($i101628 Int) ($a98625 (Array Int Int)) ($t102629 Int) ($x103630 Int) ($swapped100627 Int) ($j99626 Int))
    (=> (and ($main_if22 $a98625 $j99626 $swapped100627 $i101628 $t102629 $x103630 $y104631))
        ($main_inv45 $a98625 $j99626 $swapped100627 (+ $i101628 1) $t102629 $x103630 $y104631))))

; forwards $main_inv44
(assert
  (forall (($j99633 Int) ($a98632 (Array Int Int)) ($y104638 Int) ($swapped100634 Int) ($t102636 Int) ($i101635 Int) ($x103637 Int))
    (=> (and ($main_sum45 $a98632 $j99633 $swapped100634 $i101635 $t102636 $x103637 $y104638))
        ($main_inv44 $a98632 $j99633 $swapped100634 $i101635 $t102636 $x103637 $y104638))))

; loop entry $main_inv46
(assert
  (forall (($t102643 Int) ($x103644 Int) ($j99640 Int) ($i101642 Int) ($y104645 Int) ($swapped100641 Int) ($a98639 (Array Int Int)))
    (=> (and ($main_sum44 $a98639 $j99640 $swapped100641 $i101642 $t102643 $x103644 $y104645))
        ($main_inv46 $a98639 $j99640 $swapped100641 $i101642 $t102643 0 $y104645))))

; loop term $main_sum46
(assert
  (forall (($t102650 Int) ($y104652 Int) ($i101649 Int) ($swapped100648 Int) ($x103651 Int) ($a98646 (Array Int Int)) ($j99647 Int))
    (=> (and (not (< $x103651 100000))
             ($main_inv46 $a98646 $j99647 $swapped100648 $i101649 $t102650 $x103651 $y104652))
        ($main_sum46 $a98646 $j99647 $swapped100648 $i101649 $t102650 $x103651 $y104652))))

; loop entry $main_inv47
(assert
  (forall (($t102650 Int) ($y104652 Int) ($i101649 Int) ($swapped100648 Int) ($x103651 Int) ($a98646 (Array Int Int)) ($j99647 Int))
    (=> (and (< $x103651 100000)
             ($main_inv46 $a98646 $j99647 $swapped100648 $i101649 $t102650 $x103651 $y104652))
        ($main_inv47 $a98646 $j99647 $swapped100648 $i101649 $t102650 $x103651 (+ $x103651 1)))))

; loop term $main_sum47
(assert
  (forall (($a98653 (Array Int Int)) ($j99654 Int) ($i101656 Int) ($swapped100655 Int) ($y104659 Int) ($t102657 Int) ($x103658 Int))
    (=> (and (not (< $y104659 100000))
             ($main_inv47 $a98653 $j99654 $swapped100655 $i101656 $t102657 $x103658 $y104659))
        ($main_sum47 $a98653 $j99654 $swapped100655 $i101656 $t102657 $x103658 $y104659))))

; __VERIFIER_assert precondition
(assert
  (forall (($a98653 (Array Int Int)) ($j99654 Int) ($i101656 Int) ($swapped100655 Int) ($y104659 Int) ($t102657 Int) ($x103658 Int))
    (=> (and (< $y104659 100000)
             ($main_inv47 $a98653 $j99654 $swapped100655 $i101656 $t102657 $x103658 $y104659))
        ($__VERIFIER_assert_pre (ite (<= (select $a98653 $x103658) (select $a98653 $y104659)) 1 0)))))

; forwards $main_inv47
(assert
  (forall (($a98653 (Array Int Int)) ($j99654 Int) ($i101656 Int) ($swapped100655 Int) ($y104659 Int) ($t102657 Int) ($x103658 Int))
    (=> (and (__VERIFIER_assert (ite (<= (select $a98653 $x103658) (select $a98653 $y104659)) 1 0))
             (< $y104659 100000)
             ($main_inv47 $a98653 $j99654 $swapped100655 $i101656 $t102657 $x103658 $y104659))
        ($main_inv47 $a98653 $j99654 $swapped100655 $i101656 $t102657 $x103658 (+ $y104659 1)))))

; forwards $main_inv46
(assert
  (forall (($t102664 Int) ($a98660 (Array Int Int)) ($y104666 Int) ($j99661 Int) ($x103665 Int) ($swapped100662 Int) ($i101663 Int))
    (=> (and ($main_sum47 $a98660 $j99661 $swapped100662 $i101663 $t102664 $x103665 $y104666))
        ($main_inv46 $a98660 $j99661 $swapped100662 $i101663 $t102664 (+ $x103665 1) $y104666))))

(check-sat)
