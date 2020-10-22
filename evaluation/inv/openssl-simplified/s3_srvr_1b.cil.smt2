(set-logic HORN)

(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $main_end (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_char_pre () Bool)
(declare-fun $__VERIFIER_nondet_long_pre () Bool)
(declare-fun $main_if1987 (Int Int Int Int) Bool)
(declare-fun $main_if2000 (Int Int Int Int) Bool)
(declare-fun $main_if1994 (Int Int Int Int) Bool)
(declare-fun $main_switch_1_8466 (Int Int Int Int) Bool)
(declare-fun $main_switch_1_break (Int Int Int Int) Bool)
(declare-fun $main_if1996 (Int Int Int Int) Bool)
(declare-fun $main_switch_1_8640 (Int Int Int Int) Bool)
(declare-fun $main_if1989 (Int Int Int Int) Bool)
(declare-fun $main_sum314 (Int Int Int Int) Bool)
(declare-fun $main_if1995 (Int Int Int Int) Bool)
(declare-fun $main_switch_1_8656 (Int Int Int Int) Bool)
(declare-fun __VERIFIER_nondet_long (Int) Bool)
(declare-fun $main_inv314 (Int Int Int Int) Bool)
(declare-fun $main_switch_1_8512 (Int Int Int Int) Bool)
(declare-fun $main_if1990 (Int Int Int Int) Bool)
(declare-fun $main_if1997 (Int Int Int Int) Bool)
(declare-fun $main_if1998 (Int Int Int Int) Bool)
(declare-fun $main_if1993 (Int Int Int Int) Bool)
(declare-fun $main_if1991 (Int Int Int Int) Bool)
(declare-fun __VERIFIER_nondet_char (Int) Bool)
(declare-fun $main_if1988 (Int Int Int Int) Bool)
(declare-fun $main_if1999 (Int Int Int Int) Bool)
(declare-fun $main_if1992 (Int Int Int Int) Bool)

; loop entry $main_inv314
(assert
  (forall (($s__hit1625 Int) ($tmp___11627 Int) ($int119880 Int))
    (=> (and (= $s__hit1625 $int119880)
             (<= (- 2147483648) $int119880)
             (<= $int119880 2147483647))
        ($main_inv314 8466 $s__hit1625 0 $tmp___11627))))

; loop term $main_sum314
(assert
  (forall (($s__state1624119881 Int) ($s__hit1625119882 Int) ($blastFlag1626119883 Int) ($tmp___11627119884 Int))
    (=> (and (= 1 0)
             ($main_inv314 $s__state1624119881 $s__hit1625119882 $blastFlag1626119883 $tmp___11627119884))
        ($main_sum314 $s__state1624119881 $s__hit1625119882 $blastFlag1626119883 $tmp___11627119884))))

; goto ERROR
(assert
  (forall (($s__state1624119881 Int) ($s__hit1625119882 Int) ($blastFlag1626119883 Int) ($tmp___11627119884 Int))
    (=> (and (<= $s__state1624119881 8512)
             (> $blastFlag1626119883 2)
             (not (= 1 0))
             ($main_inv314 $s__state1624119881 $s__hit1625119882 $blastFlag1626119883 $tmp___11627119884))
        ($main_ERROR $s__state1624119881 $s__hit1625119882 $blastFlag1626119883 $tmp___11627119884))))

; if else
(assert
  (forall (($s__state1624119881 Int) ($s__hit1625119882 Int) ($blastFlag1626119883 Int) ($tmp___11627119884 Int))
    (=> (and (not (and (<= $s__state1624119881 8512) (> $blastFlag1626119883 2)))
             (not (= 1 0))
             ($main_inv314 $s__state1624119881 $s__hit1625119882 $blastFlag1626119883 $tmp___11627119884))
        ($main_if1987 $s__state1624119881 $s__hit1625119882 $blastFlag1626119883 $tmp___11627119884))))

; goto switch_1_8466
(assert
  (forall (($s__state1624119885 Int) ($s__hit1625119886 Int) ($blastFlag1626119887 Int) ($tmp___11627119888 Int))
    (=> (and (= $s__state1624119885 8466)
             ($main_if1987 $s__state1624119885 $s__hit1625119886 $blastFlag1626119887 $tmp___11627119888))
        ($main_switch_1_8466 $s__state1624119885 $s__hit1625119886 $blastFlag1626119887 $tmp___11627119888))))

; goto switch_1_8512
(assert
  (forall (($s__state1624119885 Int) ($s__hit1625119886 Int) ($blastFlag1626119887 Int) ($tmp___11627119888 Int))
    (=> (and (= $s__state1624119885 8512)
             (not (= $s__state1624119885 8466))
             ($main_if1987 $s__state1624119885 $s__hit1625119886 $blastFlag1626119887 $tmp___11627119888))
        ($main_switch_1_8512 $s__state1624119885 $s__hit1625119886 $blastFlag1626119887 $tmp___11627119888))))

; goto switch_1_8640
(assert
  (forall (($s__state1624119885 Int) ($s__hit1625119886 Int) ($blastFlag1626119887 Int) ($tmp___11627119888 Int))
    (=> (and (= $s__state1624119885 8640)
             (not (= $s__state1624119885 8512))
             (not (= $s__state1624119885 8466))
             ($main_if1987 $s__state1624119885 $s__hit1625119886 $blastFlag1626119887 $tmp___11627119888))
        ($main_switch_1_8640 $s__state1624119885 $s__hit1625119886 $blastFlag1626119887 $tmp___11627119888))))

; goto switch_1_8656
(assert
  (forall (($s__state1624119885 Int) ($s__hit1625119886 Int) ($blastFlag1626119887 Int) ($tmp___11627119888 Int))
    (=> (and (= $s__state1624119885 8656)
             (not (= $s__state1624119885 8640))
             (not (= $s__state1624119885 8512))
             (not (= $s__state1624119885 8466))
             ($main_if1987 $s__state1624119885 $s__hit1625119886 $blastFlag1626119887 $tmp___11627119888))
        ($main_switch_1_8656 $s__state1624119885 $s__hit1625119886 $blastFlag1626119887 $tmp___11627119888))))

; goto end
(assert
  (forall (($s__state1624119885 Int) ($s__hit1625119886 Int) ($blastFlag1626119887 Int) ($tmp___11627119888 Int))
    (=> (and (not (= $s__state1624119885 8656))
             (not (= $s__state1624119885 8640))
             (not (= $s__state1624119885 8512))
             (not (= $s__state1624119885 8466))
             ($main_if1987 $s__state1624119885 $s__hit1625119886 $blastFlag1626119887 $tmp___11627119888))
        ($main_end $s__state1624119885 $s__hit1625119886 $blastFlag1626119887 $tmp___11627119888))))

; if then
(assert
  (forall (($s__state1624119889 Int) ($s__hit1625119890 Int) ($tmp___11627119892 Int) ($blastFlag1626119891 Int))
    (=> (and (= $blastFlag1626119891 0)
             ($main_switch_1_8466 $s__state1624119889 $s__hit1625119890 $blastFlag1626119891 $tmp___11627119892))
        ($main_if1988 $s__state1624119889 $s__hit1625119890 2 $tmp___11627119892))))

; if else
(assert
  (forall (($s__state1624119889 Int) ($s__hit1625119890 Int) ($blastFlag1626119891 Int) ($tmp___11627119892 Int))
    (=> (and (not (= $blastFlag1626119891 0))
             ($main_switch_1_8466 $s__state1624119889 $s__hit1625119890 $blastFlag1626119891 $tmp___11627119892))
        ($main_if1988 $s__state1624119889 $s__hit1625119890 $blastFlag1626119891 $tmp___11627119892))))

; if then
(assert
  (forall (($s__hit1625119894 Int) ($blastFlag1626119895 Int) ($tmp___11627119896 Int) ($s__state1624119893 Int))
    (=> (and (not (= $s__hit1625119894 0))
             ($main_if1988 $s__state1624119893 $s__hit1625119894 $blastFlag1626119895 $tmp___11627119896))
        ($main_if1989 8656 $s__hit1625119894 $blastFlag1626119895 $tmp___11627119896))))

; if else
(assert
  (forall (($s__hit1625119894 Int) ($blastFlag1626119895 Int) ($tmp___11627119896 Int) ($s__state1624119893 Int))
    (=> (and (= $s__hit1625119894 0)
             ($main_if1988 $s__state1624119893 $s__hit1625119894 $blastFlag1626119895 $tmp___11627119896))
        ($main_if1989 8512 $s__hit1625119894 $blastFlag1626119895 $tmp___11627119896))))

; goto switch_1_break
(assert
  (forall (($s__state1624119897 Int) ($s__hit1625119898 Int) ($blastFlag1626119899 Int) ($tmp___11627119900 Int))
    (=> (and ($main_if1989 $s__state1624119897 $s__hit1625119898 $blastFlag1626119899 $tmp___11627119900))
        ($main_switch_1_break $s__state1624119897 $s__hit1625119898 $blastFlag1626119899 $tmp___11627119900))))

; if then
(assert
  (forall (($int119905 Int) ($s__state1624119901 Int) ($blastFlag1626119903 Int) ($tmp___11627119904 Int) ($s__hit1625119902 Int))
    (=> (and (not (= $int119905 0))
             (<= (- 2147483648) $int119905)
             (<= $int119905 2147483647)
             ($main_switch_1_8512 $s__state1624119901 $s__hit1625119902 $blastFlag1626119903 $tmp___11627119904))
        ($main_if1990 8466 $s__hit1625119902 $blastFlag1626119903 $int119905))))

; if else
(assert
  (forall (($int119905 Int) ($s__state1624119901 Int) ($blastFlag1626119903 Int) ($tmp___11627119904 Int) ($s__hit1625119902 Int))
    (=> (and (= $int119905 0)
             (<= (- 2147483648) $int119905)
             (<= $int119905 2147483647)
             ($main_switch_1_8512 $s__state1624119901 $s__hit1625119902 $blastFlag1626119903 $tmp___11627119904))
        ($main_if1990 8640 $s__hit1625119902 $blastFlag1626119903 $int119905))))

; goto switch_1_break
(assert
  (forall (($s__state1624119906 Int) ($s__hit1625119907 Int) ($blastFlag1626119908 Int) ($tmp___11627119909 Int))
    (=> (and ($main_if1990 $s__state1624119906 $s__hit1625119907 $blastFlag1626119908 $tmp___11627119909))
        ($main_switch_1_break $s__state1624119906 $s__hit1625119907 $blastFlag1626119908 $tmp___11627119909))))

; if then
(assert
  (forall (($s__state1624119910 Int) ($s__hit1625119911 Int) ($tmp___11627119913 Int) ($blastFlag1626119912 Int))
    (=> (and (= $blastFlag1626119912 3)
             ($main_switch_1_8640 $s__state1624119910 $s__hit1625119911 $blastFlag1626119912 $tmp___11627119913))
        ($main_if1991 $s__state1624119910 $s__hit1625119911 4 $tmp___11627119913))))

; if else
(assert
  (forall (($s__state1624119910 Int) ($s__hit1625119911 Int) ($blastFlag1626119912 Int) ($tmp___11627119913 Int))
    (=> (and (not (= $blastFlag1626119912 3))
             ($main_switch_1_8640 $s__state1624119910 $s__hit1625119911 $blastFlag1626119912 $tmp___11627119913))
        ($main_if1991 $s__state1624119910 $s__hit1625119911 $blastFlag1626119912 $tmp___11627119913))))

; goto end
(assert
  (forall (($s__state1624119914 Int) ($s__hit1625119915 Int) ($blastFlag1626119916 Int) ($tmp___11627119917 Int))
    (=> (and (not (= $s__hit1625119915 0))
             ($main_if1991 $s__state1624119914 $s__hit1625119915 $blastFlag1626119916 $tmp___11627119917))
        ($main_end $s__state1624119914 $s__hit1625119915 $blastFlag1626119916 $tmp___11627119917))))

; if else
(assert
  (forall (($s__hit1625119915 Int) ($blastFlag1626119916 Int) ($tmp___11627119917 Int) ($s__state1624119914 Int))
    (=> (and (= $s__hit1625119915 0)
             ($main_if1991 $s__state1624119914 $s__hit1625119915 $blastFlag1626119916 $tmp___11627119917))
        ($main_if1992 8656 $s__hit1625119915 $blastFlag1626119916 $tmp___11627119917))))

; goto switch_1_break
(assert
  (forall (($s__state1624119918 Int) ($s__hit1625119919 Int) ($blastFlag1626119920 Int) ($tmp___11627119921 Int))
    (=> (and ($main_if1992 $s__state1624119918 $s__hit1625119919 $blastFlag1626119920 $tmp___11627119921))
        ($main_switch_1_break $s__state1624119918 $s__hit1625119919 $blastFlag1626119920 $tmp___11627119921))))

; if then
(assert
  (forall (($s__state1624119922 Int) ($s__hit1625119923 Int) ($tmp___11627119925 Int) ($blastFlag1626119924 Int))
    (=> (and (= $blastFlag1626119924 2)
             ($main_switch_1_8656 $s__state1624119922 $s__hit1625119923 $blastFlag1626119924 $tmp___11627119925))
        ($main_if1993 $s__state1624119922 $s__hit1625119923 3 $tmp___11627119925))))

; if else
(assert
  (forall (($s__state1624119922 Int) ($s__hit1625119923 Int) ($blastFlag1626119924 Int) ($tmp___11627119925 Int))
    (=> (and (not (= $blastFlag1626119924 2))
             ($main_switch_1_8656 $s__state1624119922 $s__hit1625119923 $blastFlag1626119924 $tmp___11627119925))
        ($main_if1993 $s__state1624119922 $s__hit1625119923 $blastFlag1626119924 $tmp___11627119925))))

; goto ERROR
(assert
  (forall (($s__state1624119926 Int) ($s__hit1625119927 Int) ($blastFlag1626119928 Int) ($tmp___11627119929 Int))
    (=> (and (= $blastFlag1626119928 5)
             (not (= $blastFlag1626119928 4))
             ($main_if1993 $s__state1624119926 $s__hit1625119927 $blastFlag1626119928 $tmp___11627119929))
        ($main_ERROR $s__state1624119926 $s__hit1625119927 $blastFlag1626119928 $tmp___11627119929))))

; if else
(assert
  (forall (($s__state1624119926 Int) ($s__hit1625119927 Int) ($blastFlag1626119928 Int) ($tmp___11627119929 Int))
    (=> (and (not (= $blastFlag1626119928 5))
             (not (= $blastFlag1626119928 4))
             ($main_if1993 $s__state1624119926 $s__hit1625119927 $blastFlag1626119928 $tmp___11627119929))
        ($main_if1994 $s__state1624119926 $s__hit1625119927 $blastFlag1626119928 $tmp___11627119929))))

; if then
(assert
  (forall (($s__state1624119926 Int) ($s__hit1625119927 Int) ($tmp___11627119929 Int) ($blastFlag1626119928 Int))
    (=> (and (= $blastFlag1626119928 4)
             ($main_if1993 $s__state1624119926 $s__hit1625119927 $blastFlag1626119928 $tmp___11627119929))
        ($main_if1995 $s__state1624119926 $s__hit1625119927 5 $tmp___11627119929))))

; if else
(assert
  (forall (($s__state1624119930 Int) ($s__hit1625119931 Int) ($blastFlag1626119932 Int) ($tmp___11627119933 Int))
    (=> (and ($main_if1994 $s__state1624119930 $s__hit1625119931 $blastFlag1626119932 $tmp___11627119933))
        ($main_if1995 $s__state1624119930 $s__hit1625119931 $blastFlag1626119932 $tmp___11627119933))))

; goto end
(assert
  (forall (($s__state1624119934 Int) ($s__hit1625119935 Int) ($blastFlag1626119936 Int) ($tmp___11627119937 Int))
    (=> (and (= $s__hit1625119935 0)
             ($main_if1995 $s__state1624119934 $s__hit1625119935 $blastFlag1626119936 $tmp___11627119937))
        ($main_end $s__state1624119934 $s__hit1625119935 $blastFlag1626119936 $tmp___11627119937))))

; if then
(assert
  (forall (($s__hit1625119935 Int) ($blastFlag1626119936 Int) ($tmp___11627119937 Int) ($s__state1624119934 Int))
    (=> (and (not (= $s__hit1625119935 0))
             ($main_if1995 $s__state1624119934 $s__hit1625119935 $blastFlag1626119936 $tmp___11627119937))
        ($main_if1996 8640 $s__hit1625119935 $blastFlag1626119936 $tmp___11627119937))))

; goto switch_1_break
(assert
  (forall (($s__state1624119938 Int) ($s__hit1625119939 Int) ($blastFlag1626119940 Int) ($tmp___11627119941 Int))
    (=> (and ($main_if1996 $s__state1624119938 $s__hit1625119939 $blastFlag1626119940 $tmp___11627119941))
        ($main_switch_1_break $s__state1624119938 $s__hit1625119939 $blastFlag1626119940 $tmp___11627119941))))

; if else
(assert
  (forall (($s__state1624119942 Int) ($s__hit1625119943 Int) ($blastFlag1626119944 Int) ($tmp___11627119945 Int))
    (=> (and ($main_if1997 $s__state1624119942 $s__hit1625119943 $blastFlag1626119944 $tmp___11627119945))
        ($main_if1998 $s__state1624119942 $s__hit1625119943 $blastFlag1626119944 $tmp___11627119945))))

; if else
(assert
  (forall (($s__state1624119946 Int) ($s__hit1625119947 Int) ($blastFlag1626119948 Int) ($tmp___11627119949 Int))
    (=> (and ($main_if1998 $s__state1624119946 $s__hit1625119947 $blastFlag1626119948 $tmp___11627119949))
        ($main_if1999 $s__state1624119946 $s__hit1625119947 $blastFlag1626119948 $tmp___11627119949))))

; if else
(assert
  (forall (($s__state1624119950 Int) ($s__hit1625119951 Int) ($blastFlag1626119952 Int) ($tmp___11627119953 Int))
    (=> (and ($main_if1999 $s__state1624119950 $s__hit1625119951 $blastFlag1626119952 $tmp___11627119953))
        ($main_if2000 $s__state1624119950 $s__hit1625119951 $blastFlag1626119952 $tmp___11627119953))))

; label switch_1_break
(assert
  (forall (($s__state1624119954 Int) ($s__hit1625119955 Int) ($blastFlag1626119956 Int) ($tmp___11627119957 Int))
    (=> (and ($main_if2000 $s__state1624119954 $s__hit1625119955 $blastFlag1626119956 $tmp___11627119957))
        ($main_switch_1_break $s__state1624119954 $s__hit1625119955 $blastFlag1626119956 $tmp___11627119957))))

; forwards $main_inv314
(assert
  (forall (($s__state1624119958 Int) ($s__hit1625119959 Int) ($blastFlag1626119960 Int) ($tmp___11627119961 Int))
    (=> (and ($main_switch_1_break $s__state1624119958 $s__hit1625119959 $blastFlag1626119960 $tmp___11627119961))
        ($main_inv314 $s__state1624119958 $s__hit1625119959 $blastFlag1626119960 $tmp___11627119961))))

; label end
(assert
  (forall (($s__state1624119962 Int) ($s__hit1625119963 Int) ($blastFlag1626119964 Int) ($tmp___11627119965 Int))
    (=> (and ($main_sum314 $s__state1624119962 $s__hit1625119963 $blastFlag1626119964 $tmp___11627119965))
        ($main_end $s__state1624119962 $s__hit1625119963 $blastFlag1626119964 $tmp___11627119965))))

; error
(assert
  (forall (($s__state1624119970 Int) ($s__hit1625119971 Int) ($blastFlag1626119972 Int) ($tmp___11627119973 Int))
    (=> (and ($main_ERROR $s__state1624119970 $s__hit1625119971 $blastFlag1626119972 $tmp___11627119973))
        false)))

(check-sat)
