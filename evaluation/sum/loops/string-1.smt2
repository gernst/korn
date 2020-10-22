(set-logic HORN)

(declare-fun $main_if362 ((Array Int Int) (Array Int Int) Int Int Int Int Int (Array Int Int) (Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_if357 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum515 ((Array Int Int) (Array Int Int) Int Int Int Int Int (Array Int Int) (Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $main_sum513 ((Array Int Int) (Array Int Int) Int Int Int Int Int (Array Int Int) (Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $main_inv513 ((Array Int Int) (Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $main_sum514 ((Array Int Int) (Array Int Int) Int Int Int Int Int (Array Int Int) (Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $main_inv516 ((Array Int Int) (Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $main_sum517 ((Array Int Int) (Array Int Int) Int Int Int Int Int (Array Int Int) (Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_char_pre () Bool)
(declare-fun $main_if359 ((Array Int Int) (Array Int Int) Int Int Int Int Int (Array Int Int) (Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_if361 ((Array Int Int) (Array Int Int) Int Int Int Int Int (Array Int Int) (Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $main_sum516 ((Array Int Int) (Array Int Int) Int Int Int Int Int (Array Int Int) (Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv517 ((Array Int Int) (Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $main_inv515 ((Array Int Int) (Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $main_inv514 ((Array Int Int) (Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $main_if360 ((Array Int Int) (Array Int Int) Int Int Int Int Int (Array Int Int) (Array Int Int) Int Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun __VERIFIER_nondet_char (Int) Bool)
(declare-fun $__VERIFIER_assert_if358 (Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if357 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond9783 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if357 cond cond9783))
        (assume_abort_if_not cond9783))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond9784 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond9784))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if358 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond9785 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if358 cond cond9785))
        (__VERIFIER_assert cond9785))))

; loop entry $main_inv513
(assert
  (forall (($string_A726 (Array Int Int)) ($found732 Int) ($j729 Int) ($nc_B731 Int) ($nc_A730 Int) ($string_B727 (Array Int Int)))
    (=> (and (= $found732 0))
        ($main_inv513 $string_A726 $string_B727 0 $j729 $nc_A730 $nc_B731 $found732))))

; loop term $main_sum513
(assert
  (forall (($string_A7269786 (Array Int Int)) ($j7299789 Int) ($i7289788 Int) ($nc_B7319791 Int) ($nc_A7309790 Int) ($found7329792 Int) ($string_B7279787 (Array Int Int)))
    (=> (and (not (< $i7289788 5)))
        ($main_sum513 $string_A7269786 $string_B7279787 $i7289788 $j7299789 $nc_A7309790 $nc_B7319791 $found7329792 $string_A7269786 $string_B7279787 $i7289788 $j7299789 $nc_A7309790 $nc_B7319791 $found7329792))))

; forwards $main_inv513
(assert
  (forall (($string_A7269786 (Array Int Int)) ($j7299789 Int) ($char9793 Int) ($i7289788 Int) ($nc_B7319791 Int) ($nc_A7309790 Int) ($found7329792 Int) ($string_B7279787 (Array Int Int)))
    (=> (and (<= (- 128) $char9793)
             (<= $char9793 127)
             (< $i7289788 5)
             ($main_inv513 $string_A7269786 $string_B7279787 $i7289788 $j7299789 $nc_A7309790 $nc_B7319791 $found7329792))
        ($main_inv513 (store $string_A7269786 $i7289788 $char9793) $string_B7279787 (+ $i7289788 1) $j7299789 $nc_A7309790 $nc_B7319791 $found7329792))))

; backwards $main_sum513
(assert
  (forall (($string_A7269786 (Array Int Int)) ($j7299797 Int) ($j7299789 Int) ($i7289796 Int) ($nc_B7319799 Int) ($i7289788 Int) ($nc_B7319791 Int) ($nc_A7309790 Int) ($string_B7279795 (Array Int Int)) ($found7329792 Int) ($string_A7269794 (Array Int Int)) ($string_B7279787 (Array Int Int)) ($nc_A7309798 Int) ($char9793 Int) ($found7329800 Int))
    (=> (and ($main_sum513 (store $string_A7269786 $i7289788 $char9793) $string_B7279787 (+ $i7289788 1) $j7299789 $nc_A7309790 $nc_B7319791 $found7329792 $string_A7269794 $string_B7279795 $i7289796 $j7299797 $nc_A7309798 $nc_B7319799 $found7329800)
             (<= (- 128) $char9793)
             (<= $char9793 127)
             (< $i7289788 5))
        ($main_sum513 $string_A7269786 $string_B7279787 $i7289788 $j7299789 $nc_A7309790 $nc_B7319791 $found7329792 $string_A7269794 $string_B7279795 $i7289796 $j7299797 $nc_A7309798 $nc_B7319799 $found7329800))))

; if else
(assert
  (forall (($i7289803 Int) ($string_A726 (Array Int Int)) ($string_A7269801 (Array Int Int)) ($found732 Int) ($j729 Int) ($j7299804 Int) ($i728 Int) ($found7329807 Int) ($nc_A7309805 Int) ($nc_B731 Int) ($string_B7279802 (Array Int Int)) ($nc_B7319806 Int) ($nc_A730 Int) ($string_B727 (Array Int Int)))
    (=> (and (= (select $string_A7269801 (- 5 1)) 48)
             ($main_sum513 $string_A726 $string_B727 0 $j729 $nc_A730 $nc_B731 $found732 $string_A7269801 $string_B7279802 $i7289803 $j7299804 $nc_A7309805 $nc_B7319806 $found7329807)
             (= $found732 0))
        ($main_if359 $string_A726 $string_B727 $i728 $j729 $nc_A730 $nc_B731 $found732 $string_A7269801 $string_B7279802 $i7289803 $j7299804 $nc_A7309805 $nc_B7319806 $found7329807))))

; loop entry $main_inv514
(assert
  (forall (($found7329814 Int) ($nc_A7309812 Int) ($string_A726 (Array Int Int)) ($j7299811 Int) ($j729 Int) ($nc_B7319813 Int) ($string_A7269808 (Array Int Int)) ($nc_B731 Int) ($string_B7279809 (Array Int Int)) ($found732 Int) ($nc_A730 Int) ($string_B727 (Array Int Int)) ($i7289810 Int) ($i728 Int))
    (=> (and ($main_if359 $string_A726 $string_B727 $i728 $j729 $nc_A730 $nc_B731 $found732 $string_A7269808 $string_B7279809 $i7289810 $j7299811 $nc_A7309812 $nc_B7319813 $found7329814))
        ($main_inv514 $string_A7269808 $string_B7279809 0 $j7299811 $nc_A7309812 $nc_B7319813 $found7329814))))

; loop term $main_sum514
(assert
  (forall (($j7299818 Int) ($found7329821 Int) ($i7289817 Int) ($nc_B7319820 Int) ($nc_A7309819 Int) ($string_A7269815 (Array Int Int)) ($string_B7279816 (Array Int Int)))
    (=> (and (not (< $i7289817 5)))
        ($main_sum514 $string_A7269815 $string_B7279816 $i7289817 $j7299818 $nc_A7309819 $nc_B7319820 $found7329821 $string_A7269815 $string_B7279816 $i7289817 $j7299818 $nc_A7309819 $nc_B7319820 $found7329821))))

; forwards $main_inv514
(assert
  (forall (($j7299818 Int) ($found7329821 Int) ($i7289817 Int) ($nc_B7319820 Int) ($char9822 Int) ($nc_A7309819 Int) ($string_A7269815 (Array Int Int)) ($string_B7279816 (Array Int Int)))
    (=> (and (<= (- 128) $char9822)
             (<= $char9822 127)
             (< $i7289817 5)
             ($main_inv514 $string_A7269815 $string_B7279816 $i7289817 $j7299818 $nc_A7309819 $nc_B7319820 $found7329821))
        ($main_inv514 $string_A7269815 (store $string_B7279816 $i7289817 $char9822) (+ $i7289817 1) $j7299818 $nc_A7309819 $nc_B7319820 $found7329821))))

; backwards $main_sum514
(assert
  (forall (($j7299818 Int) ($nc_B7319828 Int) ($found7329821 Int) ($nc_B7319820 Int) ($char9822 Int) ($nc_A7309819 Int) ($string_A7269815 (Array Int Int)) ($j7299826 Int) ($string_A7269823 (Array Int Int)) ($i7289825 Int) ($found7329829 Int) ($nc_A7309827 Int) ($i7289817 Int) ($string_B7279816 (Array Int Int)) ($string_B7279824 (Array Int Int)))
    (=> (and ($main_sum514 $string_A7269815 (store $string_B7279816 $i7289817 $char9822) (+ $i7289817 1) $j7299818 $nc_A7309819 $nc_B7319820 $found7329821 $string_A7269823 $string_B7279824 $i7289825 $j7299826 $nc_A7309827 $nc_B7319828 $found7329829)
             (<= (- 128) $char9822)
             (<= $char9822 127)
             (< $i7289817 5))
        ($main_sum514 $string_A7269815 $string_B7279816 $i7289817 $j7299818 $nc_A7309819 $nc_B7319820 $found7329821 $string_A7269823 $string_B7279824 $i7289825 $j7299826 $nc_A7309827 $nc_B7319828 $found7329829))))

; if else
(assert
  (forall (($found7329814 Int) ($nc_A7309812 Int) ($nc_B7319835 Int) ($nc_A7309834 Int) ($string_A726 (Array Int Int)) ($string_B7279831 (Array Int Int)) ($i7289832 Int) ($j7299811 Int) ($j729 Int) ($nc_B7319813 Int) ($string_A7269808 (Array Int Int)) ($j7299833 Int) ($string_B7279809 (Array Int Int)) ($found732 Int) ($string_A7269830 (Array Int Int)) ($nc_A730 Int) ($string_B727 (Array Int Int)) ($i7289810 Int) ($i728 Int) ($nc_B731 Int) ($found7329836 Int))
    (=> (and (= (select $string_B7279831 (- 5 1)) 48)
             ($main_sum514 $string_A7269808 $string_B7279809 0 $j7299811 $nc_A7309812 $nc_B7319813 $found7329814 $string_A7269830 $string_B7279831 $i7289832 $j7299833 $nc_A7309834 $nc_B7319835 $found7329836)
             ($main_if359 $string_A726 $string_B727 $i728 $j729 $nc_A730 $nc_B731 $found732 $string_A7269808 $string_B7279809 $i7289810 $j7299811 $nc_A7309812 $nc_B7319813 $found7329814))
        ($main_if360 $string_A726 $string_B727 $i728 $j729 $nc_A730 $nc_B731 $found732 $string_A7269830 $string_B7279831 $i7289832 $j7299833 $nc_A7309834 $nc_B7319835 $found7329836))))

; loop entry $main_inv515
(assert
  (forall (($string_A7269837 (Array Int Int)) ($string_B7279838 (Array Int Int)) ($i7289839 Int) ($found7329843 Int) ($j729 Int) ($i728 Int) ($j7299840 Int) ($nc_B731 Int) ($nc_A7309841 Int) ($string_A726 (Array Int Int)) ($found732 Int) ($nc_B7319842 Int) ($nc_A730 Int) ($string_B727 (Array Int Int)))
    (=> (and ($main_if360 $string_A726 $string_B727 $i728 $j729 $nc_A730 $nc_B731 $found732 $string_A7269837 $string_B7279838 $i7289839 $j7299840 $nc_A7309841 $nc_B7319842 $found7329843))
        ($main_inv515 $string_A7269837 $string_B7279838 $i7289839 $j7299840 0 $nc_B7319842 $found7329843))))

; loop term $main_sum515
(assert
  (forall (($j7299847 Int) ($string_B7279845 (Array Int Int)) ($i7289846 Int) ($nc_A7309848 Int) ($found7329850 Int) ($nc_B7319849 Int) ($string_A7269844 (Array Int Int)))
    (=> (and (= (select $string_A7269844 $nc_A7309848) 48))
        ($main_sum515 $string_A7269844 $string_B7279845 $i7289846 $j7299847 $nc_A7309848 $nc_B7319849 $found7329850 $string_A7269844 $string_B7279845 $i7289846 $j7299847 $nc_A7309848 $nc_B7319849 $found7329850))))

; forwards $main_inv515
(assert
  (forall (($j7299847 Int) ($string_B7279845 (Array Int Int)) ($i7289846 Int) ($nc_A7309848 Int) ($found7329850 Int) ($nc_B7319849 Int) ($string_A7269844 (Array Int Int)))
    (=> (and (not (= (select $string_A7269844 $nc_A7309848) 48))
             ($main_inv515 $string_A7269844 $string_B7279845 $i7289846 $j7299847 $nc_A7309848 $nc_B7319849 $found7329850))
        ($main_inv515 $string_A7269844 $string_B7279845 $i7289846 $j7299847 (+ $nc_A7309848 1) $nc_B7319849 $found7329850))))

; backwards $main_sum515
(assert
  (forall (($string_A7269851 (Array Int Int)) ($string_B7279852 (Array Int Int)) ($j7299847 Int) ($j7299854 Int) ($nc_B7319856 Int) ($string_B7279845 (Array Int Int)) ($i7289846 Int) ($found7329857 Int) ($nc_A7309848 Int) ($found7329850 Int) ($nc_B7319849 Int) ($string_A7269844 (Array Int Int)) ($nc_A7309855 Int) ($i7289853 Int))
    (=> (and ($main_sum515 $string_A7269844 $string_B7279845 $i7289846 $j7299847 (+ $nc_A7309848 1) $nc_B7319849 $found7329850 $string_A7269851 $string_B7279852 $i7289853 $j7299854 $nc_A7309855 $nc_B7319856 $found7329857)
             (not (= (select $string_A7269844 $nc_A7309848) 48)))
        ($main_sum515 $string_A7269844 $string_B7279845 $i7289846 $j7299847 $nc_A7309848 $nc_B7319849 $found7329850 $string_A7269851 $string_B7279852 $i7289853 $j7299854 $nc_A7309855 $nc_B7319856 $found7329857))))

; loop entry $main_inv516
(assert
  (forall (($nc_A7309862 Int) ($string_A7269837 (Array Int Int)) ($i7289839 Int) ($found7329843 Int) ($j729 Int) ($string_A7269858 (Array Int Int)) ($i728 Int) ($found7329864 Int) ($j7299840 Int) ($string_B7279838 (Array Int Int)) ($i7289860 Int) ($nc_A7309841 Int) ($string_A726 (Array Int Int)) ($nc_B7319863 Int) ($j7299861 Int) ($found732 Int) ($nc_B7319842 Int) ($nc_A730 Int) ($string_B727 (Array Int Int)) ($nc_B731 Int) ($string_B7279859 (Array Int Int)))
    (=> (and ($main_sum515 $string_A7269837 $string_B7279838 $i7289839 $j7299840 0 $nc_B7319842 $found7329843 $string_A7269858 $string_B7279859 $i7289860 $j7299861 $nc_A7309862 $nc_B7319863 $found7329864)
             ($main_if360 $string_A726 $string_B727 $i728 $j729 $nc_A730 $nc_B731 $found732 $string_A7269837 $string_B7279838 $i7289839 $j7299840 $nc_A7309841 $nc_B7319842 $found7329843))
        ($main_inv516 $string_A7269858 $string_B7279859 $i7289860 $j7299861 $nc_A7309862 0 $found7329864))))

; loop term $main_sum516
(assert
  (forall (($string_B7279866 (Array Int Int)) ($found7329871 Int) ($nc_B7319870 Int) ($i7289867 Int) ($nc_A7309869 Int) ($string_A7269865 (Array Int Int)) ($j7299868 Int))
    (=> (and (= (select $string_B7279866 $nc_B7319870) 48))
        ($main_sum516 $string_A7269865 $string_B7279866 $i7289867 $j7299868 $nc_A7309869 $nc_B7319870 $found7329871 $string_A7269865 $string_B7279866 $i7289867 $j7299868 $nc_A7309869 $nc_B7319870 $found7329871))))

; forwards $main_inv516
(assert
  (forall (($string_B7279866 (Array Int Int)) ($found7329871 Int) ($nc_B7319870 Int) ($i7289867 Int) ($nc_A7309869 Int) ($string_A7269865 (Array Int Int)) ($j7299868 Int))
    (=> (and (not (= (select $string_B7279866 $nc_B7319870) 48))
             ($main_inv516 $string_A7269865 $string_B7279866 $i7289867 $j7299868 $nc_A7309869 $nc_B7319870 $found7329871))
        ($main_inv516 $string_A7269865 $string_B7279866 $i7289867 $j7299868 $nc_A7309869 (+ $nc_B7319870 1) $found7329871))))

; backwards $main_sum516
(assert
  (forall (($i7289874 Int) ($found7329871 Int) ($nc_B7319870 Int) ($i7289867 Int) ($nc_A7309869 Int) ($string_A7269872 (Array Int Int)) ($nc_B7319877 Int) ($string_B7279873 (Array Int Int)) ($string_B7279866 (Array Int Int)) ($found7329878 Int) ($string_A7269865 (Array Int Int)) ($j7299875 Int) ($j7299868 Int) ($nc_A7309876 Int))
    (=> (and ($main_sum516 $string_A7269865 $string_B7279866 $i7289867 $j7299868 $nc_A7309869 (+ $nc_B7319870 1) $found7329871 $string_A7269872 $string_B7279873 $i7289874 $j7299875 $nc_A7309876 $nc_B7319877 $found7329878)
             (not (= (select $string_B7279866 $nc_B7319870) 48)))
        ($main_sum516 $string_A7269865 $string_B7279866 $i7289867 $j7299868 $nc_A7309869 $nc_B7319870 $found7329871 $string_A7269872 $string_B7279873 $i7289874 $j7299875 $nc_A7309876 $nc_B7319877 $found7329878))))

; if else
(assert
  (forall (($nc_A7309862 Int) ($found7329885 Int) ($string_A7269837 (Array Int Int)) ($i7289881 Int) ($i7289839 Int) ($j7299882 Int) ($found7329843 Int) ($i728 Int) ($found7329864 Int) ($j7299840 Int) ($string_B7279838 (Array Int Int)) ($i7289860 Int) ($string_B7279880 (Array Int Int)) ($nc_B7319884 Int) ($nc_A7309841 Int) ($string_A726 (Array Int Int)) ($nc_B7319863 Int) ($j7299861 Int) ($found732 Int) ($nc_B7319842 Int) ($j729 Int) ($string_A7269879 (Array Int Int)) ($nc_A7309883 Int) ($string_A7269858 (Array Int Int)) ($nc_A730 Int) ($string_B727 (Array Int Int)) ($nc_B731 Int) ($string_B7279859 (Array Int Int)))
    (=> (and (>= $nc_B7319884 $nc_A7309883)
             ($main_sum516 $string_A7269858 $string_B7279859 $i7289860 $j7299861 $nc_A7309862 0 $found7329864 $string_A7269879 $string_B7279880 $i7289881 $j7299882 $nc_A7309883 $nc_B7319884 $found7329885)
             ($main_sum515 $string_A7269837 $string_B7279838 $i7289839 $j7299840 0 $nc_B7319842 $found7329843 $string_A7269858 $string_B7279859 $i7289860 $j7299861 $nc_A7309862 $nc_B7319863 $found7329864)
             ($main_if360 $string_A726 $string_B727 $i728 $j729 $nc_A730 $nc_B731 $found732 $string_A7269837 $string_B7279838 $i7289839 $j7299840 $nc_A7309841 $nc_B7319842 $found7329843))
        ($main_if361 $string_A726 $string_B727 $i728 $j729 $nc_A730 $nc_B731 $found732 $string_A7269879 $string_B7279880 $i7289881 $j7299882 $nc_A7309883 $nc_B7319884 $found7329885))))

; loop entry $main_inv517
(assert
  (forall (($nc_B7319891 Int) ($i7289888 Int) ($string_A726 (Array Int Int)) ($found732 Int) ($string_B7279887 (Array Int Int)) ($i728 Int) ($string_A7269886 (Array Int Int)) ($nc_B731 Int) ($found7329892 Int) ($nc_A7309890 Int) ($j729 Int) ($j7299889 Int) ($nc_A730 Int) ($string_B727 (Array Int Int)))
    (=> (and ($main_if361 $string_A726 $string_B727 $i728 $j729 $nc_A730 $nc_B731 $found732 $string_A7269886 $string_B7279887 $i7289888 $j7299889 $nc_A7309890 $nc_B7319891 $found7329892))
        ($main_inv517 $string_A7269886 $string_B7279887 0 0 $nc_A7309890 $nc_B7319891 $found7329892))))

; loop term $main_sum517
(assert
  (forall (($found7329899 Int) ($i7289895 Int) ($nc_A7309897 Int) ($string_A7269893 (Array Int Int)) ($nc_B7319898 Int) ($string_B7279894 (Array Int Int)) ($j7299896 Int))
    (=> (and (not (and (< $i7289895 $nc_A7309897) (< $j7299896 $nc_B7319898))))
        ($main_sum517 $string_A7269893 $string_B7279894 $i7289895 $j7299896 $nc_A7309897 $nc_B7319898 $found7329899 $string_A7269893 $string_B7279894 $i7289895 $j7299896 $nc_A7309897 $nc_B7319898 $found7329899))))

; if then
(assert
  (forall (($found7329899 Int) ($i7289895 Int) ($nc_A7309897 Int) ($string_A7269893 (Array Int Int)) ($nc_B7319898 Int) ($string_B7279894 (Array Int Int)) ($j7299896 Int))
    (=> (and (= (select $string_A7269893 $i7289895) (select $string_B7279894 $j7299896))
             (< $i7289895 $nc_A7309897)
             (< $j7299896 $nc_B7319898)
             ($main_inv517 $string_A7269893 $string_B7279894 $i7289895 $j7299896 $nc_A7309897 $nc_B7319898 $found7329899))
        ($main_if362 $string_A7269893 $string_B7279894 $i7289895 $j7299896 $nc_A7309897 $nc_B7319898 $found7329899 $string_A7269893 $string_B7279894 (+ $i7289895 1) (+ $j7299896 1) $nc_A7309897 $nc_B7319898 $found7329899))))

; if else
(assert
  (forall (($found7329899 Int) ($i7289895 Int) ($nc_A7309897 Int) ($string_A7269893 (Array Int Int)) ($nc_B7319898 Int) ($string_B7279894 (Array Int Int)) ($j7299896 Int))
    (=> (and (not (= (select $string_A7269893 $i7289895) (select $string_B7279894 $j7299896)))
             (< $i7289895 $nc_A7309897)
             (< $j7299896 $nc_B7319898)
             ($main_inv517 $string_A7269893 $string_B7279894 $i7289895 $j7299896 $nc_A7309897 $nc_B7319898 $found7329899))
        ($main_if362 $string_A7269893 $string_B7279894 $i7289895 $j7299896 $nc_A7309897 $nc_B7319898 $found7329899 $string_A7269893 $string_B7279894 (+ (- $i7289895 $j7299896) 1) 0 $nc_A7309897 $nc_B7319898 $found7329899))))

; forwards $main_inv517
(assert
  (forall (($nc_B7319905 Int) ($found7329899 Int) ($i7289895 Int) ($string_B7279901 (Array Int Int)) ($string_A7269900 (Array Int Int)) ($nc_A7309904 Int) ($nc_A7309897 Int) ($j7299903 Int) ($i7289902 Int) ($string_A7269893 (Array Int Int)) ($found7329906 Int) ($nc_B7319898 Int) ($string_B7279894 (Array Int Int)) ($j7299896 Int))
    (=> (and ($main_if362 $string_A7269893 $string_B7279894 $i7289895 $j7299896 $nc_A7309897 $nc_B7319898 $found7329899 $string_A7269900 $string_B7279901 $i7289902 $j7299903 $nc_A7309904 $nc_B7319905 $found7329906))
        ($main_inv517 $string_A7269900 $string_B7279901 $i7289902 $j7299903 $nc_A7309904 $nc_B7319905 $found7329906))))

; backwards $main_sum517
(assert
  (forall (($found7329913 Int) ($found7329899 Int) ($nc_B7319912 Int) ($i7289895 Int) ($string_B7279901 (Array Int Int)) ($j7299910 Int) ($nc_A7309897 Int) ($nc_B7319905 Int) ($string_A7269907 (Array Int Int)) ($nc_A7309911 Int) ($string_A7269900 (Array Int Int)) ($nc_A7309904 Int) ($string_B7279908 (Array Int Int)) ($i7289902 Int) ($string_A7269893 (Array Int Int)) ($found7329906 Int) ($nc_B7319898 Int) ($j7299903 Int) ($i7289909 Int) ($string_B7279894 (Array Int Int)) ($j7299896 Int))
    (=> (and ($main_sum517 $string_A7269900 $string_B7279901 $i7289902 $j7299903 $nc_A7309904 $nc_B7319905 $found7329906 $string_A7269907 $string_B7279908 $i7289909 $j7299910 $nc_A7309911 $nc_B7319912 $found7329913)
             ($main_if362 $string_A7269893 $string_B7279894 $i7289895 $j7299896 $nc_A7309897 $nc_B7319898 $found7329899 $string_A7269900 $string_B7279901 $i7289902 $j7299903 $nc_A7309904 $nc_B7319905 $found7329906))
        ($main_sum517 $string_A7269893 $string_B7279894 $i7289895 $j7299896 $nc_A7309897 $nc_B7319898 $found7329899 $string_A7269907 $string_B7279908 $i7289909 $j7299910 $nc_A7309911 $nc_B7319912 $found7329913))))

; __VERIFIER_assert precondition
(assert
  (forall (($nc_B7319891 Int) ($nc_B7319919 Int) ($i7289888 Int) ($string_A726 (Array Int Int)) ($found732 Int) ($j7299917 Int) ($string_B7279887 (Array Int Int)) ($i728 Int) ($nc_A7309918 Int) ($string_A7269886 (Array Int Int)) ($string_A7269914 (Array Int Int)) ($found7329892 Int) ($nc_A7309890 Int) ($j729 Int) ($j7299889 Int) ($found7329920 Int) ($nc_A730 Int) ($i7289916 Int) ($string_B727 (Array Int Int)) ($nc_B731 Int) ($string_B7279915 (Array Int Int)))
    (=> (and ($main_sum517 $string_A7269886 $string_B7279887 0 0 $nc_A7309890 $nc_B7319891 $found7329892 $string_A7269914 $string_B7279915 $i7289916 $j7299917 $nc_A7309918 $nc_B7319919 $found7329920)
             ($main_if361 $string_A726 $string_B727 $i728 $j729 $nc_A730 $nc_B731 $found732 $string_A7269886 $string_B7279887 $i7289888 $j7299889 $nc_A7309890 $nc_B7319891 $found7329892))
        ($__VERIFIER_assert_pre (ite (or (= (ite (> $j7299917 (- $nc_B7319919 1)) 1 0) 0) (= (ite (> $j7299917 (- $nc_B7319919 1)) 1 0) 1)) 1 0)))))

(check-sat)
