(set-logic HORN)

(declare-fun $main_inv48 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv51 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv49 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum49 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum48 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if23 (Int Int) Bool)
(declare-fun $main_inv50 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv52 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum51 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum50 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_if24 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum52 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond936 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond936))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if23 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond937 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if23 cond cond937))
        (__VERIFIER_assert cond937))))

; loop entry $main_inv48
(assert
  (forall (($t109 Int) ($y111 Int) ($x110 Int) ($j106 Int) ($i108 Int) ($swapped107 Int) ($a105 (Array Int Int)))
    (=> (and (= $j106 0))
        ($main_inv48 $a105 $j106 $swapped107 $i108 $t109 $x110 $y111))))

; loop term $main_sum48
(assert
  (forall (($i108941 Int) ($y111944 Int) ($t109942 Int) ($x110943 Int) ($j106939 Int) ($swapped107940 Int) ($a105938 (Array Int Int)))
    (=> (and (not (< $j106939 100000)))
        ($main_sum48 $a105938 $j106939 $swapped107940 $i108941 $t109942 $x110943 $y111944 $a105938 $j106939 $swapped107940 $i108941 $t109942 $x110943 $y111944))))

; forwards $main_inv48
(assert
  (forall (($i108941 Int) ($y111944 Int) ($t109942 Int) ($x110943 Int) ($int945 Int) ($j106939 Int) ($swapped107940 Int) ($a105938 (Array Int Int)))
    (=> (and (<= (- 2147483648) $int945)
             (<= $int945 2147483647)
             (< $j106939 100000)
             ($main_inv48 $a105938 $j106939 $swapped107940 $i108941 $t109942 $x110943 $y111944))
        ($main_inv48 (store $a105938 $j106939 $int945) (+ $j106939 1) $swapped107940 $i108941 $t109942 $x110943 $y111944))))

; backwards $main_sum48
(assert
  (forall (($i108941 Int) ($swapped107948 Int) ($x110951 Int) ($t109942 Int) ($j106947 Int) ($x110943 Int) ($t109950 Int) ($int945 Int) ($j106939 Int) ($a105946 (Array Int Int)) ($a105938 (Array Int Int)) ($y111944 Int) ($i108949 Int) ($swapped107940 Int) ($y111952 Int))
    (=> (and ($main_sum48 (store $a105938 $j106939 $int945) (+ $j106939 1) $swapped107940 $i108941 $t109942 $x110943 $y111944 $a105946 $j106947 $swapped107948 $i108949 $t109950 $x110951 $y111952)
             (<= (- 2147483648) $int945)
             (<= $int945 2147483647)
             (< $j106939 100000))
        ($main_sum48 $a105938 $j106939 $swapped107940 $i108941 $t109942 $x110943 $y111944 $a105946 $j106947 $swapped107948 $i108949 $t109950 $x110951 $y111952))))

; loop entry $main_inv49
(assert
  (forall (($y111959 Int) ($t109 Int) ($i108956 Int) ($swapped107955 Int) ($j106954 Int) ($x110 Int) ($j106 Int) ($i108 Int) ($swapped107 Int) ($t109957 Int) ($x110958 Int) ($y111 Int) ($a105953 (Array Int Int)) ($a105 (Array Int Int)))
    (=> (and (= $swapped107955 1)
             ($main_sum48 $a105 $j106 $swapped107 $i108 $t109 $x110 $y111 $a105953 $j106954 $swapped107955 $i108956 $t109957 $x110958 $y111959)
             (= $j106 0))
        ($main_inv49 $a105953 $j106954 $swapped107955 $i108956 $t109957 $x110958 $y111959))))

; loop term $main_sum49
(assert
  (forall (($j106961 Int) ($i108963 Int) ($a105960 (Array Int Int)) ($swapped107962 Int) ($y111966 Int) ($t109964 Int) ($x110965 Int))
    (=> (and (= $swapped107962 0))
        ($main_sum49 $a105960 $j106961 $swapped107962 $i108963 $t109964 $x110965 $y111966 $a105960 $j106961 $swapped107962 $i108963 $t109964 $x110965 $y111966))))

; loop entry $main_inv50
(assert
  (forall (($j106961 Int) ($i108963 Int) ($a105960 (Array Int Int)) ($swapped107962 Int) ($y111966 Int) ($t109964 Int) ($x110965 Int))
    (=> (and (= $i108963 1)
             (not (= $swapped107962 0))
             ($main_inv49 $a105960 $j106961 $swapped107962 $i108963 $t109964 $x110965 $y111966))
        ($main_inv50 $a105960 $j106961 0 $i108963 $t109964 $x110965 $y111966))))

; loop term $main_sum50
(assert
  (forall (($j106968 Int) ($t109971 Int) ($y111973 Int) ($a105967 (Array Int Int)) ($swapped107969 Int) ($i108970 Int) ($x110972 Int))
    (=> (and (not (< $i108970 100000)))
        ($main_sum50 $a105967 $j106968 $swapped107969 $i108970 $t109971 $x110972 $y111973 $a105967 $j106968 $swapped107969 $i108970 $t109971 $x110972 $y111973))))

; if then
(assert
  (forall (($j106968 Int) ($t109971 Int) ($y111973 Int) ($a105967 (Array Int Int)) ($swapped107969 Int) ($i108970 Int) ($x110972 Int))
    (=> (and (= $t109971 (select $a105967 $i108970))
             (< (select $a105967 (- $i108970 1)) (select $a105967 $i108970))
             (< $i108970 100000)
             ($main_inv50 $a105967 $j106968 $swapped107969 $i108970 $t109971 $x110972 $y111973))
        ($main_if24 $a105967 $j106968 $swapped107969 $i108970 $t109971 $x110972 $y111973 (store (store $a105967 $i108970 (select $a105967 (- $i108970 1))) (- $i108970 1) $t109971) $j106968 1 $i108970 $t109971 $x110972 $y111973))))

; if else
(assert
  (forall (($j106968 Int) ($t109971 Int) ($y111973 Int) ($a105967 (Array Int Int)) ($swapped107969 Int) ($i108970 Int) ($x110972 Int))
    (=> (and (not (< (select $a105967 (- $i108970 1)) (select $a105967 $i108970)))
             (< $i108970 100000)
             ($main_inv50 $a105967 $j106968 $swapped107969 $i108970 $t109971 $x110972 $y111973))
        ($main_if24 $a105967 $j106968 $swapped107969 $i108970 $t109971 $x110972 $y111973 $a105967 $j106968 $swapped107969 $i108970 $t109971 $x110972 $y111973))))

; forwards $main_inv50
(assert
  (forall (($j106975 Int) ($y111980 Int) ($i108977 Int) ($j106968 Int) ($t109971 Int) ($a105967 (Array Int Int)) ($x110979 Int) ($a105974 (Array Int Int)) ($swapped107969 Int) ($swapped107976 Int) ($i108970 Int) ($x110972 Int) ($t109978 Int) ($y111973 Int))
    (=> (and ($main_if24 $a105967 $j106968 $swapped107969 $i108970 $t109971 $x110972 $y111973 $a105974 $j106975 $swapped107976 $i108977 $t109978 $x110979 $y111980))
        ($main_inv50 $a105974 $j106975 $swapped107976 (+ $i108977 1) $t109978 $x110979 $y111980))))

; backwards $main_sum50
(assert
  (forall (($j106975 Int) ($y111987 Int) ($swapped107983 Int) ($i108977 Int) ($j106968 Int) ($j106982 Int) ($t109971 Int) ($a105981 (Array Int Int)) ($x110979 Int) ($a105974 (Array Int Int)) ($t109985 Int) ($swapped107969 Int) ($swapped107976 Int) ($y111980 Int) ($x110986 Int) ($i108970 Int) ($x110972 Int) ($t109978 Int) ($y111973 Int) ($a105967 (Array Int Int)) ($i108984 Int))
    (=> (and ($main_sum50 $a105974 $j106975 $swapped107976 (+ $i108977 1) $t109978 $x110979 $y111980 $a105981 $j106982 $swapped107983 $i108984 $t109985 $x110986 $y111987)
             ($main_if24 $a105967 $j106968 $swapped107969 $i108970 $t109971 $x110972 $y111973 $a105974 $j106975 $swapped107976 $i108977 $t109978 $x110979 $y111980))
        ($main_sum50 $a105967 $j106968 $swapped107969 $i108970 $t109971 $x110972 $y111973 $a105981 $j106982 $swapped107983 $i108984 $t109985 $x110986 $y111987))))

; forwards $main_inv49
(assert
  (forall (($j106961 Int) ($t109992 Int) ($i108991 Int) ($i108963 Int) ($j106989 Int) ($a105960 (Array Int Int)) ($swapped107962 Int) ($y111966 Int) ($t109964 Int) ($swapped107990 Int) ($x110965 Int) ($x110993 Int) ($a105988 (Array Int Int)) ($y111994 Int))
    (=> (and ($main_sum50 $a105960 $j106961 0 $i108963 $t109964 $x110965 $y111966 $a105988 $j106989 $swapped107990 $i108991 $t109992 $x110993 $y111994)
             (= $i108963 1)
             (not (= $swapped107962 0))
             ($main_inv49 $a105960 $j106961 $swapped107962 $i108963 $t109964 $x110965 $y111966))
        ($main_inv49 $a105988 $j106989 $swapped107990 $i108991 $t109992 $x110993 $y111994))))

; backwards $main_sum49
(assert
  (forall (($a105995 (Array Int Int)) ($j106961 Int) ($t109992 Int) ($swapped107997 Int) ($i108998 Int) ($t109999 Int) ($i108991 Int) ($i108963 Int) ($j106989 Int) ($a105960 (Array Int Int)) ($x1101000 Int) ($swapped107962 Int) ($t109964 Int) ($swapped107990 Int) ($x110965 Int) ($a105988 (Array Int Int)) ($y111994 Int) ($y111966 Int) ($y1111001 Int) ($j106996 Int) ($x110993 Int))
    (=> (and ($main_sum49 $a105988 $j106989 $swapped107990 $i108991 $t109992 $x110993 $y111994 $a105995 $j106996 $swapped107997 $i108998 $t109999 $x1101000 $y1111001)
             ($main_sum50 $a105960 $j106961 0 $i108963 $t109964 $x110965 $y111966 $a105988 $j106989 $swapped107990 $i108991 $t109992 $x110993 $y111994)
             (= $i108963 1)
             (not (= $swapped107962 0)))
        ($main_sum49 $a105960 $j106961 $swapped107962 $i108963 $t109964 $x110965 $y111966 $a105995 $j106996 $swapped107997 $i108998 $t109999 $x1101000 $y1111001))))

; loop entry $main_inv51
(assert
  (forall (($y111959 Int) ($i108956 Int) ($x1101007 Int) ($a1051002 (Array Int Int)) ($swapped1071004 Int) ($x110 Int) ($j106 Int) ($i108 Int) ($j1061003 Int) ($swapped107 Int) ($t109957 Int) ($t109 Int) ($y1111008 Int) ($x110958 Int) ($y111 Int) ($i1081005 Int) ($swapped107955 Int) ($j106954 Int) ($t1091006 Int) ($a105953 (Array Int Int)) ($a105 (Array Int Int)))
    (=> (and ($main_sum49 $a105953 $j106954 $swapped107955 $i108956 $t109957 $x110958 $y111959 $a1051002 $j1061003 $swapped1071004 $i1081005 $t1091006 $x1101007 $y1111008)
             (= $swapped107955 1)
             ($main_sum48 $a105 $j106 $swapped107 $i108 $t109 $x110 $y111 $a105953 $j106954 $swapped107955 $i108956 $t109957 $x110958 $y111959)
             (= $j106 0))
        ($main_inv51 $a1051002 $j1061003 $swapped1071004 $i1081005 $t1091006 0 $y1111008))))

; loop term $main_sum51
(assert
  (forall (($y1111015 Int) ($swapped1071011 Int) ($x1101014 Int) ($i1081012 Int) ($j1061010 Int) ($a1051009 (Array Int Int)) ($t1091013 Int))
    (=> (and (not (< $x1101014 100000)))
        ($main_sum51 $a1051009 $j1061010 $swapped1071011 $i1081012 $t1091013 $x1101014 $y1111015 $a1051009 $j1061010 $swapped1071011 $i1081012 $t1091013 $x1101014 $y1111015))))

; loop entry $main_inv52
(assert
  (forall (($y1111015 Int) ($swapped1071011 Int) ($x1101014 Int) ($i1081012 Int) ($j1061010 Int) ($a1051009 (Array Int Int)) ($t1091013 Int))
    (=> (and (< $x1101014 100000)
             ($main_inv51 $a1051009 $j1061010 $swapped1071011 $i1081012 $t1091013 $x1101014 $y1111015))
        ($main_inv52 $a1051009 $j1061010 $swapped1071011 $i1081012 $t1091013 $x1101014 (+ $x1101014 1)))))

; loop term $main_sum52
(assert
  (forall (($x1101021 Int) ($swapped1071018 Int) ($t1091020 Int) ($a1051016 (Array Int Int)) ($i1081019 Int) ($y1111022 Int) ($j1061017 Int))
    (=> (and (not (< $y1111022 100000)))
        ($main_sum52 $a1051016 $j1061017 $swapped1071018 $i1081019 $t1091020 $x1101021 $y1111022 $a1051016 $j1061017 $swapped1071018 $i1081019 $t1091020 $x1101021 $y1111022))))

; __VERIFIER_assert precondition
(assert
  (forall (($x1101021 Int) ($swapped1071018 Int) ($t1091020 Int) ($a1051016 (Array Int Int)) ($i1081019 Int) ($y1111022 Int) ($j1061017 Int))
    (=> (and (< $y1111022 100000)
             ($main_inv52 $a1051016 $j1061017 $swapped1071018 $i1081019 $t1091020 $x1101021 $y1111022))
        ($__VERIFIER_assert_pre (ite (<= (select $a1051016 $x1101021) (select $a1051016 $y1111022)) 1 0)))))

; forwards $main_inv52
(assert
  (forall (($x1101021 Int) ($swapped1071018 Int) ($t1091020 Int) ($a1051016 (Array Int Int)) ($i1081019 Int) ($y1111022 Int) ($j1061017 Int))
    (=> (and (__VERIFIER_assert (ite (<= (select $a1051016 $x1101021) (select $a1051016 $y1111022)) 1 0))
             (< $y1111022 100000)
             ($main_inv52 $a1051016 $j1061017 $swapped1071018 $i1081019 $t1091020 $x1101021 $y1111022))
        ($main_inv52 $a1051016 $j1061017 $swapped1071018 $i1081019 $t1091020 $x1101021 (+ $y1111022 1)))))

; backwards $main_sum52
(assert
  (forall (($x1101021 Int) ($swapped1071018 Int) ($a1051023 (Array Int Int)) ($a1051016 (Array Int Int)) ($y1111022 Int) ($t1091027 Int) ($j1061017 Int) ($j1061024 Int) ($t1091020 Int) ($i1081026 Int) ($x1101028 Int) ($i1081019 Int) ($swapped1071025 Int) ($y1111029 Int))
    (=> (and ($main_sum52 $a1051016 $j1061017 $swapped1071018 $i1081019 $t1091020 $x1101021 (+ $y1111022 1) $a1051023 $j1061024 $swapped1071025 $i1081026 $t1091027 $x1101028 $y1111029)
             (__VERIFIER_assert (ite (<= (select $a1051016 $x1101021) (select $a1051016 $y1111022)) 1 0))
             (< $y1111022 100000))
        ($main_sum52 $a1051016 $j1061017 $swapped1071018 $i1081019 $t1091020 $x1101021 $y1111022 $a1051023 $j1061024 $swapped1071025 $i1081026 $t1091027 $x1101028 $y1111029))))

; forwards $main_inv51
(assert
  (forall (($y1111015 Int) ($swapped1071011 Int) ($a1051030 (Array Int Int)) ($i1081033 Int) ($swapped1071032 Int) ($i1081012 Int) ($j1061010 Int) ($a1051009 (Array Int Int)) ($t1091013 Int) ($t1091034 Int) ($y1111036 Int) ($j1061031 Int) ($x1101035 Int) ($x1101014 Int))
    (=> (and ($main_sum52 $a1051009 $j1061010 $swapped1071011 $i1081012 $t1091013 $x1101014 (+ $x1101014 1) $a1051030 $j1061031 $swapped1071032 $i1081033 $t1091034 $x1101035 $y1111036)
             (< $x1101014 100000)
             ($main_inv51 $a1051009 $j1061010 $swapped1071011 $i1081012 $t1091013 $x1101014 $y1111015))
        ($main_inv51 $a1051030 $j1061031 $swapped1071032 $i1081033 $t1091034 (+ $x1101035 1) $y1111036))))

; backwards $main_sum51
(assert
  (forall (($t1091041 Int) ($y1111015 Int) ($swapped1071011 Int) ($a1051037 (Array Int Int)) ($a1051030 (Array Int Int)) ($i1081033 Int) ($swapped1071032 Int) ($swapped1071039 Int) ($j1061010 Int) ($j1061038 Int) ($a1051009 (Array Int Int)) ($t1091013 Int) ($t1091034 Int) ($j1061031 Int) ($x1101035 Int) ($x1101014 Int) ($i1081012 Int) ($i1081040 Int) ($x1101042 Int) ($y1111043 Int) ($y1111036 Int))
    (=> (and ($main_sum51 $a1051030 $j1061031 $swapped1071032 $i1081033 $t1091034 (+ $x1101035 1) $y1111036 $a1051037 $j1061038 $swapped1071039 $i1081040 $t1091041 $x1101042 $y1111043)
             ($main_sum52 $a1051009 $j1061010 $swapped1071011 $i1081012 $t1091013 $x1101014 (+ $x1101014 1) $a1051030 $j1061031 $swapped1071032 $i1081033 $t1091034 $x1101035 $y1111036)
             (< $x1101014 100000))
        ($main_sum51 $a1051009 $j1061010 $swapped1071011 $i1081012 $t1091013 $x1101014 $y1111015 $a1051037 $j1061038 $swapped1071039 $i1081040 $t1091041 $x1101042 $y1111043))))

(check-sat)
