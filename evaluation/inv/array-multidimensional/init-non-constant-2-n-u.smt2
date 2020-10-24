(set-logic HORN)

(declare-fun $main_inv50 (Int Int Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_sum52 (Int Int Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_inv51 (Int Int Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $__VERIFIER_assert_if25 (Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_sum49 (Int Int Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_inv52 (Int Int Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_inv49 (Int Int Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $assume_abort_if_not_if24 (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_sum50 (Int Int Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_sum51 (Int Int Int Int Int Int (Array Int (Array Int Int)) Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if24 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond658 Int))
    (=> (and ($assume_abort_if_not_if24 cond658))
        (assume_abort_if_not cond658))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond659 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond659))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if25 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond660 Int))
    (=> (and ($__VERIFIER_assert_if25 cond660))
        (__VERIFIER_assert cond660))))

; assume_abort_if_not precondition
(assert
  (forall (($m69 Int) ($uint661 Int) ($int662 Int) ($int663 Int) ($C74 Int) ($n70 Int))
    (=> (and (<= (- 2147483648) $int663)
             (<= $int663 2147483647)
             (<= (- 2147483648) $int662)
             (<= $int662 2147483647)
             (= $C74 $uint661)
             (<= 0 $uint661)
             (<= $uint661 4294967295)
             (= $n70 1500)
             (= $m69 1000))
        ($assume_abort_if_not_pre (ite (< $int662 $m69) 1 0)))))

; assume_abort_if_not precondition
(assert
  (forall (($m69 Int) ($uint661 Int) ($int662 Int) ($int663 Int) ($C74 Int) ($n70 Int))
    (=> (and (assume_abort_if_not (ite (< $int662 $m69) 1 0))
             (<= (- 2147483648) $int663)
             (<= $int663 2147483647)
             (<= (- 2147483648) $int662)
             (<= $int662 2147483647)
             (= $C74 $uint661)
             (<= 0 $uint661)
             (<= $uint661 4294967295)
             (= $n70 1500)
             (= $m69 1000))
        ($assume_abort_if_not_pre (ite (< $int663 $n70) 1 0)))))

; loop entry $main_inv49
(assert
  (forall (($m69 Int) ($uint661 Int) ($A73 (Array Int (Array Int Int))) ($int662 Int) ($int663 Int) ($C74 Int) ($n70 Int))
    (=> (and (assume_abort_if_not (ite (< $int663 $n70) 1 0))
             (assume_abort_if_not (ite (< $int662 $m69) 1 0))
             (<= (- 2147483648) $int663)
             (<= $int663 2147483647)
             (<= (- 2147483648) $int662)
             (<= $int662 2147483647)
             (= $C74 $uint661)
             (<= 0 $uint661)
             (<= $uint661 4294967295)
             (= $n70 1500)
             (= $m69 1000))
        ($main_inv49 0 0 $m69 $n70 $int662 $int663 $A73 $C74))))

; loop term $main_sum49
(assert
  (forall (($C74671 Int) ($q71668 Int) ($s72669 Int) ($n70667 Int) ($j68665 Int) ($A73670 (Array Int (Array Int Int))) ($i67664 Int) ($m69666 Int))
    (=> (and (not (< $i67664 $q71668))
             ($main_inv49 $i67664 $j68665 $m69666 $n70667 $q71668 $s72669 $A73670 $C74671))
        ($main_sum49 $i67664 $j68665 $m69666 $n70667 $q71668 $s72669 $A73670 $C74671))))

; loop entry $main_inv50
(assert
  (forall (($C74671 Int) ($q71668 Int) ($s72669 Int) ($n70667 Int) ($j68665 Int) ($A73670 (Array Int (Array Int Int))) ($i67664 Int) ($m69666 Int))
    (=> (and (< $i67664 $q71668)
             ($main_inv49 $i67664 $j68665 $m69666 $n70667 $q71668 $s72669 $A73670 $C74671))
        ($main_inv50 $i67664 0 $m69666 $n70667 $q71668 $s72669 $A73670 $C74671))))

; loop term $main_sum50
(assert
  (forall (($s72677 Int) ($C74679 Int) ($m69674 Int) ($A73678 (Array Int (Array Int Int))) ($j68673 Int) ($n70675 Int) ($i67672 Int) ($q71676 Int))
    (=> (and (not (< $j68673 $s72677))
             ($main_inv50 $i67672 $j68673 $m69674 $n70675 $q71676 $s72677 $A73678 $C74679))
        ($main_sum50 $i67672 $j68673 $m69674 $n70675 $q71676 $s72677 $A73678 $C74679))))

; forwards $main_inv50
(assert
  (forall (($s72677 Int) ($C74679 Int) ($m69674 Int) ($A73678 (Array Int (Array Int Int))) ($j68673 Int) ($n70675 Int) ($i67672 Int) ($q71676 Int))
    (=> (and (< $j68673 $s72677)
             ($main_inv50 $i67672 $j68673 $m69674 $n70675 $q71676 $s72677 $A73678 $C74679))
        ($main_inv50 $i67672 (+ $j68673 1) $m69674 $n70675 $q71676 $s72677 (store $A73678 $i67672 (store (select $A73678 $i67672) $j68673 (+ (+ $i67672 $j68673) $C74679))) $C74679))))

; forwards $main_inv49
(assert
  (forall (($A73686 (Array Int (Array Int Int))) ($s72685 Int) ($i67680 Int) ($q71684 Int) ($n70683 Int) ($j68681 Int) ($C74687 Int) ($m69682 Int))
    (=> (and ($main_sum50 $i67680 $j68681 $m69682 $n70683 $q71684 $s72685 $A73686 $C74687))
        ($main_inv49 (+ $i67680 1) $j68681 $m69682 $n70683 $q71684 $s72685 $A73686 $C74687))))

; loop entry $main_inv51
(assert
  (forall (($j68689 Int) ($C74695 Int) ($q71692 Int) ($s72693 Int) ($n70691 Int) ($m69690 Int) ($i67688 Int) ($A73694 (Array Int (Array Int Int))))
    (=> (and ($main_sum49 $i67688 $j68689 $m69690 $n70691 $q71692 $s72693 $A73694 $C74695))
        ($main_inv51 0 0 $m69690 $n70691 $q71692 $s72693 $A73694 $C74695))))

; loop term $main_sum51
(assert
  (forall (($n70699 Int) ($i67696 Int) ($m69698 Int) ($C74703 Int) ($j68697 Int) ($A73702 (Array Int (Array Int Int))) ($s72701 Int) ($q71700 Int))
    (=> (and (not (< $i67696 $q71700))
             ($main_inv51 $i67696 $j68697 $m69698 $n70699 $q71700 $s72701 $A73702 $C74703))
        ($main_sum51 $i67696 $j68697 $m69698 $n70699 $q71700 $s72701 $A73702 $C74703))))

; loop entry $main_inv52
(assert
  (forall (($n70699 Int) ($i67696 Int) ($m69698 Int) ($C74703 Int) ($j68697 Int) ($A73702 (Array Int (Array Int Int))) ($s72701 Int) ($q71700 Int))
    (=> (and (< $i67696 $q71700)
             ($main_inv51 $i67696 $j68697 $m69698 $n70699 $q71700 $s72701 $A73702 $C74703))
        ($main_inv52 $i67696 0 $m69698 $n70699 $q71700 $s72701 $A73702 $C74703))))

; loop term $main_sum52
(assert
  (forall (($C74711 Int) ($q71708 Int) ($m69706 Int) ($i67704 Int) ($A73710 (Array Int (Array Int Int))) ($n70707 Int) ($s72709 Int) ($j68705 Int))
    (=> (and (not (< $j68705 $s72709))
             ($main_inv52 $i67704 $j68705 $m69706 $n70707 $q71708 $s72709 $A73710 $C74711))
        ($main_sum52 $i67704 $j68705 $m69706 $n70707 $q71708 $s72709 $A73710 $C74711))))

; __VERIFIER_assert precondition
(assert
  (forall (($C74711 Int) ($q71708 Int) ($m69706 Int) ($i67704 Int) ($A73710 (Array Int (Array Int Int))) ($n70707 Int) ($s72709 Int) ($j68705 Int))
    (=> (and (< $j68705 $s72709)
             ($main_inv52 $i67704 $j68705 $m69706 $n70707 $q71708 $s72709 $A73710 $C74711))
        ($__VERIFIER_assert_pre (ite (= (select (select $A73710 $i67704) $j68705) (+ (+ $i67704 $j68705) $C74711)) 1 0)))))

; forwards $main_inv52
(assert
  (forall (($C74711 Int) ($q71708 Int) ($m69706 Int) ($i67704 Int) ($A73710 (Array Int (Array Int Int))) ($n70707 Int) ($s72709 Int) ($j68705 Int))
    (=> (and (__VERIFIER_assert (ite (= (select (select $A73710 $i67704) $j68705) (+ (+ $i67704 $j68705) $C74711)) 1 0))
             (< $j68705 $s72709)
             ($main_inv52 $i67704 $j68705 $m69706 $n70707 $q71708 $s72709 $A73710 $C74711))
        ($main_inv52 $i67704 (+ $j68705 1) $m69706 $n70707 $q71708 $s72709 $A73710 $C74711))))

; forwards $main_inv51
(assert
  (forall (($n70715 Int) ($j68713 Int) ($m69714 Int) ($q71716 Int) ($s72717 Int) ($C74719 Int) ($A73718 (Array Int (Array Int Int))) ($i67712 Int))
    (=> (and ($main_sum52 $i67712 $j68713 $m69714 $n70715 $q71716 $s72717 $A73718 $C74719))
        ($main_inv51 (+ $i67712 1) $j68713 $m69714 $n70715 $q71716 $s72717 $A73718 $C74719))))

(check-sat)
