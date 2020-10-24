(set-logic HORN)

(declare-fun $main_inv44 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv47 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv43 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum45 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum46 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_if22 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum44 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum43 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv45 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum47 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if21 (Int Int) Bool)
(declare-fun $main_inv46 ((Array Int Int) Int Int Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond821 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond821))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if21 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond822 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if21 cond cond822))
        (__VERIFIER_assert cond822))))

; loop entry $main_inv43
(assert
  (forall (($t102 Int) ($j99 Int) ($x103 Int) ($swapped100 Int) ($a98 (Array Int Int)) ($y104 Int) ($i101 Int))
    (=> (and (= $j99 0))
        ($main_inv43 $a98 $j99 $swapped100 $i101 $t102 $x103 $y104))))

; loop term $main_sum43
(assert
  (forall (($i101826 Int) ($j99824 Int) ($swapped100825 Int) ($a98823 (Array Int Int)) ($x103828 Int) ($y104829 Int) ($t102827 Int))
    (=> (and (not (< $j99824 100000)))
        ($main_sum43 $a98823 $j99824 $swapped100825 $i101826 $t102827 $x103828 $y104829 $a98823 $j99824 $swapped100825 $i101826 $t102827 $x103828 $y104829))))

; forwards $main_inv43
(assert
  (forall (($int830 Int) ($i101826 Int) ($j99824 Int) ($swapped100825 Int) ($a98823 (Array Int Int)) ($x103828 Int) ($y104829 Int) ($t102827 Int))
    (=> (and (<= (- 2147483648) $int830)
             (<= $int830 2147483647)
             (< $j99824 100000)
             ($main_inv43 $a98823 $j99824 $swapped100825 $i101826 $t102827 $x103828 $y104829))
        ($main_inv43 (store $a98823 $j99824 $int830) (+ $j99824 1) $swapped100825 $i101826 $t102827 $x103828 $y104829))))

; backwards $main_sum43
(assert
  (forall (($int830 Int) ($i101826 Int) ($j99832 Int) ($i101834 Int) ($swapped100825 Int) ($t102835 Int) ($swapped100833 Int) ($x103828 Int) ($y104829 Int) ($y104837 Int) ($j99824 Int) ($a98823 (Array Int Int)) ($x103836 Int) ($t102827 Int) ($a98831 (Array Int Int)))
    (=> (and ($main_sum43 (store $a98823 $j99824 $int830) (+ $j99824 1) $swapped100825 $i101826 $t102827 $x103828 $y104829 $a98831 $j99832 $swapped100833 $i101834 $t102835 $x103836 $y104837)
             (<= (- 2147483648) $int830)
             (<= $int830 2147483647)
             (< $j99824 100000))
        ($main_sum43 $a98823 $j99824 $swapped100825 $i101826 $t102827 $x103828 $y104829 $a98831 $j99832 $swapped100833 $i101834 $t102835 $x103836 $y104837))))

; loop entry $main_inv44
(assert
  (forall (($t102 Int) ($x103 Int) ($j99839 Int) ($t102842 Int) ($swapped100 Int) ($i101841 Int) ($a98 (Array Int Int)) ($y104 Int) ($i101 Int) ($a98838 (Array Int Int)) ($j99 Int) ($y104844 Int) ($swapped100840 Int) ($x103843 Int))
    (=> (and (= $swapped100840 1)
             ($main_sum43 $a98 $j99 $swapped100 $i101 $t102 $x103 $y104 $a98838 $j99839 $swapped100840 $i101841 $t102842 $x103843 $y104844)
             (= $j99 0))
        ($main_inv44 $a98838 $j99839 $swapped100840 $i101841 $t102842 $x103843 $y104844))))

; loop term $main_sum44
(assert
  (forall (($t102849 Int) ($a98845 (Array Int Int)) ($x103850 Int) ($swapped100847 Int) ($j99846 Int) ($y104851 Int) ($i101848 Int))
    (=> (and (= $swapped100847 0))
        ($main_sum44 $a98845 $j99846 $swapped100847 $i101848 $t102849 $x103850 $y104851 $a98845 $j99846 $swapped100847 $i101848 $t102849 $x103850 $y104851))))

; loop entry $main_inv45
(assert
  (forall (($t102849 Int) ($a98845 (Array Int Int)) ($x103850 Int) ($swapped100847 Int) ($j99846 Int) ($y104851 Int) ($i101848 Int))
    (=> (and (= $i101848 1)
             (not (= $swapped100847 0))
             ($main_inv44 $a98845 $j99846 $swapped100847 $i101848 $t102849 $x103850 $y104851))
        ($main_inv45 $a98845 $j99846 0 $i101848 $t102849 $x103850 $y104851))))

; loop term $main_sum45
(assert
  (forall (($y104858 Int) ($swapped100854 Int) ($i101855 Int) ($x103857 Int) ($j99853 Int) ($t102856 Int) ($a98852 (Array Int Int)))
    (=> (and (not (< $i101855 100000)))
        ($main_sum45 $a98852 $j99853 $swapped100854 $i101855 $t102856 $x103857 $y104858 $a98852 $j99853 $swapped100854 $i101855 $t102856 $x103857 $y104858))))

; if then
(assert
  (forall (($y104858 Int) ($swapped100854 Int) ($i101855 Int) ($x103857 Int) ($j99853 Int) ($t102856 Int) ($a98852 (Array Int Int)))
    (=> (and (= $t102856 (select $a98852 $i101855))
             (> (select $a98852 (- $i101855 1)) (select $a98852 $i101855))
             (< $i101855 100000)
             ($main_inv45 $a98852 $j99853 $swapped100854 $i101855 $t102856 $x103857 $y104858))
        ($main_if22 $a98852 $j99853 $swapped100854 $i101855 $t102856 $x103857 $y104858 (store (store $a98852 $i101855 (select $a98852 (- $i101855 1))) (- $i101855 1) $t102856) $j99853 1 $i101855 $t102856 $x103857 $y104858))))

; if else
(assert
  (forall (($y104858 Int) ($swapped100854 Int) ($i101855 Int) ($x103857 Int) ($j99853 Int) ($t102856 Int) ($a98852 (Array Int Int)))
    (=> (and (not (> (select $a98852 (- $i101855 1)) (select $a98852 $i101855)))
             (< $i101855 100000)
             ($main_inv45 $a98852 $j99853 $swapped100854 $i101855 $t102856 $x103857 $y104858))
        ($main_if22 $a98852 $j99853 $swapped100854 $i101855 $t102856 $x103857 $y104858 $a98852 $j99853 $swapped100854 $i101855 $t102856 $x103857 $y104858))))

; forwards $main_inv45
(assert
  (forall (($i101862 Int) ($t102863 Int) ($y104858 Int) ($x103864 Int) ($y104865 Int) ($swapped100854 Int) ($i101855 Int) ($j99860 Int) ($swapped100861 Int) ($x103857 Int) ($j99853 Int) ($a98859 (Array Int Int)) ($t102856 Int) ($a98852 (Array Int Int)))
    (=> (and ($main_if22 $a98852 $j99853 $swapped100854 $i101855 $t102856 $x103857 $y104858 $a98859 $j99860 $swapped100861 $i101862 $t102863 $x103864 $y104865))
        ($main_inv45 $a98859 $j99860 $swapped100861 (+ $i101862 1) $t102863 $x103864 $y104865))))

; backwards $main_sum45
(assert
  (forall (($i101862 Int) ($x103871 Int) ($t102863 Int) ($x103864 Int) ($i101869 Int) ($y104865 Int) ($swapped100854 Int) ($i101855 Int) ($j99860 Int) ($swapped100868 Int) ($x103857 Int) ($j99853 Int) ($a98859 (Array Int Int)) ($y104872 Int) ($t102870 Int) ($a98866 (Array Int Int)) ($y104858 Int) ($j99867 Int) ($swapped100861 Int) ($t102856 Int) ($a98852 (Array Int Int)))
    (=> (and ($main_sum45 $a98859 $j99860 $swapped100861 (+ $i101862 1) $t102863 $x103864 $y104865 $a98866 $j99867 $swapped100868 $i101869 $t102870 $x103871 $y104872)
             ($main_if22 $a98852 $j99853 $swapped100854 $i101855 $t102856 $x103857 $y104858 $a98859 $j99860 $swapped100861 $i101862 $t102863 $x103864 $y104865))
        ($main_sum45 $a98852 $j99853 $swapped100854 $i101855 $t102856 $x103857 $y104858 $a98866 $j99867 $swapped100868 $i101869 $t102870 $x103871 $y104872))))

; forwards $main_inv44
(assert
  (forall (($y104879 Int) ($a98873 (Array Int Int)) ($t102849 Int) ($a98845 (Array Int Int)) ($j99874 Int) ($x103878 Int) ($i101876 Int) ($swapped100875 Int) ($t102877 Int) ($x103850 Int) ($swapped100847 Int) ($j99846 Int) ($y104851 Int) ($i101848 Int))
    (=> (and ($main_sum45 $a98845 $j99846 0 $i101848 $t102849 $x103850 $y104851 $a98873 $j99874 $swapped100875 $i101876 $t102877 $x103878 $y104879)
             (= $i101848 1)
             (not (= $swapped100847 0))
             ($main_inv44 $a98845 $j99846 $swapped100847 $i101848 $t102849 $x103850 $y104851))
        ($main_inv44 $a98873 $j99874 $swapped100875 $i101876 $t102877 $x103878 $y104879))))

; backwards $main_sum44
(assert
  (forall (($t102884 Int) ($a98873 (Array Int Int)) ($i101883 Int) ($t102849 Int) ($a98845 (Array Int Int)) ($j99874 Int) ($a98880 (Array Int Int)) ($x103878 Int) ($i101876 Int) ($swapped100875 Int) ($t102877 Int) ($x103850 Int) ($y104886 Int) ($y104879 Int) ($swapped100882 Int) ($swapped100847 Int) ($j99846 Int) ($j99881 Int) ($x103885 Int) ($y104851 Int) ($i101848 Int))
    (=> (and ($main_sum44 $a98873 $j99874 $swapped100875 $i101876 $t102877 $x103878 $y104879 $a98880 $j99881 $swapped100882 $i101883 $t102884 $x103885 $y104886)
             ($main_sum45 $a98845 $j99846 0 $i101848 $t102849 $x103850 $y104851 $a98873 $j99874 $swapped100875 $i101876 $t102877 $x103878 $y104879)
             (= $i101848 1)
             (not (= $swapped100847 0)))
        ($main_sum44 $a98845 $j99846 $swapped100847 $i101848 $t102849 $x103850 $y104851 $a98880 $j99881 $swapped100882 $i101883 $t102884 $x103885 $y104886))))

; loop entry $main_inv46
(assert
  (forall (($t102 Int) ($a98887 (Array Int Int)) ($i101890 Int) ($j99839 Int) ($j99888 Int) ($t102842 Int) ($swapped100 Int) ($i101841 Int) ($y104 Int) ($i101 Int) ($a98838 (Array Int Int)) ($j99 Int) ($y104844 Int) ($swapped100840 Int) ($x103843 Int) ($t102891 Int) ($x103 Int) ($x103892 Int) ($y104893 Int) ($a98 (Array Int Int)) ($swapped100889 Int))
    (=> (and ($main_sum44 $a98838 $j99839 $swapped100840 $i101841 $t102842 $x103843 $y104844 $a98887 $j99888 $swapped100889 $i101890 $t102891 $x103892 $y104893)
             (= $swapped100840 1)
             ($main_sum43 $a98 $j99 $swapped100 $i101 $t102 $x103 $y104 $a98838 $j99839 $swapped100840 $i101841 $t102842 $x103843 $y104844)
             (= $j99 0))
        ($main_inv46 $a98887 $j99888 $swapped100889 $i101890 $t102891 0 $y104893))))

; loop term $main_sum46
(assert
  (forall (($a98894 (Array Int Int)) ($t102898 Int) ($swapped100896 Int) ($x103899 Int) ($y104900 Int) ($i101897 Int) ($j99895 Int))
    (=> (and (not (< $x103899 100000)))
        ($main_sum46 $a98894 $j99895 $swapped100896 $i101897 $t102898 $x103899 $y104900 $a98894 $j99895 $swapped100896 $i101897 $t102898 $x103899 $y104900))))

; loop entry $main_inv47
(assert
  (forall (($a98894 (Array Int Int)) ($t102898 Int) ($swapped100896 Int) ($x103899 Int) ($y104900 Int) ($i101897 Int) ($j99895 Int))
    (=> (and (< $x103899 100000)
             ($main_inv46 $a98894 $j99895 $swapped100896 $i101897 $t102898 $x103899 $y104900))
        ($main_inv47 $a98894 $j99895 $swapped100896 $i101897 $t102898 $x103899 (+ $x103899 1)))))

; loop term $main_sum47
(assert
  (forall (($y104907 Int) ($x103906 Int) ($t102905 Int) ($swapped100903 Int) ($j99902 Int) ($i101904 Int) ($a98901 (Array Int Int)))
    (=> (and (not (< $y104907 100000)))
        ($main_sum47 $a98901 $j99902 $swapped100903 $i101904 $t102905 $x103906 $y104907 $a98901 $j99902 $swapped100903 $i101904 $t102905 $x103906 $y104907))))

; __VERIFIER_assert precondition
(assert
  (forall (($y104907 Int) ($x103906 Int) ($t102905 Int) ($swapped100903 Int) ($j99902 Int) ($i101904 Int) ($a98901 (Array Int Int)))
    (=> (and (< $y104907 100000)
             ($main_inv47 $a98901 $j99902 $swapped100903 $i101904 $t102905 $x103906 $y104907))
        ($__VERIFIER_assert_pre (ite (<= (select $a98901 $x103906) (select $a98901 $y104907)) 1 0)))))

; forwards $main_inv47
(assert
  (forall (($y104907 Int) ($x103906 Int) ($t102905 Int) ($swapped100903 Int) ($j99902 Int) ($i101904 Int) ($a98901 (Array Int Int)))
    (=> (and (__VERIFIER_assert (ite (<= (select $a98901 $x103906) (select $a98901 $y104907)) 1 0))
             (< $y104907 100000)
             ($main_inv47 $a98901 $j99902 $swapped100903 $i101904 $t102905 $x103906 $y104907))
        ($main_inv47 $a98901 $j99902 $swapped100903 $i101904 $t102905 $x103906 (+ $y104907 1)))))

; backwards $main_sum47
(assert
  (forall (($y104907 Int) ($i101911 Int) ($a98908 (Array Int Int)) ($swapped100910 Int) ($x103913 Int) ($t102905 Int) ($y104914 Int) ($swapped100903 Int) ($j99902 Int) ($i101904 Int) ($a98901 (Array Int Int)) ($t102912 Int) ($x103906 Int) ($j99909 Int))
    (=> (and ($main_sum47 $a98901 $j99902 $swapped100903 $i101904 $t102905 $x103906 (+ $y104907 1) $a98908 $j99909 $swapped100910 $i101911 $t102912 $x103913 $y104914)
             (__VERIFIER_assert (ite (<= (select $a98901 $x103906) (select $a98901 $y104907)) 1 0))
             (< $y104907 100000))
        ($main_sum47 $a98901 $j99902 $swapped100903 $i101904 $t102905 $x103906 $y104907 $a98908 $j99909 $swapped100910 $i101911 $t102912 $x103913 $y104914))))

; forwards $main_inv46
(assert
  (forall (($i101918 Int) ($swapped100917 Int) ($a98894 (Array Int Int)) ($t102898 Int) ($a98915 (Array Int Int)) ($x103920 Int) ($swapped100896 Int) ($x103899 Int) ($t102919 Int) ($y104900 Int) ($j99895 Int) ($j99916 Int) ($y104921 Int) ($i101897 Int))
    (=> (and ($main_sum47 $a98894 $j99895 $swapped100896 $i101897 $t102898 $x103899 (+ $x103899 1) $a98915 $j99916 $swapped100917 $i101918 $t102919 $x103920 $y104921)
             (< $x103899 100000)
             ($main_inv46 $a98894 $j99895 $swapped100896 $i101897 $t102898 $x103899 $y104900))
        ($main_inv46 $a98915 $j99916 $swapped100917 $i101918 $t102919 (+ $x103920 1) $y104921))))

; backwards $main_sum46
(assert
  (forall (($t102926 Int) ($i101925 Int) ($i101918 Int) ($swapped100917 Int) ($a98894 (Array Int Int)) ($t102898 Int) ($a98915 (Array Int Int)) ($x103920 Int) ($swapped100896 Int) ($j99923 Int) ($t102919 Int) ($y104900 Int) ($a98922 (Array Int Int)) ($swapped100924 Int) ($j99895 Int) ($j99916 Int) ($y104928 Int) ($x103899 Int) ($y104921 Int) ($x103927 Int) ($i101897 Int))
    (=> (and ($main_sum46 $a98915 $j99916 $swapped100917 $i101918 $t102919 (+ $x103920 1) $y104921 $a98922 $j99923 $swapped100924 $i101925 $t102926 $x103927 $y104928)
             ($main_sum47 $a98894 $j99895 $swapped100896 $i101897 $t102898 $x103899 (+ $x103899 1) $a98915 $j99916 $swapped100917 $i101918 $t102919 $x103920 $y104921)
             (< $x103899 100000))
        ($main_sum46 $a98894 $j99895 $swapped100896 $i101897 $t102898 $x103899 $y104900 $a98922 $j99923 $swapped100924 $i101925 $t102926 $x103927 $y104928))))

(check-sat)
