(set-logic HORN)

(declare-fun $main_inv42 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv41 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum37 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int)) Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_sum42 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int)) Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv37 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum39 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int)) Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum38 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int)) Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv39 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum41 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int)) Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum44 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int)) Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv40 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $__VERIFIER_assert_if22 (Int Int) Bool)
(declare-fun $main_sum43 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int)) Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv44 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv38 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum40 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int)) Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv43 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond700 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond700))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if22 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond701 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if22 cond cond701))
        (__VERIFIER_assert cond701))))

; loop entry $main_inv37
(assert
  (forall (($A58 (Array Int (Array Int Int))) ($C60 (Array Int (Array Int Int))) ($m56 Int) ($B59 (Array Int (Array Int Int))) ($n57 Int))
    (=> (and (= $n57 1500)
             (= $m56 1000))
        ($main_inv37 0 0 $m56 $n57 $A58 $B59 $C60))))

; loop term $main_sum37
(assert
  (forall (($i54702 Int) ($C60708 (Array Int (Array Int Int))) ($n57705 Int) ($j55703 Int) ($B59707 (Array Int (Array Int Int))) ($m56704 Int) ($A58706 (Array Int (Array Int Int))))
    (=> (and (not (< $i54702 $m56704)))
        ($main_sum37 $i54702 $j55703 $m56704 $n57705 $A58706 $B59707 $C60708 $i54702 $j55703 $m56704 $n57705 $A58706 $B59707 $C60708))))

; loop entry $main_inv38
(assert
  (forall (($i54702 Int) ($C60708 (Array Int (Array Int Int))) ($n57705 Int) ($j55703 Int) ($B59707 (Array Int (Array Int Int))) ($m56704 Int) ($A58706 (Array Int (Array Int Int))))
    (=> (and (< $i54702 $m56704)
             ($main_inv37 $i54702 $j55703 $m56704 $n57705 $A58706 $B59707 $C60708))
        ($main_inv38 $i54702 0 $m56704 $n57705 $A58706 $B59707 $C60708))))

; loop term $main_sum38
(assert
  (forall (($C60715 (Array Int (Array Int Int))) ($i54709 Int) ($j55710 Int) ($A58713 (Array Int (Array Int Int))) ($m56711 Int) ($B59714 (Array Int (Array Int Int))) ($n57712 Int))
    (=> (and (not (< $j55710 $n57712)))
        ($main_sum38 $i54709 $j55710 $m56711 $n57712 $A58713 $B59714 $C60715 $i54709 $j55710 $m56711 $n57712 $A58713 $B59714 $C60715))))

; forwards $main_inv38
(assert
  (forall (($uint716 Int) ($C60715 (Array Int (Array Int Int))) ($uint717 Int) ($i54709 Int) ($j55710 Int) ($A58713 (Array Int (Array Int Int))) ($m56711 Int) ($B59714 (Array Int (Array Int Int))) ($n57712 Int))
    (=> (and (<= 0 $uint717)
             (<= $uint717 4294967295)
             (<= 0 $uint716)
             (<= $uint716 4294967295)
             (< $j55710 $n57712)
             ($main_inv38 $i54709 $j55710 $m56711 $n57712 $A58713 $B59714 $C60715))
        ($main_inv38 $i54709 (+ $j55710 1) $m56711 $n57712 (store $A58713 $i54709 (store (select $A58713 $i54709) $j55710 $uint716)) (store $B59714 $i54709 (store (select $B59714 $i54709) $j55710 $uint717)) $C60715))))

; backwards $main_sum38
(assert
  (forall (($n57721 Int) ($B59723 (Array Int (Array Int Int))) ($uint716 Int) ($C60724 (Array Int (Array Int Int))) ($A58722 (Array Int (Array Int Int))) ($C60715 (Array Int (Array Int Int))) ($m56720 Int) ($uint717 Int) ($i54709 Int) ($j55710 Int) ($A58713 (Array Int (Array Int Int))) ($m56711 Int) ($i54718 Int) ($B59714 (Array Int (Array Int Int))) ($j55719 Int) ($n57712 Int))
    (=> (and ($main_sum38 $i54709 (+ $j55710 1) $m56711 $n57712 (store $A58713 $i54709 (store (select $A58713 $i54709) $j55710 $uint716)) (store $B59714 $i54709 (store (select $B59714 $i54709) $j55710 $uint717)) $C60715 $i54718 $j55719 $m56720 $n57721 $A58722 $B59723 $C60724)
             (<= 0 $uint717)
             (<= $uint717 4294967295)
             (<= 0 $uint716)
             (<= $uint716 4294967295)
             (< $j55710 $n57712))
        ($main_sum38 $i54709 $j55710 $m56711 $n57712 $A58713 $B59714 $C60715 $i54718 $j55719 $m56720 $n57721 $A58722 $B59723 $C60724))))

; forwards $main_inv37
(assert
  (forall (($C60708 (Array Int (Array Int Int))) ($n57728 Int) ($C60731 (Array Int (Array Int Int))) ($n57705 Int) ($j55703 Int) ($A58729 (Array Int (Array Int Int))) ($B59707 (Array Int (Array Int Int))) ($m56727 Int) ($B59730 (Array Int (Array Int Int))) ($i54702 Int) ($m56704 Int) ($A58706 (Array Int (Array Int Int))) ($j55726 Int) ($i54725 Int))
    (=> (and ($main_sum38 $i54702 0 $m56704 $n57705 $A58706 $B59707 $C60708 $i54725 $j55726 $m56727 $n57728 $A58729 $B59730 $C60731)
             (< $i54702 $m56704)
             ($main_inv37 $i54702 $j55703 $m56704 $n57705 $A58706 $B59707 $C60708))
        ($main_inv37 (+ $i54725 1) $j55726 $m56727 $n57728 $A58729 $B59730 $C60731))))

; backwards $main_sum37
(assert
  (forall (($C60708 (Array Int (Array Int Int))) ($n57728 Int) ($C60731 (Array Int (Array Int Int))) ($n57705 Int) ($i54732 Int) ($C60738 (Array Int (Array Int Int))) ($B59730 (Array Int (Array Int Int))) ($i54702 Int) ($j55733 Int) ($j55703 Int) ($B59737 (Array Int (Array Int Int))) ($A58729 (Array Int (Array Int Int))) ($m56734 Int) ($B59707 (Array Int (Array Int Int))) ($m56704 Int) ($A58736 (Array Int (Array Int Int))) ($A58706 (Array Int (Array Int Int))) ($j55726 Int) ($i54725 Int) ($m56727 Int) ($n57735 Int))
    (=> (and ($main_sum37 (+ $i54725 1) $j55726 $m56727 $n57728 $A58729 $B59730 $C60731 $i54732 $j55733 $m56734 $n57735 $A58736 $B59737 $C60738)
             ($main_sum38 $i54702 0 $m56704 $n57705 $A58706 $B59707 $C60708 $i54725 $j55726 $m56727 $n57728 $A58729 $B59730 $C60731)
             (< $i54702 $m56704))
        ($main_sum37 $i54702 $j55703 $m56704 $n57705 $A58706 $B59707 $C60708 $i54732 $j55733 $m56734 $n57735 $A58736 $B59737 $C60738))))

; loop entry $main_inv39
(assert
  (forall (($B59744 (Array Int (Array Int Int))) ($n57742 Int) ($j55740 Int) ($C60 (Array Int (Array Int Int))) ($m56 Int) ($C60745 (Array Int (Array Int Int))) ($B59 (Array Int (Array Int Int))) ($n57 Int) ($A58 (Array Int (Array Int Int))) ($m56741 Int) ($A58743 (Array Int (Array Int Int))) ($i54739 Int))
    (=> (and ($main_sum37 0 0 $m56 $n57 $A58 $B59 $C60 $i54739 $j55740 $m56741 $n57742 $A58743 $B59744 $C60745)
             (= $n57 1500)
             (= $m56 1000))
        ($main_inv39 0 0 $m56741 $n57742 $A58743 $B59744 $C60745))))

; loop term $main_sum39
(assert
  (forall (($A58750 (Array Int (Array Int Int))) ($m56748 Int) ($i54746 Int) ($C60752 (Array Int (Array Int Int))) ($j55747 Int) ($B59751 (Array Int (Array Int Int))) ($n57749 Int))
    (=> (and (not (< $i54746 $m56748)))
        ($main_sum39 $i54746 $j55747 $m56748 $n57749 $A58750 $B59751 $C60752 $i54746 $j55747 $m56748 $n57749 $A58750 $B59751 $C60752))))

; loop entry $main_inv40
(assert
  (forall (($A58750 (Array Int (Array Int Int))) ($m56748 Int) ($i54746 Int) ($C60752 (Array Int (Array Int Int))) ($j55747 Int) ($B59751 (Array Int (Array Int Int))) ($n57749 Int))
    (=> (and (< $i54746 $m56748)
             ($main_inv39 $i54746 $j55747 $m56748 $n57749 $A58750 $B59751 $C60752))
        ($main_inv40 $i54746 0 $m56748 $n57749 $A58750 $B59751 $C60752))))

; loop term $main_sum40
(assert
  (forall (($A58757 (Array Int (Array Int Int))) ($C60759 (Array Int (Array Int Int))) ($i54753 Int) ($n57756 Int) ($B59758 (Array Int (Array Int Int))) ($j55754 Int) ($m56755 Int))
    (=> (and (not (< $j55754 $n57756)))
        ($main_sum40 $i54753 $j55754 $m56755 $n57756 $A58757 $B59758 $C60759 $i54753 $j55754 $m56755 $n57756 $A58757 $B59758 $C60759))))

; forwards $main_inv40
(assert
  (forall (($A58757 (Array Int (Array Int Int))) ($C60759 (Array Int (Array Int Int))) ($uint760 Int) ($uint761 Int) ($i54753 Int) ($n57756 Int) ($B59758 (Array Int (Array Int Int))) ($j55754 Int) ($m56755 Int))
    (=> (and (<= 0 $uint761)
             (<= $uint761 4294967295)
             (<= 0 $uint760)
             (<= $uint760 4294967295)
             (< $j55754 $n57756)
             ($main_inv40 $i54753 $j55754 $m56755 $n57756 $A58757 $B59758 $C60759))
        ($main_inv40 $i54753 (+ $j55754 1) $m56755 $n57756 (store $A58757 $i54753 (store (select $A58757 $i54753) $j55754 $uint760)) (store $B59758 $i54753 (store (select $B59758 $i54753) $j55754 $uint761)) $C60759))))

; backwards $main_sum40
(assert
  (forall (($A58757 (Array Int (Array Int Int))) ($C60759 (Array Int (Array Int Int))) ($B59767 (Array Int (Array Int Int))) ($uint760 Int) ($uint761 Int) ($i54753 Int) ($B59758 (Array Int (Array Int Int))) ($m56764 Int) ($i54762 Int) ($j55754 Int) ($j55763 Int) ($n57765 Int) ($A58766 (Array Int (Array Int Int))) ($n57756 Int) ($C60768 (Array Int (Array Int Int))) ($m56755 Int))
    (=> (and ($main_sum40 $i54753 (+ $j55754 1) $m56755 $n57756 (store $A58757 $i54753 (store (select $A58757 $i54753) $j55754 $uint760)) (store $B59758 $i54753 (store (select $B59758 $i54753) $j55754 $uint761)) $C60759 $i54762 $j55763 $m56764 $n57765 $A58766 $B59767 $C60768)
             (<= 0 $uint761)
             (<= $uint761 4294967295)
             (<= 0 $uint760)
             (<= $uint760 4294967295)
             (< $j55754 $n57756))
        ($main_sum40 $i54753 $j55754 $m56755 $n57756 $A58757 $B59758 $C60759 $i54762 $j55763 $m56764 $n57765 $A58766 $B59767 $C60768))))

; forwards $main_inv39
(assert
  (forall (($A58750 (Array Int (Array Int Int))) ($B59774 (Array Int (Array Int Int))) ($m56748 Int) ($C60775 (Array Int (Array Int Int))) ($i54746 Int) ($j55770 Int) ($j55747 Int) ($B59751 (Array Int (Array Int Int))) ($n57749 Int) ($A58773 (Array Int (Array Int Int))) ($n57772 Int) ($i54769 Int) ($m56771 Int) ($C60752 (Array Int (Array Int Int))))
    (=> (and ($main_sum40 $i54746 0 $m56748 $n57749 $A58750 $B59751 $C60752 $i54769 $j55770 $m56771 $n57772 $A58773 $B59774 $C60775)
             (< $i54746 $m56748)
             ($main_inv39 $i54746 $j55747 $m56748 $n57749 $A58750 $B59751 $C60752))
        ($main_inv39 (+ $i54769 1) $j55770 $m56771 $n57772 $A58773 $B59774 $C60775))))

; backwards $main_sum39
(assert
  (forall (($A58750 (Array Int (Array Int Int))) ($i54776 Int) ($C60775 (Array Int (Array Int Int))) ($i54746 Int) ($j55770 Int) ($j55747 Int) ($n57779 Int) ($m56778 Int) ($j55777 Int) ($B59774 (Array Int (Array Int Int))) ($C60782 (Array Int (Array Int Int))) ($m56748 Int) ($A58780 (Array Int (Array Int Int))) ($B59781 (Array Int (Array Int Int))) ($B59751 (Array Int (Array Int Int))) ($n57749 Int) ($A58773 (Array Int (Array Int Int))) ($n57772 Int) ($i54769 Int) ($m56771 Int) ($C60752 (Array Int (Array Int Int))))
    (=> (and ($main_sum39 (+ $i54769 1) $j55770 $m56771 $n57772 $A58773 $B59774 $C60775 $i54776 $j55777 $m56778 $n57779 $A58780 $B59781 $C60782)
             ($main_sum40 $i54746 0 $m56748 $n57749 $A58750 $B59751 $C60752 $i54769 $j55770 $m56771 $n57772 $A58773 $B59774 $C60775)
             (< $i54746 $m56748))
        ($main_sum39 $i54746 $j55747 $m56748 $n57749 $A58750 $B59751 $C60752 $i54776 $j55777 $m56778 $n57779 $A58780 $B59781 $C60782))))

; loop entry $main_inv41
(assert
  (forall (($i54783 Int) ($B59744 (Array Int (Array Int Int))) ($B59788 (Array Int (Array Int Int))) ($n57742 Int) ($j55740 Int) ($C60 (Array Int (Array Int Int))) ($m56 Int) ($C60745 (Array Int (Array Int Int))) ($n57786 Int) ($B59 (Array Int (Array Int Int))) ($j55784 Int) ($n57 Int) ($A58 (Array Int (Array Int Int))) ($m56741 Int) ($A58787 (Array Int (Array Int Int))) ($A58743 (Array Int (Array Int Int))) ($m56785 Int) ($i54739 Int) ($C60789 (Array Int (Array Int Int))))
    (=> (and ($main_sum39 0 0 $m56741 $n57742 $A58743 $B59744 $C60745 $i54783 $j55784 $m56785 $n57786 $A58787 $B59788 $C60789)
             ($main_sum37 0 0 $m56 $n57 $A58 $B59 $C60 $i54739 $j55740 $m56741 $n57742 $A58743 $B59744 $C60745)
             (= $n57 1500)
             (= $m56 1000))
        ($main_inv41 0 0 $m56785 $n57786 $A58787 $B59788 $C60789))))

; loop term $main_sum41
(assert
  (forall (($n57793 Int) ($C60796 (Array Int (Array Int Int))) ($j55791 Int) ($i54790 Int) ($m56792 Int) ($A58794 (Array Int (Array Int Int))) ($B59795 (Array Int (Array Int Int))))
    (=> (and (not (< $i54790 $m56792)))
        ($main_sum41 $i54790 $j55791 $m56792 $n57793 $A58794 $B59795 $C60796 $i54790 $j55791 $m56792 $n57793 $A58794 $B59795 $C60796))))

; loop entry $main_inv42
(assert
  (forall (($n57793 Int) ($C60796 (Array Int (Array Int Int))) ($j55791 Int) ($i54790 Int) ($m56792 Int) ($A58794 (Array Int (Array Int Int))) ($B59795 (Array Int (Array Int Int))))
    (=> (and (< $i54790 $m56792)
             ($main_inv41 $i54790 $j55791 $m56792 $n57793 $A58794 $B59795 $C60796))
        ($main_inv42 $i54790 0 $m56792 $n57793 $A58794 $B59795 $C60796))))

; loop term $main_sum42
(assert
  (forall (($n57800 Int) ($A58801 (Array Int (Array Int Int))) ($B59802 (Array Int (Array Int Int))) ($i54797 Int) ($m56799 Int) ($j55798 Int) ($C60803 (Array Int (Array Int Int))))
    (=> (and (not (< $j55798 $n57800)))
        ($main_sum42 $i54797 $j55798 $m56799 $n57800 $A58801 $B59802 $C60803 $i54797 $j55798 $m56799 $n57800 $A58801 $B59802 $C60803))))

; forwards $main_inv42
(assert
  (forall (($n57800 Int) ($A58801 (Array Int (Array Int Int))) ($B59802 (Array Int (Array Int Int))) ($i54797 Int) ($m56799 Int) ($j55798 Int) ($C60803 (Array Int (Array Int Int))))
    (=> (and (< $j55798 $n57800)
             ($main_inv42 $i54797 $j55798 $m56799 $n57800 $A58801 $B59802 $C60803))
        ($main_inv42 $i54797 (+ $j55798 1) $m56799 $n57800 $A58801 $B59802 (store $C60803 $i54797 (store (select $C60803 $i54797) $j55798 (- (select (select $A58801 $i54797) $j55798) (select (select $B59802 $i54797) $j55798))))))))

; backwards $main_sum42
(assert
  (forall (($A58808 (Array Int (Array Int Int))) ($n57800 Int) ($j55805 Int) ($n57807 Int) ($A58801 (Array Int (Array Int Int))) ($B59802 (Array Int (Array Int Int))) ($i54797 Int) ($m56799 Int) ($B59809 (Array Int (Array Int Int))) ($i54804 Int) ($m56806 Int) ($C60810 (Array Int (Array Int Int))) ($j55798 Int) ($C60803 (Array Int (Array Int Int))))
    (=> (and ($main_sum42 $i54797 (+ $j55798 1) $m56799 $n57800 $A58801 $B59802 (store $C60803 $i54797 (store (select $C60803 $i54797) $j55798 (- (select (select $A58801 $i54797) $j55798) (select (select $B59802 $i54797) $j55798)))) $i54804 $j55805 $m56806 $n57807 $A58808 $B59809 $C60810)
             (< $j55798 $n57800))
        ($main_sum42 $i54797 $j55798 $m56799 $n57800 $A58801 $B59802 $C60803 $i54804 $j55805 $m56806 $n57807 $A58808 $B59809 $C60810))))

; forwards $main_inv41
(assert
  (forall (($j55812 Int) ($n57793 Int) ($C60796 (Array Int (Array Int Int))) ($j55791 Int) ($A58815 (Array Int (Array Int Int))) ($B59816 (Array Int (Array Int Int))) ($m56792 Int) ($A58794 (Array Int (Array Int Int))) ($B59795 (Array Int (Array Int Int))) ($m56813 Int) ($i54811 Int) ($C60817 (Array Int (Array Int Int))) ($n57814 Int) ($i54790 Int))
    (=> (and ($main_sum42 $i54790 0 $m56792 $n57793 $A58794 $B59795 $C60796 $i54811 $j55812 $m56813 $n57814 $A58815 $B59816 $C60817)
             (< $i54790 $m56792)
             ($main_inv41 $i54790 $j55791 $m56792 $n57793 $A58794 $B59795 $C60796))
        ($main_inv41 (+ $i54811 1) $j55812 $m56813 $n57814 $A58815 $B59816 $C60817))))

; backwards $main_sum41
(assert
  (forall (($j55812 Int) ($n57793 Int) ($j55791 Int) ($n57821 Int) ($A58815 (Array Int (Array Int Int))) ($m56792 Int) ($B59795 (Array Int (Array Int Int))) ($m56813 Int) ($C60796 (Array Int (Array Int Int))) ($C60824 (Array Int (Array Int Int))) ($j55819 Int) ($B59816 (Array Int (Array Int Int))) ($i54811 Int) ($C60817 (Array Int (Array Int Int))) ($m56820 Int) ($n57814 Int) ($i54790 Int) ($A58794 (Array Int (Array Int Int))) ($A58822 (Array Int (Array Int Int))) ($i54818 Int) ($B59823 (Array Int (Array Int Int))))
    (=> (and ($main_sum41 (+ $i54811 1) $j55812 $m56813 $n57814 $A58815 $B59816 $C60817 $i54818 $j55819 $m56820 $n57821 $A58822 $B59823 $C60824)
             ($main_sum42 $i54790 0 $m56792 $n57793 $A58794 $B59795 $C60796 $i54811 $j55812 $m56813 $n57814 $A58815 $B59816 $C60817)
             (< $i54790 $m56792))
        ($main_sum41 $i54790 $j55791 $m56792 $n57793 $A58794 $B59795 $C60796 $i54818 $j55819 $m56820 $n57821 $A58822 $B59823 $C60824))))

; loop entry $main_inv43
(assert
  (forall (($i54783 Int) ($i54825 Int) ($B59744 (Array Int (Array Int Int))) ($B59788 (Array Int (Array Int Int))) ($n57742 Int) ($j55740 Int) ($n57828 Int) ($C60 (Array Int (Array Int Int))) ($m56 Int) ($m56827 Int) ($C60745 (Array Int (Array Int Int))) ($B59830 (Array Int (Array Int Int))) ($n57786 Int) ($B59 (Array Int (Array Int Int))) ($C60831 (Array Int (Array Int Int))) ($A58829 (Array Int (Array Int Int))) ($j55784 Int) ($n57 Int) ($j55826 Int) ($A58 (Array Int (Array Int Int))) ($m56741 Int) ($A58787 (Array Int (Array Int Int))) ($A58743 (Array Int (Array Int Int))) ($m56785 Int) ($i54739 Int) ($C60789 (Array Int (Array Int Int))))
    (=> (and ($main_sum41 0 0 $m56785 $n57786 $A58787 $B59788 $C60789 $i54825 $j55826 $m56827 $n57828 $A58829 $B59830 $C60831)
             ($main_sum39 0 0 $m56741 $n57742 $A58743 $B59744 $C60745 $i54783 $j55784 $m56785 $n57786 $A58787 $B59788 $C60789)
             ($main_sum37 0 0 $m56 $n57 $A58 $B59 $C60 $i54739 $j55740 $m56741 $n57742 $A58743 $B59744 $C60745)
             (= $n57 1500)
             (= $m56 1000))
        ($main_inv43 0 0 $m56827 $n57828 $A58829 $B59830 $C60831))))

; loop term $main_sum43
(assert
  (forall (($A58836 (Array Int (Array Int Int))) ($m56834 Int) ($B59837 (Array Int (Array Int Int))) ($C60838 (Array Int (Array Int Int))) ($n57835 Int) ($j55833 Int) ($i54832 Int))
    (=> (and (not (< $i54832 $m56834)))
        ($main_sum43 $i54832 $j55833 $m56834 $n57835 $A58836 $B59837 $C60838 $i54832 $j55833 $m56834 $n57835 $A58836 $B59837 $C60838))))

; loop entry $main_inv44
(assert
  (forall (($A58836 (Array Int (Array Int Int))) ($m56834 Int) ($B59837 (Array Int (Array Int Int))) ($C60838 (Array Int (Array Int Int))) ($n57835 Int) ($j55833 Int) ($i54832 Int))
    (=> (and (< $i54832 $m56834)
             ($main_inv43 $i54832 $j55833 $m56834 $n57835 $A58836 $B59837 $C60838))
        ($main_inv44 $i54832 0 $m56834 $n57835 $A58836 $B59837 $C60838))))

; loop term $main_sum44
(assert
  (forall (($A58843 (Array Int (Array Int Int))) ($j55840 Int) ($B59844 (Array Int (Array Int Int))) ($m56841 Int) ($n57842 Int) ($C60845 (Array Int (Array Int Int))) ($i54839 Int))
    (=> (and (not (< $j55840 $n57842)))
        ($main_sum44 $i54839 $j55840 $m56841 $n57842 $A58843 $B59844 $C60845 $i54839 $j55840 $m56841 $n57842 $A58843 $B59844 $C60845))))

; __VERIFIER_assert precondition
(assert
  (forall (($A58843 (Array Int (Array Int Int))) ($j55840 Int) ($B59844 (Array Int (Array Int Int))) ($m56841 Int) ($n57842 Int) ($C60845 (Array Int (Array Int Int))) ($i54839 Int))
    (=> (and (< $j55840 $n57842)
             ($main_inv44 $i54839 $j55840 $m56841 $n57842 $A58843 $B59844 $C60845))
        ($__VERIFIER_assert_pre (ite (= (select (select $C60845 $i54839) $j55840) (- (select (select $A58843 $i54839) $j55840) (select (select $B59844 $i54839) $j55840))) 1 0)))))

; forwards $main_inv44
(assert
  (forall (($A58843 (Array Int (Array Int Int))) ($j55840 Int) ($B59844 (Array Int (Array Int Int))) ($m56841 Int) ($n57842 Int) ($C60845 (Array Int (Array Int Int))) ($i54839 Int))
    (=> (and (__VERIFIER_assert (ite (= (select (select $C60845 $i54839) $j55840) (- (select (select $A58843 $i54839) $j55840) (select (select $B59844 $i54839) $j55840))) 1 0))
             (< $j55840 $n57842)
             ($main_inv44 $i54839 $j55840 $m56841 $n57842 $A58843 $B59844 $C60845))
        ($main_inv44 $i54839 (+ $j55840 1) $m56841 $n57842 $A58843 $B59844 $C60845))))

; backwards $main_sum44
(assert
  (forall (($C60852 (Array Int (Array Int Int))) ($A58843 (Array Int (Array Int Int))) ($j55840 Int) ($m56841 Int) ($n57849 Int) ($n57842 Int) ($C60845 (Array Int (Array Int Int))) ($j55847 Int) ($B59851 (Array Int (Array Int Int))) ($i54839 Int) ($A58850 (Array Int (Array Int Int))) ($B59844 (Array Int (Array Int Int))) ($m56848 Int) ($i54846 Int))
    (=> (and ($main_sum44 $i54839 (+ $j55840 1) $m56841 $n57842 $A58843 $B59844 $C60845 $i54846 $j55847 $m56848 $n57849 $A58850 $B59851 $C60852)
             (__VERIFIER_assert (ite (= (select (select $C60845 $i54839) $j55840) (- (select (select $A58843 $i54839) $j55840) (select (select $B59844 $i54839) $j55840))) 1 0))
             (< $j55840 $n57842))
        ($main_sum44 $i54839 $j55840 $m56841 $n57842 $A58843 $B59844 $C60845 $i54846 $j55847 $m56848 $n57849 $A58850 $B59851 $C60852))))

; forwards $main_inv43
(assert
  (forall (($A58836 (Array Int (Array Int Int))) ($n57856 Int) ($C60838 (Array Int (Array Int Int))) ($C60859 (Array Int (Array Int Int))) ($A58857 (Array Int (Array Int Int))) ($i54853 Int) ($j55833 Int) ($i54832 Int) ($m56834 Int) ($m56855 Int) ($B59858 (Array Int (Array Int Int))) ($B59837 (Array Int (Array Int Int))) ($n57835 Int) ($j55854 Int))
    (=> (and ($main_sum44 $i54832 0 $m56834 $n57835 $A58836 $B59837 $C60838 $i54853 $j55854 $m56855 $n57856 $A58857 $B59858 $C60859)
             (< $i54832 $m56834)
             ($main_inv43 $i54832 $j55833 $m56834 $n57835 $A58836 $B59837 $C60838))
        ($main_inv43 (+ $i54853 1) $j55854 $m56855 $n57856 $A58857 $B59858 $C60859))))

; backwards $main_sum43
(assert
  (forall (($n57856 Int) ($m56862 Int) ($C60838 (Array Int (Array Int Int))) ($C60859 (Array Int (Array Int Int))) ($A58857 (Array Int (Array Int Int))) ($i54853 Int) ($j55833 Int) ($B59865 (Array Int (Array Int Int))) ($A58836 (Array Int (Array Int Int))) ($i54860 Int) ($m56834 Int) ($m56855 Int) ($B59858 (Array Int (Array Int Int))) ($B59837 (Array Int (Array Int Int))) ($C60866 (Array Int (Array Int Int))) ($n57835 Int) ($j55854 Int) ($j55861 Int) ($A58864 (Array Int (Array Int Int))) ($n57863 Int) ($i54832 Int))
    (=> (and ($main_sum43 (+ $i54853 1) $j55854 $m56855 $n57856 $A58857 $B59858 $C60859 $i54860 $j55861 $m56862 $n57863 $A58864 $B59865 $C60866)
             ($main_sum44 $i54832 0 $m56834 $n57835 $A58836 $B59837 $C60838 $i54853 $j55854 $m56855 $n57856 $A58857 $B59858 $C60859)
             (< $i54832 $m56834))
        ($main_sum43 $i54832 $j55833 $m56834 $n57835 $A58836 $B59837 $C60838 $i54860 $j55861 $m56862 $n57863 $A58864 $B59865 $C60866))))

(check-sat)
