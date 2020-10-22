(set-logic HORN)

(declare-fun $main_sum422 ((Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv423 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv422 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum423 ((Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_if151 ((Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv421 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if149 (Int Int) Bool)
(declare-fun $main_if150 ((Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum421 ((Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond7845 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond7845))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if149 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond7846 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if149 cond cond7846))
        (__VERIFIER_assert cond7846))))

; loop entry $main_inv421
(assert
  (forall (($a1521 (Array Int Int)) ($a2522 (Array Int Int)) ($x525 Int))
        ($main_inv421 $a1521 $a2522 0 150000 $x525)))

; loop term $main_sum421
(assert
  (forall (($a15217847 (Array Int Int)) ($a25227848 (Array Int Int)) ($i5237849 Int) ($x5257851 Int) ($z5247850 Int))
    (=> (and (not (< $i5237849 200000)))
        ($main_sum421 $a15217847 $a25227848 $i5237849 $z5247850 $x5257851 $a15217847 $a25227848 $i5237849 $z5247850 $x5257851))))

; forwards $main_inv421
(assert
  (forall (($int7852 Int) ($a15217847 (Array Int Int)) ($i5237849 Int) ($x5257851 Int) ($z5247850 Int) ($a25227848 (Array Int Int)) ($int7853 Int))
    (=> (and (<= (- 2147483648) $int7853)
             (<= $int7853 2147483647)
             (<= (- 2147483648) $int7852)
             (<= $int7852 2147483647)
             (< $i5237849 200000)
             ($main_inv421 $a15217847 $a25227848 $i5237849 $z5247850 $x5257851))
        ($main_inv421 (store $a15217847 $i5237849 $int7852) (store $a25227848 $i5237849 $int7853) (+ $i5237849 1) $z5247850 $x5257851))))

; backwards $main_sum421
(assert
  (forall (($int7852 Int) ($a15217854 (Array Int Int)) ($a15217847 (Array Int Int)) ($i5237849 Int) ($x5257851 Int) ($i5237856 Int) ($z5247857 Int) ($a25227855 (Array Int Int)) ($a25227848 (Array Int Int)) ($int7853 Int) ($x5257858 Int) ($z5247850 Int))
    (=> (and ($main_sum421 (store $a15217847 $i5237849 $int7852) (store $a25227848 $i5237849 $int7853) (+ $i5237849 1) $z5247850 $x5257851 $a15217854 $a25227855 $i5237856 $z5247857 $x5257858)
             (<= (- 2147483648) $int7853)
             (<= $int7853 2147483647)
             (<= (- 2147483648) $int7852)
             (<= $int7852 2147483647)
             (< $i5237849 200000))
        ($main_sum421 $a15217847 $a25227848 $i5237849 $z5247850 $x5257851 $a15217854 $a25227855 $i5237856 $z5247857 $x5257858))))

; loop entry $main_inv422
(assert
  (forall (($x525 Int) ($a15217859 (Array Int Int)) ($a2522 (Array Int Int)) ($a1521 (Array Int Int)) ($x5257863 Int) ($z5247862 Int) ($i5237861 Int) ($a25227860 (Array Int Int)))
    (=> (and ($main_sum421 $a1521 $a2522 0 150000 $x525 $a15217859 $a25227860 $i5237861 $z5247862 $x5257863))
        ($main_inv422 $a15217859 $a25227860 0 $z5247862 $x5257863))))

; loop term $main_sum422
(assert
  (forall (($a15217864 (Array Int Int)) ($i5237866 Int) ($x5257868 Int) ($z5247867 Int) ($a25227865 (Array Int Int)))
    (=> (and (not (< $i5237866 200000)))
        ($main_sum422 $a15217864 $a25227865 $i5237866 $z5247867 $x5257868 $a15217864 $a25227865 $i5237866 $z5247867 $x5257868))))

; if then
(assert
  (forall (($a15217864 (Array Int Int)) ($i5237866 Int) ($x5257868 Int) ($z5247867 Int) ($a25227865 (Array Int Int)))
    (=> (and (not (= $i5237866 $z5247867))
             (< $i5237866 200000)
             ($main_inv422 $a15217864 $a25227865 $i5237866 $z5247867 $x5257868))
        ($main_if150 $a15217864 $a25227865 $i5237866 $z5247867 $x5257868 $a15217864 (store $a25227865 $i5237866 (select $a15217864 $i5237866)) $i5237866 $z5247867 $x5257868))))

; if else
(assert
  (forall (($a15217864 (Array Int Int)) ($i5237866 Int) ($x5257868 Int) ($z5247867 Int) ($a25227865 (Array Int Int)))
    (=> (and (= $i5237866 $z5247867)
             (< $i5237866 200000)
             ($main_inv422 $a15217864 $a25227865 $i5237866 $z5247867 $x5257868))
        ($main_if150 $a15217864 $a25227865 $i5237866 $z5247867 $x5257868 $a15217864 $a25227865 $i5237866 $z5247867 $x5257868))))

; forwards $main_inv422
(assert
  (forall (($i5237871 Int) ($i5237866 Int) ($a25227870 (Array Int Int)) ($x5257868 Int) ($a25227865 (Array Int Int)) ($a15217864 (Array Int Int)) ($x5257873 Int) ($z5247872 Int) ($z5247867 Int) ($a15217869 (Array Int Int)))
    (=> (and ($main_if150 $a15217864 $a25227865 $i5237866 $z5247867 $x5257868 $a15217869 $a25227870 $i5237871 $z5247872 $x5257873))
        ($main_inv422 $a15217869 $a25227870 (+ $i5237871 1) $z5247872 $x5257873))))

; backwards $main_sum422
(assert
  (forall (($i5237871 Int) ($i5237866 Int) ($a25227870 (Array Int Int)) ($z5247877 Int) ($x5257868 Int) ($a25227865 (Array Int Int)) ($i5237876 Int) ($x5257878 Int) ($a25227875 (Array Int Int)) ($a15217864 (Array Int Int)) ($x5257873 Int) ($z5247872 Int) ($a15217874 (Array Int Int)) ($z5247867 Int) ($a15217869 (Array Int Int)))
    (=> (and ($main_sum422 $a15217869 $a25227870 (+ $i5237871 1) $z5247872 $x5257873 $a15217874 $a25227875 $i5237876 $z5247877 $x5257878)
             ($main_if150 $a15217864 $a25227865 $i5237866 $z5247867 $x5257868 $a15217869 $a25227870 $i5237871 $z5247872 $x5257873))
        ($main_sum422 $a15217864 $a25227865 $i5237866 $z5247867 $x5257868 $a15217874 $a25227875 $i5237876 $z5247877 $x5257878))))

; loop entry $main_inv423
(assert
  (forall (($a15217879 (Array Int Int)) ($x525 Int) ($z5247882 Int) ($a15217859 (Array Int Int)) ($a25227880 (Array Int Int)) ($a2522 (Array Int Int)) ($x5257863 Int) ($z5247862 Int) ($i5237861 Int) ($a25227860 (Array Int Int)) ($x5257883 Int) ($a1521 (Array Int Int)) ($i5237881 Int))
    (=> (and ($main_sum422 $a15217859 $a25227860 0 $z5247862 $x5257863 $a15217879 $a25227880 $i5237881 $z5247882 $x5257883)
             ($main_sum421 $a1521 $a2522 0 150000 $x525 $a15217859 $a25227860 $i5237861 $z5247862 $x5257863))
        ($main_inv423 $a15217879 $a25227880 $i5237881 150001 0))))

; loop term $main_sum423
(assert
  (forall (($x5257888 Int) ($i5237886 Int) ($a15217884 (Array Int Int)) ($a25227885 (Array Int Int)) ($z5247887 Int))
    (=> (and (not (< $x5257888 200000)))
        ($main_sum423 $a15217884 $a25227885 $i5237886 $z5247887 $x5257888 $a15217884 $a25227885 $i5237886 $z5247887 $x5257888))))

; __VERIFIER_assert precondition
(assert
  (forall (($x5257888 Int) ($i5237886 Int) ($a15217884 (Array Int Int)) ($a25227885 (Array Int Int)) ($z5247887 Int))
    (=> (and (not (= $x5257888 $z5247887))
             (< $x5257888 200000)
             ($main_inv423 $a15217884 $a25227885 $i5237886 $z5247887 $x5257888))
        ($__VERIFIER_assert_pre (ite (= (select $a15217884 $x5257888) (select $a25227885 $x5257888)) 1 0)))))

; if then
(assert
  (forall (($x5257888 Int) ($i5237886 Int) ($a15217884 (Array Int Int)) ($a25227885 (Array Int Int)) ($z5247887 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a15217884 $x5257888) (select $a25227885 $x5257888)) 1 0))
             (not (= $x5257888 $z5247887))
             (< $x5257888 200000)
             ($main_inv423 $a15217884 $a25227885 $i5237886 $z5247887 $x5257888))
        ($main_if151 $a15217884 $a25227885 $i5237886 $z5247887 $x5257888 $a15217884 $a25227885 $i5237886 $z5247887 $x5257888))))

; if else
(assert
  (forall (($x5257888 Int) ($i5237886 Int) ($a15217884 (Array Int Int)) ($a25227885 (Array Int Int)) ($z5247887 Int))
    (=> (and (= $x5257888 $z5247887)
             (< $x5257888 200000)
             ($main_inv423 $a15217884 $a25227885 $i5237886 $z5247887 $x5257888))
        ($main_if151 $a15217884 $a25227885 $i5237886 $z5247887 $x5257888 $a15217884 $a25227885 $i5237886 $z5247887 $x5257888))))

; forwards $main_inv423
(assert
  (forall (($x5257888 Int) ($a15217884 (Array Int Int)) ($a15217889 (Array Int Int)) ($a25227885 (Array Int Int)) ($i5237891 Int) ($z5247887 Int) ($x5257893 Int) ($z5247892 Int) ($i5237886 Int) ($a25227890 (Array Int Int)))
    (=> (and ($main_if151 $a15217884 $a25227885 $i5237886 $z5247887 $x5257888 $a15217889 $a25227890 $i5237891 $z5247892 $x5257893))
        ($main_inv423 $a15217889 $a25227890 $i5237891 $z5247892 (+ $x5257893 1)))))

; backwards $main_sum423
(assert
  (forall (($x5257888 Int) ($a15217894 (Array Int Int)) ($a15217884 (Array Int Int)) ($a25227895 (Array Int Int)) ($a25227885 (Array Int Int)) ($x5257898 Int) ($i5237891 Int) ($z5247887 Int) ($x5257893 Int) ($z5247892 Int) ($i5237886 Int) ($a25227890 (Array Int Int)) ($i5237896 Int) ($z5247897 Int) ($a15217889 (Array Int Int)))
    (=> (and ($main_sum423 $a15217889 $a25227890 $i5237891 $z5247892 (+ $x5257893 1) $a15217894 $a25227895 $i5237896 $z5247897 $x5257898)
             ($main_if151 $a15217884 $a25227885 $i5237886 $z5247887 $x5257888 $a15217889 $a25227890 $i5237891 $z5247892 $x5257893))
        ($main_sum423 $a15217884 $a25227885 $i5237886 $z5247887 $x5257888 $a15217894 $a25227895 $i5237896 $z5247897 $x5257898))))

(check-sat)
