(set-logic HORN)

(declare-fun $main_sum95 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv96 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv97 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if45 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv95 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv98 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum97 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum96 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum98 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond2032 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond2032))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if45 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond2033 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if45 cond cond2033))
        (__VERIFIER_assert cond2033))))

; loop entry $main_inv95
(assert
  (forall (($a1164 (Array Int Int)) ($a2165 (Array Int Int)) ($a3166 (Array Int Int)) ($i168 Int) ($x169 Int))
        ($main_inv95 $a1164 $a2165 $a3166 0 $i168 $x169)))

; loop term $main_sum95
(assert
  (forall (($a1672037 Int) ($x1692039 Int) ($i1682038 Int) ($a21652035 (Array Int Int)) ($a31662036 (Array Int Int)) ($a11642034 (Array Int Int)))
    (=> (and (not (< $a1672037 100000)))
        ($main_sum95 $a11642034 $a21652035 $a31662036 $a1672037 $i1682038 $x1692039 $a11642034 $a21652035 $a31662036 $a1672037 $i1682038 $x1692039))))

; forwards $main_inv95
(assert
  (forall (($int2040 Int) ($a1672037 Int) ($x1692039 Int) ($i1682038 Int) ($int2041 Int) ($a21652035 (Array Int Int)) ($a31662036 (Array Int Int)) ($a11642034 (Array Int Int)))
    (=> (and (<= (- 2147483648) $int2041)
             (<= $int2041 2147483647)
             (<= (- 2147483648) $int2040)
             (<= $int2040 2147483647)
             (< $a1672037 100000)
             ($main_inv95 $a11642034 $a21652035 $a31662036 $a1672037 $i1682038 $x1692039))
        ($main_inv95 (store $a11642034 $a1672037 $int2040) (store $a21652035 $a1672037 $int2041) $a31662036 (+ $a1672037 1) $i1682038 $x1692039))))

; backwards $main_sum95
(assert
  (forall (($a1672037 Int) ($a11642042 (Array Int Int)) ($a31662044 (Array Int Int)) ($i1682038 Int) ($a21652035 (Array Int Int)) ($int2040 Int) ($x1692047 Int) ($x1692039 Int) ($i1682046 Int) ($a31662036 (Array Int Int)) ($a1672045 Int) ($a11642034 (Array Int Int)) ($a21652043 (Array Int Int)) ($int2041 Int))
    (=> (and ($main_sum95 (store $a11642034 $a1672037 $int2040) (store $a21652035 $a1672037 $int2041) $a31662036 (+ $a1672037 1) $i1682038 $x1692039 $a11642042 $a21652043 $a31662044 $a1672045 $i1682046 $x1692047)
             (<= (- 2147483648) $int2041)
             (<= $int2041 2147483647)
             (<= (- 2147483648) $int2040)
             (<= $int2040 2147483647)
             (< $a1672037 100000))
        ($main_sum95 $a11642034 $a21652035 $a31662036 $a1672037 $i1682038 $x1692039 $a11642042 $a21652043 $a31662044 $a1672045 $i1682046 $x1692047))))

; loop entry $main_inv96
(assert
  (forall (($a11642048 (Array Int Int)) ($a1164 (Array Int Int)) ($x1692053 Int) ($a1672051 Int) ($a2165 (Array Int Int)) ($a31662050 (Array Int Int)) ($a3166 (Array Int Int)) ($i168 Int) ($x169 Int) ($i1682052 Int) ($a21652049 (Array Int Int)))
    (=> (and ($main_sum95 $a1164 $a2165 $a3166 0 $i168 $x169 $a11642048 $a21652049 $a31662050 $a1672051 $i1682052 $x1692053))
        ($main_inv96 $a11642048 $a21652049 $a31662050 $a1672051 0 $x1692053))))

; loop term $main_sum96
(assert
  (forall (($a31662056 (Array Int Int)) ($a1672057 Int) ($a11642054 (Array Int Int)) ($x1692059 Int) ($a21652055 (Array Int Int)) ($i1682058 Int))
    (=> (and (not (< $i1682058 100000)))
        ($main_sum96 $a11642054 $a21652055 $a31662056 $a1672057 $i1682058 $x1692059 $a11642054 $a21652055 $a31662056 $a1672057 $i1682058 $x1692059))))

; forwards $main_inv96
(assert
  (forall (($a31662056 (Array Int Int)) ($a1672057 Int) ($a11642054 (Array Int Int)) ($x1692059 Int) ($a21652055 (Array Int Int)) ($i1682058 Int))
    (=> (and (< $i1682058 100000)
             ($main_inv96 $a11642054 $a21652055 $a31662056 $a1672057 $i1682058 $x1692059))
        ($main_inv96 $a11642054 $a21652055 (store $a31662056 $i1682058 (select $a11642054 $i1682058)) $a1672057 (+ $i1682058 1) $x1692059))))

; backwards $main_sum96
(assert
  (forall (($x1692065 Int) ($a31662056 (Array Int Int)) ($a21652061 (Array Int Int)) ($a11642060 (Array Int Int)) ($a1672057 Int) ($i1682064 Int) ($a1672063 Int) ($a31662062 (Array Int Int)) ($a11642054 (Array Int Int)) ($x1692059 Int) ($a21652055 (Array Int Int)) ($i1682058 Int))
    (=> (and ($main_sum96 $a11642054 $a21652055 (store $a31662056 $i1682058 (select $a11642054 $i1682058)) $a1672057 (+ $i1682058 1) $x1692059 $a11642060 $a21652061 $a31662062 $a1672063 $i1682064 $x1692065)
             (< $i1682058 100000))
        ($main_sum96 $a11642054 $a21652055 $a31662056 $a1672057 $i1682058 $x1692059 $a11642060 $a21652061 $a31662062 $a1672063 $i1682064 $x1692065))))

; loop entry $main_inv97
(assert
  (forall (($a1164 (Array Int Int)) ($x1692053 Int) ($a1672069 Int) ($a2165 (Array Int Int)) ($x1692071 Int) ($a31662050 (Array Int Int)) ($a3166 (Array Int Int)) ($i168 Int) ($a21652067 (Array Int Int)) ($x169 Int) ($i1682052 Int) ($a31662068 (Array Int Int)) ($a11642048 (Array Int Int)) ($a1672051 Int) ($a11642066 (Array Int Int)) ($a21652049 (Array Int Int)) ($i1682070 Int))
    (=> (and ($main_sum96 $a11642048 $a21652049 $a31662050 $a1672051 0 $x1692053 $a11642066 $a21652067 $a31662068 $a1672069 $i1682070 $x1692071)
             ($main_sum95 $a1164 $a2165 $a3166 0 $i168 $x169 $a11642048 $a21652049 $a31662050 $a1672051 $i1682052 $x1692053))
        ($main_inv97 $a11642066 $a21652067 $a31662068 $a1672069 0 $x1692071))))

; loop term $main_sum97
(assert
  (forall (($a11642072 (Array Int Int)) ($a1672075 Int) ($x1692077 Int) ($a31662074 (Array Int Int)) ($a21652073 (Array Int Int)) ($i1682076 Int))
    (=> (and (not (< $i1682076 100000)))
        ($main_sum97 $a11642072 $a21652073 $a31662074 $a1672075 $i1682076 $x1692077 $a11642072 $a21652073 $a31662074 $a1672075 $i1682076 $x1692077))))

; forwards $main_inv97
(assert
  (forall (($a11642072 (Array Int Int)) ($a1672075 Int) ($x1692077 Int) ($a31662074 (Array Int Int)) ($a21652073 (Array Int Int)) ($i1682076 Int))
    (=> (and (< $i1682076 100000)
             ($main_inv97 $a11642072 $a21652073 $a31662074 $a1672075 $i1682076 $x1692077))
        ($main_inv97 $a11642072 $a21652073 (store $a31662074 $i1682076 (select $a21652073 $i1682076)) $a1672075 (+ $i1682076 1) $x1692077))))

; backwards $main_sum97
(assert
  (forall (($a11642078 (Array Int Int)) ($a11642072 (Array Int Int)) ($i1682082 Int) ($a1672075 Int) ($a21652079 (Array Int Int)) ($a21652073 (Array Int Int)) ($x1692077 Int) ($x1692083 Int) ($a31662074 (Array Int Int)) ($a1672081 Int) ($a31662080 (Array Int Int)) ($i1682076 Int))
    (=> (and ($main_sum97 $a11642072 $a21652073 (store $a31662074 $i1682076 (select $a21652073 $i1682076)) $a1672075 (+ $i1682076 1) $x1692077 $a11642078 $a21652079 $a31662080 $a1672081 $i1682082 $x1692083)
             (< $i1682076 100000))
        ($main_sum97 $a11642072 $a21652073 $a31662074 $a1672075 $i1682076 $x1692077 $a11642078 $a21652079 $a31662080 $a1672081 $i1682082 $x1692083))))

; loop entry $main_inv98
(assert
  (forall (($x1692089 Int) ($a1164 (Array Int Int)) ($x1692053 Int) ($a1672069 Int) ($a2165 (Array Int Int)) ($x1692071 Int) ($a31662050 (Array Int Int)) ($a3166 (Array Int Int)) ($a31662086 (Array Int Int)) ($a1672087 Int) ($x169 Int) ($a21652085 (Array Int Int)) ($i1682052 Int) ($a31662068 (Array Int Int)) ($a11642048 (Array Int Int)) ($a1672051 Int) ($a11642066 (Array Int Int)) ($i168 Int) ($a11642084 (Array Int Int)) ($i1682088 Int) ($a21652067 (Array Int Int)) ($a21652049 (Array Int Int)) ($i1682070 Int))
    (=> (and ($main_sum97 $a11642066 $a21652067 $a31662068 $a1672069 0 $x1692071 $a11642084 $a21652085 $a31662086 $a1672087 $i1682088 $x1692089)
             ($main_sum96 $a11642048 $a21652049 $a31662050 $a1672051 0 $x1692053 $a11642066 $a21652067 $a31662068 $a1672069 $i1682070 $x1692071)
             ($main_sum95 $a1164 $a2165 $a3166 0 $i168 $x169 $a11642048 $a21652049 $a31662050 $a1672051 $i1682052 $x1692053))
        ($main_inv98 $a11642084 $a21652085 $a31662086 $a1672087 $i1682088 0))))

; loop term $main_sum98
(assert
  (forall (($a21652091 (Array Int Int)) ($a1672093 Int) ($x1692095 Int) ($a11642090 (Array Int Int)) ($a31662092 (Array Int Int)) ($i1682094 Int))
    (=> (and (not (< $x1692095 100000)))
        ($main_sum98 $a11642090 $a21652091 $a31662092 $a1672093 $i1682094 $x1692095 $a11642090 $a21652091 $a31662092 $a1672093 $i1682094 $x1692095))))

; __VERIFIER_assert precondition
(assert
  (forall (($a21652091 (Array Int Int)) ($a1672093 Int) ($x1692095 Int) ($a11642090 (Array Int Int)) ($a31662092 (Array Int Int)) ($i1682094 Int))
    (=> (and (< $x1692095 100000)
             ($main_inv98 $a11642090 $a21652091 $a31662092 $a1672093 $i1682094 $x1692095))
        ($__VERIFIER_assert_pre (ite (= (select $a11642090 $x1692095) (select $a31662092 $x1692095)) 1 0)))))

; forwards $main_inv98
(assert
  (forall (($a21652091 (Array Int Int)) ($a1672093 Int) ($x1692095 Int) ($a11642090 (Array Int Int)) ($a31662092 (Array Int Int)) ($i1682094 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a11642090 $x1692095) (select $a31662092 $x1692095)) 1 0))
             (< $x1692095 100000)
             ($main_inv98 $a11642090 $a21652091 $a31662092 $a1672093 $i1682094 $x1692095))
        ($main_inv98 $a11642090 $a21652091 $a31662092 $a1672093 $i1682094 (+ $x1692095 1)))))

; backwards $main_sum98
(assert
  (forall (($a21652091 (Array Int Int)) ($a1672093 Int) ($x1692095 Int) ($x1692101 Int) ($a1672099 Int) ($i1682100 Int) ($a21652097 (Array Int Int)) ($a11642096 (Array Int Int)) ($a11642090 (Array Int Int)) ($a31662098 (Array Int Int)) ($a31662092 (Array Int Int)) ($i1682094 Int))
    (=> (and ($main_sum98 $a11642090 $a21652091 $a31662092 $a1672093 $i1682094 (+ $x1692095 1) $a11642096 $a21652097 $a31662098 $a1672099 $i1682100 $x1692101)
             (__VERIFIER_assert (ite (= (select $a11642090 $x1692095) (select $a31662092 $x1692095)) 1 0))
             (< $x1692095 100000))
        ($main_sum98 $a11642090 $a21652091 $a31662092 $a1672093 $i1682094 $x1692095 $a11642096 $a21652097 $a31662098 $a1672099 $i1682100 $x1692101))))

(check-sat)
