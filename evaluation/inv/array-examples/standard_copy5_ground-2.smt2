(set-logic HORN)

(declare-fun $main_sum133 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv138 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if52 (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv134 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv132 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum134 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum135 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum132 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv137 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum138 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv135 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum137 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv133 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum136 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv136 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond2023 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond2023))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if52 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond2024 Int))
    (=> (and ($__VERIFIER_assert_if52 cond2024))
        (__VERIFIER_assert cond2024))))

; loop entry $main_inv132
(assert
  (forall (($x223 Int) ($a6220 (Array Int Int)) ($a2216 (Array Int Int)) ($i222 Int) ($a5219 (Array Int Int)) ($a4218 (Array Int Int)) ($a1215 (Array Int Int)) ($a3217 (Array Int Int)))
        ($main_inv132 $a1215 $a2216 $a3217 $a4218 $a5219 $a6220 0 $i222 $x223)))

; loop term $main_sum132
(assert
  (forall (($i2222032 Int) ($a42182028 (Array Int Int)) ($a32172027 (Array Int Int)) ($a62202030 (Array Int Int)) ($a52192029 (Array Int Int)) ($x2232033 Int) ($a2212031 Int) ($a22162026 (Array Int Int)) ($a12152025 (Array Int Int)))
    (=> (and (not (< $a2212031 100000))
             ($main_inv132 $a12152025 $a22162026 $a32172027 $a42182028 $a52192029 $a62202030 $a2212031 $i2222032 $x2232033))
        ($main_sum132 $a12152025 $a22162026 $a32172027 $a42182028 $a52192029 $a62202030 $a2212031 $i2222032 $x2232033))))

; forwards $main_inv132
(assert
  (forall (($int2035 Int) ($i2222032 Int) ($a42182028 (Array Int Int)) ($a32172027 (Array Int Int)) ($a62202030 (Array Int Int)) ($a52192029 (Array Int Int)) ($x2232033 Int) ($a2212031 Int) ($int2034 Int) ($a22162026 (Array Int Int)) ($a12152025 (Array Int Int)))
    (=> (and (<= (- 2147483648) $int2035)
             (<= $int2035 2147483647)
             (<= (- 2147483648) $int2034)
             (<= $int2034 2147483647)
             (< $a2212031 100000)
             ($main_inv132 $a12152025 $a22162026 $a32172027 $a42182028 $a52192029 $a62202030 $a2212031 $i2222032 $x2232033))
        ($main_inv132 (store $a12152025 $a2212031 $int2034) $a22162026 $a32172027 $a42182028 (store $a52192029 $a2212031 $int2035) $a62202030 (+ $a2212031 1) $i2222032 $x2232033))))

; loop entry $main_inv133
(assert
  (forall (($a12152036 (Array Int Int)) ($a32172038 (Array Int Int)) ($a22162037 (Array Int Int)) ($a62202041 (Array Int Int)) ($x2232044 Int) ($a2212042 Int) ($a52192040 (Array Int Int)) ($a42182039 (Array Int Int)) ($i2222043 Int))
    (=> (and ($main_sum132 $a12152036 $a22162037 $a32172038 $a42182039 $a52192040 $a62202041 $a2212042 $i2222043 $x2232044))
        ($main_inv133 $a12152036 $a22162037 $a32172038 $a42182039 $a52192040 $a62202041 $a2212042 0 $x2232044))))

; loop term $main_sum133
(assert
  (forall (($x2232053 Int) ($i2222052 Int) ($a32172047 (Array Int Int)) ($a22162046 (Array Int Int)) ($a52192049 (Array Int Int)) ($a42182048 (Array Int Int)) ($a62202050 (Array Int Int)) ($a12152045 (Array Int Int)) ($a2212051 Int))
    (=> (and (not (< $i2222052 100000))
             ($main_inv133 $a12152045 $a22162046 $a32172047 $a42182048 $a52192049 $a62202050 $a2212051 $i2222052 $x2232053))
        ($main_sum133 $a12152045 $a22162046 $a32172047 $a42182048 $a52192049 $a62202050 $a2212051 $i2222052 $x2232053))))

; forwards $main_inv133
(assert
  (forall (($x2232053 Int) ($i2222052 Int) ($a32172047 (Array Int Int)) ($a22162046 (Array Int Int)) ($a52192049 (Array Int Int)) ($a42182048 (Array Int Int)) ($a62202050 (Array Int Int)) ($a12152045 (Array Int Int)) ($a2212051 Int))
    (=> (and (< $i2222052 100000)
             ($main_inv133 $a12152045 $a22162046 $a32172047 $a42182048 $a52192049 $a62202050 $a2212051 $i2222052 $x2232053))
        ($main_inv133 $a12152045 (store $a22162046 $i2222052 (select $a12152045 $i2222052)) $a32172047 $a42182048 $a52192049 $a62202050 $a2212051 (+ $i2222052 1) $x2232053))))

; loop entry $main_inv134
(assert
  (forall (($a52192058 (Array Int Int)) ($a42182057 (Array Int Int)) ($a12152054 (Array Int Int)) ($a32172056 (Array Int Int)) ($a62202059 (Array Int Int)) ($i2222061 Int) ($a2212060 Int) ($x2232062 Int) ($a22162055 (Array Int Int)))
    (=> (and ($main_sum133 $a12152054 $a22162055 $a32172056 $a42182057 $a52192058 $a62202059 $a2212060 $i2222061 $x2232062))
        ($main_inv134 $a12152054 $a22162055 $a32172056 $a42182057 $a52192058 $a62202059 $a2212060 0 $x2232062))))

; loop term $main_sum134
(assert
  (forall (($i2222070 Int) ($a12152063 (Array Int Int)) ($a32172065 (Array Int Int)) ($a2212069 Int) ($a42182066 (Array Int Int)) ($a22162064 (Array Int Int)) ($a52192067 (Array Int Int)) ($a62202068 (Array Int Int)) ($x2232071 Int))
    (=> (and (not (< $i2222070 100000))
             ($main_inv134 $a12152063 $a22162064 $a32172065 $a42182066 $a52192067 $a62202068 $a2212069 $i2222070 $x2232071))
        ($main_sum134 $a12152063 $a22162064 $a32172065 $a42182066 $a52192067 $a62202068 $a2212069 $i2222070 $x2232071))))

; forwards $main_inv134
(assert
  (forall (($i2222070 Int) ($a12152063 (Array Int Int)) ($a32172065 (Array Int Int)) ($a2212069 Int) ($a42182066 (Array Int Int)) ($a22162064 (Array Int Int)) ($a52192067 (Array Int Int)) ($a62202068 (Array Int Int)) ($x2232071 Int))
    (=> (and (< $i2222070 100000)
             ($main_inv134 $a12152063 $a22162064 $a32172065 $a42182066 $a52192067 $a62202068 $a2212069 $i2222070 $x2232071))
        ($main_inv134 $a12152063 $a22162064 (store $a32172065 $i2222070 (select $a22162064 $i2222070)) $a42182066 $a52192067 $a62202068 $a2212069 (+ $i2222070 1) $x2232071))))

; loop entry $main_inv135
(assert
  (forall (($a12152072 (Array Int Int)) ($x2232080 Int) ($a62202077 (Array Int Int)) ($a42182075 (Array Int Int)) ($i2222079 Int) ($a2212078 Int) ($a32172074 (Array Int Int)) ($a52192076 (Array Int Int)) ($a22162073 (Array Int Int)))
    (=> (and ($main_sum134 $a12152072 $a22162073 $a32172074 $a42182075 $a52192076 $a62202077 $a2212078 $i2222079 $x2232080))
        ($main_inv135 $a12152072 $a22162073 $a32172074 $a42182075 $a52192076 $a62202077 $a2212078 0 $x2232080))))

; loop term $main_sum135
(assert
  (forall (($i2222088 Int) ($a12152081 (Array Int Int)) ($a62202086 (Array Int Int)) ($x2232089 Int) ($a52192085 (Array Int Int)) ($a42182084 (Array Int Int)) ($a22162082 (Array Int Int)) ($a32172083 (Array Int Int)) ($a2212087 Int))
    (=> (and (not (< $i2222088 100000))
             ($main_inv135 $a12152081 $a22162082 $a32172083 $a42182084 $a52192085 $a62202086 $a2212087 $i2222088 $x2232089))
        ($main_sum135 $a12152081 $a22162082 $a32172083 $a42182084 $a52192085 $a62202086 $a2212087 $i2222088 $x2232089))))

; forwards $main_inv135
(assert
  (forall (($i2222088 Int) ($a12152081 (Array Int Int)) ($a62202086 (Array Int Int)) ($x2232089 Int) ($a52192085 (Array Int Int)) ($a42182084 (Array Int Int)) ($a22162082 (Array Int Int)) ($a32172083 (Array Int Int)) ($a2212087 Int))
    (=> (and (< $i2222088 100000)
             ($main_inv135 $a12152081 $a22162082 $a32172083 $a42182084 $a52192085 $a62202086 $a2212087 $i2222088 $x2232089))
        ($main_inv135 $a12152081 $a22162082 $a32172083 (store $a42182084 $i2222088 (select $a32172083 $i2222088)) $a52192085 $a62202086 $a2212087 (+ $i2222088 1) $x2232089))))

; loop entry $main_inv136
(assert
  (forall (($a32172092 (Array Int Int)) ($a12152090 (Array Int Int)) ($a62202095 (Array Int Int)) ($a42182093 (Array Int Int)) ($i2222097 Int) ($a2212096 Int) ($x2232098 Int) ($a22162091 (Array Int Int)) ($a52192094 (Array Int Int)))
    (=> (and ($main_sum135 $a12152090 $a22162091 $a32172092 $a42182093 $a52192094 $a62202095 $a2212096 $i2222097 $x2232098))
        ($main_inv136 $a12152090 $a22162091 $a32172092 $a42182093 $a52192094 $a62202095 $a2212096 0 $x2232098))))

; loop term $main_sum136
(assert
  (forall (($a42182102 (Array Int Int)) ($a52192103 (Array Int Int)) ($a12152099 (Array Int Int)) ($a62202104 (Array Int Int)) ($i2222106 Int) ($a32172101 (Array Int Int)) ($a2212105 Int) ($a22162100 (Array Int Int)) ($x2232107 Int))
    (=> (and (not (< $i2222106 100000))
             ($main_inv136 $a12152099 $a22162100 $a32172101 $a42182102 $a52192103 $a62202104 $a2212105 $i2222106 $x2232107))
        ($main_sum136 $a12152099 $a22162100 $a32172101 $a42182102 $a52192103 $a62202104 $a2212105 $i2222106 $x2232107))))

; forwards $main_inv136
(assert
  (forall (($a42182102 (Array Int Int)) ($a52192103 (Array Int Int)) ($a12152099 (Array Int Int)) ($a62202104 (Array Int Int)) ($i2222106 Int) ($a32172101 (Array Int Int)) ($a2212105 Int) ($a22162100 (Array Int Int)) ($x2232107 Int))
    (=> (and (< $i2222106 100000)
             ($main_inv136 $a12152099 $a22162100 $a32172101 $a42182102 $a52192103 $a62202104 $a2212105 $i2222106 $x2232107))
        ($main_inv136 $a12152099 $a22162100 $a32172101 $a42182102 $a52192103 (store $a62202104 $i2222106 (select $a42182102 $i2222106)) $a2212105 (+ $i2222106 1) $x2232107))))

; loop entry $main_inv137
(assert
  (forall (($a32172110 (Array Int Int)) ($x2232116 Int) ($a12152108 (Array Int Int)) ($i2222115 Int) ($a62202113 (Array Int Int)) ($a22162109 (Array Int Int)) ($a52192112 (Array Int Int)) ($a2212114 Int) ($a42182111 (Array Int Int)))
    (=> (and ($main_sum136 $a12152108 $a22162109 $a32172110 $a42182111 $a52192112 $a62202113 $a2212114 $i2222115 $x2232116))
        ($main_inv137 $a12152108 $a22162109 $a32172110 $a42182111 $a52192112 $a62202113 $a2212114 0 $x2232116))))

; loop term $main_sum137
(assert
  (forall (($a32172119 (Array Int Int)) ($a52192121 (Array Int Int)) ($a42182120 (Array Int Int)) ($a62202122 (Array Int Int)) ($a2212123 Int) ($i2222124 Int) ($a22162118 (Array Int Int)) ($a12152117 (Array Int Int)) ($x2232125 Int))
    (=> (and (not (< $i2222124 100000))
             ($main_inv137 $a12152117 $a22162118 $a32172119 $a42182120 $a52192121 $a62202122 $a2212123 $i2222124 $x2232125))
        ($main_sum137 $a12152117 $a22162118 $a32172119 $a42182120 $a52192121 $a62202122 $a2212123 $i2222124 $x2232125))))

; forwards $main_inv137
(assert
  (forall (($a32172119 (Array Int Int)) ($a52192121 (Array Int Int)) ($a42182120 (Array Int Int)) ($a62202122 (Array Int Int)) ($a2212123 Int) ($i2222124 Int) ($a22162118 (Array Int Int)) ($a12152117 (Array Int Int)) ($x2232125 Int))
    (=> (and (< $i2222124 100000)
             ($main_inv137 $a12152117 $a22162118 $a32172119 $a42182120 $a52192121 $a62202122 $a2212123 $i2222124 $x2232125))
        ($main_inv137 $a12152117 $a22162118 $a32172119 $a42182120 $a52192121 (store $a62202122 $i2222124 (select $a52192121 $i2222124)) $a2212123 (+ $i2222124 1) $x2232125))))

; loop entry $main_inv138
(assert
  (forall (($a42182129 (Array Int Int)) ($a32172128 (Array Int Int)) ($a62202131 (Array Int Int)) ($a2212132 Int) ($a22162127 (Array Int Int)) ($a52192130 (Array Int Int)) ($x2232134 Int) ($a12152126 (Array Int Int)) ($i2222133 Int))
    (=> (and ($main_sum137 $a12152126 $a22162127 $a32172128 $a42182129 $a52192130 $a62202131 $a2212132 $i2222133 $x2232134))
        ($main_inv138 $a12152126 $a22162127 $a32172128 $a42182129 $a52192130 $a62202131 $a2212132 $i2222133 0))))

; loop term $main_sum138
(assert
  (forall (($a22162136 (Array Int Int)) ($a12152135 (Array Int Int)) ($i2222142 Int) ($x2232143 Int) ($a32172137 (Array Int Int)) ($a52192139 (Array Int Int)) ($a42182138 (Array Int Int)) ($a2212141 Int) ($a62202140 (Array Int Int)))
    (=> (and (not (< $x2232143 100000))
             ($main_inv138 $a12152135 $a22162136 $a32172137 $a42182138 $a52192139 $a62202140 $a2212141 $i2222142 $x2232143))
        ($main_sum138 $a12152135 $a22162136 $a32172137 $a42182138 $a52192139 $a62202140 $a2212141 $i2222142 $x2232143))))

; __VERIFIER_assert precondition
(assert
  (forall (($a22162136 (Array Int Int)) ($a12152135 (Array Int Int)) ($i2222142 Int) ($x2232143 Int) ($a32172137 (Array Int Int)) ($a52192139 (Array Int Int)) ($a42182138 (Array Int Int)) ($a2212141 Int) ($a62202140 (Array Int Int)))
    (=> (and (< $x2232143 100000)
             ($main_inv138 $a12152135 $a22162136 $a32172137 $a42182138 $a52192139 $a62202140 $a2212141 $i2222142 $x2232143))
        ($__VERIFIER_assert_pre (ite (= (select $a12152135 $x2232143) (select $a62202140 $x2232143)) 1 0)))))

; forwards $main_inv138
(assert
  (forall (($a22162136 (Array Int Int)) ($a12152135 (Array Int Int)) ($i2222142 Int) ($x2232143 Int) ($a32172137 (Array Int Int)) ($a52192139 (Array Int Int)) ($a42182138 (Array Int Int)) ($a2212141 Int) ($a62202140 (Array Int Int)))
    (=> (and (__VERIFIER_assert (ite (= (select $a12152135 $x2232143) (select $a62202140 $x2232143)) 1 0))
             (< $x2232143 100000)
             ($main_inv138 $a12152135 $a22162136 $a32172137 $a42182138 $a52192139 $a62202140 $a2212141 $i2222142 $x2232143))
        ($main_inv138 $a12152135 $a22162136 $a32172137 $a42182138 $a52192139 $a62202140 $a2212141 $i2222142 (+ $x2232143 1)))))

(check-sat)
