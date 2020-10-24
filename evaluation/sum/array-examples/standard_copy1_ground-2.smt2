(set-logic HORN)

(declare-fun $main_inv93 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum93 ((Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv94 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv92 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum94 ((Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum92 ((Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if44 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond1983 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond1983))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if44 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond1984 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if44 cond cond1984))
        (__VERIFIER_assert cond1984))))

; loop entry $main_inv92
(assert
  (forall (($a1159 (Array Int Int)) ($a2160 (Array Int Int)) ($i162 Int) ($x163 Int))
        ($main_inv92 $a1159 $a2160 0 $i162 $x163)))

; loop term $main_sum92
(assert
  (forall (($i1621988 Int) ($a1611987 Int) ($a11591985 (Array Int Int)) ($x1631989 Int) ($a21601986 (Array Int Int)))
    (=> (and (not (< $a1611987 100000)))
        ($main_sum92 $a11591985 $a21601986 $a1611987 $i1621988 $x1631989 $a11591985 $a21601986 $a1611987 $i1621988 $x1631989))))

; forwards $main_inv92
(assert
  (forall (($i1621988 Int) ($a11591985 (Array Int Int)) ($int1990 Int) ($x1631989 Int) ($a21601986 (Array Int Int)) ($a1611987 Int) ($int1991 Int))
    (=> (and (<= (- 2147483648) $int1991)
             (<= $int1991 2147483647)
             (<= (- 2147483648) $int1990)
             (<= $int1990 2147483647)
             (< $a1611987 100000)
             ($main_inv92 $a11591985 $a21601986 $a1611987 $i1621988 $x1631989))
        ($main_inv92 (store $a11591985 $a1611987 $int1990) (store $a21601986 $a1611987 $int1991) (+ $a1611987 1) $i1621988 $x1631989))))

; backwards $main_sum92
(assert
  (forall (($i1621988 Int) ($a11591985 (Array Int Int)) ($a1611994 Int) ($a21601993 (Array Int Int)) ($int1990 Int) ($x1631989 Int) ($a1611987 Int) ($int1991 Int) ($x1631996 Int) ($a11591992 (Array Int Int)) ($a21601986 (Array Int Int)) ($i1621995 Int))
    (=> (and ($main_sum92 (store $a11591985 $a1611987 $int1990) (store $a21601986 $a1611987 $int1991) (+ $a1611987 1) $i1621988 $x1631989 $a11591992 $a21601993 $a1611994 $i1621995 $x1631996)
             (<= (- 2147483648) $int1991)
             (<= $int1991 2147483647)
             (<= (- 2147483648) $int1990)
             (<= $int1990 2147483647)
             (< $a1611987 100000))
        ($main_sum92 $a11591985 $a21601986 $a1611987 $i1621988 $x1631989 $a11591992 $a21601993 $a1611994 $i1621995 $x1631996))))

; loop entry $main_inv93
(assert
  (forall (($a21601998 (Array Int Int)) ($x1632001 Int) ($a1159 (Array Int Int)) ($a11591997 (Array Int Int)) ($i1622000 Int) ($a2160 (Array Int Int)) ($x163 Int) ($i162 Int) ($a1611999 Int))
    (=> (and ($main_sum92 $a1159 $a2160 0 $i162 $x163 $a11591997 $a21601998 $a1611999 $i1622000 $x1632001))
        ($main_inv93 $a11591997 $a21601998 $a1611999 0 $x1632001))))

; loop term $main_sum93
(assert
  (forall (($a1612004 Int) ($a11592002 (Array Int Int)) ($a21602003 (Array Int Int)) ($i1622005 Int) ($x1632006 Int))
    (=> (and (not (< $i1622005 100000)))
        ($main_sum93 $a11592002 $a21602003 $a1612004 $i1622005 $x1632006 $a11592002 $a21602003 $a1612004 $i1622005 $x1632006))))

; forwards $main_inv93
(assert
  (forall (($a1612004 Int) ($a11592002 (Array Int Int)) ($a21602003 (Array Int Int)) ($i1622005 Int) ($x1632006 Int))
    (=> (and (< $i1622005 100000)
             ($main_inv93 $a11592002 $a21602003 $a1612004 $i1622005 $x1632006))
        ($main_inv93 (store $a11592002 $i1622005 (select $a11592002 $i1622005)) $a21602003 $a1612004 (+ $i1622005 1) $x1632006))))

; backwards $main_sum93
(assert
  (forall (($x1632011 Int) ($a11592007 (Array Int Int)) ($a1612004 Int) ($a21602008 (Array Int Int)) ($i1622010 Int) ($a11592002 (Array Int Int)) ($a21602003 (Array Int Int)) ($i1622005 Int) ($a1612009 Int) ($x1632006 Int))
    (=> (and ($main_sum93 (store $a11592002 $i1622005 (select $a11592002 $i1622005)) $a21602003 $a1612004 (+ $i1622005 1) $x1632006 $a11592007 $a21602008 $a1612009 $i1622010 $x1632011)
             (< $i1622005 100000))
        ($main_sum93 $a11592002 $a21602003 $a1612004 $i1622005 $x1632006 $a11592007 $a21602008 $a1612009 $i1622010 $x1632011))))

; loop entry $main_inv94
(assert
  (forall (($a21601998 (Array Int Int)) ($x1632016 Int) ($x1632001 Int) ($a1612014 Int) ($a21602013 (Array Int Int)) ($a11592012 (Array Int Int)) ($a1159 (Array Int Int)) ($a11591997 (Array Int Int)) ($i1622000 Int) ($a2160 (Array Int Int)) ($x163 Int) ($i162 Int) ($i1622015 Int) ($a1611999 Int))
    (=> (and ($main_sum93 $a11591997 $a21601998 $a1611999 0 $x1632001 $a11592012 $a21602013 $a1612014 $i1622015 $x1632016)
             ($main_sum92 $a1159 $a2160 0 $i162 $x163 $a11591997 $a21601998 $a1611999 $i1622000 $x1632001))
        ($main_inv94 $a11592012 $a21602013 $a1612014 $i1622015 0))))

; loop term $main_sum94
(assert
  (forall (($i1622020 Int) ($a1612019 Int) ($a21602018 (Array Int Int)) ($x1632021 Int) ($a11592017 (Array Int Int)))
    (=> (and (not (< $x1632021 100000)))
        ($main_sum94 $a11592017 $a21602018 $a1612019 $i1622020 $x1632021 $a11592017 $a21602018 $a1612019 $i1622020 $x1632021))))

; __VERIFIER_assert precondition
(assert
  (forall (($i1622020 Int) ($a1612019 Int) ($a21602018 (Array Int Int)) ($x1632021 Int) ($a11592017 (Array Int Int)))
    (=> (and (< $x1632021 100000)
             ($main_inv94 $a11592017 $a21602018 $a1612019 $i1622020 $x1632021))
        ($__VERIFIER_assert_pre (ite (= (select $a11592017 $x1632021) (select $a21602018 $x1632021)) 1 0)))))

; forwards $main_inv94
(assert
  (forall (($i1622020 Int) ($a1612019 Int) ($a21602018 (Array Int Int)) ($x1632021 Int) ($a11592017 (Array Int Int)))
    (=> (and (__VERIFIER_assert (ite (= (select $a11592017 $x1632021) (select $a21602018 $x1632021)) 1 0))
             (< $x1632021 100000)
             ($main_inv94 $a11592017 $a21602018 $a1612019 $i1622020 $x1632021))
        ($main_inv94 $a11592017 $a21602018 $a1612019 $i1622020 (+ $x1632021 1)))))

; backwards $main_sum94
(assert
  (forall (($a11592022 (Array Int Int)) ($i1622020 Int) ($a21602023 (Array Int Int)) ($a1612019 Int) ($i1622025 Int) ($a21602018 (Array Int Int)) ($x1632021 Int) ($a1612024 Int) ($x1632026 Int) ($a11592017 (Array Int Int)))
    (=> (and ($main_sum94 $a11592017 $a21602018 $a1612019 $i1622020 (+ $x1632021 1) $a11592022 $a21602023 $a1612024 $i1622025 $x1632026)
             (__VERIFIER_assert (ite (= (select $a11592017 $x1632021) (select $a21602018 $x1632021)) 1 0))
             (< $x1632021 100000))
        ($main_sum94 $a11592017 $a21602018 $a1612019 $i1622020 $x1632021 $a11592022 $a21602023 $a1612024 $i1622025 $x1632026))))

(check-sat)
