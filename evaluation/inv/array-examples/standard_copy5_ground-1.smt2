(set-logic HORN)

(declare-fun $main_inv131 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum126 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv126 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum128 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum125 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv127 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv125 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum127 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_inv130 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum130 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum131 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if51 (Int) Bool)
(declare-fun $main_inv128 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum129 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv129 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond1894 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond1894))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if51 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond1895 Int))
    (=> (and ($__VERIFIER_assert_if51 cond1895))
        (__VERIFIER_assert cond1895))))

; loop entry $main_inv125
(assert
  (forall (($a4209 (Array Int Int)) ($a6211 (Array Int Int)) ($a2207 (Array Int Int)) ($a3208 (Array Int Int)) ($a1206 (Array Int Int)) ($i213 Int) ($a5210 (Array Int Int)) ($x214 Int))
        ($main_inv125 $a1206 $a2207 $a3208 $a4209 $a5210 $a6211 0 $i213 $x214)))

; loop term $main_sum125
(assert
  (forall (($a32081898 (Array Int Int)) ($a22071897 (Array Int Int)) ($a62111901 (Array Int Int)) ($i2131903 Int) ($x2141904 Int) ($a12061896 (Array Int Int)) ($a2121902 Int) ($a52101900 (Array Int Int)) ($a42091899 (Array Int Int)))
    (=> (and (not (< $a2121902 100000))
             ($main_inv125 $a12061896 $a22071897 $a32081898 $a42091899 $a52101900 $a62111901 $a2121902 $i2131903 $x2141904))
        ($main_sum125 $a12061896 $a22071897 $a32081898 $a42091899 $a52101900 $a62111901 $a2121902 $i2131903 $x2141904))))

; forwards $main_inv125
(assert
  (forall (($a32081898 (Array Int Int)) ($a22071897 (Array Int Int)) ($a62111901 (Array Int Int)) ($i2131903 Int) ($a12061896 (Array Int Int)) ($a2121902 Int) ($a52101900 (Array Int Int)) ($a42091899 (Array Int Int)) ($int1905 Int) ($x2141904 Int))
    (=> (and (<= (- 2147483648) $int1905)
             (<= $int1905 2147483647)
             (< $a2121902 100000)
             ($main_inv125 $a12061896 $a22071897 $a32081898 $a42091899 $a52101900 $a62111901 $a2121902 $i2131903 $x2141904))
        ($main_inv125 (store $a12061896 $a2121902 $int1905) $a22071897 $a32081898 $a42091899 $a52101900 $a62111901 (+ $a2121902 1) $i2131903 $x2141904))))

; loop entry $main_inv126
(assert
  (forall (($a32081908 (Array Int Int)) ($a62111911 (Array Int Int)) ($a42091909 (Array Int Int)) ($a52101910 (Array Int Int)) ($a22071907 (Array Int Int)) ($a2121912 Int) ($i2131913 Int) ($a12061906 (Array Int Int)) ($x2141914 Int))
    (=> (and ($main_sum125 $a12061906 $a22071907 $a32081908 $a42091909 $a52101910 $a62111911 $a2121912 $i2131913 $x2141914))
        ($main_inv126 $a12061906 $a22071907 $a32081908 $a42091909 $a52101910 $a62111911 $a2121912 0 $x2141914))))

; loop term $main_sum126
(assert
  (forall (($a62111920 (Array Int Int)) ($a2121921 Int) ($x2141923 Int) ($a22071916 (Array Int Int)) ($a32081917 (Array Int Int)) ($a12061915 (Array Int Int)) ($i2131922 Int) ($a42091918 (Array Int Int)) ($a52101919 (Array Int Int)))
    (=> (and (not (< $i2131922 100000))
             ($main_inv126 $a12061915 $a22071916 $a32081917 $a42091918 $a52101919 $a62111920 $a2121921 $i2131922 $x2141923))
        ($main_sum126 $a12061915 $a22071916 $a32081917 $a42091918 $a52101919 $a62111920 $a2121921 $i2131922 $x2141923))))

; forwards $main_inv126
(assert
  (forall (($a62111920 (Array Int Int)) ($a2121921 Int) ($x2141923 Int) ($a22071916 (Array Int Int)) ($a32081917 (Array Int Int)) ($a12061915 (Array Int Int)) ($i2131922 Int) ($a42091918 (Array Int Int)) ($a52101919 (Array Int Int)))
    (=> (and (< $i2131922 100000)
             ($main_inv126 $a12061915 $a22071916 $a32081917 $a42091918 $a52101919 $a62111920 $a2121921 $i2131922 $x2141923))
        ($main_inv126 $a12061915 (store $a22071916 $i2131922 (select $a12061915 $i2131922)) $a32081917 $a42091918 $a52101919 $a62111920 $a2121921 (+ $i2131922 1) $x2141923))))

; loop entry $main_inv127
(assert
  (forall (($a12061924 (Array Int Int)) ($a42091927 (Array Int Int)) ($x2141932 Int) ($a22071925 (Array Int Int)) ($a2121930 Int) ($a52101928 (Array Int Int)) ($a32081926 (Array Int Int)) ($a62111929 (Array Int Int)) ($i2131931 Int))
    (=> (and ($main_sum126 $a12061924 $a22071925 $a32081926 $a42091927 $a52101928 $a62111929 $a2121930 $i2131931 $x2141932))
        ($main_inv127 $a12061924 $a22071925 $a32081926 $a42091927 $a52101928 $a62111929 $a2121930 0 $x2141932))))

; loop term $main_sum127
(assert
  (forall (($i2131940 Int) ($x2141941 Int) ($a32081935 (Array Int Int)) ($a2121939 Int) ($a62111938 (Array Int Int)) ($a42091936 (Array Int Int)) ($a12061933 (Array Int Int)) ($a52101937 (Array Int Int)) ($a22071934 (Array Int Int)))
    (=> (and (not (< $i2131940 100000))
             ($main_inv127 $a12061933 $a22071934 $a32081935 $a42091936 $a52101937 $a62111938 $a2121939 $i2131940 $x2141941))
        ($main_sum127 $a12061933 $a22071934 $a32081935 $a42091936 $a52101937 $a62111938 $a2121939 $i2131940 $x2141941))))

; forwards $main_inv127
(assert
  (forall (($i2131940 Int) ($x2141941 Int) ($a32081935 (Array Int Int)) ($a2121939 Int) ($a62111938 (Array Int Int)) ($a42091936 (Array Int Int)) ($a12061933 (Array Int Int)) ($a52101937 (Array Int Int)) ($a22071934 (Array Int Int)))
    (=> (and (< $i2131940 100000)
             ($main_inv127 $a12061933 $a22071934 $a32081935 $a42091936 $a52101937 $a62111938 $a2121939 $i2131940 $x2141941))
        ($main_inv127 $a12061933 $a22071934 (store $a32081935 $i2131940 (select $a22071934 $i2131940)) $a42091936 $a52101937 $a62111938 $a2121939 (+ $i2131940 1) $x2141941))))

; loop entry $main_inv128
(assert
  (forall (($x2141950 Int) ($a52101946 (Array Int Int)) ($a12061942 (Array Int Int)) ($i2131949 Int) ($a32081944 (Array Int Int)) ($a62111947 (Array Int Int)) ($a42091945 (Array Int Int)) ($a2121948 Int) ($a22071943 (Array Int Int)))
    (=> (and ($main_sum127 $a12061942 $a22071943 $a32081944 $a42091945 $a52101946 $a62111947 $a2121948 $i2131949 $x2141950))
        ($main_inv128 $a12061942 $a22071943 $a32081944 $a42091945 $a52101946 $a62111947 $a2121948 0 $x2141950))))

; loop term $main_sum128
(assert
  (forall (($x2141959 Int) ($i2131958 Int) ($a62111956 (Array Int Int)) ($a42091954 (Array Int Int)) ($a12061951 (Array Int Int)) ($a32081953 (Array Int Int)) ($a22071952 (Array Int Int)) ($a52101955 (Array Int Int)) ($a2121957 Int))
    (=> (and (not (< $i2131958 100000))
             ($main_inv128 $a12061951 $a22071952 $a32081953 $a42091954 $a52101955 $a62111956 $a2121957 $i2131958 $x2141959))
        ($main_sum128 $a12061951 $a22071952 $a32081953 $a42091954 $a52101955 $a62111956 $a2121957 $i2131958 $x2141959))))

; forwards $main_inv128
(assert
  (forall (($x2141959 Int) ($i2131958 Int) ($a62111956 (Array Int Int)) ($a42091954 (Array Int Int)) ($a12061951 (Array Int Int)) ($a32081953 (Array Int Int)) ($a22071952 (Array Int Int)) ($a52101955 (Array Int Int)) ($a2121957 Int))
    (=> (and (< $i2131958 100000)
             ($main_inv128 $a12061951 $a22071952 $a32081953 $a42091954 $a52101955 $a62111956 $a2121957 $i2131958 $x2141959))
        ($main_inv128 $a12061951 $a22071952 $a32081953 (store $a42091954 $i2131958 (select $a32081953 $i2131958)) $a52101955 $a62111956 $a2121957 (+ $i2131958 1) $x2141959))))

; loop entry $main_inv129
(assert
  (forall (($a22071961 (Array Int Int)) ($a62111965 (Array Int Int)) ($a12061960 (Array Int Int)) ($a32081962 (Array Int Int)) ($x2141968 Int) ($a52101964 (Array Int Int)) ($a2121966 Int) ($i2131967 Int) ($a42091963 (Array Int Int)))
    (=> (and ($main_sum128 $a12061960 $a22071961 $a32081962 $a42091963 $a52101964 $a62111965 $a2121966 $i2131967 $x2141968))
        ($main_inv129 $a12061960 $a22071961 $a32081962 $a42091963 $a52101964 $a62111965 $a2121966 0 $x2141968))))

; loop term $main_sum129
(assert
  (forall (($x2141977 Int) ($a22071970 (Array Int Int)) ($a52101973 (Array Int Int)) ($i2131976 Int) ($a32081971 (Array Int Int)) ($a12061969 (Array Int Int)) ($a62111974 (Array Int Int)) ($a42091972 (Array Int Int)) ($a2121975 Int))
    (=> (and (not (< $i2131976 100000))
             ($main_inv129 $a12061969 $a22071970 $a32081971 $a42091972 $a52101973 $a62111974 $a2121975 $i2131976 $x2141977))
        ($main_sum129 $a12061969 $a22071970 $a32081971 $a42091972 $a52101973 $a62111974 $a2121975 $i2131976 $x2141977))))

; forwards $main_inv129
(assert
  (forall (($x2141977 Int) ($a22071970 (Array Int Int)) ($a52101973 (Array Int Int)) ($i2131976 Int) ($a32081971 (Array Int Int)) ($a12061969 (Array Int Int)) ($a62111974 (Array Int Int)) ($a42091972 (Array Int Int)) ($a2121975 Int))
    (=> (and (< $i2131976 100000)
             ($main_inv129 $a12061969 $a22071970 $a32081971 $a42091972 $a52101973 $a62111974 $a2121975 $i2131976 $x2141977))
        ($main_inv129 $a12061969 $a22071970 $a32081971 $a42091972 (store $a52101973 $i2131976 (select $a42091972 $i2131976)) $a62111974 $a2121975 (+ $i2131976 1) $x2141977))))

; loop entry $main_inv130
(assert
  (forall (($a52101982 (Array Int Int)) ($a2121984 Int) ($x2141986 Int) ($a22071979 (Array Int Int)) ($a62111983 (Array Int Int)) ($a32081980 (Array Int Int)) ($a12061978 (Array Int Int)) ($a42091981 (Array Int Int)) ($i2131985 Int))
    (=> (and ($main_sum129 $a12061978 $a22071979 $a32081980 $a42091981 $a52101982 $a62111983 $a2121984 $i2131985 $x2141986))
        ($main_inv130 $a12061978 $a22071979 $a32081980 $a42091981 $a52101982 $a62111983 $a2121984 0 $x2141986))))

; loop term $main_sum130
(assert
  (forall (($a32081989 (Array Int Int)) ($a62111992 (Array Int Int)) ($a2121993 Int) ($i2131994 Int) ($a22071988 (Array Int Int)) ($a42091990 (Array Int Int)) ($x2141995 Int) ($a12061987 (Array Int Int)) ($a52101991 (Array Int Int)))
    (=> (and (not (< $i2131994 100000))
             ($main_inv130 $a12061987 $a22071988 $a32081989 $a42091990 $a52101991 $a62111992 $a2121993 $i2131994 $x2141995))
        ($main_sum130 $a12061987 $a22071988 $a32081989 $a42091990 $a52101991 $a62111992 $a2121993 $i2131994 $x2141995))))

; forwards $main_inv130
(assert
  (forall (($a32081989 (Array Int Int)) ($a62111992 (Array Int Int)) ($a2121993 Int) ($i2131994 Int) ($a22071988 (Array Int Int)) ($a42091990 (Array Int Int)) ($x2141995 Int) ($a12061987 (Array Int Int)) ($a52101991 (Array Int Int)))
    (=> (and (< $i2131994 100000)
             ($main_inv130 $a12061987 $a22071988 $a32081989 $a42091990 $a52101991 $a62111992 $a2121993 $i2131994 $x2141995))
        ($main_inv130 $a12061987 $a22071988 $a32081989 $a42091990 $a52101991 (store $a62111992 $i2131994 (select $a52101991 $i2131994)) $a2121993 (+ $i2131994 1) $x2141995))))

; loop entry $main_inv131
(assert
  (forall (($a12061996 (Array Int Int)) ($a32081998 (Array Int Int)) ($a42091999 (Array Int Int)) ($a2122002 Int) ($i2132003 Int) ($a22071997 (Array Int Int)) ($a52102000 (Array Int Int)) ($x2142004 Int) ($a62112001 (Array Int Int)))
    (=> (and ($main_sum130 $a12061996 $a22071997 $a32081998 $a42091999 $a52102000 $a62112001 $a2122002 $i2132003 $x2142004))
        ($main_inv131 $a12061996 $a22071997 $a32081998 $a42091999 $a52102000 $a62112001 $a2122002 $i2132003 0))))

; loop term $main_sum131
(assert
  (forall (($a22072006 (Array Int Int)) ($a12062005 (Array Int Int)) ($a62112010 (Array Int Int)) ($a42092008 (Array Int Int)) ($a52102009 (Array Int Int)) ($x2142013 Int) ($a2122011 Int) ($a32082007 (Array Int Int)) ($i2132012 Int))
    (=> (and (not (< $x2142013 100000))
             ($main_inv131 $a12062005 $a22072006 $a32082007 $a42092008 $a52102009 $a62112010 $a2122011 $i2132012 $x2142013))
        ($main_sum131 $a12062005 $a22072006 $a32082007 $a42092008 $a52102009 $a62112010 $a2122011 $i2132012 $x2142013))))

; __VERIFIER_assert precondition
(assert
  (forall (($a22072006 (Array Int Int)) ($a12062005 (Array Int Int)) ($a62112010 (Array Int Int)) ($a42092008 (Array Int Int)) ($a52102009 (Array Int Int)) ($x2142013 Int) ($a2122011 Int) ($a32082007 (Array Int Int)) ($i2132012 Int))
    (=> (and (< $x2142013 100000)
             ($main_inv131 $a12062005 $a22072006 $a32082007 $a42092008 $a52102009 $a62112010 $a2122011 $i2132012 $x2142013))
        ($__VERIFIER_assert_pre (ite (= (select $a12062005 $x2142013) (select $a62112010 $x2142013)) 1 0)))))

; forwards $main_inv131
(assert
  (forall (($a22072006 (Array Int Int)) ($a12062005 (Array Int Int)) ($a62112010 (Array Int Int)) ($a42092008 (Array Int Int)) ($a52102009 (Array Int Int)) ($x2142013 Int) ($a2122011 Int) ($a32082007 (Array Int Int)) ($i2132012 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a12062005 $x2142013) (select $a62112010 $x2142013)) 1 0))
             (< $x2142013 100000)
             ($main_inv131 $a12062005 $a22072006 $a32082007 $a42092008 $a52102009 $a62112010 $a2122011 $i2132012 $x2142013))
        ($main_inv131 $a12062005 $a22072006 $a32082007 $a42092008 $a52102009 $a62112010 $a2122011 $i2132012 (+ $x2142013 1)))))

(check-sat)
