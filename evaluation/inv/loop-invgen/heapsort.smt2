(set-logic HORN)

(declare-sort Pointer 1)

(declare-fun $main_inv460 (Int (Pointer (Pointer Int)) Int Int Int Int Int) Bool)
(declare-fun $main_if212 (Int (Pointer (Pointer Int)) Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_if213 (Int (Pointer (Pointer Int)) Int Int Int Int Int) Bool)
(declare-fun $main_if215 (Int (Pointer (Pointer Int)) Int Int Int Int Int) Bool)
(declare-fun $main_sum461 (Int (Pointer (Pointer Int)) Int Int Int Int Int) Bool)
(declare-fun $main_if214 (Int (Pointer (Pointer Int)) Int Int Int Int Int) Bool)
(declare-fun $main_sum460 (Int (Pointer (Pointer Int)) Int Int Int Int Int) Bool)
(declare-fun $main_inv461 (Int (Pointer (Pointer Int)) Int Int Int Int Int) Bool)
(declare-fun $main_if216 (Int (Pointer (Pointer Int)) Int Int Int Int Int) Bool)
(declare-fun $main_if217 (Int (Pointer (Pointer Int)) Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if211 (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $assume_abort_if_not_if210 (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if210 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond5985 Int))
    (=> (and ($assume_abort_if_not_if210 cond5985))
        (assume_abort_if_not cond5985))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond5986 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond5986))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if211 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5987 Int))
    (=> (and ($__VERIFIER_assert_if211 cond5987))
        (__VERIFIER_assert cond5987))))

; if else
(assert
  (forall (($int5988 Int) ($i591 Int) ($r590 Int) (argc Int) ($l589 Int) (argv (Pointer (Pointer Int))) ($j592 Int))
    (=> (and (<= 1 $int5988)
             (<= $int5988 1000000)
             (<= (- 2147483648) $int5988)
             (<= $int5988 2147483647))
        ($main_if212 argc argv $int5988 $l589 $r590 $i591 $j592))))

; if then
(assert
  (forall ((argc5989 Int) ($i5915994 Int) ($r5905993 Int) ($j5925995 Int) ($n5885991 Int) (argv5990 (Pointer (Pointer Int))) ($l5895992 Int))
    (=> (and (> (+ (div $n5885991 2) 1) 1)
             ($main_if212 argc5989 argv5990 $n5885991 $l5895992 $r5905993 $i5915994 $j5925995))
        ($main_if213 argc5989 argv5990 $n5885991 (- (+ (div $n5885991 2) 1) 1) $n5885991 $i5915994 $j5925995))))

; if else
(assert
  (forall ((argc5989 Int) ($i5915994 Int) ($r5905993 Int) ($j5925995 Int) ($n5885991 Int) (argv5990 (Pointer (Pointer Int))) ($l5895992 Int))
    (=> (and (not (> (+ (div $n5885991 2) 1) 1))
             ($main_if212 argc5989 argv5990 $n5885991 $l5895992 $r5905993 $i5915994 $j5925995))
        ($main_if213 argc5989 argv5990 $n5885991 (+ (div $n5885991 2) 1) (- $n5885991 1) $i5915994 $j5925995))))

; loop entry $main_inv460
(assert
  (forall (($r5906000 Int) ($n5885998 Int) ($l5895999 Int) (argv5997 (Pointer (Pointer Int))) ($i5916001 Int) ($j5926002 Int) (argc5996 Int))
    (=> (and ($main_if213 argc5996 argv5997 $n5885998 $l5895999 $r5906000 $i5916001 $j5926002))
        ($main_inv460 argc5996 argv5997 $n5885998 $l5895999 $r5906000 $i5916001 $j5926002))))

; loop term $main_sum460
(assert
  (forall (($j5926009 Int) ($i5916008 Int) (argc6003 Int) ($l5896006 Int) ($n5886005 Int) (argv6004 (Pointer (Pointer Int))) ($r5906007 Int))
    (=> (and (not (> $r5906007 1))
             ($main_inv460 argc6003 argv6004 $n5886005 $l5896006 $r5906007 $i5916008 $j5926009))
        ($main_sum460 argc6003 argv6004 $n5886005 $l5896006 $r5906007 $i5916008 $j5926009))))

; loop entry $main_inv461
(assert
  (forall (($j5926009 Int) ($i5916008 Int) (argc6003 Int) ($l5896006 Int) ($n5886005 Int) (argv6004 (Pointer (Pointer Int))) ($r5906007 Int))
    (=> (and (> $r5906007 1)
             ($main_inv460 argc6003 argv6004 $n5886005 $l5896006 $r5906007 $i5916008 $j5926009))
        ($main_inv461 argc6003 argv6004 $n5886005 $l5896006 $r5906007 $l5896006 (* 2 $l5896006)))))

; loop term $main_sum461
(assert
  (forall (($l5896013 Int) ($n5886012 Int) (argc6010 Int) ($i5916015 Int) ($r5906014 Int) (argv6011 (Pointer (Pointer Int))) ($j5926016 Int))
    (=> (and (not (<= $j5926016 $r5906014))
             ($main_inv461 argc6010 argv6011 $n5886012 $l5896013 $r5906014 $i5916015 $j5926016))
        ($main_sum461 argc6010 argv6011 $n5886012 $l5896013 $r5906014 $i5916015 $j5926016))))

; __VERIFIER_assert precondition
(assert
  (forall (($l5896013 Int) ($n5886012 Int) (argc6010 Int) ($i5916015 Int) ($r5906014 Int) (argv6011 (Pointer (Pointer Int))) ($j5926016 Int))
    (=> (and (< $j5926016 $r5906014)
             (<= $j5926016 $r5906014)
             ($main_inv461 argc6010 argv6011 $n5886012 $l5896013 $r5906014 $i5916015 $j5926016))
        ($__VERIFIER_assert_pre (ite (<= 1 $j5926016) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($l5896013 Int) ($n5886012 Int) (argc6010 Int) ($i5916015 Int) ($r5906014 Int) (argv6011 (Pointer (Pointer Int))) ($j5926016 Int))
    (=> (and (__VERIFIER_assert (ite (<= 1 $j5926016) 1 0))
             (< $j5926016 $r5906014)
             (<= $j5926016 $r5906014)
             ($main_inv461 argc6010 argv6011 $n5886012 $l5896013 $r5906014 $i5916015 $j5926016))
        ($__VERIFIER_assert_pre (ite (<= $j5926016 $n5886012) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($l5896013 Int) ($n5886012 Int) (argc6010 Int) ($i5916015 Int) ($r5906014 Int) (argv6011 (Pointer (Pointer Int))) ($j5926016 Int))
    (=> (and (__VERIFIER_assert (ite (<= $j5926016 $n5886012) 1 0))
             (__VERIFIER_assert (ite (<= 1 $j5926016) 1 0))
             (< $j5926016 $r5906014)
             (<= $j5926016 $r5906014)
             ($main_inv461 argc6010 argv6011 $n5886012 $l5896013 $r5906014 $i5916015 $j5926016))
        ($__VERIFIER_assert_pre (ite (<= 1 (+ $j5926016 1)) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($l5896013 Int) ($n5886012 Int) (argc6010 Int) ($i5916015 Int) ($r5906014 Int) (argv6011 (Pointer (Pointer Int))) ($j5926016 Int))
    (=> (and (__VERIFIER_assert (ite (<= 1 (+ $j5926016 1)) 1 0))
             (__VERIFIER_assert (ite (<= $j5926016 $n5886012) 1 0))
             (__VERIFIER_assert (ite (<= 1 $j5926016) 1 0))
             (< $j5926016 $r5906014)
             (<= $j5926016 $r5906014)
             ($main_inv461 argc6010 argv6011 $n5886012 $l5896013 $r5906014 $i5916015 $j5926016))
        ($__VERIFIER_assert_pre (ite (<= (+ $j5926016 1) $n5886012) 1 0)))))

; if then
(assert
  (forall (($l5896013 Int) ($n5886012 Int) ($int6017 Int) (argc6010 Int) ($i5916015 Int) ($r5906014 Int) (argv6011 (Pointer (Pointer Int))) ($j5926016 Int))
    (=> (and (not (= $int6017 0))
             (<= (- 2147483648) $int6017)
             (<= $int6017 2147483647)
             (__VERIFIER_assert (ite (<= (+ $j5926016 1) $n5886012) 1 0))
             (__VERIFIER_assert (ite (<= 1 (+ $j5926016 1)) 1 0))
             (__VERIFIER_assert (ite (<= $j5926016 $n5886012) 1 0))
             (__VERIFIER_assert (ite (<= 1 $j5926016) 1 0))
             (< $j5926016 $r5906014)
             (<= $j5926016 $r5906014)
             ($main_inv461 argc6010 argv6011 $n5886012 $l5896013 $r5906014 $i5916015 $j5926016))
        ($main_if214 argc6010 argv6011 $n5886012 $l5896013 $r5906014 $i5916015 (+ $j5926016 1)))))

; if else
(assert
  (forall (($l5896013 Int) ($n5886012 Int) ($int6017 Int) (argc6010 Int) ($i5916015 Int) ($r5906014 Int) (argv6011 (Pointer (Pointer Int))) ($j5926016 Int))
    (=> (and (= $int6017 0)
             (<= (- 2147483648) $int6017)
             (<= $int6017 2147483647)
             (__VERIFIER_assert (ite (<= (+ $j5926016 1) $n5886012) 1 0))
             (__VERIFIER_assert (ite (<= 1 (+ $j5926016 1)) 1 0))
             (__VERIFIER_assert (ite (<= $j5926016 $n5886012) 1 0))
             (__VERIFIER_assert (ite (<= 1 $j5926016) 1 0))
             (< $j5926016 $r5906014)
             (<= $j5926016 $r5906014)
             ($main_inv461 argc6010 argv6011 $n5886012 $l5896013 $r5906014 $i5916015 $j5926016))
        ($main_if214 argc6010 argv6011 $n5886012 $l5896013 $r5906014 $i5916015 $j5926016))))

; if then
(assert
  (forall (($r5906022 Int) ($j5926024 Int) ($n5886020 Int) ($i5916023 Int) (argv6019 (Pointer (Pointer Int))) ($l5896021 Int) (argc6018 Int))
    (=> (and ($main_if214 argc6018 argv6019 $n5886020 $l5896021 $r5906022 $i5916023 $j5926024))
        ($main_if215 argc6018 argv6019 $n5886020 $l5896021 $r5906022 $i5916023 $j5926024))))

; if else
(assert
  (forall (($l5896013 Int) ($n5886012 Int) (argc6010 Int) ($i5916015 Int) ($r5906014 Int) (argv6011 (Pointer (Pointer Int))) ($j5926016 Int))
    (=> (and (not (< $j5926016 $r5906014))
             (<= $j5926016 $r5906014)
             ($main_inv461 argc6010 argv6011 $n5886012 $l5896013 $r5906014 $i5916015 $j5926016))
        ($main_if215 argc6010 argv6011 $n5886012 $l5896013 $r5906014 $i5916015 $j5926016))))

; __VERIFIER_assert precondition
(assert
  (forall (($l5896028 Int) (argc6025 Int) ($r5906029 Int) (argv6026 (Pointer (Pointer Int))) ($j5926031 Int) ($n5886027 Int) ($i5916030 Int))
    (=> (and ($main_if215 argc6025 argv6026 $n5886027 $l5896028 $r5906029 $i5916030 $j5926031))
        ($__VERIFIER_assert_pre (ite (<= 1 $j5926031) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($l5896028 Int) (argc6025 Int) ($r5906029 Int) (argv6026 (Pointer (Pointer Int))) ($j5926031 Int) ($n5886027 Int) ($i5916030 Int))
    (=> (and (__VERIFIER_assert (ite (<= 1 $j5926031) 1 0))
             ($main_if215 argc6025 argv6026 $n5886027 $l5896028 $r5906029 $i5916030 $j5926031))
        ($__VERIFIER_assert_pre (ite (<= $j5926031 $n5886027) 1 0)))))

; break $main_sum461
(assert
  (forall (($l5896028 Int) (argc6025 Int) ($r5906029 Int) ($int6032 Int) (argv6026 (Pointer (Pointer Int))) ($j5926031 Int) ($n5886027 Int) ($i5916030 Int))
    (=> (and (not (= $int6032 0))
             (<= (- 2147483648) $int6032)
             (<= $int6032 2147483647)
             (__VERIFIER_assert (ite (<= $j5926031 $n5886027) 1 0))
             (__VERIFIER_assert (ite (<= 1 $j5926031) 1 0))
             ($main_if215 argc6025 argv6026 $n5886027 $l5896028 $r5906029 $i5916030 $j5926031))
        ($main_sum461 argc6025 argv6026 $n5886027 $l5896028 $r5906029 $i5916030 $j5926031))))

; if else
(assert
  (forall (($l5896028 Int) (argc6025 Int) ($r5906029 Int) ($int6032 Int) (argv6026 (Pointer (Pointer Int))) ($j5926031 Int) ($n5886027 Int) ($i5916030 Int))
    (=> (and (= $int6032 0)
             (<= (- 2147483648) $int6032)
             (<= $int6032 2147483647)
             (__VERIFIER_assert (ite (<= $j5926031 $n5886027) 1 0))
             (__VERIFIER_assert (ite (<= 1 $j5926031) 1 0))
             ($main_if215 argc6025 argv6026 $n5886027 $l5896028 $r5906029 $i5916030 $j5926031))
        ($main_if216 argc6025 argv6026 $n5886027 $l5896028 $r5906029 $i5916030 $j5926031))))

; __VERIFIER_assert precondition
(assert
  (forall (($n5886035 Int) (argc6033 Int) ($r5906037 Int) ($l5896036 Int) (argv6034 (Pointer (Pointer Int))) ($j5926039 Int) ($i5916038 Int))
    (=> (and ($main_if216 argc6033 argv6034 $n5886035 $l5896036 $r5906037 $i5916038 $j5926039))
        ($__VERIFIER_assert_pre (ite (<= 1 $i5916038) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($n5886035 Int) (argc6033 Int) ($r5906037 Int) ($l5896036 Int) (argv6034 (Pointer (Pointer Int))) ($j5926039 Int) ($i5916038 Int))
    (=> (and (__VERIFIER_assert (ite (<= 1 $i5916038) 1 0))
             ($main_if216 argc6033 argv6034 $n5886035 $l5896036 $r5906037 $i5916038 $j5926039))
        ($__VERIFIER_assert_pre (ite (<= $i5916038 $n5886035) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($n5886035 Int) (argc6033 Int) ($r5906037 Int) ($l5896036 Int) (argv6034 (Pointer (Pointer Int))) ($j5926039 Int) ($i5916038 Int))
    (=> (and (__VERIFIER_assert (ite (<= $i5916038 $n5886035) 1 0))
             (__VERIFIER_assert (ite (<= 1 $i5916038) 1 0))
             ($main_if216 argc6033 argv6034 $n5886035 $l5896036 $r5906037 $i5916038 $j5926039))
        ($__VERIFIER_assert_pre (ite (<= 1 $j5926039) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($n5886035 Int) (argc6033 Int) ($r5906037 Int) ($l5896036 Int) (argv6034 (Pointer (Pointer Int))) ($j5926039 Int) ($i5916038 Int))
    (=> (and (__VERIFIER_assert (ite (<= 1 $j5926039) 1 0))
             (__VERIFIER_assert (ite (<= $i5916038 $n5886035) 1 0))
             (__VERIFIER_assert (ite (<= 1 $i5916038) 1 0))
             ($main_if216 argc6033 argv6034 $n5886035 $l5896036 $r5906037 $i5916038 $j5926039))
        ($__VERIFIER_assert_pre (ite (<= $j5926039 $n5886035) 1 0)))))

; forwards $main_inv461
(assert
  (forall (($n5886035 Int) (argc6033 Int) ($r5906037 Int) ($l5896036 Int) (argv6034 (Pointer (Pointer Int))) ($j5926039 Int) ($i5916038 Int))
    (=> (and (__VERIFIER_assert (ite (<= $j5926039 $n5886035) 1 0))
             (__VERIFIER_assert (ite (<= 1 $j5926039) 1 0))
             (__VERIFIER_assert (ite (<= $i5916038 $n5886035) 1 0))
             (__VERIFIER_assert (ite (<= 1 $i5916038) 1 0))
             ($main_if216 argc6033 argv6034 $n5886035 $l5896036 $r5906037 $i5916038 $j5926039))
        ($main_inv461 argc6033 argv6034 $n5886035 $l5896036 $r5906037 $j5926039 (* 2 $j5926039)))))

; __VERIFIER_assert precondition
(assert
  (forall (($n5886042 Int) ($r5906044 Int) ($l5896043 Int) ($j5926046 Int) ($i5916045 Int) (argc6040 Int) (argv6041 (Pointer (Pointer Int))))
    (=> (and (> $l5896043 1)
             ($main_sum461 argc6040 argv6041 $n5886042 $l5896043 $r5906044 $i5916045 $j5926046))
        ($__VERIFIER_assert_pre (ite (<= 1 $l5896043) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($n5886042 Int) ($r5906044 Int) ($l5896043 Int) ($j5926046 Int) ($i5916045 Int) (argc6040 Int) (argv6041 (Pointer (Pointer Int))))
    (=> (and (__VERIFIER_assert (ite (<= 1 $l5896043) 1 0))
             (> $l5896043 1)
             ($main_sum461 argc6040 argv6041 $n5886042 $l5896043 $r5906044 $i5916045 $j5926046))
        ($__VERIFIER_assert_pre (ite (<= $l5896043 $n5886042) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($n5886042 Int) ($r5906044 Int) ($l5896043 Int) ($j5926046 Int) ($i5916045 Int) (argc6040 Int) (argv6041 (Pointer (Pointer Int))))
    (=> (and (not (> $l5896043 1))
             ($main_sum461 argc6040 argv6041 $n5886042 $l5896043 $r5906044 $i5916045 $j5926046))
        ($__VERIFIER_assert_pre (ite (<= 1 $r5906044) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($n5886042 Int) ($r5906044 Int) ($l5896043 Int) ($j5926046 Int) ($i5916045 Int) (argc6040 Int) (argv6041 (Pointer (Pointer Int))))
    (=> (and (__VERIFIER_assert (ite (<= 1 $r5906044) 1 0))
             (not (> $l5896043 1))
             ($main_sum461 argc6040 argv6041 $n5886042 $l5896043 $r5906044 $i5916045 $j5926046))
        ($__VERIFIER_assert_pre (ite (<= $r5906044 $n5886042) 1 0)))))

; if then
(assert
  (forall (($n5886042 Int) ($r5906044 Int) ($l5896043 Int) ($j5926046 Int) ($i5916045 Int) (argc6040 Int) (argv6041 (Pointer (Pointer Int))))
    (=> (and (__VERIFIER_assert (ite (<= $l5896043 $n5886042) 1 0))
             (__VERIFIER_assert (ite (<= 1 $l5896043) 1 0))
             (> $l5896043 1)
             ($main_sum461 argc6040 argv6041 $n5886042 $l5896043 $r5906044 $i5916045 $j5926046))
        ($main_if217 argc6040 argv6041 $n5886042 (- $l5896043 1) $r5906044 $i5916045 $j5926046))))

; if else
(assert
  (forall (($n5886042 Int) ($r5906044 Int) ($l5896043 Int) ($j5926046 Int) ($i5916045 Int) (argc6040 Int) (argv6041 (Pointer (Pointer Int))))
    (=> (and (__VERIFIER_assert (ite (<= $r5906044 $n5886042) 1 0))
             (__VERIFIER_assert (ite (<= 1 $r5906044) 1 0))
             (not (> $l5896043 1))
             ($main_sum461 argc6040 argv6041 $n5886042 $l5896043 $r5906044 $i5916045 $j5926046))
        ($main_if217 argc6040 argv6041 $n5886042 $l5896043 (- $r5906044 1) $i5916045 $j5926046))))

; forwards $main_inv460
(assert
  (forall (($n5886049 Int) ($j5926053 Int) (argv6048 (Pointer (Pointer Int))) ($r5906051 Int) ($i5916052 Int) ($l5896050 Int) (argc6047 Int))
    (=> (and ($main_if217 argc6047 argv6048 $n5886049 $l5896050 $r5906051 $i5916052 $j5926053))
        ($main_inv460 argc6047 argv6048 $n5886049 $l5896050 $r5906051 $i5916052 $j5926053))))

(check-sat)
