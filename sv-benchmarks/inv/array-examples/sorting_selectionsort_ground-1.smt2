(set-logic HORN)

(declare-fun $main_sum61 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv67 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum66 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if30 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if29 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if28 (Int) Bool)
(declare-fun $main_sum63 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum67 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum68 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv64 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_inv65 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum62 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum64 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv62 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv66 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv63 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv68 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv61 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum65 ((Array Int Int) Int Int Int Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond883 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond883))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if28 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond884 Int))
    (=> (and ($__VERIFIER_assert_if28 cond884))
        (__VERIFIER_assert cond884))))

; loop entry $main_inv61
(assert
  (forall (($s125 Int) ($i120 Int) ($i123 Int) ($k124 Int) ($x121 Int) ($tmp126 Int) ($y122 Int) ($a119 (Array Int Int)))
    (=> (and (= $i123 0)
             (= $i120 0))
        ($main_inv61 $a119 $i120 $x121 $y122 $i123 $k124 $s125 $tmp126))))

; loop term $main_sum61
(assert
  (forall (($y122888 Int) ($s125891 Int) ($a119885 (Array Int Int)) ($k124890 Int) ($tmp126892 Int) ($i120886 Int) ($i123889 Int) ($x121887 Int))
    (=> (and (not (< $i123889 100000))
             ($main_inv61 $a119885 $i120886 $x121887 $y122888 $i123889 $k124890 $s125891 $tmp126892))
        ($main_sum61 $a119885 $i120886 $x121887 $y122888 $i123889 $k124890 $s125891 $tmp126892))))

; forwards $main_inv61
(assert
  (forall (($int893 Int) ($y122888 Int) ($s125891 Int) ($a119885 (Array Int Int)) ($k124890 Int) ($tmp126892 Int) ($i120886 Int) ($i123889 Int) ($x121887 Int))
    (=> (and (<= (- 2147483648) $int893)
             (<= $int893 2147483647)
             (< $i123889 100000)
             ($main_inv61 $a119885 $i120886 $x121887 $y122888 $i123889 $k124890 $s125891 $tmp126892))
        ($main_inv61 (store $a119885 $i123889 $int893) $i120886 $x121887 $y122888 (+ $i123889 1) $k124890 $s125891 $tmp126892))))

; loop entry $main_inv62
(assert
  (forall (($i120895 Int) ($k124899 Int) ($i123898 Int) ($y122897 Int) ($tmp126901 Int) ($s125900 Int) ($x121896 Int) ($a119894 (Array Int Int)))
    (=> (and ($main_sum61 $a119894 $i120895 $x121896 $y122897 $i123898 $k124899 $s125900 $tmp126901))
        ($main_inv62 $a119894 0 $x121896 $y122897 $i123898 $k124899 $s125900 $tmp126901))))

; loop term $main_sum62
(assert
  (forall (($k124907 Int) ($x121904 Int) ($a119902 (Array Int Int)) ($i120903 Int) ($y122905 Int) ($i123906 Int) ($s125908 Int) ($tmp126909 Int))
    (=> (and (not (< $i120903 100000))
             ($main_inv62 $a119902 $i120903 $x121904 $y122905 $i123906 $k124907 $s125908 $tmp126909))
        ($main_sum62 $a119902 $i120903 $x121904 $y122905 $i123906 $k124907 $s125908 $tmp126909))))

; loop entry $main_inv63
(assert
  (forall (($k124907 Int) ($x121904 Int) ($a119902 (Array Int Int)) ($i120903 Int) ($y122905 Int) ($i123906 Int) ($s125908 Int) ($tmp126909 Int))
    (=> (and (= $s125908 $i120903)
             (= $k124907 (+ $i120903 1))
             (< $i120903 100000)
             ($main_inv62 $a119902 $i120903 $x121904 $y122905 $i123906 $k124907 $s125908 $tmp126909))
        ($main_inv63 $a119902 $i120903 $x121904 $y122905 $i123906 $k124907 $s125908 $tmp126909))))

; loop term $main_sum63
(assert
  (forall (($x121912 Int) ($i120911 Int) ($y122913 Int) ($k124915 Int) ($s125916 Int) ($tmp126917 Int) ($i123914 Int) ($a119910 (Array Int Int)))
    (=> (and (not (< $k124915 100000))
             ($main_inv63 $a119910 $i120911 $x121912 $y122913 $i123914 $k124915 $s125916 $tmp126917))
        ($main_sum63 $a119910 $i120911 $x121912 $y122913 $i123914 $k124915 $s125916 $tmp126917))))

; if then
(assert
  (forall (($x121912 Int) ($i120911 Int) ($y122913 Int) ($k124915 Int) ($s125916 Int) ($tmp126917 Int) ($i123914 Int) ($a119910 (Array Int Int)))
    (=> (and (< (select $a119910 $k124915) (select $a119910 $s125916))
             (< $k124915 100000)
             ($main_inv63 $a119910 $i120911 $x121912 $y122913 $i123914 $k124915 $s125916 $tmp126917))
        ($main_if29 $a119910 $i120911 $x121912 $y122913 $i123914 $k124915 $k124915 $tmp126917))))

; if else
(assert
  (forall (($x121912 Int) ($i120911 Int) ($y122913 Int) ($k124915 Int) ($s125916 Int) ($tmp126917 Int) ($i123914 Int) ($a119910 (Array Int Int)))
    (=> (and (not (< (select $a119910 $k124915) (select $a119910 $s125916)))
             (< $k124915 100000)
             ($main_inv63 $a119910 $i120911 $x121912 $y122913 $i123914 $k124915 $s125916 $tmp126917))
        ($main_if29 $a119910 $i120911 $x121912 $y122913 $i123914 $k124915 $s125916 $tmp126917))))

; forwards $main_inv63
(assert
  (forall (($s125924 Int) ($i123922 Int) ($x121920 Int) ($tmp126925 Int) ($a119918 (Array Int Int)) ($k124923 Int) ($y122921 Int) ($i120919 Int))
    (=> (and ($main_if29 $a119918 $i120919 $x121920 $y122921 $i123922 $k124923 $s125924 $tmp126925))
        ($main_inv63 $a119918 $i120919 $x121920 $y122921 $i123922 (+ $k124923 1) $s125924 $tmp126925))))

; if then
(assert
  (forall (($s125932 Int) ($y122929 Int) ($i123930 Int) ($k124931 Int) ($tmp126933 Int) ($i120927 Int) ($x121928 Int) ($a119926 (Array Int Int)))
    (=> (and (= $tmp126933 (select $a119926 $s125932))
             (not (= $s125932 $i120927))
             ($main_sum63 $a119926 $i120927 $x121928 $y122929 $i123930 $k124931 $s125932 $tmp126933))
        ($main_if30 (store (store $a119926 $s125932 (select $a119926 $i120927)) $i120927 $tmp126933) $i120927 $x121928 $y122929 $i123930 $k124931 $s125932 $tmp126933))))

; if else
(assert
  (forall (($s125932 Int) ($y122929 Int) ($i123930 Int) ($k124931 Int) ($tmp126933 Int) ($i120927 Int) ($x121928 Int) ($a119926 (Array Int Int)))
    (=> (and (= $s125932 $i120927)
             ($main_sum63 $a119926 $i120927 $x121928 $y122929 $i123930 $k124931 $s125932 $tmp126933))
        ($main_if30 $a119926 $i120927 $x121928 $y122929 $i123930 $k124931 $s125932 $tmp126933))))

; loop entry $main_inv64
(assert
  (forall (($y122937 Int) ($k124939 Int) ($a119934 (Array Int Int)) ($i123938 Int) ($tmp126941 Int) ($x121936 Int) ($i120935 Int) ($s125940 Int))
    (=> (and ($main_if30 $a119934 $i120935 $x121936 $y122937 $i123938 $k124939 $s125940 $tmp126941))
        ($main_inv64 $a119934 $i120935 0 $y122937 $i123938 $k124939 $s125940 $tmp126941))))

; loop term $main_sum64
(assert
  (forall (($y122945 Int) ($a119942 (Array Int Int)) ($i120943 Int) ($s125948 Int) ($k124947 Int) ($tmp126949 Int) ($x121944 Int) ($i123946 Int))
    (=> (and (not (< $x121944 $i120943))
             ($main_inv64 $a119942 $i120943 $x121944 $y122945 $i123946 $k124947 $s125948 $tmp126949))
        ($main_sum64 $a119942 $i120943 $x121944 $y122945 $i123946 $k124947 $s125948 $tmp126949))))

; loop entry $main_inv65
(assert
  (forall (($y122945 Int) ($a119942 (Array Int Int)) ($i120943 Int) ($s125948 Int) ($k124947 Int) ($tmp126949 Int) ($x121944 Int) ($i123946 Int))
    (=> (and (< $x121944 $i120943)
             ($main_inv64 $a119942 $i120943 $x121944 $y122945 $i123946 $k124947 $s125948 $tmp126949))
        ($main_inv65 $a119942 $i120943 $x121944 (+ $x121944 1) $i123946 $k124947 $s125948 $tmp126949))))

; loop term $main_sum65
(assert
  (forall (($k124955 Int) ($i120951 Int) ($y122953 Int) ($i123954 Int) ($a119950 (Array Int Int)) ($x121952 Int) ($tmp126957 Int) ($s125956 Int))
    (=> (and (not (< $y122953 $i120951))
             ($main_inv65 $a119950 $i120951 $x121952 $y122953 $i123954 $k124955 $s125956 $tmp126957))
        ($main_sum65 $a119950 $i120951 $x121952 $y122953 $i123954 $k124955 $s125956 $tmp126957))))

; __VERIFIER_assert precondition
(assert
  (forall (($k124955 Int) ($i120951 Int) ($y122953 Int) ($i123954 Int) ($a119950 (Array Int Int)) ($x121952 Int) ($tmp126957 Int) ($s125956 Int))
    (=> (and (< $y122953 $i120951)
             ($main_inv65 $a119950 $i120951 $x121952 $y122953 $i123954 $k124955 $s125956 $tmp126957))
        ($__VERIFIER_assert_pre (ite (<= (select $a119950 $x121952) (select $a119950 $y122953)) 1 0)))))

; forwards $main_inv65
(assert
  (forall (($k124955 Int) ($i120951 Int) ($y122953 Int) ($i123954 Int) ($a119950 (Array Int Int)) ($x121952 Int) ($tmp126957 Int) ($s125956 Int))
    (=> (and (__VERIFIER_assert (ite (<= (select $a119950 $x121952) (select $a119950 $y122953)) 1 0))
             (< $y122953 $i120951)
             ($main_inv65 $a119950 $i120951 $x121952 $y122953 $i123954 $k124955 $s125956 $tmp126957))
        ($main_inv65 $a119950 $i120951 $x121952 (+ $y122953 1) $i123954 $k124955 $s125956 $tmp126957))))

; forwards $main_inv64
(assert
  (forall (($i123962 Int) ($tmp126965 Int) ($a119958 (Array Int Int)) ($s125964 Int) ($i120959 Int) ($k124963 Int) ($x121960 Int) ($y122961 Int))
    (=> (and ($main_sum65 $a119958 $i120959 $x121960 $y122961 $i123962 $k124963 $s125964 $tmp126965))
        ($main_inv64 $a119958 $i120959 (+ $x121960 1) $y122961 $i123962 $k124963 $s125964 $tmp126965))))

; loop entry $main_inv66
(assert
  (forall (($i120967 Int) ($k124971 Int) ($tmp126973 Int) ($a119966 (Array Int Int)) ($s125972 Int) ($x121968 Int) ($y122969 Int) ($i123970 Int))
    (=> (and ($main_sum64 $a119966 $i120967 $x121968 $y122969 $i123970 $k124971 $s125972 $tmp126973))
        ($main_inv66 $a119966 $i120967 0 $y122969 $i123970 $k124971 $s125972 $tmp126973))))

; loop term $main_sum66
(assert
  (forall (($x121976 Int) ($tmp126981 Int) ($i123978 Int) ($s125980 Int) ($y122977 Int) ($a119974 (Array Int Int)) ($k124979 Int) ($i120975 Int))
    (=> (and (not (< $x121976 100000))
             ($main_inv66 $a119974 $i120975 $x121976 $y122977 $i123978 $k124979 $s125980 $tmp126981))
        ($main_sum66 $a119974 $i120975 $x121976 $y122977 $i123978 $k124979 $s125980 $tmp126981))))

; __VERIFIER_assert precondition
(assert
  (forall (($x121976 Int) ($tmp126981 Int) ($i123978 Int) ($s125980 Int) ($y122977 Int) ($a119974 (Array Int Int)) ($k124979 Int) ($i120975 Int))
    (=> (and (< $x121976 100000)
             ($main_inv66 $a119974 $i120975 $x121976 $y122977 $i123978 $k124979 $s125980 $tmp126981))
        ($__VERIFIER_assert_pre (ite (>= (select $a119974 $x121976) (select $a119974 $i120975)) 1 0)))))

; forwards $main_inv66
(assert
  (forall (($x121976 Int) ($tmp126981 Int) ($i123978 Int) ($s125980 Int) ($y122977 Int) ($a119974 (Array Int Int)) ($k124979 Int) ($i120975 Int))
    (=> (and (__VERIFIER_assert (ite (>= (select $a119974 $x121976) (select $a119974 $i120975)) 1 0))
             (< $x121976 100000)
             ($main_inv66 $a119974 $i120975 $x121976 $y122977 $i123978 $k124979 $s125980 $tmp126981))
        ($main_inv66 $a119974 $i120975 (+ $x121976 1) $y122977 $i123978 $k124979 $s125980 $tmp126981))))

; forwards $main_inv62
(assert
  (forall (($i120983 Int) ($s125988 Int) ($y122985 Int) ($i123986 Int) ($a119982 (Array Int Int)) ($x121984 Int) ($tmp126989 Int) ($k124987 Int))
    (=> (and ($main_sum66 $a119982 $i120983 $x121984 $y122985 $i123986 $k124987 $s125988 $tmp126989))
        ($main_inv62 $a119982 (+ $i120983 1) $x121984 $y122985 $i123986 $k124987 $s125988 $tmp126989))))

; loop entry $main_inv67
(assert
  (forall (($x121992 Int) ($s125996 Int) ($i120991 Int) ($k124995 Int) ($y122993 Int) ($i123994 Int) ($a119990 (Array Int Int)) ($tmp126997 Int))
    (=> (and ($main_sum62 $a119990 $i120991 $x121992 $y122993 $i123994 $k124995 $s125996 $tmp126997))
        ($main_inv67 $a119990 $i120991 0 $y122993 $i123994 $k124995 $s125996 $tmp126997))))

; loop term $main_sum67
(assert
  (forall (($a119998 (Array Int Int)) ($x1211000 Int) ($i1231002 Int) ($i120999 Int) ($y1221001 Int) ($k1241003 Int) ($s1251004 Int) ($tmp1261005 Int))
    (=> (and (not (< $x1211000 100000))
             ($main_inv67 $a119998 $i120999 $x1211000 $y1221001 $i1231002 $k1241003 $s1251004 $tmp1261005))
        ($main_sum67 $a119998 $i120999 $x1211000 $y1221001 $i1231002 $k1241003 $s1251004 $tmp1261005))))

; loop entry $main_inv68
(assert
  (forall (($a119998 (Array Int Int)) ($x1211000 Int) ($i1231002 Int) ($i120999 Int) ($y1221001 Int) ($k1241003 Int) ($s1251004 Int) ($tmp1261005 Int))
    (=> (and (< $x1211000 100000)
             ($main_inv67 $a119998 $i120999 $x1211000 $y1221001 $i1231002 $k1241003 $s1251004 $tmp1261005))
        ($main_inv68 $a119998 $i120999 $x1211000 (+ $x1211000 1) $i1231002 $k1241003 $s1251004 $tmp1261005))))

; loop term $main_sum68
(assert
  (forall (($s1251012 Int) ($i1201007 Int) ($a1191006 (Array Int Int)) ($x1211008 Int) ($tmp1261013 Int) ($k1241011 Int) ($y1221009 Int) ($i1231010 Int))
    (=> (and (not (< $y1221009 100000))
             ($main_inv68 $a1191006 $i1201007 $x1211008 $y1221009 $i1231010 $k1241011 $s1251012 $tmp1261013))
        ($main_sum68 $a1191006 $i1201007 $x1211008 $y1221009 $i1231010 $k1241011 $s1251012 $tmp1261013))))

; __VERIFIER_assert precondition
(assert
  (forall (($s1251012 Int) ($i1201007 Int) ($a1191006 (Array Int Int)) ($x1211008 Int) ($tmp1261013 Int) ($k1241011 Int) ($y1221009 Int) ($i1231010 Int))
    (=> (and (< $y1221009 100000)
             ($main_inv68 $a1191006 $i1201007 $x1211008 $y1221009 $i1231010 $k1241011 $s1251012 $tmp1261013))
        ($__VERIFIER_assert_pre (ite (<= (select $a1191006 $x1211008) (select $a1191006 $y1221009)) 1 0)))))

; forwards $main_inv68
(assert
  (forall (($s1251012 Int) ($i1201007 Int) ($a1191006 (Array Int Int)) ($x1211008 Int) ($tmp1261013 Int) ($k1241011 Int) ($y1221009 Int) ($i1231010 Int))
    (=> (and (__VERIFIER_assert (ite (<= (select $a1191006 $x1211008) (select $a1191006 $y1221009)) 1 0))
             (< $y1221009 100000)
             ($main_inv68 $a1191006 $i1201007 $x1211008 $y1221009 $i1231010 $k1241011 $s1251012 $tmp1261013))
        ($main_inv68 $a1191006 $i1201007 $x1211008 (+ $y1221009 1) $i1231010 $k1241011 $s1251012 $tmp1261013))))

; forwards $main_inv67
(assert
  (forall (($s1251020 Int) ($tmp1261021 Int) ($x1211016 Int) ($k1241019 Int) ($a1191014 (Array Int Int)) ($y1221017 Int) ($i1201015 Int) ($i1231018 Int))
    (=> (and ($main_sum68 $a1191014 $i1201015 $x1211016 $y1221017 $i1231018 $k1241019 $s1251020 $tmp1261021))
        ($main_inv67 $a1191014 $i1201015 (+ $x1211016 1) $y1221017 $i1231018 $k1241019 $s1251020 $tmp1261021))))

(check-sat)
