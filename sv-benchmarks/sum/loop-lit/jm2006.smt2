(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if326 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_if328 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv502 (Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_if327 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum502 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_if325 (Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if325 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond9597 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if325 cond cond9597))
        (assume_abort_if_not cond9597))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond9598 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond9598))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if326 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond9599 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if326 cond cond9599))
        (__VERIFIER_assert cond9599))))

; if else
(assert
  (forall (($int9601 Int) ($i698 Int) ($y701 Int) ($j699 Int) ($int9600 Int) ($x700 Int))
    (=> (and (>= $int9600 0)
             (>= $int9601 0)
             (<= (- 2147483648) $int9601)
             (<= $int9601 2147483647)
             (<= (- 2147483648) $int9600)
             (<= $int9600 2147483647))
        ($main_if327 $i698 $j699 $x700 $y701 $int9600 $int9601 $x700 $y701))))

; loop entry $main_inv502
(assert
  (forall (($i698 Int) ($y701 Int) ($j6999603 Int) ($x7009604 Int) ($j699 Int) ($x700 Int) ($y7019605 Int) ($i6989602 Int))
    (=> (and (= $y7019605 $j6999603)
             (= $x7009604 $i6989602)
             ($main_if327 $i698 $j699 $x700 $y701 $i6989602 $j6999603 $x7009604 $y7019605))
        ($main_inv502 $i6989602 $j6999603 $x7009604 $y7019605))))

; loop term $main_sum502
(assert
  (forall (($i6989606 Int) ($j6999607 Int) ($x7009608 Int) ($y7019609 Int))
    (=> (and (= $x7009608 0))
        ($main_sum502 $i6989606 $j6999607 $x7009608 $y7019609 $i6989606 $j6999607 $x7009608 $y7019609))))

; forwards $main_inv502
(assert
  (forall (($i6989606 Int) ($j6999607 Int) ($x7009608 Int) ($y7019609 Int))
    (=> (and (not (= $x7009608 0))
             ($main_inv502 $i6989606 $j6999607 $x7009608 $y7019609))
        ($main_inv502 $i6989606 $j6999607 (- $x7009608 1) (- $y7019609 1)))))

; backwards $main_sum502
(assert
  (forall (($i6989610 Int) ($j6999607 Int) ($x7009608 Int) ($j6999611 Int) ($y7019609 Int) ($i6989606 Int) ($x7009612 Int) ($y7019613 Int))
    (=> (and ($main_sum502 $i6989606 $j6999607 (- $x7009608 1) (- $y7019609 1) $i6989610 $j6999611 $x7009612 $y7019613)
             (not (= $x7009608 0)))
        ($main_sum502 $i6989606 $j6999607 $x7009608 $y7019609 $i6989610 $j6999611 $x7009612 $y7019613))))

; __VERIFIER_assert precondition
(assert
  (forall (($j6999615 Int) ($i6989614 Int) ($y701 Int) ($j6999603 Int) ($x7009604 Int) ($j699 Int) ($x700 Int) ($y7019617 Int) ($i698 Int) ($x7009616 Int) ($y7019605 Int) ($i6989602 Int))
    (=> (and (= $i6989614 $j6999615)
             ($main_sum502 $i6989602 $j6999603 $x7009604 $y7019605 $i6989614 $j6999615 $x7009616 $y7019617)
             (= $y7019605 $j6999603)
             (= $x7009604 $i6989602)
             ($main_if327 $i698 $j699 $x700 $y701 $i6989602 $j6999603 $x7009604 $y7019605))
        ($__VERIFIER_assert_pre (ite (= $y7019617 0) 1 0)))))

; if then
(assert
  (forall (($j6999615 Int) ($i6989614 Int) ($y701 Int) ($j6999603 Int) ($x7009604 Int) ($j699 Int) ($x700 Int) ($y7019617 Int) ($i698 Int) ($x7009616 Int) ($y7019605 Int) ($i6989602 Int))
    (=> (and (__VERIFIER_assert (ite (= $y7019617 0) 1 0))
             (= $i6989614 $j6999615)
             ($main_sum502 $i6989602 $j6999603 $x7009604 $y7019605 $i6989614 $j6999615 $x7009616 $y7019617)
             (= $y7019605 $j6999603)
             (= $x7009604 $i6989602)
             ($main_if327 $i698 $j699 $x700 $y701 $i6989602 $j6999603 $x7009604 $y7019605))
        ($main_if328 $i698 $j699 $x700 $y701 $i6989614 $j6999615 $x7009616 $y7019617))))

; if else
(assert
  (forall (($j6999615 Int) ($i6989614 Int) ($y701 Int) ($j6999603 Int) ($x7009604 Int) ($j699 Int) ($x700 Int) ($y7019617 Int) ($i698 Int) ($x7009616 Int) ($y7019605 Int) ($i6989602 Int))
    (=> (and (not (= $i6989614 $j6999615))
             ($main_sum502 $i6989602 $j6999603 $x7009604 $y7019605 $i6989614 $j6999615 $x7009616 $y7019617)
             (= $y7019605 $j6999603)
             (= $x7009604 $i6989602)
             ($main_if327 $i698 $j699 $x700 $y701 $i6989602 $j6999603 $x7009604 $y7019605))
        ($main_if328 $i698 $j699 $x700 $y701 $i6989614 $j6999615 $x7009616 $y7019617))))

(check-sat)
