(set-logic HORN)

(declare-fun $main_inv50 (Int Int Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_inv51 (Int Int Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_sum52 (Int Int Int Int Int Int (Array Int (Array Int Int)) Int Int Int Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $__VERIFIER_assert_if25 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_inv52 (Int Int Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_inv49 (Int Int Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_sum51 (Int Int Int Int Int Int (Array Int (Array Int Int)) Int Int Int Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum50 (Int Int Int Int Int Int (Array Int (Array Int Int)) Int Int Int Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_sum49 (Int Int Int Int Int Int (Array Int (Array Int Int)) Int Int Int Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $assume_abort_if_not_if24 (Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if24 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond949 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if24 cond cond949))
        (assume_abort_if_not cond949))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond950 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond950))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if25 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond951 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if25 cond cond951))
        (__VERIFIER_assert cond951))))

; assume_abort_if_not precondition
(assert
  (forall (($m69 Int) ($uint952 Int) ($int954 Int) ($int953 Int) ($C74 Int) ($n70 Int))
    (=> (and (<= (- 2147483648) $int954)
             (<= $int954 2147483647)
             (<= (- 2147483648) $int953)
             (<= $int953 2147483647)
             (= $C74 $uint952)
             (<= 0 $uint952)
             (<= $uint952 4294967295)
             (= $n70 1500)
             (= $m69 1000))
        ($assume_abort_if_not_pre (ite (< $int953 $m69) 1 0)))))

; assume_abort_if_not precondition
(assert
  (forall (($m69 Int) ($uint952 Int) ($int954 Int) ($int953 Int) ($C74 Int) ($n70 Int))
    (=> (and (assume_abort_if_not (ite (< $int953 $m69) 1 0))
             (<= (- 2147483648) $int954)
             (<= $int954 2147483647)
             (<= (- 2147483648) $int953)
             (<= $int953 2147483647)
             (= $C74 $uint952)
             (<= 0 $uint952)
             (<= $uint952 4294967295)
             (= $n70 1500)
             (= $m69 1000))
        ($assume_abort_if_not_pre (ite (< $int954 $n70) 1 0)))))

; loop entry $main_inv49
(assert
  (forall (($m69 Int) ($uint952 Int) ($A73 (Array Int (Array Int Int))) ($int954 Int) ($int953 Int) ($C74 Int) ($n70 Int))
    (=> (and (assume_abort_if_not (ite (< $int954 $n70) 1 0))
             (assume_abort_if_not (ite (< $int953 $m69) 1 0))
             (<= (- 2147483648) $int954)
             (<= $int954 2147483647)
             (<= (- 2147483648) $int953)
             (<= $int953 2147483647)
             (= $C74 $uint952)
             (<= 0 $uint952)
             (<= $uint952 4294967295)
             (= $n70 1500)
             (= $m69 1000))
        ($main_inv49 0 0 $m69 $n70 $int953 $int954 $A73 $C74))))

; loop term $main_sum49
(assert
  (forall (($i67955 Int) ($A73961 (Array Int (Array Int Int))) ($C74962 Int) ($s72960 Int) ($j68956 Int) ($q71959 Int) ($n70958 Int) ($m69957 Int))
    (=> (and (not (< $i67955 $q71959)))
        ($main_sum49 $i67955 $j68956 $m69957 $n70958 $q71959 $s72960 $A73961 $C74962 $i67955 $j68956 $m69957 $n70958 $q71959 $s72960 $A73961 $C74962))))

; loop entry $main_inv50
(assert
  (forall (($i67955 Int) ($A73961 (Array Int (Array Int Int))) ($C74962 Int) ($s72960 Int) ($j68956 Int) ($q71959 Int) ($n70958 Int) ($m69957 Int))
    (=> (and (< $i67955 $q71959)
             ($main_inv49 $i67955 $j68956 $m69957 $n70958 $q71959 $s72960 $A73961 $C74962))
        ($main_inv50 $i67955 0 $m69957 $n70958 $q71959 $s72960 $A73961 $C74962))))

; loop term $main_sum50
(assert
  (forall (($m69965 Int) ($C74970 Int) ($q71967 Int) ($j68964 Int) ($s72968 Int) ($i67963 Int) ($A73969 (Array Int (Array Int Int))) ($n70966 Int))
    (=> (and (not (< $j68964 $s72968)))
        ($main_sum50 $i67963 $j68964 $m69965 $n70966 $q71967 $s72968 $A73969 $C74970 $i67963 $j68964 $m69965 $n70966 $q71967 $s72968 $A73969 $C74970))))

; forwards $main_inv50
(assert
  (forall (($m69965 Int) ($C74970 Int) ($q71967 Int) ($j68964 Int) ($s72968 Int) ($i67963 Int) ($A73969 (Array Int (Array Int Int))) ($n70966 Int))
    (=> (and (< $j68964 $s72968)
             ($main_inv50 $i67963 $j68964 $m69965 $n70966 $q71967 $s72968 $A73969 $C74970))
        ($main_inv50 $i67963 (+ $j68964 1) $m69965 $n70966 $q71967 $s72968 (store $A73969 $i67963 (store (select $A73969 $i67963) $j68964 (+ (+ $i67963 $j68964) $C74970))) $C74970))))

; backwards $main_sum50
(assert
  (forall (($m69965 Int) ($i67971 Int) ($q71967 Int) ($j68964 Int) ($s72968 Int) ($i67963 Int) ($A73969 (Array Int (Array Int Int))) ($n70974 Int) ($n70966 Int) ($A73977 (Array Int (Array Int Int))) ($C74970 Int) ($C74978 Int) ($s72976 Int) ($j68972 Int) ($q71975 Int) ($m69973 Int))
    (=> (and ($main_sum50 $i67963 (+ $j68964 1) $m69965 $n70966 $q71967 $s72968 (store $A73969 $i67963 (store (select $A73969 $i67963) $j68964 (+ (+ $i67963 $j68964) $C74970))) $C74970 $i67971 $j68972 $m69973 $n70974 $q71975 $s72976 $A73977 $C74978)
             (< $j68964 $s72968))
        ($main_sum50 $i67963 $j68964 $m69965 $n70966 $q71967 $s72968 $A73969 $C74970 $i67971 $j68972 $m69973 $n70974 $q71975 $s72976 $A73977 $C74978))))

; forwards $main_inv49
(assert
  (forall (($i67955 Int) ($A73961 (Array Int (Array Int Int))) ($C74986 Int) ($n70982 Int) ($C74962 Int) ($A73985 (Array Int (Array Int Int))) ($j68956 Int) ($q71983 Int) ($n70958 Int) ($s72984 Int) ($s72960 Int) ($q71959 Int) ($m69981 Int) ($j68980 Int) ($i67979 Int) ($m69957 Int))
    (=> (and ($main_sum50 $i67955 0 $m69957 $n70958 $q71959 $s72960 $A73961 $C74962 $i67979 $j68980 $m69981 $n70982 $q71983 $s72984 $A73985 $C74986)
             (< $i67955 $q71959)
             ($main_inv49 $i67955 $j68956 $m69957 $n70958 $q71959 $s72960 $A73961 $C74962))
        ($main_inv49 (+ $i67979 1) $j68980 $m69981 $n70982 $q71983 $s72984 $A73985 $C74986))))

; backwards $main_sum49
(assert
  (forall (($i67955 Int) ($m69989 Int) ($A73961 (Array Int (Array Int Int))) ($n70982 Int) ($C74962 Int) ($j68988 Int) ($A73985 (Array Int (Array Int Int))) ($j68956 Int) ($n70958 Int) ($n70990 Int) ($C74994 Int) ($C74986 Int) ($s72984 Int) ($s72960 Int) ($q71959 Int) ($m69981 Int) ($j68980 Int) ($q71991 Int) ($q71983 Int) ($A73993 (Array Int (Array Int Int))) ($i67979 Int) ($m69957 Int) ($s72992 Int) ($i67987 Int))
    (=> (and ($main_sum49 (+ $i67979 1) $j68980 $m69981 $n70982 $q71983 $s72984 $A73985 $C74986 $i67987 $j68988 $m69989 $n70990 $q71991 $s72992 $A73993 $C74994)
             ($main_sum50 $i67955 0 $m69957 $n70958 $q71959 $s72960 $A73961 $C74962 $i67979 $j68980 $m69981 $n70982 $q71983 $s72984 $A73985 $C74986)
             (< $i67955 $q71959))
        ($main_sum49 $i67955 $j68956 $m69957 $n70958 $q71959 $s72960 $A73961 $C74962 $i67987 $j68988 $m69989 $n70990 $q71991 $s72992 $A73993 $C74994))))

; loop entry $main_inv51
(assert
  (forall (($m69 Int) ($i67995 Int) ($uint952 Int) ($n70998 Int) ($q71999 Int) ($A73 (Array Int (Array Int Int))) ($A731001 (Array Int (Array Int Int))) ($j68996 Int) ($m69997 Int) ($s721000 Int) ($C741002 Int) ($int954 Int) ($int953 Int) ($C74 Int) ($n70 Int))
    (=> (and ($main_sum49 0 0 $m69 $n70 $int953 $int954 $A73 $C74 $i67995 $j68996 $m69997 $n70998 $q71999 $s721000 $A731001 $C741002)
             (assume_abort_if_not (ite (< $int954 $n70) 1 0))
             (assume_abort_if_not (ite (< $int953 $m69) 1 0))
             (<= (- 2147483648) $int954)
             (<= $int954 2147483647)
             (<= (- 2147483648) $int953)
             (<= $int953 2147483647)
             (= $C74 $uint952)
             (<= 0 $uint952)
             (<= $uint952 4294967295)
             (= $n70 1500)
             (= $m69 1000))
        ($main_inv51 0 0 $m69997 $n70998 $q71999 $s721000 $A731001 $C741002))))

; loop term $main_sum51
(assert
  (forall (($m691005 Int) ($A731009 (Array Int (Array Int Int))) ($n701006 Int) ($q711007 Int) ($i671003 Int) ($j681004 Int) ($s721008 Int) ($C741010 Int))
    (=> (and (not (< $i671003 $q711007)))
        ($main_sum51 $i671003 $j681004 $m691005 $n701006 $q711007 $s721008 $A731009 $C741010 $i671003 $j681004 $m691005 $n701006 $q711007 $s721008 $A731009 $C741010))))

; loop entry $main_inv52
(assert
  (forall (($m691005 Int) ($A731009 (Array Int (Array Int Int))) ($n701006 Int) ($q711007 Int) ($i671003 Int) ($j681004 Int) ($s721008 Int) ($C741010 Int))
    (=> (and (< $i671003 $q711007)
             ($main_inv51 $i671003 $j681004 $m691005 $n701006 $q711007 $s721008 $A731009 $C741010))
        ($main_inv52 $i671003 0 $m691005 $n701006 $q711007 $s721008 $A731009 $C741010))))

; loop term $main_sum52
(assert
  (forall (($m691013 Int) ($A731017 (Array Int (Array Int Int))) ($s721016 Int) ($q711015 Int) ($n701014 Int) ($j681012 Int) ($i671011 Int) ($C741018 Int))
    (=> (and (not (< $j681012 $s721016)))
        ($main_sum52 $i671011 $j681012 $m691013 $n701014 $q711015 $s721016 $A731017 $C741018 $i671011 $j681012 $m691013 $n701014 $q711015 $s721016 $A731017 $C741018))))

; __VERIFIER_assert precondition
(assert
  (forall (($m691013 Int) ($A731017 (Array Int (Array Int Int))) ($s721016 Int) ($q711015 Int) ($n701014 Int) ($j681012 Int) ($i671011 Int) ($C741018 Int))
    (=> (and (< $j681012 $s721016)
             ($main_inv52 $i671011 $j681012 $m691013 $n701014 $q711015 $s721016 $A731017 $C741018))
        ($__VERIFIER_assert_pre (ite (= (select (select $A731017 $i671011) $j681012) (+ (+ $i671011 $j681012) $C741018)) 1 0)))))

; forwards $main_inv52
(assert
  (forall (($m691013 Int) ($A731017 (Array Int (Array Int Int))) ($s721016 Int) ($q711015 Int) ($n701014 Int) ($j681012 Int) ($i671011 Int) ($C741018 Int))
    (=> (and (__VERIFIER_assert (ite (= (select (select $A731017 $i671011) $j681012) (+ (+ $i671011 $j681012) $C741018)) 1 0))
             (< $j681012 $s721016)
             ($main_inv52 $i671011 $j681012 $m691013 $n701014 $q711015 $s721016 $A731017 $C741018))
        ($main_inv52 $i671011 (+ $j681012 1) $m691013 $n701014 $q711015 $s721016 $A731017 $C741018))))

; backwards $main_sum52
(assert
  (forall (($A731017 (Array Int (Array Int Int))) ($s721016 Int) ($n701014 Int) ($j681012 Int) ($i671011 Int) ($j681020 Int) ($m691021 Int) ($C741026 Int) ($q711023 Int) ($m691013 Int) ($i671019 Int) ($n701022 Int) ($s721024 Int) ($q711015 Int) ($C741018 Int) ($A731025 (Array Int (Array Int Int))))
    (=> (and ($main_sum52 $i671011 (+ $j681012 1) $m691013 $n701014 $q711015 $s721016 $A731017 $C741018 $i671019 $j681020 $m691021 $n701022 $q711023 $s721024 $A731025 $C741026)
             (__VERIFIER_assert (ite (= (select (select $A731017 $i671011) $j681012) (+ (+ $i671011 $j681012) $C741018)) 1 0))
             (< $j681012 $s721016))
        ($main_sum52 $i671011 $j681012 $m691013 $n701014 $q711015 $s721016 $A731017 $C741018 $i671019 $j681020 $m691021 $n701022 $q711023 $s721024 $A731025 $C741026))))

; forwards $main_inv51
(assert
  (forall (($i671027 Int) ($A731033 (Array Int (Array Int Int))) ($m691029 Int) ($m691005 Int) ($A731009 (Array Int (Array Int Int))) ($s721032 Int) ($n701006 Int) ($q711031 Int) ($C741034 Int) ($j681004 Int) ($s721008 Int) ($C741010 Int) ($q711007 Int) ($j681028 Int) ($n701030 Int) ($i671003 Int))
    (=> (and ($main_sum52 $i671003 0 $m691005 $n701006 $q711007 $s721008 $A731009 $C741010 $i671027 $j681028 $m691029 $n701030 $q711031 $s721032 $A731033 $C741034)
             (< $i671003 $q711007)
             ($main_inv51 $i671003 $j681004 $m691005 $n701006 $q711007 $s721008 $A731009 $C741010))
        ($main_inv51 (+ $i671027 1) $j681028 $m691029 $n701030 $q711031 $s721032 $A731033 $C741034))))

; backwards $main_sum51
(assert
  (forall (($m691037 Int) ($i671027 Int) ($A731033 (Array Int (Array Int Int))) ($m691029 Int) ($m691005 Int) ($A731009 (Array Int (Array Int Int))) ($q711031 Int) ($j681036 Int) ($n701038 Int) ($C741042 Int) ($C741034 Int) ($A731041 (Array Int (Array Int Int))) ($j681004 Int) ($s721040 Int) ($s721008 Int) ($C741010 Int) ($i671035 Int) ($s721032 Int) ($n701006 Int) ($q711039 Int) ($q711007 Int) ($j681028 Int) ($n701030 Int) ($i671003 Int))
    (=> (and ($main_sum51 (+ $i671027 1) $j681028 $m691029 $n701030 $q711031 $s721032 $A731033 $C741034 $i671035 $j681036 $m691037 $n701038 $q711039 $s721040 $A731041 $C741042)
             ($main_sum52 $i671003 0 $m691005 $n701006 $q711007 $s721008 $A731009 $C741010 $i671027 $j681028 $m691029 $n701030 $q711031 $s721032 $A731033 $C741034)
             (< $i671003 $q711007))
        ($main_sum51 $i671003 $j681004 $m691005 $n701006 $q711007 $s721008 $A731009 $C741010 $i671035 $j681036 $m691037 $n701038 $q711039 $s721040 $A731041 $C741042))))

(check-sat)
