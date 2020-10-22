(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum45 (Int Int Int Int (Array Int (Array Int Int)) Int Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_sum46 (Int Int Int Int (Array Int (Array Int Int)) Int Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_inv45 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $__VERIFIER_assert_if23 (Int Int) Bool)
(declare-fun $main_sum48 (Int Int Int Int (Array Int (Array Int Int)) Int Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_inv48 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv47 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_inv46 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_sum47 (Int Int Int Int (Array Int (Array Int Int)) Int Int Int Int Int (Array Int (Array Int Int)) Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond874 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond874))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if23 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond875 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if23 cond cond875))
        (__VERIFIER_assert cond875))))

; loop entry $main_inv45
(assert
  (forall (($int876 Int) ($m63 Int) ($C66 Int) ($n64 Int) ($A65 (Array Int (Array Int Int))))
    (=> (and (= $C66 $int876)
             (<= (- 2147483648) $int876)
             (<= $int876 2147483647)
             (= $n64 1500)
             (= $m63 1000))
        ($main_inv45 0 0 $m63 $n64 $A65 $C66))))

; loop term $main_sum45
(assert
  (forall (($j62878 Int) ($C66882 Int) ($A65881 (Array Int (Array Int Int))) ($n64880 Int) ($m63879 Int) ($i61877 Int))
    (=> (and (not (< $i61877 $m63879)))
        ($main_sum45 $i61877 $j62878 $m63879 $n64880 $A65881 $C66882 $i61877 $j62878 $m63879 $n64880 $A65881 $C66882))))

; loop entry $main_inv46
(assert
  (forall (($j62878 Int) ($C66882 Int) ($A65881 (Array Int (Array Int Int))) ($n64880 Int) ($m63879 Int) ($i61877 Int))
    (=> (and (< $i61877 $m63879)
             ($main_inv45 $i61877 $j62878 $m63879 $n64880 $A65881 $C66882))
        ($main_inv46 $i61877 0 $m63879 $n64880 $A65881 $C66882))))

; loop term $main_sum46
(assert
  (forall (($i61883 Int) ($A65887 (Array Int (Array Int Int))) ($j62884 Int) ($n64886 Int) ($m63885 Int) ($C66888 Int))
    (=> (and (not (< $j62884 $n64886)))
        ($main_sum46 $i61883 $j62884 $m63885 $n64886 $A65887 $C66888 $i61883 $j62884 $m63885 $n64886 $A65887 $C66888))))

; forwards $main_inv46
(assert
  (forall (($i61883 Int) ($A65887 (Array Int (Array Int Int))) ($j62884 Int) ($n64886 Int) ($m63885 Int) ($C66888 Int))
    (=> (and (< $j62884 $n64886)
             ($main_inv46 $i61883 $j62884 $m63885 $n64886 $A65887 $C66888))
        ($main_inv46 $i61883 (+ $j62884 1) $m63885 $n64886 (store $A65887 $i61883 (store (select $A65887 $i61883) $j62884 $C66888)) $C66888))))

; backwards $main_sum46
(assert
  (forall (($m63891 Int) ($i61883 Int) ($A65887 (Array Int (Array Int Int))) ($i61889 Int) ($j62884 Int) ($C66894 Int) ($n64892 Int) ($A65893 (Array Int (Array Int Int))) ($n64886 Int) ($m63885 Int) ($C66888 Int) ($j62890 Int))
    (=> (and ($main_sum46 $i61883 (+ $j62884 1) $m63885 $n64886 (store $A65887 $i61883 (store (select $A65887 $i61883) $j62884 $C66888)) $C66888 $i61889 $j62890 $m63891 $n64892 $A65893 $C66894)
             (< $j62884 $n64886))
        ($main_sum46 $i61883 $j62884 $m63885 $n64886 $A65887 $C66888 $i61889 $j62890 $m63891 $n64892 $A65893 $C66894))))

; forwards $main_inv45
(assert
  (forall (($m63897 Int) ($j62878 Int) ($C66882 Int) ($A65881 (Array Int (Array Int Int))) ($n64880 Int) ($A65899 (Array Int (Array Int Int))) ($m63879 Int) ($C66900 Int) ($i61877 Int) ($i61895 Int) ($n64898 Int) ($j62896 Int))
    (=> (and ($main_sum46 $i61877 0 $m63879 $n64880 $A65881 $C66882 $i61895 $j62896 $m63897 $n64898 $A65899 $C66900)
             (< $i61877 $m63879)
             ($main_inv45 $i61877 $j62878 $m63879 $n64880 $A65881 $C66882))
        ($main_inv45 (+ $i61895 1) $j62896 $m63897 $n64898 $A65899 $C66900))))

; backwards $main_sum45
(assert
  (forall (($m63897 Int) ($j62878 Int) ($C66882 Int) ($A65905 (Array Int (Array Int Int))) ($n64880 Int) ($i61901 Int) ($A65899 (Array Int (Array Int Int))) ($m63879 Int) ($C66900 Int) ($i61877 Int) ($i61895 Int) ($j62902 Int) ($n64898 Int) ($j62896 Int) ($m63903 Int) ($C66906 Int) ($n64904 Int) ($A65881 (Array Int (Array Int Int))))
    (=> (and ($main_sum45 (+ $i61895 1) $j62896 $m63897 $n64898 $A65899 $C66900 $i61901 $j62902 $m63903 $n64904 $A65905 $C66906)
             ($main_sum46 $i61877 0 $m63879 $n64880 $A65881 $C66882 $i61895 $j62896 $m63897 $n64898 $A65899 $C66900)
             (< $i61877 $m63879))
        ($main_sum45 $i61877 $j62878 $m63879 $n64880 $A65881 $C66882 $i61901 $j62902 $m63903 $n64904 $A65905 $C66906))))

; loop entry $main_inv47
(assert
  (forall (($m63909 Int) ($n64910 Int) ($C66912 Int) ($m63 Int) ($C66 Int) ($i61907 Int) ($n64 Int) ($j62908 Int) ($A65 (Array Int (Array Int Int))) ($int876 Int) ($A65911 (Array Int (Array Int Int))))
    (=> (and ($main_sum45 0 0 $m63 $n64 $A65 $C66 $i61907 $j62908 $m63909 $n64910 $A65911 $C66912)
             (= $C66 $int876)
             (<= (- 2147483648) $int876)
             (<= $int876 2147483647)
             (= $n64 1500)
             (= $m63 1000))
        ($main_inv47 0 0 $m63909 $n64910 $A65911 $C66912))))

; loop term $main_sum47
(assert
  (forall (($i61913 Int) ($n64916 Int) ($m63915 Int) ($C66918 Int) ($j62914 Int) ($A65917 (Array Int (Array Int Int))))
    (=> (and (not (< $i61913 $m63915)))
        ($main_sum47 $i61913 $j62914 $m63915 $n64916 $A65917 $C66918 $i61913 $j62914 $m63915 $n64916 $A65917 $C66918))))

; loop entry $main_inv48
(assert
  (forall (($i61913 Int) ($n64916 Int) ($m63915 Int) ($C66918 Int) ($j62914 Int) ($A65917 (Array Int (Array Int Int))))
    (=> (and (< $i61913 $m63915)
             ($main_inv47 $i61913 $j62914 $m63915 $n64916 $A65917 $C66918))
        ($main_inv48 $i61913 0 $m63915 $n64916 $A65917 $C66918))))

; loop term $main_sum48
(assert
  (forall (($n64922 Int) ($A65923 (Array Int (Array Int Int))) ($i61919 Int) ($C66924 Int) ($m63921 Int) ($j62920 Int))
    (=> (and (not (< $j62920 $n64922)))
        ($main_sum48 $i61919 $j62920 $m63921 $n64922 $A65923 $C66924 $i61919 $j62920 $m63921 $n64922 $A65923 $C66924))))

; __VERIFIER_assert precondition
(assert
  (forall (($n64922 Int) ($A65923 (Array Int (Array Int Int))) ($i61919 Int) ($C66924 Int) ($m63921 Int) ($j62920 Int))
    (=> (and (< $j62920 $n64922)
             ($main_inv48 $i61919 $j62920 $m63921 $n64922 $A65923 $C66924))
        ($__VERIFIER_assert_pre (ite (= (select (select $A65923 $i61919) $j62920) $C66924) 1 0)))))

; forwards $main_inv48
(assert
  (forall (($n64922 Int) ($A65923 (Array Int (Array Int Int))) ($i61919 Int) ($C66924 Int) ($m63921 Int) ($j62920 Int))
    (=> (and (__VERIFIER_assert (ite (= (select (select $A65923 $i61919) $j62920) $C66924) 1 0))
             (< $j62920 $n64922)
             ($main_inv48 $i61919 $j62920 $m63921 $n64922 $A65923 $C66924))
        ($main_inv48 $i61919 (+ $j62920 1) $m63921 $n64922 $A65923 $C66924))))

; backwards $main_sum48
(assert
  (forall (($n64922 Int) ($A65929 (Array Int (Array Int Int))) ($A65923 (Array Int (Array Int Int))) ($n64928 Int) ($i61925 Int) ($i61919 Int) ($C66930 Int) ($C66924 Int) ($m63921 Int) ($m63927 Int) ($j62920 Int) ($j62926 Int))
    (=> (and ($main_sum48 $i61919 (+ $j62920 1) $m63921 $n64922 $A65923 $C66924 $i61925 $j62926 $m63927 $n64928 $A65929 $C66930)
             (__VERIFIER_assert (ite (= (select (select $A65923 $i61919) $j62920) $C66924) 1 0))
             (< $j62920 $n64922))
        ($main_sum48 $i61919 $j62920 $m63921 $n64922 $A65923 $C66924 $i61925 $j62926 $m63927 $n64928 $A65929 $C66930))))

; forwards $main_inv47
(assert
  (forall (($i61913 Int) ($j62932 Int) ($n64916 Int) ($n64934 Int) ($A65935 (Array Int (Array Int Int))) ($C66918 Int) ($j62914 Int) ($A65917 (Array Int (Array Int Int))) ($i61931 Int) ($m63933 Int) ($m63915 Int) ($C66936 Int))
    (=> (and ($main_sum48 $i61913 0 $m63915 $n64916 $A65917 $C66918 $i61931 $j62932 $m63933 $n64934 $A65935 $C66936)
             (< $i61913 $m63915)
             ($main_inv47 $i61913 $j62914 $m63915 $n64916 $A65917 $C66918))
        ($main_inv47 (+ $i61931 1) $j62932 $m63933 $n64934 $A65935 $C66936))))

; backwards $main_sum47
(assert
  (forall (($i61937 Int) ($i61913 Int) ($j62932 Int) ($n64916 Int) ($n64934 Int) ($m63939 Int) ($A65941 (Array Int (Array Int Int))) ($C66942 Int) ($j62914 Int) ($A65917 (Array Int (Array Int Int))) ($i61931 Int) ($m63933 Int) ($m63915 Int) ($C66936 Int) ($A65935 (Array Int (Array Int Int))) ($n64940 Int) ($j62938 Int) ($C66918 Int))
    (=> (and ($main_sum47 (+ $i61931 1) $j62932 $m63933 $n64934 $A65935 $C66936 $i61937 $j62938 $m63939 $n64940 $A65941 $C66942)
             ($main_sum48 $i61913 0 $m63915 $n64916 $A65917 $C66918 $i61931 $j62932 $m63933 $n64934 $A65935 $C66936)
             (< $i61913 $m63915))
        ($main_sum47 $i61913 $j62914 $m63915 $n64916 $A65917 $C66918 $i61937 $j62938 $m63939 $n64940 $A65941 $C66942))))

(check-sat)
