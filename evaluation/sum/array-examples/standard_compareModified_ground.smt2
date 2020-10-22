(set-logic HORN)

(declare-fun $main_inv85 ((Array Int Int) (Array Int Int) Int (Array Int Int) Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum85 ((Array Int Int) (Array Int Int) Int (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum86 ((Array Int Int) (Array Int Int) Int (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv87 ((Array Int Int) (Array Int Int) Int (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if40 (Int Int) Bool)
(declare-fun $main_sum87 ((Array Int Int) (Array Int Int) Int (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv86 ((Array Int Int) (Array Int Int) Int (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum88 ((Array Int Int) (Array Int Int) Int (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_if41 ((Array Int Int) (Array Int Int) Int (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int (Array Int Int) Int Int Int) Bool)
(declare-fun $main_if42 ((Array Int Int) (Array Int Int) Int (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv88 ((Array Int Int) (Array Int Int) Int (Array Int Int) Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond1833 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond1833))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if40 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond1834 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if40 cond cond1834))
        (__VERIFIER_assert cond1834))))

; loop entry $main_inv85
(assert
  (forall (($rv151 Int) ($x153 Int) ($c150 (Array Int Int)) ($i149 Int) ($a147 (Array Int Int)) ($j152 Int) ($b148 (Array Int Int)))
    (=> (and (= $j152 0)
             (= $rv151 1)
             (= $i149 0))
        ($main_inv85 $a147 $b148 $i149 $c150 $rv151 $j152 $x153))))

; loop term $main_sum85
(assert
  (forall (($a1471835 (Array Int Int)) ($c1501838 (Array Int Int)) ($i1491837 Int) ($b1481836 (Array Int Int)) ($x1531841 Int) ($rv1511839 Int) ($j1521840 Int))
    (=> (and (not (< $j1521840 100000)))
        ($main_sum85 $a1471835 $b1481836 $i1491837 $c1501838 $rv1511839 $j1521840 $x1531841 $a1471835 $b1481836 $i1491837 $c1501838 $rv1511839 $j1521840 $x1531841))))

; forwards $main_inv85
(assert
  (forall (($a1471835 (Array Int Int)) ($c1501838 (Array Int Int)) ($i1491837 Int) ($int1842 Int) ($b1481836 (Array Int Int)) ($x1531841 Int) ($int1843 Int) ($rv1511839 Int) ($j1521840 Int))
    (=> (and (<= (- 2147483648) $int1843)
             (<= $int1843 2147483647)
             (<= (- 2147483648) $int1842)
             (<= $int1842 2147483647)
             (< $j1521840 100000)
             ($main_inv85 $a1471835 $b1481836 $i1491837 $c1501838 $rv1511839 $j1521840 $x1531841))
        ($main_inv85 (store $a1471835 $j1521840 $int1842) (store $b1481836 $j1521840 $int1843) $i1491837 $c1501838 $rv1511839 (+ $j1521840 1) $x1531841))))

; backwards $main_sum85
(assert
  (forall (($c1501847 (Array Int Int)) ($a1471835 (Array Int Int)) ($c1501838 (Array Int Int)) ($int1842 Int) ($i1491846 Int) ($x1531841 Int) ($int1843 Int) ($a1471844 (Array Int Int)) ($rv1511848 Int) ($rv1511839 Int) ($x1531850 Int) ($i1491837 Int) ($b1481845 (Array Int Int)) ($b1481836 (Array Int Int)) ($j1521849 Int) ($j1521840 Int))
    (=> (and ($main_sum85 (store $a1471835 $j1521840 $int1842) (store $b1481836 $j1521840 $int1843) $i1491837 $c1501838 $rv1511839 (+ $j1521840 1) $x1531841 $a1471844 $b1481845 $i1491846 $c1501847 $rv1511848 $j1521849 $x1531850)
             (<= (- 2147483648) $int1843)
             (<= $int1843 2147483647)
             (<= (- 2147483648) $int1842)
             (<= $int1842 2147483647)
             (< $j1521840 100000))
        ($main_sum85 $a1471835 $b1481836 $i1491837 $c1501838 $rv1511839 $j1521840 $x1531841 $a1471844 $b1481845 $i1491846 $c1501847 $rv1511848 $j1521849 $x1531850))))

; loop entry $main_inv86
(assert
  (forall (($x153 Int) ($c1501854 (Array Int Int)) ($i1491853 Int) ($rv1511855 Int) ($c150 (Array Int Int)) ($a1471851 (Array Int Int)) ($b1481852 (Array Int Int)) ($a147 (Array Int Int)) ($x1531857 Int) ($rv151 Int) ($j152 Int) ($b148 (Array Int Int)) ($i149 Int) ($j1521856 Int))
    (=> (and ($main_sum85 $a147 $b148 $i149 $c150 $rv151 $j152 $x153 $a1471851 $b1481852 $i1491853 $c1501854 $rv1511855 $j1521856 $x1531857)
             (= $j152 0)
             (= $rv151 1)
             (= $i149 0))
        ($main_inv86 $a1471851 $b1481852 $i1491853 $c1501854 $rv1511855 $j1521856 $x1531857))))

; loop term $main_sum86
(assert
  (forall (($rv1511862 Int) ($x1531864 Int) ($c1501861 (Array Int Int)) ($i1491860 Int) ($j1521863 Int) ($a1471858 (Array Int Int)) ($b1481859 (Array Int Int)))
    (=> (and (not (< $i1491860 100000)))
        ($main_sum86 $a1471858 $b1481859 $i1491860 $c1501861 $rv1511862 $j1521863 $x1531864 $a1471858 $b1481859 $i1491860 $c1501861 $rv1511862 $j1521863 $x1531864))))

; if then
(assert
  (forall (($rv1511862 Int) ($x1531864 Int) ($c1501861 (Array Int Int)) ($i1491860 Int) ($j1521863 Int) ($a1471858 (Array Int Int)) ($b1481859 (Array Int Int)))
    (=> (and (not (= (select $a1471858 $i1491860) (select $b1481859 $i1491860)))
             (< $i1491860 100000)
             ($main_inv86 $a1471858 $b1481859 $i1491860 $c1501861 $rv1511862 $j1521863 $x1531864))
        ($main_if41 $a1471858 $b1481859 $i1491860 $c1501861 $rv1511862 $j1521863 $x1531864 $a1471858 $b1481859 $i1491860 $c1501861 0 $j1521863 $x1531864))))

; if else
(assert
  (forall (($rv1511862 Int) ($x1531864 Int) ($c1501861 (Array Int Int)) ($i1491860 Int) ($j1521863 Int) ($a1471858 (Array Int Int)) ($b1481859 (Array Int Int)))
    (=> (and (= (select $a1471858 $i1491860) (select $b1481859 $i1491860))
             (< $i1491860 100000)
             ($main_inv86 $a1471858 $b1481859 $i1491860 $c1501861 $rv1511862 $j1521863 $x1531864))
        ($main_if41 $a1471858 $b1481859 $i1491860 $c1501861 $rv1511862 $j1521863 $x1531864 $a1471858 $b1481859 $i1491860 $c1501861 $rv1511862 $j1521863 $x1531864))))

; forwards $main_inv86
(assert
  (forall (($rv1511862 Int) ($x1531864 Int) ($i1491860 Int) ($i1491867 Int) ($x1531871 Int) ($j1521863 Int) ($j1521870 Int) ($a1471865 (Array Int Int)) ($a1471858 (Array Int Int)) ($b1481859 (Array Int Int)) ($c1501861 (Array Int Int)) ($rv1511869 Int) ($c1501868 (Array Int Int)) ($b1481866 (Array Int Int)))
    (=> (and ($main_if41 $a1471858 $b1481859 $i1491860 $c1501861 $rv1511862 $j1521863 $x1531864 $a1471865 $b1481866 $i1491867 $c1501868 $rv1511869 $j1521870 $x1531871))
        ($main_inv86 $a1471865 $b1481866 (+ $i1491867 1) (store $c1501868 $i1491867 (select $a1471865 $i1491867)) $rv1511869 $j1521870 $x1531871))))

; backwards $main_sum86
(assert
  (forall (($x1531864 Int) ($a1471872 (Array Int Int)) ($i1491860 Int) ($i1491867 Int) ($j1521863 Int) ($j1521870 Int) ($a1471865 (Array Int Int)) ($a1471858 (Array Int Int)) ($rv1511876 Int) ($i1491874 Int) ($b1481873 (Array Int Int)) ($rv1511862 Int) ($c1501861 (Array Int Int)) ($rv1511869 Int) ($j1521877 Int) ($x1531878 Int) ($x1531871 Int) ($c1501868 (Array Int Int)) ($b1481866 (Array Int Int)) ($b1481859 (Array Int Int)) ($c1501875 (Array Int Int)))
    (=> (and ($main_sum86 $a1471865 $b1481866 (+ $i1491867 1) (store $c1501868 $i1491867 (select $a1471865 $i1491867)) $rv1511869 $j1521870 $x1531871 $a1471872 $b1481873 $i1491874 $c1501875 $rv1511876 $j1521877 $x1531878)
             ($main_if41 $a1471858 $b1481859 $i1491860 $c1501861 $rv1511862 $j1521863 $x1531864 $a1471865 $b1481866 $i1491867 $c1501868 $rv1511869 $j1521870 $x1531871))
        ($main_sum86 $a1471858 $b1481859 $i1491860 $c1501861 $rv1511862 $j1521863 $x1531864 $a1471872 $b1481873 $i1491874 $c1501875 $rv1511876 $j1521877 $x1531878))))

; loop entry $main_inv87
(assert
  (forall (($x153 Int) ($c1501854 (Array Int Int)) ($rv1511883 Int) ($i1491853 Int) ($rv1511855 Int) ($c150 (Array Int Int)) ($b1481880 (Array Int Int)) ($b1481852 (Array Int Int)) ($j1521884 Int) ($x1531857 Int) ($rv151 Int) ($j152 Int) ($b148 (Array Int Int)) ($a1471851 (Array Int Int)) ($x1531885 Int) ($i149 Int) ($j1521856 Int) ($i1491881 Int) ($c1501882 (Array Int Int)) ($a1471879 (Array Int Int)) ($a147 (Array Int Int)))
    (=> (and (not (= $rv1511883 0))
             ($main_sum86 $a1471851 $b1481852 $i1491853 $c1501854 $rv1511855 $j1521856 $x1531857 $a1471879 $b1481880 $i1491881 $c1501882 $rv1511883 $j1521884 $x1531885)
             ($main_sum85 $a147 $b148 $i149 $c150 $rv151 $j152 $x153 $a1471851 $b1481852 $i1491853 $c1501854 $rv1511855 $j1521856 $x1531857)
             (= $j152 0)
             (= $rv151 1)
             (= $i149 0))
        ($main_inv87 $a1471879 $b1481880 $i1491881 $c1501882 $rv1511883 $j1521884 0))))

; loop term $main_sum87
(assert
  (forall (($j1521891 Int) ($a1471886 (Array Int Int)) ($i1491888 Int) ($x1531892 Int) ($c1501889 (Array Int Int)) ($rv1511890 Int) ($b1481887 (Array Int Int)))
    (=> (and (not (< $x1531892 100000)))
        ($main_sum87 $a1471886 $b1481887 $i1491888 $c1501889 $rv1511890 $j1521891 $x1531892 $a1471886 $b1481887 $i1491888 $c1501889 $rv1511890 $j1521891 $x1531892))))

; __VERIFIER_assert precondition
(assert
  (forall (($j1521891 Int) ($a1471886 (Array Int Int)) ($i1491888 Int) ($x1531892 Int) ($c1501889 (Array Int Int)) ($rv1511890 Int) ($b1481887 (Array Int Int)))
    (=> (and (< $x1531892 100000)
             ($main_inv87 $a1471886 $b1481887 $i1491888 $c1501889 $rv1511890 $j1521891 $x1531892))
        ($__VERIFIER_assert_pre (ite (= (select $a1471886 $x1531892) (select $b1481887 $x1531892)) 1 0)))))

; forwards $main_inv87
(assert
  (forall (($j1521891 Int) ($a1471886 (Array Int Int)) ($i1491888 Int) ($x1531892 Int) ($c1501889 (Array Int Int)) ($rv1511890 Int) ($b1481887 (Array Int Int)))
    (=> (and (__VERIFIER_assert (ite (= (select $a1471886 $x1531892) (select $b1481887 $x1531892)) 1 0))
             (< $x1531892 100000)
             ($main_inv87 $a1471886 $b1481887 $i1491888 $c1501889 $rv1511890 $j1521891 $x1531892))
        ($main_inv87 $a1471886 $b1481887 $i1491888 $c1501889 $rv1511890 $j1521891 (+ $x1531892 1)))))

; backwards $main_sum87
(assert
  (forall (($i1491895 Int) ($j1521898 Int) ($j1521891 Int) ($c1501896 (Array Int Int)) ($a1471886 (Array Int Int)) ($i1491888 Int) ($a1471893 (Array Int Int)) ($x1531899 Int) ($c1501889 (Array Int Int)) ($b1481887 (Array Int Int)) ($b1481894 (Array Int Int)) ($x1531892 Int) ($rv1511897 Int) ($rv1511890 Int))
    (=> (and ($main_sum87 $a1471886 $b1481887 $i1491888 $c1501889 $rv1511890 $j1521891 (+ $x1531892 1) $a1471893 $b1481894 $i1491895 $c1501896 $rv1511897 $j1521898 $x1531899)
             (__VERIFIER_assert (ite (= (select $a1471886 $x1531892) (select $b1481887 $x1531892)) 1 0))
             (< $x1531892 100000))
        ($main_sum87 $a1471886 $b1481887 $i1491888 $c1501889 $rv1511890 $j1521891 $x1531892 $a1471893 $b1481894 $i1491895 $c1501896 $rv1511897 $j1521898 $x1531899))))

; if then
(assert
  (forall (($x153 Int) ($rv1511883 Int) ($i1491853 Int) ($rv1511855 Int) ($i1491902 Int) ($c150 (Array Int Int)) ($b1481880 (Array Int Int)) ($x1531906 Int) ($j1521905 Int) ($b1481852 (Array Int Int)) ($j1521884 Int) ($x1531857 Int) ($rv151 Int) ($j152 Int) ($b148 (Array Int Int)) ($c1501854 (Array Int Int)) ($c1501903 (Array Int Int)) ($a1471900 (Array Int Int)) ($rv1511904 Int) ($a1471851 (Array Int Int)) ($x1531885 Int) ($i149 Int) ($j1521856 Int) ($i1491881 Int) ($c1501882 (Array Int Int)) ($b1481901 (Array Int Int)) ($a1471879 (Array Int Int)) ($a147 (Array Int Int)))
    (=> (and ($main_sum87 $a1471879 $b1481880 $i1491881 $c1501882 $rv1511883 $j1521884 0 $a1471900 $b1481901 $i1491902 $c1501903 $rv1511904 $j1521905 $x1531906)
             (not (= $rv1511883 0))
             ($main_sum86 $a1471851 $b1481852 $i1491853 $c1501854 $rv1511855 $j1521856 $x1531857 $a1471879 $b1481880 $i1491881 $c1501882 $rv1511883 $j1521884 $x1531885)
             ($main_sum85 $a147 $b148 $i149 $c150 $rv151 $j152 $x153 $a1471851 $b1481852 $i1491853 $c1501854 $rv1511855 $j1521856 $x1531857)
             (= $j152 0)
             (= $rv151 1)
             (= $i149 0))
        ($main_if42 $a147 $b148 $i149 $c150 $rv151 $j152 $x153 $a1471900 $b1481901 $i1491902 $c1501903 $rv1511904 $j1521905 $x1531906))))

; if else
(assert
  (forall (($x153 Int) ($c1501854 (Array Int Int)) ($rv1511883 Int) ($i1491853 Int) ($rv1511855 Int) ($c150 (Array Int Int)) ($b1481880 (Array Int Int)) ($b1481852 (Array Int Int)) ($j1521884 Int) ($x1531857 Int) ($rv151 Int) ($j152 Int) ($b148 (Array Int Int)) ($a1471851 (Array Int Int)) ($x1531885 Int) ($i149 Int) ($j1521856 Int) ($i1491881 Int) ($c1501882 (Array Int Int)) ($a1471879 (Array Int Int)) ($a147 (Array Int Int)))
    (=> (and (= $rv1511883 0)
             ($main_sum86 $a1471851 $b1481852 $i1491853 $c1501854 $rv1511855 $j1521856 $x1531857 $a1471879 $b1481880 $i1491881 $c1501882 $rv1511883 $j1521884 $x1531885)
             ($main_sum85 $a147 $b148 $i149 $c150 $rv151 $j152 $x153 $a1471851 $b1481852 $i1491853 $c1501854 $rv1511855 $j1521856 $x1531857)
             (= $j152 0)
             (= $rv151 1)
             (= $i149 0))
        ($main_if42 $a147 $b148 $i149 $c150 $rv151 $j152 $x153 $a1471879 $b1481880 $i1491881 $c1501882 $rv1511883 $j1521884 $x1531885))))

; loop entry $main_inv88
(assert
  (forall (($rv151 Int) ($c1501910 (Array Int Int)) ($i1491909 Int) ($c150 (Array Int Int)) ($j1521912 Int) ($a1471907 (Array Int Int)) ($b1481908 (Array Int Int)) ($i149 Int) ($j152 Int) ($b148 (Array Int Int)) ($rv1511911 Int) ($x153 Int) ($a147 (Array Int Int)) ($x1531913 Int))
    (=> (and ($main_if42 $a147 $b148 $i149 $c150 $rv151 $j152 $x153 $a1471907 $b1481908 $i1491909 $c1501910 $rv1511911 $j1521912 $x1531913))
        ($main_inv88 $a1471907 $b1481908 $i1491909 $c1501910 $rv1511911 $j1521912 0))))

; loop term $main_sum88
(assert
  (forall (($a1471914 (Array Int Int)) ($c1501917 (Array Int Int)) ($b1481915 (Array Int Int)) ($rv1511918 Int) ($i1491916 Int) ($x1531920 Int) ($j1521919 Int))
    (=> (and (not (< $x1531920 100000)))
        ($main_sum88 $a1471914 $b1481915 $i1491916 $c1501917 $rv1511918 $j1521919 $x1531920 $a1471914 $b1481915 $i1491916 $c1501917 $rv1511918 $j1521919 $x1531920))))

; __VERIFIER_assert precondition
(assert
  (forall (($a1471914 (Array Int Int)) ($c1501917 (Array Int Int)) ($b1481915 (Array Int Int)) ($rv1511918 Int) ($i1491916 Int) ($x1531920 Int) ($j1521919 Int))
    (=> (and (< $x1531920 100000)
             ($main_inv88 $a1471914 $b1481915 $i1491916 $c1501917 $rv1511918 $j1521919 $x1531920))
        ($__VERIFIER_assert_pre (ite (= (select $a1471914 $x1531920) (select $c1501917 $x1531920)) 1 0)))))

; forwards $main_inv88
(assert
  (forall (($a1471914 (Array Int Int)) ($c1501917 (Array Int Int)) ($b1481915 (Array Int Int)) ($rv1511918 Int) ($i1491916 Int) ($x1531920 Int) ($j1521919 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a1471914 $x1531920) (select $c1501917 $x1531920)) 1 0))
             (< $x1531920 100000)
             ($main_inv88 $a1471914 $b1481915 $i1491916 $c1501917 $rv1511918 $j1521919 $x1531920))
        ($main_inv88 $a1471914 $b1481915 $i1491916 $c1501917 $rv1511918 $j1521919 (+ $x1531920 1)))))

; backwards $main_sum88
(assert
  (forall (($rv1511925 Int) ($x1531927 Int) ($a1471921 (Array Int Int)) ($b1481915 (Array Int Int)) ($rv1511918 Int) ($i1491916 Int) ($x1531920 Int) ($b1481922 (Array Int Int)) ($j1521926 Int) ($j1521919 Int) ($a1471914 (Array Int Int)) ($i1491923 Int) ($c1501924 (Array Int Int)) ($c1501917 (Array Int Int)))
    (=> (and ($main_sum88 $a1471914 $b1481915 $i1491916 $c1501917 $rv1511918 $j1521919 (+ $x1531920 1) $a1471921 $b1481922 $i1491923 $c1501924 $rv1511925 $j1521926 $x1531927)
             (__VERIFIER_assert (ite (= (select $a1471914 $x1531920) (select $c1501917 $x1531920)) 1 0))
             (< $x1531920 100000))
        ($main_sum88 $a1471914 $b1481915 $i1491916 $c1501917 $rv1511918 $j1521919 $x1531920 $a1471921 $b1481922 $i1491923 $c1501924 $rv1511925 $j1521926 $x1531927))))

(check-sat)
