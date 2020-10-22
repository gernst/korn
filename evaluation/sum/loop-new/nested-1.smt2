(set-logic HORN)

(declare-fun $main_inv511 (Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $assume_abort_if_not_if353 (Int Int) Bool)
(declare-fun $main_sum512 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if355 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum511 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if356 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if354 (Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_inv512 (Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if353 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond9738 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if353 cond cond9738))
        (assume_abort_if_not cond9738))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond9739 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond9739))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if354 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond9740 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if354 cond cond9740))
        (__VERIFIER_assert cond9740))))

; if else
(assert
  (forall (($k723 Int) ($i724 Int) ($int9741 Int) ($j725 Int) ($m722 Int) ($int9742 Int) ($n721 Int))
    (=> (and (<= 10 $n721)
             (<= $n721 10000)
             (= $k723 0)
             (= $m722 $int9742)
             (<= (- 2147483648) $int9742)
             (<= $int9742 2147483647)
             (= $n721 $int9741)
             (<= (- 2147483648) $int9741)
             (<= $int9741 2147483647))
        ($main_if355 $n721 $m722 $k723 $i724 $j725 $n721 $m722 $k723 $i724 $j725))))

; if else
(assert
  (forall (($n7219743 Int) ($i7249746 Int) ($k7239745 Int) ($k723 Int) ($i724 Int) ($m722 Int) ($j7259747 Int) ($n721 Int) ($j725 Int) ($m7229744 Int))
    (=> (and (<= 10 $m7229744)
             (<= $m7229744 10000)
             ($main_if355 $n721 $m722 $k723 $i724 $j725 $n7219743 $m7229744 $k7239745 $i7249746 $j7259747))
        ($main_if356 $n721 $m722 $k723 $i724 $j725 $n7219743 $m7229744 $k7239745 $i7249746 $j7259747))))

; loop entry $main_inv511
(assert
  (forall (($k723 Int) ($k7239750 Int) ($i724 Int) ($i7249751 Int) ($n7219748 Int) ($j725 Int) ($m722 Int) ($m7229749 Int) ($j7259752 Int) ($n721 Int))
    (=> (and ($main_if356 $n721 $m722 $k723 $i724 $j725 $n7219748 $m7229749 $k7239750 $i7249751 $j7259752))
        ($main_inv511 $n7219748 $m7229749 $k7239750 0 $j7259752))))

; loop term $main_sum511
(assert
  (forall (($j7259757 Int) ($m7229754 Int) ($n7219753 Int) ($k7239755 Int) ($i7249756 Int))
    (=> (and (not (< $i7249756 $n7219753)))
        ($main_sum511 $n7219753 $m7229754 $k7239755 $i7249756 $j7259757 $n7219753 $m7229754 $k7239755 $i7249756 $j7259757))))

; loop entry $main_inv512
(assert
  (forall (($j7259757 Int) ($m7229754 Int) ($n7219753 Int) ($k7239755 Int) ($i7249756 Int))
    (=> (and (< $i7249756 $n7219753)
             ($main_inv511 $n7219753 $m7229754 $k7239755 $i7249756 $j7259757))
        ($main_inv512 $n7219753 $m7229754 $k7239755 $i7249756 0))))

; loop term $main_sum512
(assert
  (forall (($j7259762 Int) ($k7239760 Int) ($n7219758 Int) ($m7229759 Int) ($i7249761 Int))
    (=> (and (not (< $j7259762 $m7229759)))
        ($main_sum512 $n7219758 $m7229759 $k7239760 $i7249761 $j7259762 $n7219758 $m7229759 $k7239760 $i7249761 $j7259762))))

; forwards $main_inv512
(assert
  (forall (($j7259762 Int) ($k7239760 Int) ($n7219758 Int) ($m7229759 Int) ($i7249761 Int))
    (=> (and (< $j7259762 $m7229759)
             ($main_inv512 $n7219758 $m7229759 $k7239760 $i7249761 $j7259762))
        ($main_inv512 $n7219758 $m7229759 (+ $k7239760 1) $i7249761 (+ $j7259762 1)))))

; backwards $main_sum512
(assert
  (forall (($k7239765 Int) ($n7219763 Int) ($j7259762 Int) ($k7239760 Int) ($n7219758 Int) ($m7229764 Int) ($i7249766 Int) ($j7259767 Int) ($m7229759 Int) ($i7249761 Int))
    (=> (and ($main_sum512 $n7219758 $m7229759 (+ $k7239760 1) $i7249761 (+ $j7259762 1) $n7219763 $m7229764 $k7239765 $i7249766 $j7259767)
             (< $j7259762 $m7229759))
        ($main_sum512 $n7219758 $m7229759 $k7239760 $i7249761 $j7259762 $n7219763 $m7229764 $k7239765 $i7249766 $j7259767))))

; forwards $main_inv511
(assert
  (forall (($k7239770 Int) ($i7249771 Int) ($m7229769 Int) ($m7229754 Int) ($n7219768 Int) ($n7219753 Int) ($j7259757 Int) ($j7259772 Int) ($k7239755 Int) ($i7249756 Int))
    (=> (and ($main_sum512 $n7219753 $m7229754 $k7239755 $i7249756 0 $n7219768 $m7229769 $k7239770 $i7249771 $j7259772)
             (< $i7249756 $n7219753)
             ($main_inv511 $n7219753 $m7229754 $k7239755 $i7249756 $j7259757))
        ($main_inv511 $n7219768 $m7229769 $k7239770 (+ $i7249771 1) $j7259772))))

; backwards $main_sum511
(assert
  (forall (($k7239770 Int) ($n7219773 Int) ($i7249771 Int) ($m7229754 Int) ($n7219768 Int) ($n7219753 Int) ($m7229774 Int) ($j7259757 Int) ($j7259772 Int) ($j7259777 Int) ($m7229769 Int) ($k7239775 Int) ($i7249776 Int) ($k7239755 Int) ($i7249756 Int))
    (=> (and ($main_sum511 $n7219768 $m7229769 $k7239770 (+ $i7249771 1) $j7259772 $n7219773 $m7229774 $k7239775 $i7249776 $j7259777)
             ($main_sum512 $n7219753 $m7229754 $k7239755 $i7249756 0 $n7219768 $m7229769 $k7239770 $i7249771 $j7259772)
             (< $i7249756 $n7219753))
        ($main_sum511 $n7219753 $m7229754 $k7239755 $i7249756 $j7259757 $n7219773 $m7229774 $k7239775 $i7249776 $j7259777))))

; __VERIFIER_assert precondition
(assert
  (forall (($k723 Int) ($k7239750 Int) ($i724 Int) ($m7229779 Int) ($i7249751 Int) ($j7259782 Int) ($n7219748 Int) ($i7249781 Int) ($j725 Int) ($m722 Int) ($m7229749 Int) ($j7259752 Int) ($k7239780 Int) ($n721 Int) ($n7219778 Int))
    (=> (and ($main_sum511 $n7219748 $m7229749 $k7239750 0 $j7259752 $n7219778 $m7229779 $k7239780 $i7249781 $j7259782)
             ($main_if356 $n721 $m722 $k723 $i724 $j725 $n7219748 $m7229749 $k7239750 $i7249751 $j7259752))
        ($__VERIFIER_assert_pre (ite (>= $k7239780 100) 1 0)))))

(check-sat)
