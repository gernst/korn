(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum54 (Int Int Int Int (Array Int (Array Int Int)) Int Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_inv58 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv53 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_inv54 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_sum53 (Int Int Int Int (Array Int (Array Int Int)) Int Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_inv57 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_inv55 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_sum56 (Int Int Int Int (Array Int (Array Int Int)) Int Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_sum55 (Int Int Int Int (Array Int (Array Int Int)) Int Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_sum58 (Int Int Int Int (Array Int (Array Int Int)) Int Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if26 (Int Int) Bool)
(declare-fun $main_if27 (Int Int Int Int (Array Int (Array Int Int)) Int Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_inv56 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_sum57 (Int Int Int Int (Array Int (Array Int Int)) Int Int Int Int Int (Array Int (Array Int Int)) Int) Bool)

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
        ($__VERIFIER_assert_if26 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond1052 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if26 cond cond1052))
        (__VERIFIER_assert cond1052))))

; loop entry $main_inv53
(assert
  (forall (($m77 Int) ($n78 Int) ($A79 (Array Int (Array Int Int))) ($max80 Int))
    (=> (and (= $n78 1500)
             (= $m77 1000))
        ($main_inv53 0 0 $m77 $n78 $A79 $max80))))

; loop term $main_sum53
(assert
  (forall (($j761054 Int) ($i751053 Int) ($max801058 Int) ($n781056 Int) ($A791057 (Array Int (Array Int Int))) ($m771055 Int))
    (=> (and (not (< $i751053 $m771055)))
        ($main_sum53 $i751053 $j761054 $m771055 $n781056 $A791057 $max801058 $i751053 $j761054 $m771055 $n781056 $A791057 $max801058))))

; loop entry $main_inv54
(assert
  (forall (($j761054 Int) ($i751053 Int) ($max801058 Int) ($n781056 Int) ($A791057 (Array Int (Array Int Int))) ($m771055 Int))
    (=> (and (< $i751053 $m771055)
             ($main_inv53 $i751053 $j761054 $m771055 $n781056 $A791057 $max801058))
        ($main_inv54 $i751053 0 $m771055 $n781056 $A791057 $max801058))))

; loop term $main_sum54
(assert
  (forall (($n781062 Int) ($max801064 Int) ($A791063 (Array Int (Array Int Int))) ($m771061 Int) ($j761060 Int) ($i751059 Int))
    (=> (and (not (< $j761060 $n781062)))
        ($main_sum54 $i751059 $j761060 $m771061 $n781062 $A791063 $max801064 $i751059 $j761060 $m771061 $n781062 $A791063 $max801064))))

; forwards $main_inv54
(assert
  (forall (($n781062 Int) ($max801064 Int) ($int1065 Int) ($A791063 (Array Int (Array Int Int))) ($m771061 Int) ($j761060 Int) ($i751059 Int))
    (=> (and (<= (- 2147483648) $int1065)
             (<= $int1065 2147483647)
             (< $j761060 $n781062)
             ($main_inv54 $i751059 $j761060 $m771061 $n781062 $A791063 $max801064))
        ($main_inv54 $i751059 (+ $j761060 1) $m771061 $n781062 (store $A791063 $i751059 (store (select $A791063 $i751059) $j761060 $int1065)) $max801064))))

; backwards $main_sum54
(assert
  (forall (($n781062 Int) ($A791070 (Array Int (Array Int Int))) ($max801064 Int) ($int1065 Int) ($A791063 (Array Int (Array Int Int))) ($n781069 Int) ($m771068 Int) ($m771061 Int) ($i751066 Int) ($max801071 Int) ($j761060 Int) ($j761067 Int) ($i751059 Int))
    (=> (and ($main_sum54 $i751059 (+ $j761060 1) $m771061 $n781062 (store $A791063 $i751059 (store (select $A791063 $i751059) $j761060 $int1065)) $max801064 $i751066 $j761067 $m771068 $n781069 $A791070 $max801071)
             (<= (- 2147483648) $int1065)
             (<= $int1065 2147483647)
             (< $j761060 $n781062))
        ($main_sum54 $i751059 $j761060 $m771061 $n781062 $A791063 $max801064 $i751066 $j761067 $m771068 $n781069 $A791070 $max801071))))

; forwards $main_inv53
(assert
  (forall (($i751072 Int) ($max801058 Int) ($n781056 Int) ($A791057 (Array Int (Array Int Int))) ($n781075 Int) ($m771055 Int) ($max801077 Int) ($j761054 Int) ($A791076 (Array Int (Array Int Int))) ($j761073 Int) ($i751053 Int) ($m771074 Int))
    (=> (and ($main_sum54 $i751053 0 $m771055 $n781056 $A791057 $max801058 $i751072 $j761073 $m771074 $n781075 $A791076 $max801077)
             (< $i751053 $m771055)
             ($main_inv53 $i751053 $j761054 $m771055 $n781056 $A791057 $max801058))
        ($main_inv53 (+ $i751072 1) $j761073 $m771074 $n781075 $A791076 $max801077))))

; backwards $main_sum53
(assert
  (forall (($i751072 Int) ($max801058 Int) ($n781056 Int) ($n781081 Int) ($A791057 (Array Int (Array Int Int))) ($n781075 Int) ($m771055 Int) ($j761079 Int) ($max801077 Int) ($j761054 Int) ($A791076 (Array Int (Array Int Int))) ($j761073 Int) ($i751053 Int) ($max801083 Int) ($m771074 Int) ($A791082 (Array Int (Array Int Int))) ($m771080 Int) ($i751078 Int))
    (=> (and ($main_sum53 (+ $i751072 1) $j761073 $m771074 $n781075 $A791076 $max801077 $i751078 $j761079 $m771080 $n781081 $A791082 $max801083)
             ($main_sum54 $i751053 0 $m771055 $n781056 $A791057 $max801058 $i751072 $j761073 $m771074 $n781075 $A791076 $max801077)
             (< $i751053 $m771055))
        ($main_sum53 $i751053 $j761054 $m771055 $n781056 $A791057 $max801058 $i751078 $j761079 $m771080 $n781081 $A791082 $max801083))))

; loop entry $main_inv55
(assert
  (forall (($i751084 Int) ($A791088 (Array Int (Array Int Int))) ($max80 Int) ($n781087 Int) ($m77 Int) ($n78 Int) ($max801089 Int) ($A79 (Array Int (Array Int Int))) ($m771086 Int) ($j761085 Int))
    (=> (and ($main_sum53 0 0 $m77 $n78 $A79 $max80 $i751084 $j761085 $m771086 $n781087 $A791088 $max801089)
             (= $n78 1500)
             (= $m77 1000))
        ($main_inv55 0 0 $m771086 $n781087 $A791088 (select (select $A791088 0) 0)))))

; loop term $main_sum55
(assert
  (forall (($A791094 (Array Int (Array Int Int))) ($max801095 Int) ($n781093 Int) ($m771092 Int) ($i751090 Int) ($j761091 Int))
    (=> (and (not (< $i751090 $n781093)))
        ($main_sum55 $i751090 $j761091 $m771092 $n781093 $A791094 $max801095 $i751090 $j761091 $m771092 $n781093 $A791094 $max801095))))

; loop entry $main_inv56
(assert
  (forall (($A791094 (Array Int (Array Int Int))) ($max801095 Int) ($n781093 Int) ($m771092 Int) ($i751090 Int) ($j761091 Int))
    (=> (and (< $i751090 $n781093)
             ($main_inv55 $i751090 $j761091 $m771092 $n781093 $A791094 $max801095))
        ($main_inv56 $i751090 0 $m771092 $n781093 $A791094 $max801095))))

; loop term $main_sum56
(assert
  (forall (($i751096 Int) ($m771098 Int) ($j761097 Int) ($max801101 Int) ($n781099 Int) ($A791100 (Array Int (Array Int Int))))
    (=> (and (not (< $j761097 $n781099)))
        ($main_sum56 $i751096 $j761097 $m771098 $n781099 $A791100 $max801101 $i751096 $j761097 $m771098 $n781099 $A791100 $max801101))))

; if then
(assert
  (forall (($i751096 Int) ($m771098 Int) ($j761097 Int) ($max801101 Int) ($n781099 Int) ($A791100 (Array Int (Array Int Int))))
    (=> (and (> (select (select $A791100 $i751096) $j761097) $max801101)
             (< $j761097 $n781099)
             ($main_inv56 $i751096 $j761097 $m771098 $n781099 $A791100 $max801101))
        ($main_if27 $i751096 $j761097 $m771098 $n781099 $A791100 $max801101 $i751096 $j761097 $m771098 $n781099 $A791100 (select (select $A791100 $i751096) $j761097)))))

; if else
(assert
  (forall (($i751096 Int) ($m771098 Int) ($j761097 Int) ($max801101 Int) ($n781099 Int) ($A791100 (Array Int (Array Int Int))))
    (=> (and (not (> (select (select $A791100 $i751096) $j761097) $max801101))
             (< $j761097 $n781099)
             ($main_inv56 $i751096 $j761097 $m771098 $n781099 $A791100 $max801101))
        ($main_if27 $i751096 $j761097 $m771098 $n781099 $A791100 $max801101 $i751096 $j761097 $m771098 $n781099 $A791100 $max801101))))

; forwards $main_inv56
(assert
  (forall (($m771104 Int) ($i751096 Int) ($j761103 Int) ($m771098 Int) ($j761097 Int) ($max801101 Int) ($A791106 (Array Int (Array Int Int))) ($n781099 Int) ($A791100 (Array Int (Array Int Int))) ($i751102 Int) ($max801107 Int) ($n781105 Int))
    (=> (and ($main_if27 $i751096 $j761097 $m771098 $n781099 $A791100 $max801101 $i751102 $j761103 $m771104 $n781105 $A791106 $max801107))
        ($main_inv56 $i751102 (+ $j761103 1) $m771104 $n781105 $A791106 $max801107))))

; backwards $main_sum56
(assert
  (forall (($A791112 (Array Int (Array Int Int))) ($m771104 Int) ($i751096 Int) ($j761103 Int) ($m771098 Int) ($j761109 Int) ($j761097 Int) ($i751108 Int) ($max801101 Int) ($A791106 (Array Int (Array Int Int))) ($n781099 Int) ($i751102 Int) ($max801107 Int) ($n781105 Int) ($n781111 Int) ($max801113 Int) ($m771110 Int) ($A791100 (Array Int (Array Int Int))))
    (=> (and ($main_sum56 $i751102 (+ $j761103 1) $m771104 $n781105 $A791106 $max801107 $i751108 $j761109 $m771110 $n781111 $A791112 $max801113)
             ($main_if27 $i751096 $j761097 $m771098 $n781099 $A791100 $max801101 $i751102 $j761103 $m771104 $n781105 $A791106 $max801107))
        ($main_sum56 $i751096 $j761097 $m771098 $n781099 $A791100 $max801101 $i751108 $j761109 $m771110 $n781111 $A791112 $max801113))))

; forwards $main_inv55
(assert
  (forall (($j761115 Int) ($A791118 (Array Int (Array Int Int))) ($A791094 (Array Int (Array Int Int))) ($max801095 Int) ($n781093 Int) ($i751114 Int) ($m771092 Int) ($i751090 Int) ($m771116 Int) ($n781117 Int) ($j761091 Int) ($max801119 Int))
    (=> (and ($main_sum56 $i751090 0 $m771092 $n781093 $A791094 $max801095 $i751114 $j761115 $m771116 $n781117 $A791118 $max801119)
             (< $i751090 $n781093)
             ($main_inv55 $i751090 $j761091 $m771092 $n781093 $A791094 $max801095))
        ($main_inv55 (+ $i751114 1) $j761115 $m771116 $n781117 $A791118 $max801119))))

; backwards $main_sum55
(assert
  (forall (($j761115 Int) ($A791118 (Array Int (Array Int Int))) ($A791094 (Array Int (Array Int Int))) ($n781093 Int) ($i751114 Int) ($m771092 Int) ($A791124 (Array Int (Array Int Int))) ($i751090 Int) ($m771116 Int) ($j761091 Int) ($max801125 Int) ($max801095 Int) ($j761121 Int) ($i751120 Int) ($n781117 Int) ($m771122 Int) ($n781123 Int) ($max801119 Int))
    (=> (and ($main_sum55 (+ $i751114 1) $j761115 $m771116 $n781117 $A791118 $max801119 $i751120 $j761121 $m771122 $n781123 $A791124 $max801125)
             ($main_sum56 $i751090 0 $m771092 $n781093 $A791094 $max801095 $i751114 $j761115 $m771116 $n781117 $A791118 $max801119)
             (< $i751090 $n781093))
        ($main_sum55 $i751090 $j761091 $m771092 $n781093 $A791094 $max801095 $i751120 $j761121 $m771122 $n781123 $A791124 $max801125))))

; loop entry $main_inv57
(assert
  (forall (($i751084 Int) ($m771128 Int) ($i751126 Int) ($A791088 (Array Int (Array Int Int))) ($max80 Int) ($n781087 Int) ($j761127 Int) ($m77 Int) ($A791130 (Array Int (Array Int Int))) ($n78 Int) ($n781129 Int) ($max801131 Int) ($max801089 Int) ($A79 (Array Int (Array Int Int))) ($m771086 Int) ($j761085 Int))
    (=> (and ($main_sum55 0 0 $m771086 $n781087 $A791088 (select (select $A791088 0) 0) $i751126 $j761127 $m771128 $n781129 $A791130 $max801131)
             ($main_sum53 0 0 $m77 $n78 $A79 $max80 $i751084 $j761085 $m771086 $n781087 $A791088 $max801089)
             (= $n78 1500)
             (= $m77 1000))
        ($main_inv57 0 0 $m771128 $n781129 $A791130 $max801131))))

; loop term $main_sum57
(assert
  (forall (($max801137 Int) ($i751132 Int) ($m771134 Int) ($n781135 Int) ($A791136 (Array Int (Array Int Int))) ($j761133 Int))
    (=> (and (not (< $i751132 $n781135)))
        ($main_sum57 $i751132 $j761133 $m771134 $n781135 $A791136 $max801137 $i751132 $j761133 $m771134 $n781135 $A791136 $max801137))))

; loop entry $main_inv58
(assert
  (forall (($max801137 Int) ($i751132 Int) ($m771134 Int) ($n781135 Int) ($A791136 (Array Int (Array Int Int))) ($j761133 Int))
    (=> (and (< $i751132 $n781135)
             ($main_inv57 $i751132 $j761133 $m771134 $n781135 $A791136 $max801137))
        ($main_inv58 $i751132 0 $m771134 $n781135 $A791136 $max801137))))

; loop term $main_sum58
(assert
  (forall (($j761139 Int) ($i751138 Int) ($A791142 (Array Int (Array Int Int))) ($m771140 Int) ($n781141 Int) ($max801143 Int))
    (=> (and (not (< $j761139 $n781141)))
        ($main_sum58 $i751138 $j761139 $m771140 $n781141 $A791142 $max801143 $i751138 $j761139 $m771140 $n781141 $A791142 $max801143))))

; __VERIFIER_assert precondition
(assert
  (forall (($j761139 Int) ($i751138 Int) ($A791142 (Array Int (Array Int Int))) ($m771140 Int) ($n781141 Int) ($max801143 Int))
    (=> (and (< $j761139 $n781141)
             ($main_inv58 $i751138 $j761139 $m771140 $n781141 $A791142 $max801143))
        ($__VERIFIER_assert_pre (ite (<= (select (select $A791142 $i751138) $j761139) $max801143) 1 0)))))

; forwards $main_inv58
(assert
  (forall (($j761139 Int) ($i751138 Int) ($A791142 (Array Int (Array Int Int))) ($m771140 Int) ($n781141 Int) ($max801143 Int))
    (=> (and (__VERIFIER_assert (ite (<= (select (select $A791142 $i751138) $j761139) $max801143) 1 0))
             (< $j761139 $n781141)
             ($main_inv58 $i751138 $j761139 $m771140 $n781141 $A791142 $max801143))
        ($main_inv58 $i751138 (+ $j761139 1) $m771140 $n781141 $A791142 $max801143))))

; backwards $main_sum58
(assert
  (forall (($A791148 (Array Int (Array Int Int))) ($j761139 Int) ($i751138 Int) ($n781147 Int) ($m771140 Int) ($max801149 Int) ($n781141 Int) ($j761145 Int) ($A791142 (Array Int (Array Int Int))) ($m771146 Int) ($max801143 Int) ($i751144 Int))
    (=> (and ($main_sum58 $i751138 (+ $j761139 1) $m771140 $n781141 $A791142 $max801143 $i751144 $j761145 $m771146 $n781147 $A791148 $max801149)
             (__VERIFIER_assert (ite (<= (select (select $A791142 $i751138) $j761139) $max801143) 1 0))
             (< $j761139 $n781141))
        ($main_sum58 $i751138 $j761139 $m771140 $n781141 $A791142 $max801143 $i751144 $j761145 $m771146 $n781147 $A791148 $max801149))))

; forwards $main_inv57
(assert
  (forall (($m771152 Int) ($A791154 (Array Int (Array Int Int))) ($i751132 Int) ($n781135 Int) ($A791136 (Array Int (Array Int Int))) ($j761133 Int) ($n781153 Int) ($j761151 Int) ($i751150 Int) ($max801137 Int) ($max801155 Int) ($m771134 Int))
    (=> (and ($main_sum58 $i751132 0 $m771134 $n781135 $A791136 $max801137 $i751150 $j761151 $m771152 $n781153 $A791154 $max801155)
             (< $i751132 $n781135)
             ($main_inv57 $i751132 $j761133 $m771134 $n781135 $A791136 $max801137))
        ($main_inv57 (+ $i751150 1) $j761151 $m771152 $n781153 $A791154 $max801155))))

; backwards $main_sum57
(assert
  (forall (($max801161 Int) ($n781159 Int) ($m771152 Int) ($j761157 Int) ($A791154 (Array Int (Array Int Int))) ($i751132 Int) ($A791160 (Array Int (Array Int Int))) ($m771158 Int) ($i751156 Int) ($n781135 Int) ($A791136 (Array Int (Array Int Int))) ($j761133 Int) ($n781153 Int) ($j761151 Int) ($i751150 Int) ($max801137 Int) ($max801155 Int) ($m771134 Int))
    (=> (and ($main_sum57 (+ $i751150 1) $j761151 $m771152 $n781153 $A791154 $max801155 $i751156 $j761157 $m771158 $n781159 $A791160 $max801161)
             ($main_sum58 $i751132 0 $m771134 $n781135 $A791136 $max801137 $i751150 $j761151 $m771152 $n781153 $A791154 $max801155)
             (< $i751132 $n781135))
        ($main_sum57 $i751132 $j761133 $m771134 $n781135 $A791136 $max801137 $i751156 $j761157 $m771158 $n781159 $A791160 $max801161))))

(check-sat)
