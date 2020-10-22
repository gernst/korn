(set-logic HORN)

(declare-fun $main_sum57 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv57 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_if26 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv59 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv55 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if25 (Int Int) Bool)
(declare-fun $main_inv56 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum59 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv54 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum54 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum58 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum55 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv60 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv58 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_if27 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum56 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum60 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv53 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum53 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond1051 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond1051))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if25 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond1052 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if25 cond cond1052))
        (__VERIFIER_assert cond1052))))

; loop entry $main_inv53
(assert
  (forall (($k116 Int) ($x114 Int) ($s117 Int) ($i113 Int) ($a112 (Array Int Int)) ($tmp118 Int) ($y115 Int))
    (=> (and (= $i113 0))
        ($main_inv53 $a112 0 $x114 $y115 $k116 $s117 $tmp118))))

; loop term $main_sum53
(assert
  (forall (($i1131054 Int) ($tmp1181059 Int) ($a1121053 (Array Int Int)) ($s1171058 Int) ($k1161057 Int) ($x1141055 Int) ($y1151056 Int))
    (=> (and (not (< $i1131054 100000)))
        ($main_sum53 $a1121053 $i1131054 $x1141055 $y1151056 $k1161057 $s1171058 $tmp1181059 $a1121053 $i1131054 $x1141055 $y1151056 $k1161057 $s1171058 $tmp1181059))))

; forwards $main_inv53
(assert
  (forall (($i1131054 Int) ($tmp1181059 Int) ($a1121053 (Array Int Int)) ($s1171058 Int) ($k1161057 Int) ($y1151056 Int) ($int1060 Int) ($x1141055 Int))
    (=> (and (<= (- 2147483648) $int1060)
             (<= $int1060 2147483647)
             (< $i1131054 100000)
             ($main_inv53 $a1121053 $i1131054 $x1141055 $y1151056 $k1161057 $s1171058 $tmp1181059))
        ($main_inv53 (store $a1121053 $i1131054 $int1060) (+ $i1131054 1) $x1141055 $y1151056 $k1161057 $s1171058 $tmp1181059))))

; backwards $main_sum53
(assert
  (forall (($x1141063 Int) ($s1171066 Int) ($i1131054 Int) ($k1161065 Int) ($tmp1181059 Int) ($a1121053 (Array Int Int)) ($s1171058 Int) ($k1161057 Int) ($a1121061 (Array Int Int)) ($y1151056 Int) ($tmp1181067 Int) ($i1131062 Int) ($int1060 Int) ($x1141055 Int) ($y1151064 Int))
    (=> (and ($main_sum53 (store $a1121053 $i1131054 $int1060) (+ $i1131054 1) $x1141055 $y1151056 $k1161057 $s1171058 $tmp1181059 $a1121061 $i1131062 $x1141063 $y1151064 $k1161065 $s1171066 $tmp1181067)
             (<= (- 2147483648) $int1060)
             (<= $int1060 2147483647)
             (< $i1131054 100000))
        ($main_sum53 $a1121053 $i1131054 $x1141055 $y1151056 $k1161057 $s1171058 $tmp1181059 $a1121061 $i1131062 $x1141063 $y1151064 $k1161065 $s1171066 $tmp1181067))))

; loop entry $main_inv54
(assert
  (forall (($k116 Int) ($x114 Int) ($s117 Int) ($a1121068 (Array Int Int)) ($s1171073 Int) ($i113 Int) ($a112 (Array Int Int)) ($i1131069 Int) ($y1151071 Int) ($tmp118 Int) ($y115 Int) ($x1141070 Int) ($k1161072 Int) ($tmp1181074 Int))
    (=> (and ($main_sum53 $a112 0 $x114 $y115 $k116 $s117 $tmp118 $a1121068 $i1131069 $x1141070 $y1151071 $k1161072 $s1171073 $tmp1181074)
             (= $i113 0))
        ($main_inv54 $a1121068 0 $x1141070 $y1151071 $k1161072 $s1171073 $tmp1181074))))

; loop term $main_sum54
(assert
  (forall (($s1171080 Int) ($a1121075 (Array Int Int)) ($tmp1181081 Int) ($k1161079 Int) ($y1151078 Int) ($x1141077 Int) ($i1131076 Int))
    (=> (and (not (< $i1131076 100000)))
        ($main_sum54 $a1121075 $i1131076 $x1141077 $y1151078 $k1161079 $s1171080 $tmp1181081 $a1121075 $i1131076 $x1141077 $y1151078 $k1161079 $s1171080 $tmp1181081))))

; loop entry $main_inv55
(assert
  (forall (($s1171080 Int) ($a1121075 (Array Int Int)) ($tmp1181081 Int) ($k1161079 Int) ($y1151078 Int) ($x1141077 Int) ($i1131076 Int))
    (=> (and (= $s1171080 (+ $i1131076 1))
             (= $k1161079 $i1131076)
             (< $i1131076 100000)
             ($main_inv54 $a1121075 $i1131076 $x1141077 $y1151078 $k1161079 $s1171080 $tmp1181081))
        ($main_inv55 $a1121075 $i1131076 $x1141077 $y1151078 $k1161079 $s1171080 $tmp1181081))))

; loop term $main_sum55
(assert
  (forall (($x1141084 Int) ($i1131083 Int) ($a1121082 (Array Int Int)) ($k1161086 Int) ($y1151085 Int) ($s1171087 Int) ($tmp1181088 Int))
    (=> (and (not (< $k1161086 100000)))
        ($main_sum55 $a1121082 $i1131083 $x1141084 $y1151085 $k1161086 $s1171087 $tmp1181088 $a1121082 $i1131083 $x1141084 $y1151085 $k1161086 $s1171087 $tmp1181088))))

; if then
(assert
  (forall (($x1141084 Int) ($i1131083 Int) ($a1121082 (Array Int Int)) ($k1161086 Int) ($y1151085 Int) ($s1171087 Int) ($tmp1181088 Int))
    (=> (and (> (select $a1121082 $k1161086) (select $a1121082 $s1171087))
             (< $k1161086 100000)
             ($main_inv55 $a1121082 $i1131083 $x1141084 $y1151085 $k1161086 $s1171087 $tmp1181088))
        ($main_if26 $a1121082 $i1131083 $x1141084 $y1151085 $k1161086 $s1171087 $tmp1181088 $a1121082 $i1131083 $x1141084 $y1151085 $k1161086 $k1161086 $tmp1181088))))

; if else
(assert
  (forall (($x1141084 Int) ($i1131083 Int) ($a1121082 (Array Int Int)) ($k1161086 Int) ($y1151085 Int) ($s1171087 Int) ($tmp1181088 Int))
    (=> (and (not (> (select $a1121082 $k1161086) (select $a1121082 $s1171087)))
             (< $k1161086 100000)
             ($main_inv55 $a1121082 $i1131083 $x1141084 $y1151085 $k1161086 $s1171087 $tmp1181088))
        ($main_if26 $a1121082 $i1131083 $x1141084 $y1151085 $k1161086 $s1171087 $tmp1181088 $a1121082 $i1131083 $x1141084 $y1151085 $k1161086 $s1171087 $tmp1181088))))

; forwards $main_inv55
(assert
  (forall (($k1161093 Int) ($a1121089 (Array Int Int)) ($y1151092 Int) ($x1141084 Int) ($i1131083 Int) ($a1121082 (Array Int Int)) ($tmp1181095 Int) ($x1141091 Int) ($y1151085 Int) ($s1171094 Int) ($s1171087 Int) ($tmp1181088 Int) ($i1131090 Int) ($k1161086 Int))
    (=> (and ($main_if26 $a1121082 $i1131083 $x1141084 $y1151085 $k1161086 $s1171087 $tmp1181088 $a1121089 $i1131090 $x1141091 $y1151092 $k1161093 $s1171094 $tmp1181095))
        ($main_inv55 $a1121089 $i1131090 $x1141091 $y1151092 (+ $k1161093 1) $s1171094 $tmp1181095))))

; backwards $main_sum55
(assert
  (forall (($i1131097 Int) ($y1151099 Int) ($k1161093 Int) ($a1121089 (Array Int Int)) ($x1141084 Int) ($i1131083 Int) ($s1171101 Int) ($a1121082 (Array Int Int)) ($tmp1181095 Int) ($x1141091 Int) ($y1151085 Int) ($k1161100 Int) ($a1121096 (Array Int Int)) ($y1151092 Int) ($tmp1181102 Int) ($s1171087 Int) ($tmp1181088 Int) ($i1131090 Int) ($k1161086 Int) ($s1171094 Int) ($x1141098 Int))
    (=> (and ($main_sum55 $a1121089 $i1131090 $x1141091 $y1151092 (+ $k1161093 1) $s1171094 $tmp1181095 $a1121096 $i1131097 $x1141098 $y1151099 $k1161100 $s1171101 $tmp1181102)
             ($main_if26 $a1121082 $i1131083 $x1141084 $y1151085 $k1161086 $s1171087 $tmp1181088 $a1121089 $i1131090 $x1141091 $y1151092 $k1161093 $s1171094 $tmp1181095))
        ($main_sum55 $a1121082 $i1131083 $x1141084 $y1151085 $k1161086 $s1171087 $tmp1181088 $a1121096 $i1131097 $x1141098 $y1151099 $k1161100 $s1171101 $tmp1181102))))

; if then
(assert
  (forall (($i1131104 Int) ($a1121075 (Array Int Int)) ($tmp1181081 Int) ($a1121103 (Array Int Int)) ($k1161079 Int) ($y1151078 Int) ($y1151106 Int) ($i1131076 Int) ($tmp1181109 Int) ($s1171108 Int) ($s1171080 Int) ($k1161107 Int) ($x1141105 Int) ($x1141077 Int))
    (=> (and (= $tmp1181109 (select $a1121103 $s1171108))
             (not (= $s1171108 $i1131104))
             ($main_sum55 $a1121075 $i1131076 $x1141077 $y1151078 $k1161079 $s1171080 $tmp1181081 $a1121103 $i1131104 $x1141105 $y1151106 $k1161107 $s1171108 $tmp1181109)
             (= $s1171080 (+ $i1131076 1))
             (= $k1161079 $i1131076)
             (< $i1131076 100000)
             ($main_inv54 $a1121075 $i1131076 $x1141077 $y1151078 $k1161079 $s1171080 $tmp1181081))
        ($main_if27 $a1121075 $i1131076 $x1141077 $y1151078 $k1161079 $s1171080 $tmp1181081 (store (store $a1121103 $s1171108 (select $a1121103 $i1131104)) $i1131104 $tmp1181109) $i1131104 $x1141105 $y1151106 $k1161107 $s1171108 $tmp1181109))))

; if else
(assert
  (forall (($i1131104 Int) ($a1121075 (Array Int Int)) ($tmp1181081 Int) ($a1121103 (Array Int Int)) ($k1161079 Int) ($y1151078 Int) ($y1151106 Int) ($i1131076 Int) ($tmp1181109 Int) ($s1171108 Int) ($s1171080 Int) ($k1161107 Int) ($x1141105 Int) ($x1141077 Int))
    (=> (and (= $s1171108 $i1131104)
             ($main_sum55 $a1121075 $i1131076 $x1141077 $y1151078 $k1161079 $s1171080 $tmp1181081 $a1121103 $i1131104 $x1141105 $y1151106 $k1161107 $s1171108 $tmp1181109)
             (= $s1171080 (+ $i1131076 1))
             (= $k1161079 $i1131076)
             (< $i1131076 100000)
             ($main_inv54 $a1121075 $i1131076 $x1141077 $y1151078 $k1161079 $s1171080 $tmp1181081))
        ($main_if27 $a1121075 $i1131076 $x1141077 $y1151078 $k1161079 $s1171080 $tmp1181081 $a1121103 $i1131104 $x1141105 $y1151106 $k1161107 $s1171108 $tmp1181109))))

; loop entry $main_inv56
(assert
  (forall (($s1171080 Int) ($tmp1181081 Int) ($k1161079 Int) ($y1151113 Int) ($x1141077 Int) ($i1131111 Int) ($i1131076 Int) ($tmp1181116 Int) ($x1141112 Int) ($s1171115 Int) ($a1121110 (Array Int Int)) ($a1121075 (Array Int Int)) ($k1161114 Int) ($y1151078 Int))
    (=> (and ($main_if27 $a1121075 $i1131076 $x1141077 $y1151078 $k1161079 $s1171080 $tmp1181081 $a1121110 $i1131111 $x1141112 $y1151113 $k1161114 $s1171115 $tmp1181116))
        ($main_inv56 $a1121110 $i1131111 0 $y1151113 $k1161114 $s1171115 $tmp1181116))))

; loop term $main_sum56
(assert
  (forall (($tmp1181123 Int) ($x1141119 Int) ($s1171122 Int) ($y1151120 Int) ($a1121117 (Array Int Int)) ($i1131118 Int) ($k1161121 Int))
    (=> (and (not (< $x1141119 $i1131118)))
        ($main_sum56 $a1121117 $i1131118 $x1141119 $y1151120 $k1161121 $s1171122 $tmp1181123 $a1121117 $i1131118 $x1141119 $y1151120 $k1161121 $s1171122 $tmp1181123))))

; loop entry $main_inv57
(assert
  (forall (($tmp1181123 Int) ($x1141119 Int) ($s1171122 Int) ($y1151120 Int) ($a1121117 (Array Int Int)) ($i1131118 Int) ($k1161121 Int))
    (=> (and (< $x1141119 $i1131118)
             ($main_inv56 $a1121117 $i1131118 $x1141119 $y1151120 $k1161121 $s1171122 $tmp1181123))
        ($main_inv57 $a1121117 $i1131118 $x1141119 (+ $x1141119 1) $k1161121 $s1171122 $tmp1181123))))

; loop term $main_sum57
(assert
  (forall (($y1151127 Int) ($s1171129 Int) ($a1121124 (Array Int Int)) ($x1141126 Int) ($k1161128 Int) ($i1131125 Int) ($tmp1181130 Int))
    (=> (and (not (< $y1151127 $i1131125)))
        ($main_sum57 $a1121124 $i1131125 $x1141126 $y1151127 $k1161128 $s1171129 $tmp1181130 $a1121124 $i1131125 $x1141126 $y1151127 $k1161128 $s1171129 $tmp1181130))))

; __VERIFIER_assert precondition
(assert
  (forall (($y1151127 Int) ($s1171129 Int) ($a1121124 (Array Int Int)) ($x1141126 Int) ($k1161128 Int) ($i1131125 Int) ($tmp1181130 Int))
    (=> (and (< $y1151127 $i1131125)
             ($main_inv57 $a1121124 $i1131125 $x1141126 $y1151127 $k1161128 $s1171129 $tmp1181130))
        ($__VERIFIER_assert_pre (ite (<= (select $a1121124 $x1141126) (select $a1121124 $y1151127)) 1 0)))))

; forwards $main_inv57
(assert
  (forall (($y1151127 Int) ($s1171129 Int) ($a1121124 (Array Int Int)) ($x1141126 Int) ($k1161128 Int) ($i1131125 Int) ($tmp1181130 Int))
    (=> (and (__VERIFIER_assert (ite (<= (select $a1121124 $x1141126) (select $a1121124 $y1151127)) 1 0))
             (< $y1151127 $i1131125)
             ($main_inv57 $a1121124 $i1131125 $x1141126 $y1151127 $k1161128 $s1171129 $tmp1181130))
        ($main_inv57 $a1121124 $i1131125 $x1141126 (+ $y1151127 1) $k1161128 $s1171129 $tmp1181130))))

; backwards $main_sum57
(assert
  (forall (($s1171136 Int) ($tmp1181137 Int) ($y1151127 Int) ($s1171129 Int) ($a1121131 (Array Int Int)) ($x1141126 Int) ($x1141133 Int) ($k1161128 Int) ($i1131125 Int) ($tmp1181130 Int) ($k1161135 Int) ($a1121124 (Array Int Int)) ($y1151134 Int) ($i1131132 Int))
    (=> (and ($main_sum57 $a1121124 $i1131125 $x1141126 (+ $y1151127 1) $k1161128 $s1171129 $tmp1181130 $a1121131 $i1131132 $x1141133 $y1151134 $k1161135 $s1171136 $tmp1181137)
             (__VERIFIER_assert (ite (<= (select $a1121124 $x1141126) (select $a1121124 $y1151127)) 1 0))
             (< $y1151127 $i1131125))
        ($main_sum57 $a1121124 $i1131125 $x1141126 $y1151127 $k1161128 $s1171129 $tmp1181130 $a1121131 $i1131132 $x1141133 $y1151134 $k1161135 $s1171136 $tmp1181137))))

; forwards $main_inv56
(assert
  (forall (($tmp1181123 Int) ($x1141119 Int) ($k1161142 Int) ($s1171122 Int) ($y1151120 Int) ($y1151141 Int) ($s1171143 Int) ($i1131139 Int) ($a1121117 (Array Int Int)) ($x1141140 Int) ($k1161121 Int) ($a1121138 (Array Int Int)) ($tmp1181144 Int) ($i1131118 Int))
    (=> (and ($main_sum57 $a1121117 $i1131118 $x1141119 (+ $x1141119 1) $k1161121 $s1171122 $tmp1181123 $a1121138 $i1131139 $x1141140 $y1151141 $k1161142 $s1171143 $tmp1181144)
             (< $x1141119 $i1131118)
             ($main_inv56 $a1121117 $i1131118 $x1141119 $y1151120 $k1161121 $s1171122 $tmp1181123))
        ($main_inv56 $a1121138 $i1131139 (+ $x1141140 1) $y1151141 $k1161142 $s1171143 $tmp1181144))))

; backwards $main_sum56
(assert
  (forall (($x1141147 Int) ($tmp1181123 Int) ($x1141119 Int) ($k1161142 Int) ($s1171122 Int) ($s1171150 Int) ($y1151120 Int) ($i1131146 Int) ($s1171143 Int) ($i1131139 Int) ($a1121117 (Array Int Int)) ($tmp1181151 Int) ($k1161121 Int) ($y1151141 Int) ($k1161149 Int) ($x1141140 Int) ($y1151148 Int) ($tmp1181144 Int) ($i1131118 Int) ($a1121145 (Array Int Int)) ($a1121138 (Array Int Int)))
    (=> (and ($main_sum56 $a1121138 $i1131139 (+ $x1141140 1) $y1151141 $k1161142 $s1171143 $tmp1181144 $a1121145 $i1131146 $x1141147 $y1151148 $k1161149 $s1171150 $tmp1181151)
             ($main_sum57 $a1121117 $i1131118 $x1141119 (+ $x1141119 1) $k1161121 $s1171122 $tmp1181123 $a1121138 $i1131139 $x1141140 $y1151141 $k1161142 $s1171143 $tmp1181144)
             (< $x1141119 $i1131118))
        ($main_sum56 $a1121117 $i1131118 $x1141119 $y1151120 $k1161121 $s1171122 $tmp1181123 $a1121145 $i1131146 $x1141147 $y1151148 $k1161149 $s1171150 $tmp1181151))))

; loop entry $main_inv58
(assert
  (forall (($s1171080 Int) ($tmp1181081 Int) ($k1161156 Int) ($k1161079 Int) ($x1141077 Int) ($i1131111 Int) ($i1131076 Int) ($y1151155 Int) ($tmp1181158 Int) ($x1141154 Int) ($tmp1181116 Int) ($x1141112 Int) ($s1171115 Int) ($a1121110 (Array Int Int)) ($a1121075 (Array Int Int)) ($s1171157 Int) ($i1131153 Int) ($k1161114 Int) ($y1151078 Int) ($a1121152 (Array Int Int)) ($y1151113 Int))
    (=> (and ($main_sum56 $a1121110 $i1131111 0 $y1151113 $k1161114 $s1171115 $tmp1181116 $a1121152 $i1131153 $x1141154 $y1151155 $k1161156 $s1171157 $tmp1181158)
             ($main_if27 $a1121075 $i1131076 $x1141077 $y1151078 $k1161079 $s1171080 $tmp1181081 $a1121110 $i1131111 $x1141112 $y1151113 $k1161114 $s1171115 $tmp1181116))
        ($main_inv58 $a1121152 $i1131153 (+ $i1131153 1) $y1151155 $k1161156 $s1171157 $tmp1181158))))

; loop term $main_sum58
(assert
  (forall (($tmp1181165 Int) ($k1161163 Int) ($i1131160 Int) ($s1171164 Int) ($y1151162 Int) ($x1141161 Int) ($a1121159 (Array Int Int)))
    (=> (and (not (< $x1141161 100000)))
        ($main_sum58 $a1121159 $i1131160 $x1141161 $y1151162 $k1161163 $s1171164 $tmp1181165 $a1121159 $i1131160 $x1141161 $y1151162 $k1161163 $s1171164 $tmp1181165))))

; __VERIFIER_assert precondition
(assert
  (forall (($tmp1181165 Int) ($k1161163 Int) ($i1131160 Int) ($s1171164 Int) ($y1151162 Int) ($x1141161 Int) ($a1121159 (Array Int Int)))
    (=> (and (< $x1141161 100000)
             ($main_inv58 $a1121159 $i1131160 $x1141161 $y1151162 $k1161163 $s1171164 $tmp1181165))
        ($__VERIFIER_assert_pre (ite (>= (select $a1121159 $x1141161) (select $a1121159 $i1131160)) 1 0)))))

; forwards $main_inv58
(assert
  (forall (($tmp1181165 Int) ($k1161163 Int) ($i1131160 Int) ($s1171164 Int) ($y1151162 Int) ($x1141161 Int) ($a1121159 (Array Int Int)))
    (=> (and (__VERIFIER_assert (ite (>= (select $a1121159 $x1141161) (select $a1121159 $i1131160)) 1 0))
             (< $x1141161 100000)
             ($main_inv58 $a1121159 $i1131160 $x1141161 $y1151162 $k1161163 $s1171164 $tmp1181165))
        ($main_inv58 $a1121159 $i1131160 (+ $x1141161 1) $y1151162 $k1161163 $s1171164 $tmp1181165))))

; backwards $main_sum58
(assert
  (forall (($y1151169 Int) ($tmp1181165 Int) ($i1131160 Int) ($s1171164 Int) ($x1141161 Int) ($a1121166 (Array Int Int)) ($s1171171 Int) ($k1161163 Int) ($y1151162 Int) ($tmp1181172 Int) ($x1141168 Int) ($k1161170 Int) ($a1121159 (Array Int Int)) ($i1131167 Int))
    (=> (and ($main_sum58 $a1121159 $i1131160 (+ $x1141161 1) $y1151162 $k1161163 $s1171164 $tmp1181165 $a1121166 $i1131167 $x1141168 $y1151169 $k1161170 $s1171171 $tmp1181172)
             (__VERIFIER_assert (ite (>= (select $a1121159 $x1141161) (select $a1121159 $i1131160)) 1 0))
             (< $x1141161 100000))
        ($main_sum58 $a1121159 $i1131160 $x1141161 $y1151162 $k1161163 $s1171164 $tmp1181165 $a1121166 $i1131167 $x1141168 $y1151169 $k1161170 $s1171171 $tmp1181172))))

; forwards $main_inv54
(assert
  (forall (($s1171080 Int) ($k1161177 Int) ($y1151176 Int) ($i1131174 Int) ($tmp1181081 Int) ($k1161156 Int) ($k1161079 Int) ($a1121173 (Array Int Int)) ($s1171178 Int) ($i1131111 Int) ($i1131076 Int) ($y1151155 Int) ($x1141175 Int) ($tmp1181158 Int) ($x1141154 Int) ($tmp1181116 Int) ($x1141112 Int) ($s1171115 Int) ($a1121110 (Array Int Int)) ($a1121075 (Array Int Int)) ($s1171157 Int) ($i1131153 Int) ($k1161114 Int) ($y1151078 Int) ($a1121152 (Array Int Int)) ($y1151113 Int) ($tmp1181179 Int) ($x1141077 Int))
    (=> (and ($main_sum58 $a1121152 $i1131153 (+ $i1131153 1) $y1151155 $k1161156 $s1171157 $tmp1181158 $a1121173 $i1131174 $x1141175 $y1151176 $k1161177 $s1171178 $tmp1181179)
             ($main_sum56 $a1121110 $i1131111 0 $y1151113 $k1161114 $s1171115 $tmp1181116 $a1121152 $i1131153 $x1141154 $y1151155 $k1161156 $s1171157 $tmp1181158)
             ($main_if27 $a1121075 $i1131076 $x1141077 $y1151078 $k1161079 $s1171080 $tmp1181081 $a1121110 $i1131111 $x1141112 $y1151113 $k1161114 $s1171115 $tmp1181116))
        ($main_inv54 $a1121173 (+ $i1131174 1) $x1141175 $y1151176 $k1161177 $s1171178 $tmp1181179))))

; backwards $main_sum54
(assert
  (forall (($s1171080 Int) ($k1161177 Int) ($i1131174 Int) ($i1131181 Int) ($tmp1181081 Int) ($k1161156 Int) ($k1161079 Int) ($a1121173 (Array Int Int)) ($i1131076 Int) ($y1151155 Int) ($y1151183 Int) ($x1141175 Int) ($x1141154 Int) ($a1121180 (Array Int Int)) ($tmp1181158 Int) ($tmp1181116 Int) ($x1141112 Int) ($s1171115 Int) ($y1151176 Int) ($x1141182 Int) ($a1121110 (Array Int Int)) ($a1121075 (Array Int Int)) ($s1171157 Int) ($i1131153 Int) ($k1161114 Int) ($y1151078 Int) ($s1171178 Int) ($s1171185 Int) ($k1161184 Int) ($a1121152 (Array Int Int)) ($y1151113 Int) ($tmp1181179 Int) ($x1141077 Int) ($i1131111 Int) ($tmp1181186 Int))
    (=> (and ($main_sum54 $a1121173 (+ $i1131174 1) $x1141175 $y1151176 $k1161177 $s1171178 $tmp1181179 $a1121180 $i1131181 $x1141182 $y1151183 $k1161184 $s1171185 $tmp1181186)
             ($main_sum58 $a1121152 $i1131153 (+ $i1131153 1) $y1151155 $k1161156 $s1171157 $tmp1181158 $a1121173 $i1131174 $x1141175 $y1151176 $k1161177 $s1171178 $tmp1181179)
             ($main_sum56 $a1121110 $i1131111 0 $y1151113 $k1161114 $s1171115 $tmp1181116 $a1121152 $i1131153 $x1141154 $y1151155 $k1161156 $s1171157 $tmp1181158)
             ($main_if27 $a1121075 $i1131076 $x1141077 $y1151078 $k1161079 $s1171080 $tmp1181081 $a1121110 $i1131111 $x1141112 $y1151113 $k1161114 $s1171115 $tmp1181116))
        ($main_sum54 $a1121075 $i1131076 $x1141077 $y1151078 $k1161079 $s1171080 $tmp1181081 $a1121180 $i1131181 $x1141182 $y1151183 $k1161184 $s1171185 $tmp1181186))))

; loop entry $main_inv59
(assert
  (forall (($s117 Int) ($a1121068 (Array Int Int)) ($s1171073 Int) ($i113 Int) ($k1161191 Int) ($x1141189 Int) ($a112 (Array Int Int)) ($k116 Int) ($s1171192 Int) ($i1131069 Int) ($y1151071 Int) ($tmp1181193 Int) ($x114 Int) ($a1121187 (Array Int Int)) ($tmp118 Int) ($y115 Int) ($x1141070 Int) ($y1151190 Int) ($i1131188 Int) ($k1161072 Int) ($tmp1181074 Int))
    (=> (and ($main_sum54 $a1121068 0 $x1141070 $y1151071 $k1161072 $s1171073 $tmp1181074 $a1121187 $i1131188 $x1141189 $y1151190 $k1161191 $s1171192 $tmp1181193)
             ($main_sum53 $a112 0 $x114 $y115 $k116 $s117 $tmp118 $a1121068 $i1131069 $x1141070 $y1151071 $k1161072 $s1171073 $tmp1181074)
             (= $i113 0))
        ($main_inv59 $a1121187 $i1131188 0 $y1151190 $k1161191 $s1171192 $tmp1181193))))

; loop term $main_sum59
(assert
  (forall (($x1141196 Int) ($k1161198 Int) ($a1121194 (Array Int Int)) ($tmp1181200 Int) ($i1131195 Int) ($y1151197 Int) ($s1171199 Int))
    (=> (and (not (< $x1141196 100000)))
        ($main_sum59 $a1121194 $i1131195 $x1141196 $y1151197 $k1161198 $s1171199 $tmp1181200 $a1121194 $i1131195 $x1141196 $y1151197 $k1161198 $s1171199 $tmp1181200))))

; loop entry $main_inv60
(assert
  (forall (($x1141196 Int) ($k1161198 Int) ($a1121194 (Array Int Int)) ($tmp1181200 Int) ($i1131195 Int) ($y1151197 Int) ($s1171199 Int))
    (=> (and (< $x1141196 100000)
             ($main_inv59 $a1121194 $i1131195 $x1141196 $y1151197 $k1161198 $s1171199 $tmp1181200))
        ($main_inv60 $a1121194 $i1131195 $x1141196 (+ $x1141196 1) $k1161198 $s1171199 $tmp1181200))))

; loop term $main_sum60
(assert
  (forall (($i1131202 Int) ($tmp1181207 Int) ($x1141203 Int) ($k1161205 Int) ($s1171206 Int) ($y1151204 Int) ($a1121201 (Array Int Int)))
    (=> (and (not (< $y1151204 100000)))
        ($main_sum60 $a1121201 $i1131202 $x1141203 $y1151204 $k1161205 $s1171206 $tmp1181207 $a1121201 $i1131202 $x1141203 $y1151204 $k1161205 $s1171206 $tmp1181207))))

; __VERIFIER_assert precondition
(assert
  (forall (($i1131202 Int) ($tmp1181207 Int) ($x1141203 Int) ($k1161205 Int) ($s1171206 Int) ($y1151204 Int) ($a1121201 (Array Int Int)))
    (=> (and (< $y1151204 100000)
             ($main_inv60 $a1121201 $i1131202 $x1141203 $y1151204 $k1161205 $s1171206 $tmp1181207))
        ($__VERIFIER_assert_pre (ite (<= (select $a1121201 $x1141203) (select $a1121201 $y1151204)) 1 0)))))

; forwards $main_inv60
(assert
  (forall (($i1131202 Int) ($tmp1181207 Int) ($x1141203 Int) ($k1161205 Int) ($s1171206 Int) ($y1151204 Int) ($a1121201 (Array Int Int)))
    (=> (and (__VERIFIER_assert (ite (<= (select $a1121201 $x1141203) (select $a1121201 $y1151204)) 1 0))
             (< $y1151204 100000)
             ($main_inv60 $a1121201 $i1131202 $x1141203 $y1151204 $k1161205 $s1171206 $tmp1181207))
        ($main_inv60 $a1121201 $i1131202 $x1141203 (+ $y1151204 1) $k1161205 $s1171206 $tmp1181207))))

; backwards $main_sum60
(assert
  (forall (($tmp1181207 Int) ($x1141203 Int) ($k1161212 Int) ($a1121208 (Array Int Int)) ($i1131209 Int) ($s1171206 Int) ($y1151204 Int) ($a1121201 (Array Int Int)) ($y1151211 Int) ($s1171213 Int) ($i1131202 Int) ($tmp1181214 Int) ($k1161205 Int) ($x1141210 Int))
    (=> (and ($main_sum60 $a1121201 $i1131202 $x1141203 (+ $y1151204 1) $k1161205 $s1171206 $tmp1181207 $a1121208 $i1131209 $x1141210 $y1151211 $k1161212 $s1171213 $tmp1181214)
             (__VERIFIER_assert (ite (<= (select $a1121201 $x1141203) (select $a1121201 $y1151204)) 1 0))
             (< $y1151204 100000))
        ($main_sum60 $a1121201 $i1131202 $x1141203 $y1151204 $k1161205 $s1171206 $tmp1181207 $a1121208 $i1131209 $x1141210 $y1151211 $k1161212 $s1171213 $tmp1181214))))

; forwards $main_inv59
(assert
  (forall (($x1141196 Int) ($x1141217 Int) ($y1151218 Int) ($a1121194 (Array Int Int)) ($tmp1181200 Int) ($i1131216 Int) ($s1171220 Int) ($i1131195 Int) ($a1121215 (Array Int Int)) ($tmp1181221 Int) ($k1161219 Int) ($k1161198 Int) ($y1151197 Int) ($s1171199 Int))
    (=> (and ($main_sum60 $a1121194 $i1131195 $x1141196 (+ $x1141196 1) $k1161198 $s1171199 $tmp1181200 $a1121215 $i1131216 $x1141217 $y1151218 $k1161219 $s1171220 $tmp1181221)
             (< $x1141196 100000)
             ($main_inv59 $a1121194 $i1131195 $x1141196 $y1151197 $k1161198 $s1171199 $tmp1181200))
        ($main_inv59 $a1121215 $i1131216 (+ $x1141217 1) $y1151218 $k1161219 $s1171220 $tmp1181221))))

; backwards $main_sum59
(assert
  (forall (($y1151225 Int) ($x1141196 Int) ($a1121222 (Array Int Int)) ($x1141217 Int) ($s1171227 Int) ($y1151218 Int) ($a1121194 (Array Int Int)) ($tmp1181200 Int) ($i1131216 Int) ($s1171220 Int) ($x1141224 Int) ($k1161219 Int) ($k1161198 Int) ($i1131223 Int) ($i1131195 Int) ($k1161226 Int) ($a1121215 (Array Int Int)) ($tmp1181221 Int) ($tmp1181228 Int) ($y1151197 Int) ($s1171199 Int))
    (=> (and ($main_sum59 $a1121215 $i1131216 (+ $x1141217 1) $y1151218 $k1161219 $s1171220 $tmp1181221 $a1121222 $i1131223 $x1141224 $y1151225 $k1161226 $s1171227 $tmp1181228)
             ($main_sum60 $a1121194 $i1131195 $x1141196 (+ $x1141196 1) $k1161198 $s1171199 $tmp1181200 $a1121215 $i1131216 $x1141217 $y1151218 $k1161219 $s1171220 $tmp1181221)
             (< $x1141196 100000))
        ($main_sum59 $a1121194 $i1131195 $x1141196 $y1151197 $k1161198 $s1171199 $tmp1181200 $a1121222 $i1131223 $x1141224 $y1151225 $k1161226 $s1171227 $tmp1181228))))

(check-sat)
