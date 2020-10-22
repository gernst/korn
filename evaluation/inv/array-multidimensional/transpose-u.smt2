(set-logic HORN)

(declare-fun $__VERIFIER_assert_if31 (Int) Bool)
(declare-fun $main_sum71 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv72 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum76 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum74 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv73 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum73 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv71 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv74 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv75 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum75 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv76 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum72 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond977 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond977))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if31 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond978 Int))
    (=> (and ($__VERIFIER_assert_if31 cond978))
        (__VERIFIER_assert cond978))))

; loop entry $main_inv71
(assert
  (forall (($k95 Int) ($m98 Int) ($C100 (Array Int (Array Int Int))) ($n97 Int) ($j96 Int) ($A99 (Array Int (Array Int Int))))
    (=> (and (= $m98 1800)
             (= $n97 1000))
        ($main_inv71 0 $k95 $j96 $n97 $m98 $A99 $C100))))

; loop term $main_sum71
(assert
  (forall (($A99984 (Array Int (Array Int Int))) ($n97982 Int) ($m98983 Int) ($i94979 Int) ($j96981 Int) ($C100985 (Array Int (Array Int Int))) ($k95980 Int))
    (=> (and (not (< $i94979 $n97982))
             ($main_inv71 $i94979 $k95980 $j96981 $n97982 $m98983 $A99984 $C100985))
        ($main_sum71 $i94979 $k95980 $j96981 $n97982 $m98983 $A99984 $C100985))))

; loop entry $main_inv72
(assert
  (forall (($A99984 (Array Int (Array Int Int))) ($n97982 Int) ($m98983 Int) ($i94979 Int) ($j96981 Int) ($C100985 (Array Int (Array Int Int))) ($k95980 Int))
    (=> (and (< $i94979 $n97982)
             ($main_inv71 $i94979 $k95980 $j96981 $n97982 $m98983 $A99984 $C100985))
        ($main_inv72 $i94979 $k95980 0 $n97982 $m98983 $A99984 $C100985))))

; loop term $main_sum72
(assert
  (forall (($n97989 Int) ($A99991 (Array Int (Array Int Int))) ($k95987 Int) ($m98990 Int) ($j96988 Int) ($C100992 (Array Int (Array Int Int))) ($i94986 Int))
    (=> (and (not (< $j96988 $n97989))
             ($main_inv72 $i94986 $k95987 $j96988 $n97989 $m98990 $A99991 $C100992))
        ($main_sum72 $i94986 $k95987 $j96988 $n97989 $m98990 $A99991 $C100992))))

; forwards $main_inv72
(assert
  (forall (($n97989 Int) ($A99991 (Array Int (Array Int Int))) ($k95987 Int) ($int993 Int) ($m98990 Int) ($j96988 Int) ($C100992 (Array Int (Array Int Int))) ($i94986 Int))
    (=> (and (<= (- 2147483648) $int993)
             (<= $int993 2147483647)
             (< $j96988 $n97989)
             ($main_inv72 $i94986 $k95987 $j96988 $n97989 $m98990 $A99991 $C100992))
        ($main_inv72 $i94986 $k95987 (+ $j96988 1) $n97989 $m98990 (store $A99991 $i94986 (store (select $A99991 $i94986) $j96988 $int993)) $C100992))))

; forwards $main_inv71
(assert
  (forall (($A99999 (Array Int (Array Int Int))) ($C1001000 (Array Int (Array Int Int))) ($k95995 Int) ($i94994 Int) ($j96996 Int) ($n97997 Int) ($m98998 Int))
    (=> (and ($main_sum72 $i94994 $k95995 $j96996 $n97997 $m98998 $A99999 $C1001000))
        ($main_inv71 (+ $i94994 1) $k95995 $j96996 $n97997 $m98998 $A99999 $C1001000))))

; loop entry $main_inv73
(assert
  (forall (($A991006 (Array Int (Array Int Int))) ($n971004 Int) ($m981005 Int) ($C1001007 (Array Int (Array Int Int))) ($j961003 Int) ($k951002 Int) ($i941001 Int))
    (=> (and ($main_sum71 $i941001 $k951002 $j961003 $n971004 $m981005 $A991006 $C1001007))
        ($main_inv73 0 $k951002 0 $n971004 $m981005 $A991006 $C1001007))))

; loop term $main_sum73
(assert
  (forall (($k951009 Int) ($C1001014 (Array Int (Array Int Int))) ($A991013 (Array Int (Array Int Int))) ($m981012 Int) ($n971011 Int) ($j961010 Int) ($i941008 Int))
    (=> (and (not (< $i941008 $n971011))
             ($main_inv73 $i941008 $k951009 $j961010 $n971011 $m981012 $A991013 $C1001014))
        ($main_sum73 $i941008 $k951009 $j961010 $n971011 $m981012 $A991013 $C1001014))))

; loop entry $main_inv74
(assert
  (forall (($k951009 Int) ($C1001014 (Array Int (Array Int Int))) ($A991013 (Array Int (Array Int Int))) ($m981012 Int) ($n971011 Int) ($j961010 Int) ($i941008 Int))
    (=> (and (< $i941008 $n971011)
             ($main_inv73 $i941008 $k951009 $j961010 $n971011 $m981012 $A991013 $C1001014))
        ($main_inv74 $i941008 $k951009 0 $n971011 $m981012 $A991013 $C1001014))))

; loop term $main_sum74
(assert
  (forall (($n971018 Int) ($i941015 Int) ($C1001021 (Array Int (Array Int Int))) ($k951016 Int) ($j961017 Int) ($m981019 Int) ($A991020 (Array Int (Array Int Int))))
    (=> (and (not (< $j961017 $n971018))
             ($main_inv74 $i941015 $k951016 $j961017 $n971018 $m981019 $A991020 $C1001021))
        ($main_sum74 $i941015 $k951016 $j961017 $n971018 $m981019 $A991020 $C1001021))))

; forwards $main_inv74
(assert
  (forall (($n971018 Int) ($i941015 Int) ($C1001021 (Array Int (Array Int Int))) ($k951016 Int) ($j961017 Int) ($m981019 Int) ($A991020 (Array Int (Array Int Int))))
    (=> (and (< $j961017 $n971018)
             ($main_inv74 $i941015 $k951016 $j961017 $n971018 $m981019 $A991020 $C1001021))
        ($main_inv74 $i941015 $k951016 (+ $j961017 1) $n971018 $m981019 $A991020 (store $C1001021 $j961017 (store (select $C1001021 $j961017) $i941015 (select (select $A991020 $i941015) $j961017)))))))

; forwards $main_inv73
(assert
  (forall (($n971025 Int) ($A991027 (Array Int (Array Int Int))) ($m981026 Int) ($k951023 Int) ($i941022 Int) ($C1001028 (Array Int (Array Int Int))) ($j961024 Int))
    (=> (and ($main_sum74 $i941022 $k951023 $j961024 $n971025 $m981026 $A991027 $C1001028))
        ($main_inv73 (+ $i941022 1) $k951023 $j961024 $n971025 $m981026 $A991027 $C1001028))))

; loop entry $main_inv75
(assert
  (forall (($i941029 Int) ($j961031 Int) ($A991034 (Array Int (Array Int Int))) ($m981033 Int) ($k951030 Int) ($n971032 Int) ($C1001035 (Array Int (Array Int Int))))
    (=> (and ($main_sum73 $i941029 $k951030 $j961031 $n971032 $m981033 $A991034 $C1001035))
        ($main_inv75 0 $k951030 $j961031 $n971032 $m981033 $A991034 $C1001035))))

; loop term $main_sum75
(assert
  (forall (($C1001042 (Array Int (Array Int Int))) ($j961038 Int) ($m981040 Int) ($A991041 (Array Int (Array Int Int))) ($n971039 Int) ($i941036 Int) ($k951037 Int))
    (=> (and (not (< $i941036 $n971039))
             ($main_inv75 $i941036 $k951037 $j961038 $n971039 $m981040 $A991041 $C1001042))
        ($main_sum75 $i941036 $k951037 $j961038 $n971039 $m981040 $A991041 $C1001042))))

; loop entry $main_inv76
(assert
  (forall (($C1001042 (Array Int (Array Int Int))) ($j961038 Int) ($m981040 Int) ($A991041 (Array Int (Array Int Int))) ($n971039 Int) ($i941036 Int) ($k951037 Int))
    (=> (and (< $i941036 $n971039)
             ($main_inv75 $i941036 $k951037 $j961038 $n971039 $m981040 $A991041 $C1001042))
        ($main_inv76 $i941036 $k951037 0 $n971039 $m981040 $A991041 $C1001042))))

; loop term $main_sum76
(assert
  (forall (($A991048 (Array Int (Array Int Int))) ($j961045 Int) ($k951044 Int) ($n971046 Int) ($m981047 Int) ($i941043 Int) ($C1001049 (Array Int (Array Int Int))))
    (=> (and (not (< $j961045 $n971046))
             ($main_inv76 $i941043 $k951044 $j961045 $n971046 $m981047 $A991048 $C1001049))
        ($main_sum76 $i941043 $k951044 $j961045 $n971046 $m981047 $A991048 $C1001049))))

; __VERIFIER_assert precondition
(assert
  (forall (($A991048 (Array Int (Array Int Int))) ($j961045 Int) ($k951044 Int) ($n971046 Int) ($m981047 Int) ($i941043 Int) ($C1001049 (Array Int (Array Int Int))))
    (=> (and (< $j961045 $n971046)
             ($main_inv76 $i941043 $k951044 $j961045 $n971046 $m981047 $A991048 $C1001049))
        ($__VERIFIER_assert_pre (ite (= (select (select $C1001049 $j961045) $i941043) (select (select $A991048 $i941043) $j961045)) 1 0)))))

; forwards $main_inv76
(assert
  (forall (($A991048 (Array Int (Array Int Int))) ($j961045 Int) ($k951044 Int) ($n971046 Int) ($m981047 Int) ($i941043 Int) ($C1001049 (Array Int (Array Int Int))))
    (=> (and (__VERIFIER_assert (ite (= (select (select $C1001049 $j961045) $i941043) (select (select $A991048 $i941043) $j961045)) 1 0))
             (< $j961045 $n971046)
             ($main_inv76 $i941043 $k951044 $j961045 $n971046 $m981047 $A991048 $C1001049))
        ($main_inv76 $i941043 $k951044 (+ $j961045 1) $n971046 $m981047 $A991048 $C1001049))))

; forwards $main_inv75
(assert
  (forall (($i941050 Int) ($m981054 Int) ($C1001056 (Array Int (Array Int Int))) ($A991055 (Array Int (Array Int Int))) ($k951051 Int) ($n971053 Int) ($j961052 Int))
    (=> (and ($main_sum76 $i941050 $k951051 $j961052 $n971053 $m981054 $A991055 $C1001056))
        ($main_inv75 (+ $i941050 1) $k951051 $j961052 $n971053 $m981054 $A991055 $C1001056))))

(check-sat)
