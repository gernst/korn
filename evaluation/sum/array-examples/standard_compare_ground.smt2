(set-logic HORN)

(declare-fun $main_inv84 ((Array Int Int) (Array Int Int) Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum83 ((Array Int Int) (Array Int Int) Int Int Int Int (Array Int Int) (Array Int Int) Int Int Int Int) Bool)
(declare-fun $main_inv83 ((Array Int Int) (Array Int Int) Int Int Int Int) Bool)
(declare-fun $main_if39 ((Array Int Int) (Array Int Int) Int Int Int Int (Array Int Int) (Array Int Int) Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv82 ((Array Int Int) (Array Int Int) Int Int Int Int) Bool)
(declare-fun $main_sum82 ((Array Int Int) (Array Int Int) Int Int Int Int (Array Int Int) (Array Int Int) Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if37 (Int Int) Bool)
(declare-fun $main_if38 ((Array Int Int) (Array Int Int) Int Int Int Int (Array Int Int) (Array Int Int) Int Int Int Int) Bool)
(declare-fun $main_sum84 ((Array Int Int) (Array Int Int) Int Int Int Int (Array Int Int) (Array Int Int) Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond1763 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond1763))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if37 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond1764 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if37 cond cond1764))
        (__VERIFIER_assert cond1764))))

; loop entry $main_inv82
(assert
  (forall (($rv145 Int) ($x146 Int) ($j143 Int) ($a141 (Array Int Int)) ($i144 Int) ($b142 (Array Int Int)))
    (=> (and (= $j143 0))
        ($main_inv82 $a141 $b142 $j143 $i144 $rv145 $x146))))

; loop term $main_sum82
(assert
  (forall (($j1431767 Int) ($a1411765 (Array Int Int)) ($i1441768 Int) ($b1421766 (Array Int Int)) ($rv1451769 Int) ($x1461770 Int))
    (=> (and (not (< $j1431767 100000)))
        ($main_sum82 $a1411765 $b1421766 $j1431767 $i1441768 $rv1451769 $x1461770 $a1411765 $b1421766 $j1431767 $i1441768 $rv1451769 $x1461770))))

; forwards $main_inv82
(assert
  (forall (($j1431767 Int) ($int1772 Int) ($a1411765 (Array Int Int)) ($i1441768 Int) ($b1421766 (Array Int Int)) ($rv1451769 Int) ($int1771 Int) ($x1461770 Int))
    (=> (and (<= (- 2147483648) $int1772)
             (<= $int1772 2147483647)
             (<= (- 2147483648) $int1771)
             (<= $int1771 2147483647)
             (< $j1431767 100000)
             ($main_inv82 $a1411765 $b1421766 $j1431767 $i1441768 $rv1451769 $x1461770))
        ($main_inv82 (store $a1411765 $j1431767 $int1771) (store $b1421766 $j1431767 $int1772) (+ $j1431767 1) $i1441768 $rv1451769 $x1461770))))

; backwards $main_sum82
(assert
  (forall (($int1772 Int) ($a1411765 (Array Int Int)) ($i1441776 Int) ($i1441768 Int) ($b1421766 (Array Int Int)) ($rv1451769 Int) ($b1421774 (Array Int Int)) ($x1461770 Int) ($rv1451777 Int) ($a1411773 (Array Int Int)) ($x1461778 Int) ($j1431767 Int) ($j1431775 Int) ($int1771 Int))
    (=> (and ($main_sum82 (store $a1411765 $j1431767 $int1771) (store $b1421766 $j1431767 $int1772) (+ $j1431767 1) $i1441768 $rv1451769 $x1461770 $a1411773 $b1421774 $j1431775 $i1441776 $rv1451777 $x1461778)
             (<= (- 2147483648) $int1772)
             (<= $int1772 2147483647)
             (<= (- 2147483648) $int1771)
             (<= $int1771 2147483647)
             (< $j1431767 100000))
        ($main_sum82 $a1411765 $b1421766 $j1431767 $i1441768 $rv1451769 $x1461770 $a1411773 $b1421774 $j1431775 $i1441776 $rv1451777 $x1461778))))

; loop entry $main_inv83
(assert
  (forall (($rv1451783 Int) ($i1441782 Int) ($rv145 Int) ($b1421780 (Array Int Int)) ($x146 Int) ($j143 Int) ($a141 (Array Int Int)) ($a1411779 (Array Int Int)) ($j1431781 Int) ($x1461784 Int) ($i144 Int) ($b142 (Array Int Int)))
    (=> (and (= $rv1451783 1)
             (= $i1441782 0)
             ($main_sum82 $a141 $b142 $j143 $i144 $rv145 $x146 $a1411779 $b1421780 $j1431781 $i1441782 $rv1451783 $x1461784)
             (= $j143 0))
        ($main_inv83 $a1411779 $b1421780 $j1431781 $i1441782 $rv1451783 $x1461784))))

; loop term $main_sum83
(assert
  (forall (($a1411785 (Array Int Int)) ($j1431787 Int) ($x1461790 Int) ($rv1451789 Int) ($i1441788 Int) ($b1421786 (Array Int Int)))
    (=> (and (not (< $i1441788 100000)))
        ($main_sum83 $a1411785 $b1421786 $j1431787 $i1441788 $rv1451789 $x1461790 $a1411785 $b1421786 $j1431787 $i1441788 $rv1451789 $x1461790))))

; if then
(assert
  (forall (($a1411785 (Array Int Int)) ($j1431787 Int) ($x1461790 Int) ($rv1451789 Int) ($i1441788 Int) ($b1421786 (Array Int Int)))
    (=> (and (not (= (select $a1411785 $i1441788) (select $b1421786 $i1441788)))
             (< $i1441788 100000)
             ($main_inv83 $a1411785 $b1421786 $j1431787 $i1441788 $rv1451789 $x1461790))
        ($main_if38 $a1411785 $b1421786 $j1431787 $i1441788 $rv1451789 $x1461790 $a1411785 $b1421786 $j1431787 $i1441788 0 $x1461790))))

; if else
(assert
  (forall (($a1411785 (Array Int Int)) ($j1431787 Int) ($x1461790 Int) ($rv1451789 Int) ($i1441788 Int) ($b1421786 (Array Int Int)))
    (=> (and (= (select $a1411785 $i1441788) (select $b1421786 $i1441788))
             (< $i1441788 100000)
             ($main_inv83 $a1411785 $b1421786 $j1431787 $i1441788 $rv1451789 $x1461790))
        ($main_if38 $a1411785 $b1421786 $j1431787 $i1441788 $rv1451789 $x1461790 $a1411785 $b1421786 $j1431787 $i1441788 $rv1451789 $x1461790))))

; forwards $main_inv83
(assert
  (forall (($x1461796 Int) ($a1411791 (Array Int Int)) ($a1411785 (Array Int Int)) ($j1431787 Int) ($rv1451795 Int) ($i1441794 Int) ($j1431793 Int) ($x1461790 Int) ($rv1451789 Int) ($b1421792 (Array Int Int)) ($i1441788 Int) ($b1421786 (Array Int Int)))
    (=> (and ($main_if38 $a1411785 $b1421786 $j1431787 $i1441788 $rv1451789 $x1461790 $a1411791 $b1421792 $j1431793 $i1441794 $rv1451795 $x1461796))
        ($main_inv83 $a1411791 $b1421792 $j1431793 (+ $i1441794 1) $rv1451795 $x1461796))))

; backwards $main_sum83
(assert
  (forall (($a1411797 (Array Int Int)) ($x1461796 Int) ($a1411791 (Array Int Int)) ($a1411785 (Array Int Int)) ($j1431787 Int) ($rv1451795 Int) ($i1441800 Int) ($i1441794 Int) ($j1431799 Int) ($j1431793 Int) ($rv1451789 Int) ($b1421792 (Array Int Int)) ($i1441788 Int) ($b1421786 (Array Int Int)) ($rv1451801 Int) ($x1461790 Int) ($x1461802 Int) ($b1421798 (Array Int Int)))
    (=> (and ($main_sum83 $a1411791 $b1421792 $j1431793 (+ $i1441794 1) $rv1451795 $x1461796 $a1411797 $b1421798 $j1431799 $i1441800 $rv1451801 $x1461802)
             ($main_if38 $a1411785 $b1421786 $j1431787 $i1441788 $rv1451789 $x1461790 $a1411791 $b1421792 $j1431793 $i1441794 $rv1451795 $x1461796))
        ($main_sum83 $a1411785 $b1421786 $j1431787 $i1441788 $rv1451789 $x1461790 $a1411797 $b1421798 $j1431799 $i1441800 $rv1451801 $x1461802))))

; loop entry $main_inv84
(assert
  (forall (($i1441806 Int) ($rv1451783 Int) ($rv1451807 Int) ($a1411803 (Array Int Int)) ($i1441782 Int) ($rv145 Int) ($b1421804 (Array Int Int)) ($x1461808 Int) ($b1421780 (Array Int Int)) ($x146 Int) ($j143 Int) ($a141 (Array Int Int)) ($a1411779 (Array Int Int)) ($j1431781 Int) ($x1461784 Int) ($j1431805 Int) ($i144 Int) ($b142 (Array Int Int)))
    (=> (and (not (= $rv1451807 0))
             ($main_sum83 $a1411779 $b1421780 $j1431781 $i1441782 $rv1451783 $x1461784 $a1411803 $b1421804 $j1431805 $i1441806 $rv1451807 $x1461808)
             (= $rv1451783 1)
             (= $i1441782 0)
             ($main_sum82 $a141 $b142 $j143 $i144 $rv145 $x146 $a1411779 $b1421780 $j1431781 $i1441782 $rv1451783 $x1461784)
             (= $j143 0))
        ($main_inv84 $a1411803 $b1421804 $j1431805 $i1441806 $rv1451807 0))))

; loop term $main_sum84
(assert
  (forall (($rv1451813 Int) ($j1431811 Int) ($b1421810 (Array Int Int)) ($i1441812 Int) ($a1411809 (Array Int Int)) ($x1461814 Int))
    (=> (and (not (< $x1461814 100000)))
        ($main_sum84 $a1411809 $b1421810 $j1431811 $i1441812 $rv1451813 $x1461814 $a1411809 $b1421810 $j1431811 $i1441812 $rv1451813 $x1461814))))

; __VERIFIER_assert precondition
(assert
  (forall (($rv1451813 Int) ($j1431811 Int) ($b1421810 (Array Int Int)) ($i1441812 Int) ($a1411809 (Array Int Int)) ($x1461814 Int))
    (=> (and (< $x1461814 100000)
             ($main_inv84 $a1411809 $b1421810 $j1431811 $i1441812 $rv1451813 $x1461814))
        ($__VERIFIER_assert_pre (ite (= (select $a1411809 $x1461814) (select $b1421810 $x1461814)) 1 0)))))

; forwards $main_inv84
(assert
  (forall (($rv1451813 Int) ($j1431811 Int) ($b1421810 (Array Int Int)) ($i1441812 Int) ($a1411809 (Array Int Int)) ($x1461814 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a1411809 $x1461814) (select $b1421810 $x1461814)) 1 0))
             (< $x1461814 100000)
             ($main_inv84 $a1411809 $b1421810 $j1431811 $i1441812 $rv1451813 $x1461814))
        ($main_inv84 $a1411809 $b1421810 $j1431811 $i1441812 $rv1451813 (+ $x1461814 1)))))

; backwards $main_sum84
(assert
  (forall (($rv1451813 Int) ($rv1451819 Int) ($b1421816 (Array Int Int)) ($i1441818 Int) ($b1421810 (Array Int Int)) ($i1441812 Int) ($x1461820 Int) ($j1431817 Int) ($a1411815 (Array Int Int)) ($j1431811 Int) ($a1411809 (Array Int Int)) ($x1461814 Int))
    (=> (and ($main_sum84 $a1411809 $b1421810 $j1431811 $i1441812 $rv1451813 (+ $x1461814 1) $a1411815 $b1421816 $j1431817 $i1441818 $rv1451819 $x1461820)
             (__VERIFIER_assert (ite (= (select $a1411809 $x1461814) (select $b1421810 $x1461814)) 1 0))
             (< $x1461814 100000))
        ($main_sum84 $a1411809 $b1421810 $j1431811 $i1441812 $rv1451813 $x1461814 $a1411815 $b1421816 $j1431817 $i1441818 $rv1451819 $x1461820))))

; if then
(assert
  (forall (($i1441806 Int) ($rv1451807 Int) ($a1411803 (Array Int Int)) ($i1441782 Int) ($rv145 Int) ($b1421804 (Array Int Int)) ($x1461808 Int) ($b1421780 (Array Int Int)) ($a141 (Array Int Int)) ($a1411779 (Array Int Int)) ($j1431781 Int) ($b1421822 (Array Int Int)) ($x1461784 Int) ($j1431805 Int) ($i144 Int) ($x1461826 Int) ($rv1451783 Int) ($rv1451825 Int) ($x146 Int) ($j1431823 Int) ($a1411821 (Array Int Int)) ($j143 Int) ($i1441824 Int) ($b142 (Array Int Int)))
    (=> (and ($main_sum84 $a1411803 $b1421804 $j1431805 $i1441806 $rv1451807 0 $a1411821 $b1421822 $j1431823 $i1441824 $rv1451825 $x1461826)
             (not (= $rv1451807 0))
             ($main_sum83 $a1411779 $b1421780 $j1431781 $i1441782 $rv1451783 $x1461784 $a1411803 $b1421804 $j1431805 $i1441806 $rv1451807 $x1461808)
             (= $rv1451783 1)
             (= $i1441782 0)
             ($main_sum82 $a141 $b142 $j143 $i144 $rv145 $x146 $a1411779 $b1421780 $j1431781 $i1441782 $rv1451783 $x1461784)
             (= $j143 0))
        ($main_if39 $a141 $b142 $j143 $i144 $rv145 $x146 $a1411821 $b1421822 $j1431823 $i1441824 $rv1451825 $x1461826))))

; if else
(assert
  (forall (($i1441806 Int) ($rv1451783 Int) ($rv1451807 Int) ($a1411803 (Array Int Int)) ($i1441782 Int) ($rv145 Int) ($b1421804 (Array Int Int)) ($x1461808 Int) ($b1421780 (Array Int Int)) ($x146 Int) ($j143 Int) ($a141 (Array Int Int)) ($a1411779 (Array Int Int)) ($j1431781 Int) ($x1461784 Int) ($j1431805 Int) ($i144 Int) ($b142 (Array Int Int)))
    (=> (and (= $rv1451807 0)
             ($main_sum83 $a1411779 $b1421780 $j1431781 $i1441782 $rv1451783 $x1461784 $a1411803 $b1421804 $j1431805 $i1441806 $rv1451807 $x1461808)
             (= $rv1451783 1)
             (= $i1441782 0)
             ($main_sum82 $a141 $b142 $j143 $i144 $rv145 $x146 $a1411779 $b1421780 $j1431781 $i1441782 $rv1451783 $x1461784)
             (= $j143 0))
        ($main_if39 $a141 $b142 $j143 $i144 $rv145 $x146 $a1411803 $b1421804 $j1431805 $i1441806 $rv1451807 $x1461808))))

(check-sat)
