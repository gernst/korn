(set-logic HORN)

(declare-fun $assume_abort_if_not_if244 (Int Int) Bool)
(declare-fun $main_if247 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if249 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if248 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum473 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_if246 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum472 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv471 (Int Int Int Int Int Int) Bool)
(declare-fun $main_inv472 (Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_END (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if245 (Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_inv473 (Int Int Int Int Int Int) Bool)
(declare-fun $main_sum471 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if244 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond8936 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if244 cond cond8936))
        (assume_abort_if_not cond8936))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond8937 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond8937))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if245 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond8938 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if245 cond cond8938))
        (__VERIFIER_assert cond8938))))

; if else
(assert
  (forall (($i621 Int) ($l625 Int) ($j622 Int) ($k623 Int) ($m626 Int) ($n624 Int) ($int8940 Int) ($int8942 Int) ($int8941 Int))
    (=> (and (< (- 1000000) $int8940)
             (< $int8940 1000000)
             (<= (- 2147483648) $int8942)
             (<= $int8942 2147483647)
             (<= (- 2147483648) $int8941)
             (<= $int8941 2147483647)
             (<= (- 2147483648) $int8940)
             (<= $int8940 2147483647))
        ($main_if246 $i621 $j622 $k623 $n624 $l625 $m626 $i621 $j622 $k623 $int8940 $int8942 $int8941))))

; if else
(assert
  (forall (($i621 Int) ($l625 Int) ($i6218943 Int) ($l6258947 Int) ($n6248946 Int) ($j622 Int) ($k6238945 Int) ($m626 Int) ($j6228944 Int) ($k623 Int) ($n624 Int) ($m6268948 Int))
    (=> (and (< (- 1000000) $m6268948)
             (< $m6268948 1000000)
             ($main_if246 $i621 $j622 $k623 $n624 $l625 $m626 $i6218943 $j6228944 $k6238945 $n6248946 $l6258947 $m6268948))
        ($main_if247 $i621 $j622 $k623 $n624 $l625 $m626 $i6218943 $j6228944 $k6238945 $n6248946 $l6258947 $m6268948))))

; if else
(assert
  (forall (($m6268954 Int) ($n6248952 Int) ($i621 Int) ($j6228950 Int) ($i6218949 Int) ($j622 Int) ($k623 Int) ($n624 Int) ($l6258953 Int) ($l625 Int) ($m626 Int) ($k6238951 Int))
    (=> (and (< (- 1000000) $l6258953)
             (< $l6258953 1000000)
             ($main_if247 $i621 $j622 $k623 $n624 $l625 $m626 $i6218949 $j6228950 $k6238951 $n6248952 $l6258953 $m6268954))
        ($main_if248 $i621 $j622 $k623 $n624 $l625 $m626 $i6218949 $j6228950 $k6238951 $n6248952 $l6258953 $m6268954))))

; goto END
(assert
  (forall (($i621 Int) ($k6238957 Int) ($j622 Int) ($j6228956 Int) ($n624 Int) ($n6248958 Int) ($l625 Int) ($m6268960 Int) ($i6218955 Int) ($k623 Int) ($l6258959 Int) ($m626 Int))
    (=> (and (not (<= (* 3 $n6248958) (+ $m6268960 $l6258959)))
             ($main_if248 $i621 $j622 $k623 $n624 $l625 $m626 $i6218955 $j6228956 $k6238957 $n6248958 $l6258959 $m6268960))
        ($main_END $i621 $j622 $k623 $n624 $l625 $m626 $i6218955 $j6228956 $k6238957 $n6248958 $l6258959 $m6268960))))

; if then
(assert
  (forall (($i621 Int) ($k6238957 Int) ($j622 Int) ($j6228956 Int) ($n624 Int) ($n6248958 Int) ($l625 Int) ($m6268960 Int) ($i6218955 Int) ($k623 Int) ($l6258959 Int) ($m626 Int))
    (=> (and (<= (* 3 $n6248958) (+ $m6268960 $l6258959))
             ($main_if248 $i621 $j622 $k623 $n624 $l625 $m626 $i6218955 $j6228956 $k6238957 $n6248958 $l6258959 $m6268960))
        ($main_if249 $i621 $j622 $k623 $n624 $l625 $m626 $i6218955 $j6228956 $k6238957 $n6248958 $l6258959 $m6268960))))

; loop entry $main_inv471
(assert
  (forall (($i621 Int) ($l625 Int) ($m6268966 Int) ($j6228962 Int) ($k6238963 Int) ($k623 Int) ($m626 Int) ($n624 Int) ($l6258965 Int) ($i6218961 Int) ($n6248964 Int) ($j622 Int))
    (=> (and ($main_if249 $i621 $j622 $k623 $n624 $l625 $m626 $i6218961 $j6228962 $k6238963 $n6248964 $l6258965 $m6268966))
        ($main_inv471 0 $j6228962 $k6238963 $n6248964 $l6258965 $m6268966))))

; loop term $main_sum471
(assert
  (forall (($i6218967 Int) ($m6268972 Int) ($k6238969 Int) ($n6248970 Int) ($l6258971 Int) ($j6228968 Int))
    (=> (and (not (< $i6218967 $n6248970)))
        ($main_sum471 $i6218967 $j6228968 $k6238969 $n6248970 $l6258971 $m6268972 $i6218967 $j6228968 $k6238969 $n6248970 $l6258971 $m6268972))))

; loop entry $main_inv472
(assert
  (forall (($i6218967 Int) ($m6268972 Int) ($k6238969 Int) ($n6248970 Int) ($l6258971 Int) ($j6228968 Int))
    (=> (and (< $i6218967 $n6248970)
             ($main_inv471 $i6218967 $j6228968 $k6238969 $n6248970 $l6258971 $m6268972))
        ($main_inv472 $i6218967 (* 2 $i6218967) $k6238969 $n6248970 $l6258971 $m6268972))))

; loop term $main_sum472
(assert
  (forall (($i6218973 Int) ($k6238975 Int) ($m6268978 Int) ($n6248976 Int) ($j6228974 Int) ($l6258977 Int))
    (=> (and (not (< $j6228974 (* 3 $i6218973))))
        ($main_sum472 $i6218973 $j6228974 $k6238975 $n6248976 $l6258977 $m6268978 $i6218973 $j6228974 $k6238975 $n6248976 $l6258977 $m6268978))))

; loop entry $main_inv473
(assert
  (forall (($i6218973 Int) ($k6238975 Int) ($m6268978 Int) ($n6248976 Int) ($j6228974 Int) ($l6258977 Int))
    (=> (and (< $j6228974 (* 3 $i6218973))
             ($main_inv472 $i6218973 $j6228974 $k6238975 $n6248976 $l6258977 $m6268978))
        ($main_inv473 $i6218973 $j6228974 $i6218973 $n6248976 $l6258977 $m6268978))))

; loop term $main_sum473
(assert
  (forall (($n6248982 Int) ($i6218979 Int) ($l6258983 Int) ($k6238981 Int) ($j6228980 Int) ($m6268984 Int))
    (=> (and (not (< $k6238981 $j6228980)))
        ($main_sum473 $i6218979 $j6228980 $k6238981 $n6248982 $l6258983 $m6268984 $i6218979 $j6228980 $k6238981 $n6248982 $l6258983 $m6268984))))

; __VERIFIER_assert precondition
(assert
  (forall (($n6248982 Int) ($i6218979 Int) ($l6258983 Int) ($k6238981 Int) ($j6228980 Int) ($m6268984 Int))
    (=> (and (< $k6238981 $j6228980)
             ($main_inv473 $i6218979 $j6228980 $k6238981 $n6248982 $l6258983 $m6268984))
        ($__VERIFIER_assert_pre (ite (<= (- $k6238981 $i6218979) (* 2 $n6248982)) 1 0)))))

; forwards $main_inv473
(assert
  (forall (($n6248982 Int) ($i6218979 Int) ($l6258983 Int) ($k6238981 Int) ($j6228980 Int) ($m6268984 Int))
    (=> (and (__VERIFIER_assert (ite (<= (- $k6238981 $i6218979) (* 2 $n6248982)) 1 0))
             (< $k6238981 $j6228980)
             ($main_inv473 $i6218979 $j6228980 $k6238981 $n6248982 $l6258983 $m6268984))
        ($main_inv473 $i6218979 $j6228980 (+ $k6238981 1) $n6248982 $l6258983 $m6268984))))

; backwards $main_sum473
(assert
  (forall (($i6218979 Int) ($l6258983 Int) ($k6238981 Int) ($i6218985 Int) ($n6248988 Int) ($j6228986 Int) ($j6228980 Int) ($m6268984 Int) ($n6248982 Int) ($l6258989 Int) ($k6238987 Int) ($m6268990 Int))
    (=> (and ($main_sum473 $i6218979 $j6228980 (+ $k6238981 1) $n6248982 $l6258983 $m6268984 $i6218985 $j6228986 $k6238987 $n6248988 $l6258989 $m6268990)
             (__VERIFIER_assert (ite (<= (- $k6238981 $i6218979) (* 2 $n6248982)) 1 0))
             (< $k6238981 $j6228980))
        ($main_sum473 $i6218979 $j6228980 $k6238981 $n6248982 $l6258983 $m6268984 $i6218985 $j6228986 $k6238987 $n6248988 $l6258989 $m6268990))))

; forwards $main_inv472
(assert
  (forall (($j6228992 Int) ($m6268996 Int) ($i6218973 Int) ($k6238975 Int) ($m6268978 Int) ($l6258995 Int) ($i6218991 Int) ($n6248994 Int) ($k6238993 Int) ($n6248976 Int) ($j6228974 Int) ($l6258977 Int))
    (=> (and ($main_sum473 $i6218973 $j6228974 $i6218973 $n6248976 $l6258977 $m6268978 $i6218991 $j6228992 $k6238993 $n6248994 $l6258995 $m6268996)
             (< $j6228974 (* 3 $i6218973))
             ($main_inv472 $i6218973 $j6228974 $k6238975 $n6248976 $l6258977 $m6268978))
        ($main_inv472 $i6218991 (+ $j6228992 1) $k6238993 $n6248994 $l6258995 $m6268996))))

; backwards $main_sum472
(assert
  (forall (($j6228992 Int) ($m6269002 Int) ($m6268996 Int) ($n6249000 Int) ($i6218973 Int) ($k6238975 Int) ($l6259001 Int) ($m6268978 Int) ($l6258995 Int) ($i6218991 Int) ($j6228998 Int) ($n6248976 Int) ($j6228974 Int) ($l6258977 Int) ($k6238999 Int) ($n6248994 Int) ($i6218997 Int) ($k6238993 Int))
    (=> (and ($main_sum472 $i6218991 (+ $j6228992 1) $k6238993 $n6248994 $l6258995 $m6268996 $i6218997 $j6228998 $k6238999 $n6249000 $l6259001 $m6269002)
             ($main_sum473 $i6218973 $j6228974 $i6218973 $n6248976 $l6258977 $m6268978 $i6218991 $j6228992 $k6238993 $n6248994 $l6258995 $m6268996)
             (< $j6228974 (* 3 $i6218973)))
        ($main_sum472 $i6218973 $j6228974 $k6238975 $n6248976 $l6258977 $m6268978 $i6218997 $j6228998 $k6238999 $n6249000 $l6259001 $m6269002))))

; forwards $main_inv471
(assert
  (forall (($k6239005 Int) ($i6218967 Int) ($i6219003 Int) ($n6249006 Int) ($m6268972 Int) ($l6259007 Int) ($k6238969 Int) ($j6229004 Int) ($m6269008 Int) ($n6248970 Int) ($l6258971 Int) ($j6228968 Int))
    (=> (and ($main_sum472 $i6218967 (* 2 $i6218967) $k6238969 $n6248970 $l6258971 $m6268972 $i6219003 $j6229004 $k6239005 $n6249006 $l6259007 $m6269008)
             (< $i6218967 $n6248970)
             ($main_inv471 $i6218967 $j6228968 $k6238969 $n6248970 $l6258971 $m6268972))
        ($main_inv471 (+ $i6219003 1) $j6229004 $k6239005 $n6249006 $l6259007 $m6269008))))

; backwards $main_sum471
(assert
  (forall (($k6239005 Int) ($m6269014 Int) ($i6219003 Int) ($n6249006 Int) ($l6259013 Int) ($m6268972 Int) ($l6259007 Int) ($k6238969 Int) ($n6249012 Int) ($k6239011 Int) ($j6229004 Int) ($i6219009 Int) ($m6269008 Int) ($n6248970 Int) ($j6229010 Int) ($i6218967 Int) ($l6258971 Int) ($j6228968 Int))
    (=> (and ($main_sum471 (+ $i6219003 1) $j6229004 $k6239005 $n6249006 $l6259007 $m6269008 $i6219009 $j6229010 $k6239011 $n6249012 $l6259013 $m6269014)
             ($main_sum472 $i6218967 (* 2 $i6218967) $k6238969 $n6248970 $l6258971 $m6268972 $i6219003 $j6229004 $k6239005 $n6249006 $l6259007 $m6269008)
             (< $i6218967 $n6248970))
        ($main_sum471 $i6218967 $j6228968 $k6238969 $n6248970 $l6258971 $m6268972 $i6219009 $j6229010 $k6239011 $n6249012 $l6259013 $m6269014))))

; label END
(assert
  (forall (($i6219015 Int) ($i621 Int) ($l625 Int) ($m6269020 Int) ($m6268966 Int) ($j6228962 Int) ($k6238963 Int) ($k623 Int) ($n6249018 Int) ($n624 Int) ($l6258965 Int) ($i6218961 Int) ($j6229016 Int) ($l6259019 Int) ($n6248964 Int) ($j622 Int) ($m626 Int) ($k6239017 Int))
    (=> (and ($main_sum471 0 $j6228962 $k6238963 $n6248964 $l6258965 $m6268966 $i6219015 $j6229016 $k6239017 $n6249018 $l6259019 $m6269020)
             ($main_if249 $i621 $j622 $k623 $n624 $l625 $m626 $i6218961 $j6228962 $k6238963 $n6248964 $l6258965 $m6268966))
        ($main_END $i621 $j622 $k623 $n624 $l625 $m626 $i6219015 $j6229016 $k6239017 $n6249018 $l6259019 $m6269020))))

(check-sat)
