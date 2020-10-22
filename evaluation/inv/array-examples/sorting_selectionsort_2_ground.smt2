(set-logic HORN)

(declare-fun $main_if26 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum53 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv57 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv59 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv55 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv56 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum60 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if25 (Int) Bool)
(declare-fun $main_inv54 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum56 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_if27 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv60 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum57 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv58 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum59 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum55 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv53 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum54 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum58 ((Array Int Int) Int Int Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond754 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond754))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if25 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond755 Int))
    (=> (and ($__VERIFIER_assert_if25 cond755))
        (__VERIFIER_assert cond755))))

; loop entry $main_inv53
(assert
  (forall (($k116 Int) ($x114 Int) ($s117 Int) ($i113 Int) ($a112 (Array Int Int)) ($tmp118 Int) ($y115 Int))
    (=> (and (= $i113 0))
        ($main_inv53 $a112 0 $x114 $y115 $k116 $s117 $tmp118))))

; loop term $main_sum53
(assert
  (forall (($i113757 Int) ($k116760 Int) ($y115759 Int) ($x114758 Int) ($tmp118762 Int) ($a112756 (Array Int Int)) ($s117761 Int))
    (=> (and (not (< $i113757 100000))
             ($main_inv53 $a112756 $i113757 $x114758 $y115759 $k116760 $s117761 $tmp118762))
        ($main_sum53 $a112756 $i113757 $x114758 $y115759 $k116760 $s117761 $tmp118762))))

; forwards $main_inv53
(assert
  (forall (($int763 Int) ($i113757 Int) ($k116760 Int) ($y115759 Int) ($x114758 Int) ($tmp118762 Int) ($a112756 (Array Int Int)) ($s117761 Int))
    (=> (and (<= (- 2147483648) $int763)
             (<= $int763 2147483647)
             (< $i113757 100000)
             ($main_inv53 $a112756 $i113757 $x114758 $y115759 $k116760 $s117761 $tmp118762))
        ($main_inv53 (store $a112756 $i113757 $int763) (+ $i113757 1) $x114758 $y115759 $k116760 $s117761 $tmp118762))))

; loop entry $main_inv54
(assert
  (forall (($s117769 Int) ($i113765 Int) ($y115767 Int) ($k116768 Int) ($tmp118770 Int) ($a112764 (Array Int Int)) ($x114766 Int))
    (=> (and ($main_sum53 $a112764 $i113765 $x114766 $y115767 $k116768 $s117769 $tmp118770))
        ($main_inv54 $a112764 0 $x114766 $y115767 $k116768 $s117769 $tmp118770))))

; loop term $main_sum54
(assert
  (forall (($a112771 (Array Int Int)) ($x114773 Int) ($y115774 Int) ($k116775 Int) ($i113772 Int) ($tmp118777 Int) ($s117776 Int))
    (=> (and (not (< $i113772 100000))
             ($main_inv54 $a112771 $i113772 $x114773 $y115774 $k116775 $s117776 $tmp118777))
        ($main_sum54 $a112771 $i113772 $x114773 $y115774 $k116775 $s117776 $tmp118777))))

; loop entry $main_inv55
(assert
  (forall (($a112771 (Array Int Int)) ($x114773 Int) ($y115774 Int) ($k116775 Int) ($i113772 Int) ($tmp118777 Int) ($s117776 Int))
    (=> (and (= $s117776 (+ $i113772 1))
             (= $k116775 $i113772)
             (< $i113772 100000)
             ($main_inv54 $a112771 $i113772 $x114773 $y115774 $k116775 $s117776 $tmp118777))
        ($main_inv55 $a112771 $i113772 $x114773 $y115774 $k116775 $s117776 $tmp118777))))

; loop term $main_sum55
(assert
  (forall (($i113779 Int) ($k116782 Int) ($tmp118784 Int) ($a112778 (Array Int Int)) ($s117783 Int) ($x114780 Int) ($y115781 Int))
    (=> (and (not (< $k116782 100000))
             ($main_inv55 $a112778 $i113779 $x114780 $y115781 $k116782 $s117783 $tmp118784))
        ($main_sum55 $a112778 $i113779 $x114780 $y115781 $k116782 $s117783 $tmp118784))))

; if then
(assert
  (forall (($i113779 Int) ($k116782 Int) ($tmp118784 Int) ($a112778 (Array Int Int)) ($s117783 Int) ($x114780 Int) ($y115781 Int))
    (=> (and (> (select $a112778 $k116782) (select $a112778 $s117783))
             (< $k116782 100000)
             ($main_inv55 $a112778 $i113779 $x114780 $y115781 $k116782 $s117783 $tmp118784))
        ($main_if26 $a112778 $i113779 $x114780 $y115781 $k116782 $k116782 $tmp118784))))

; if else
(assert
  (forall (($i113779 Int) ($k116782 Int) ($tmp118784 Int) ($a112778 (Array Int Int)) ($s117783 Int) ($x114780 Int) ($y115781 Int))
    (=> (and (not (> (select $a112778 $k116782) (select $a112778 $s117783)))
             (< $k116782 100000)
             ($main_inv55 $a112778 $i113779 $x114780 $y115781 $k116782 $s117783 $tmp118784))
        ($main_if26 $a112778 $i113779 $x114780 $y115781 $k116782 $s117783 $tmp118784))))

; forwards $main_inv55
(assert
  (forall (($tmp118791 Int) ($a112785 (Array Int Int)) ($i113786 Int) ($y115788 Int) ($x114787 Int) ($s117790 Int) ($k116789 Int))
    (=> (and ($main_if26 $a112785 $i113786 $x114787 $y115788 $k116789 $s117790 $tmp118791))
        ($main_inv55 $a112785 $i113786 $x114787 $y115788 (+ $k116789 1) $s117790 $tmp118791))))

; if then
(assert
  (forall (($x114794 Int) ($a112792 (Array Int Int)) ($k116796 Int) ($y115795 Int) ($i113793 Int) ($tmp118798 Int) ($s117797 Int))
    (=> (and (= $tmp118798 (select $a112792 $s117797))
             (not (= $s117797 $i113793))
             ($main_sum55 $a112792 $i113793 $x114794 $y115795 $k116796 $s117797 $tmp118798))
        ($main_if27 (store (store $a112792 $s117797 (select $a112792 $i113793)) $i113793 $tmp118798) $i113793 $x114794 $y115795 $k116796 $s117797 $tmp118798))))

; if else
(assert
  (forall (($x114794 Int) ($a112792 (Array Int Int)) ($k116796 Int) ($y115795 Int) ($i113793 Int) ($tmp118798 Int) ($s117797 Int))
    (=> (and (= $s117797 $i113793)
             ($main_sum55 $a112792 $i113793 $x114794 $y115795 $k116796 $s117797 $tmp118798))
        ($main_if27 $a112792 $i113793 $x114794 $y115795 $k116796 $s117797 $tmp118798))))

; loop entry $main_inv56
(assert
  (forall (($k116803 Int) ($x114801 Int) ($i113800 Int) ($y115802 Int) ($tmp118805 Int) ($a112799 (Array Int Int)) ($s117804 Int))
    (=> (and ($main_if27 $a112799 $i113800 $x114801 $y115802 $k116803 $s117804 $tmp118805))
        ($main_inv56 $a112799 $i113800 0 $y115802 $k116803 $s117804 $tmp118805))))

; loop term $main_sum56
(assert
  (forall (($y115809 Int) ($k116810 Int) ($tmp118812 Int) ($x114808 Int) ($i113807 Int) ($a112806 (Array Int Int)) ($s117811 Int))
    (=> (and (not (< $x114808 $i113807))
             ($main_inv56 $a112806 $i113807 $x114808 $y115809 $k116810 $s117811 $tmp118812))
        ($main_sum56 $a112806 $i113807 $x114808 $y115809 $k116810 $s117811 $tmp118812))))

; loop entry $main_inv57
(assert
  (forall (($y115809 Int) ($k116810 Int) ($tmp118812 Int) ($x114808 Int) ($i113807 Int) ($a112806 (Array Int Int)) ($s117811 Int))
    (=> (and (< $x114808 $i113807)
             ($main_inv56 $a112806 $i113807 $x114808 $y115809 $k116810 $s117811 $tmp118812))
        ($main_inv57 $a112806 $i113807 $x114808 (+ $x114808 1) $k116810 $s117811 $tmp118812))))

; loop term $main_sum57
(assert
  (forall (($s117818 Int) ($x114815 Int) ($tmp118819 Int) ($k116817 Int) ($a112813 (Array Int Int)) ($y115816 Int) ($i113814 Int))
    (=> (and (not (< $y115816 $i113814))
             ($main_inv57 $a112813 $i113814 $x114815 $y115816 $k116817 $s117818 $tmp118819))
        ($main_sum57 $a112813 $i113814 $x114815 $y115816 $k116817 $s117818 $tmp118819))))

; __VERIFIER_assert precondition
(assert
  (forall (($s117818 Int) ($x114815 Int) ($tmp118819 Int) ($k116817 Int) ($a112813 (Array Int Int)) ($y115816 Int) ($i113814 Int))
    (=> (and (< $y115816 $i113814)
             ($main_inv57 $a112813 $i113814 $x114815 $y115816 $k116817 $s117818 $tmp118819))
        ($__VERIFIER_assert_pre (ite (<= (select $a112813 $x114815) (select $a112813 $y115816)) 1 0)))))

; forwards $main_inv57
(assert
  (forall (($s117818 Int) ($x114815 Int) ($tmp118819 Int) ($k116817 Int) ($a112813 (Array Int Int)) ($y115816 Int) ($i113814 Int))
    (=> (and (__VERIFIER_assert (ite (<= (select $a112813 $x114815) (select $a112813 $y115816)) 1 0))
             (< $y115816 $i113814)
             ($main_inv57 $a112813 $i113814 $x114815 $y115816 $k116817 $s117818 $tmp118819))
        ($main_inv57 $a112813 $i113814 $x114815 (+ $y115816 1) $k116817 $s117818 $tmp118819))))

; forwards $main_inv56
(assert
  (forall (($tmp118826 Int) ($s117825 Int) ($x114822 Int) ($i113821 Int) ($a112820 (Array Int Int)) ($y115823 Int) ($k116824 Int))
    (=> (and ($main_sum57 $a112820 $i113821 $x114822 $y115823 $k116824 $s117825 $tmp118826))
        ($main_inv56 $a112820 $i113821 (+ $x114822 1) $y115823 $k116824 $s117825 $tmp118826))))

; loop entry $main_inv58
(assert
  (forall (($y115830 Int) ($i113828 Int) ($x114829 Int) ($k116831 Int) ($a112827 (Array Int Int)) ($tmp118833 Int) ($s117832 Int))
    (=> (and ($main_sum56 $a112827 $i113828 $x114829 $y115830 $k116831 $s117832 $tmp118833))
        ($main_inv58 $a112827 $i113828 (+ $i113828 1) $y115830 $k116831 $s117832 $tmp118833))))

; loop term $main_sum58
(assert
  (forall (($s117839 Int) ($y115837 Int) ($k116838 Int) ($i113835 Int) ($x114836 Int) ($a112834 (Array Int Int)) ($tmp118840 Int))
    (=> (and (not (< $x114836 100000))
             ($main_inv58 $a112834 $i113835 $x114836 $y115837 $k116838 $s117839 $tmp118840))
        ($main_sum58 $a112834 $i113835 $x114836 $y115837 $k116838 $s117839 $tmp118840))))

; __VERIFIER_assert precondition
(assert
  (forall (($s117839 Int) ($y115837 Int) ($k116838 Int) ($i113835 Int) ($x114836 Int) ($a112834 (Array Int Int)) ($tmp118840 Int))
    (=> (and (< $x114836 100000)
             ($main_inv58 $a112834 $i113835 $x114836 $y115837 $k116838 $s117839 $tmp118840))
        ($__VERIFIER_assert_pre (ite (>= (select $a112834 $x114836) (select $a112834 $i113835)) 1 0)))))

; forwards $main_inv58
(assert
  (forall (($s117839 Int) ($y115837 Int) ($k116838 Int) ($i113835 Int) ($x114836 Int) ($a112834 (Array Int Int)) ($tmp118840 Int))
    (=> (and (__VERIFIER_assert (ite (>= (select $a112834 $x114836) (select $a112834 $i113835)) 1 0))
             (< $x114836 100000)
             ($main_inv58 $a112834 $i113835 $x114836 $y115837 $k116838 $s117839 $tmp118840))
        ($main_inv58 $a112834 $i113835 (+ $x114836 1) $y115837 $k116838 $s117839 $tmp118840))))

; forwards $main_inv54
(assert
  (forall (($k116845 Int) ($a112841 (Array Int Int)) ($s117846 Int) ($i113842 Int) ($y115844 Int) ($tmp118847 Int) ($x114843 Int))
    (=> (and ($main_sum58 $a112841 $i113842 $x114843 $y115844 $k116845 $s117846 $tmp118847))
        ($main_inv54 $a112841 (+ $i113842 1) $x114843 $y115844 $k116845 $s117846 $tmp118847))))

; loop entry $main_inv59
(assert
  (forall (($i113849 Int) ($tmp118854 Int) ($x114850 Int) ($k116852 Int) ($a112848 (Array Int Int)) ($s117853 Int) ($y115851 Int))
    (=> (and ($main_sum54 $a112848 $i113849 $x114850 $y115851 $k116852 $s117853 $tmp118854))
        ($main_inv59 $a112848 $i113849 0 $y115851 $k116852 $s117853 $tmp118854))))

; loop term $main_sum59
(assert
  (forall (($k116859 Int) ($i113856 Int) ($a112855 (Array Int Int)) ($s117860 Int) ($x114857 Int) ($tmp118861 Int) ($y115858 Int))
    (=> (and (not (< $x114857 100000))
             ($main_inv59 $a112855 $i113856 $x114857 $y115858 $k116859 $s117860 $tmp118861))
        ($main_sum59 $a112855 $i113856 $x114857 $y115858 $k116859 $s117860 $tmp118861))))

; loop entry $main_inv60
(assert
  (forall (($k116859 Int) ($i113856 Int) ($a112855 (Array Int Int)) ($s117860 Int) ($x114857 Int) ($tmp118861 Int) ($y115858 Int))
    (=> (and (< $x114857 100000)
             ($main_inv59 $a112855 $i113856 $x114857 $y115858 $k116859 $s117860 $tmp118861))
        ($main_inv60 $a112855 $i113856 $x114857 (+ $x114857 1) $k116859 $s117860 $tmp118861))))

; loop term $main_sum60
(assert
  (forall (($i113863 Int) ($k116866 Int) ($tmp118868 Int) ($a112862 (Array Int Int)) ($x114864 Int) ($s117867 Int) ($y115865 Int))
    (=> (and (not (< $y115865 100000))
             ($main_inv60 $a112862 $i113863 $x114864 $y115865 $k116866 $s117867 $tmp118868))
        ($main_sum60 $a112862 $i113863 $x114864 $y115865 $k116866 $s117867 $tmp118868))))

; __VERIFIER_assert precondition
(assert
  (forall (($i113863 Int) ($k116866 Int) ($tmp118868 Int) ($a112862 (Array Int Int)) ($x114864 Int) ($s117867 Int) ($y115865 Int))
    (=> (and (< $y115865 100000)
             ($main_inv60 $a112862 $i113863 $x114864 $y115865 $k116866 $s117867 $tmp118868))
        ($__VERIFIER_assert_pre (ite (<= (select $a112862 $x114864) (select $a112862 $y115865)) 1 0)))))

; forwards $main_inv60
(assert
  (forall (($i113863 Int) ($k116866 Int) ($tmp118868 Int) ($a112862 (Array Int Int)) ($x114864 Int) ($s117867 Int) ($y115865 Int))
    (=> (and (__VERIFIER_assert (ite (<= (select $a112862 $x114864) (select $a112862 $y115865)) 1 0))
             (< $y115865 100000)
             ($main_inv60 $a112862 $i113863 $x114864 $y115865 $k116866 $s117867 $tmp118868))
        ($main_inv60 $a112862 $i113863 $x114864 (+ $y115865 1) $k116866 $s117867 $tmp118868))))

; forwards $main_inv59
(assert
  (forall (($s117874 Int) ($a112869 (Array Int Int)) ($y115872 Int) ($tmp118875 Int) ($k116873 Int) ($i113870 Int) ($x114871 Int))
    (=> (and ($main_sum60 $a112869 $i113870 $x114871 $y115872 $k116873 $s117874 $tmp118875))
        ($main_inv59 $a112869 $i113870 (+ $x114871 1) $y115872 $k116873 $s117874 $tmp118875))))

(check-sat)
