(set-logic HORN)

(declare-fun $__VERIFIER_assert_if31 (Int) Bool)
(declare-fun $main_sum75 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum76 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv75 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv71 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if32 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum73 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv72 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum71 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv69 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv70 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if33 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv76 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum72 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum70 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum74 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv74 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum69 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv73 ((Array Int Int) Int Int Int Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond1030 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond1030))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if31 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond1031 Int))
    (=> (and ($__VERIFIER_assert_if31 cond1031))
        (__VERIFIER_assert cond1031))))

; loop entry $main_inv69
(assert
  (forall (($x129 Int) ($k132 Int) ($i128 Int) ($s133 Int) ($i131 Int) ($a127 (Array Int Int)) ($tmp134 Int) ($y130 Int))
    (=> (and (= $i131 0)
             (= $i128 0))
        ($main_inv69 $a127 $i128 $x129 $y130 $i131 $k132 $s133 $tmp134))))

; loop term $main_sum69
(assert
  (forall (($tmp1341039 Int) ($a1271032 (Array Int Int)) ($s1331038 Int) ($i1311036 Int) ($x1291034 Int) ($i1281033 Int) ($k1321037 Int) ($y1301035 Int))
    (=> (and (not (< $i1311036 100000))
             ($main_inv69 $a1271032 $i1281033 $x1291034 $y1301035 $i1311036 $k1321037 $s1331038 $tmp1341039))
        ($main_sum69 $a1271032 $i1281033 $x1291034 $y1301035 $i1311036 $k1321037 $s1331038 $tmp1341039))))

; forwards $main_inv69
(assert
  (forall (($a1271032 (Array Int Int)) ($s1331038 Int) ($i1311036 Int) ($x1291034 Int) ($i1281033 Int) ($int1040 Int) ($tmp1341039 Int) ($k1321037 Int) ($y1301035 Int))
    (=> (and (<= (- 2147483648) $int1040)
             (<= $int1040 2147483647)
             (< $i1311036 100000)
             ($main_inv69 $a1271032 $i1281033 $x1291034 $y1301035 $i1311036 $k1321037 $s1331038 $tmp1341039))
        ($main_inv69 (store $a1271032 $i1311036 $int1040) $i1281033 $x1291034 $y1301035 (+ $i1311036 1) $k1321037 $s1331038 $tmp1341039))))

; loop entry $main_inv70
(assert
  (forall (($tmp1341048 Int) ($i1311045 Int) ($a1271041 (Array Int Int)) ($s1331047 Int) ($y1301044 Int) ($i1281042 Int) ($k1321046 Int) ($x1291043 Int))
    (=> (and ($main_sum69 $a1271041 $i1281042 $x1291043 $y1301044 $i1311045 $k1321046 $s1331047 $tmp1341048))
        ($main_inv70 $a1271041 0 $x1291043 $y1301044 $i1311045 $k1321046 $s1331047 $tmp1341048))))

; loop term $main_sum70
(assert
  (forall (($y1301052 Int) ($k1321054 Int) ($i1311053 Int) ($a1271049 (Array Int Int)) ($tmp1341056 Int) ($x1291051 Int) ($s1331055 Int) ($i1281050 Int))
    (=> (and (not (< $i1281050 100000))
             ($main_inv70 $a1271049 $i1281050 $x1291051 $y1301052 $i1311053 $k1321054 $s1331055 $tmp1341056))
        ($main_sum70 $a1271049 $i1281050 $x1291051 $y1301052 $i1311053 $k1321054 $s1331055 $tmp1341056))))

; loop entry $main_inv71
(assert
  (forall (($y1301052 Int) ($k1321054 Int) ($i1311053 Int) ($a1271049 (Array Int Int)) ($tmp1341056 Int) ($x1291051 Int) ($s1331055 Int) ($i1281050 Int))
    (=> (and (= $s1331055 $i1281050)
             (= $k1321054 (+ $i1281050 1))
             (< $i1281050 100000)
             ($main_inv70 $a1271049 $i1281050 $x1291051 $y1301052 $i1311053 $k1321054 $s1331055 $tmp1341056))
        ($main_inv71 $a1271049 $i1281050 $x1291051 $y1301052 $i1311053 $k1321054 $s1331055 $tmp1341056))))

; loop term $main_sum71
(assert
  (forall (($i1281058 Int) ($a1271057 (Array Int Int)) ($s1331063 Int) ($x1291059 Int) ($i1311061 Int) ($tmp1341064 Int) ($y1301060 Int) ($k1321062 Int))
    (=> (and (not (< $k1321062 100000))
             ($main_inv71 $a1271057 $i1281058 $x1291059 $y1301060 $i1311061 $k1321062 $s1331063 $tmp1341064))
        ($main_sum71 $a1271057 $i1281058 $x1291059 $y1301060 $i1311061 $k1321062 $s1331063 $tmp1341064))))

; if then
(assert
  (forall (($i1281058 Int) ($a1271057 (Array Int Int)) ($s1331063 Int) ($x1291059 Int) ($i1311061 Int) ($tmp1341064 Int) ($y1301060 Int) ($k1321062 Int))
    (=> (and (< (select $a1271057 $k1321062) (select $a1271057 $s1331063))
             (< $k1321062 100000)
             ($main_inv71 $a1271057 $i1281058 $x1291059 $y1301060 $i1311061 $k1321062 $s1331063 $tmp1341064))
        ($main_if32 $a1271057 $i1281058 $x1291059 $y1301060 $i1311061 $k1321062 $k1321062 $tmp1341064))))

; if else
(assert
  (forall (($i1281058 Int) ($a1271057 (Array Int Int)) ($s1331063 Int) ($x1291059 Int) ($i1311061 Int) ($tmp1341064 Int) ($y1301060 Int) ($k1321062 Int))
    (=> (and (not (< (select $a1271057 $k1321062) (select $a1271057 $s1331063)))
             (< $k1321062 100000)
             ($main_inv71 $a1271057 $i1281058 $x1291059 $y1301060 $i1311061 $k1321062 $s1331063 $tmp1341064))
        ($main_if32 $a1271057 $i1281058 $x1291059 $y1301060 $i1311061 $k1321062 $s1331063 $tmp1341064))))

; forwards $main_inv71
(assert
  (forall (($i1281066 Int) ($y1301068 Int) ($tmp1341072 Int) ($a1271065 (Array Int Int)) ($s1331071 Int) ($k1321070 Int) ($i1311069 Int) ($x1291067 Int))
    (=> (and ($main_if32 $a1271065 $i1281066 $x1291067 $y1301068 $i1311069 $k1321070 $s1331071 $tmp1341072))
        ($main_inv71 $a1271065 $i1281066 $x1291067 $y1301068 $i1311069 (+ $k1321070 1) $s1331071 $tmp1341072))))

; if then
(assert
  (forall (($a1271073 (Array Int Int)) ($tmp1341080 Int) ($i1281074 Int) ($x1291075 Int) ($k1321078 Int) ($i1311077 Int) ($y1301076 Int) ($s1331079 Int))
    (=> (and (= $tmp1341080 (select $a1271073 $s1331079))
             (not (= $s1331079 $i1281074))
             ($main_sum71 $a1271073 $i1281074 $x1291075 $y1301076 $i1311077 $k1321078 $s1331079 $tmp1341080))
        ($main_if33 (store (store $a1271073 $s1331079 (select $a1271073 $i1281074)) $i1281074 $tmp1341080) $i1281074 $x1291075 $y1301076 $i1311077 $k1321078 $s1331079 $tmp1341080))))

; if else
(assert
  (forall (($a1271073 (Array Int Int)) ($tmp1341080 Int) ($i1281074 Int) ($x1291075 Int) ($k1321078 Int) ($i1311077 Int) ($y1301076 Int) ($s1331079 Int))
    (=> (and (= $s1331079 $i1281074)
             ($main_sum71 $a1271073 $i1281074 $x1291075 $y1301076 $i1311077 $k1321078 $s1331079 $tmp1341080))
        ($main_if33 $a1271073 $i1281074 $x1291075 $y1301076 $i1311077 $k1321078 $s1331079 $tmp1341080))))

; loop entry $main_inv72
(assert
  (forall (($x1291083 Int) ($y1301084 Int) ($s1331087 Int) ($a1271081 (Array Int Int)) ($tmp1341088 Int) ($i1281082 Int) ($i1311085 Int) ($k1321086 Int))
    (=> (and ($main_if33 $a1271081 $i1281082 $x1291083 $y1301084 $i1311085 $k1321086 $s1331087 $tmp1341088))
        ($main_inv72 $a1271081 $i1281082 0 $y1301084 $i1311085 $k1321086 $s1331087 $tmp1341088))))

; loop term $main_sum72
(assert
  (forall (($tmp1341096 Int) ($a1271089 (Array Int Int)) ($i1281090 Int) ($y1301092 Int) ($s1331095 Int) ($x1291091 Int) ($i1311093 Int) ($k1321094 Int))
    (=> (and (not (< $x1291091 $i1281090))
             ($main_inv72 $a1271089 $i1281090 $x1291091 $y1301092 $i1311093 $k1321094 $s1331095 $tmp1341096))
        ($main_sum72 $a1271089 $i1281090 $x1291091 $y1301092 $i1311093 $k1321094 $s1331095 $tmp1341096))))

; loop entry $main_inv73
(assert
  (forall (($tmp1341096 Int) ($a1271089 (Array Int Int)) ($i1281090 Int) ($y1301092 Int) ($s1331095 Int) ($x1291091 Int) ($i1311093 Int) ($k1321094 Int))
    (=> (and (< $x1291091 $i1281090)
             ($main_inv72 $a1271089 $i1281090 $x1291091 $y1301092 $i1311093 $k1321094 $s1331095 $tmp1341096))
        ($main_inv73 $a1271089 $i1281090 $x1291091 (+ $x1291091 1) $i1311093 $k1321094 $s1331095 $tmp1341096))))

; loop term $main_sum73
(assert
  (forall (($s1331103 Int) ($tmp1341104 Int) ($x1291099 Int) ($a1271097 (Array Int Int)) ($y1301100 Int) ($k1321102 Int) ($i1281098 Int) ($i1311101 Int))
    (=> (and (not (< $y1301100 $i1281098))
             ($main_inv73 $a1271097 $i1281098 $x1291099 $y1301100 $i1311101 $k1321102 $s1331103 $tmp1341104))
        ($main_sum73 $a1271097 $i1281098 $x1291099 $y1301100 $i1311101 $k1321102 $s1331103 $tmp1341104))))

; __VERIFIER_assert precondition
(assert
  (forall (($s1331103 Int) ($tmp1341104 Int) ($x1291099 Int) ($a1271097 (Array Int Int)) ($y1301100 Int) ($k1321102 Int) ($i1281098 Int) ($i1311101 Int))
    (=> (and (< $y1301100 $i1281098)
             ($main_inv73 $a1271097 $i1281098 $x1291099 $y1301100 $i1311101 $k1321102 $s1331103 $tmp1341104))
        ($__VERIFIER_assert_pre (ite (<= (select $a1271097 $x1291099) (select $a1271097 $y1301100)) 1 0)))))

; forwards $main_inv73
(assert
  (forall (($s1331103 Int) ($tmp1341104 Int) ($x1291099 Int) ($a1271097 (Array Int Int)) ($y1301100 Int) ($k1321102 Int) ($i1281098 Int) ($i1311101 Int))
    (=> (and (__VERIFIER_assert (ite (<= (select $a1271097 $x1291099) (select $a1271097 $y1301100)) 1 0))
             (< $y1301100 $i1281098)
             ($main_inv73 $a1271097 $i1281098 $x1291099 $y1301100 $i1311101 $k1321102 $s1331103 $tmp1341104))
        ($main_inv73 $a1271097 $i1281098 $x1291099 (+ $y1301100 1) $i1311101 $k1321102 $s1331103 $tmp1341104))))

; forwards $main_inv72
(assert
  (forall (($k1321110 Int) ($tmp1341112 Int) ($s1331111 Int) ($i1311109 Int) ($y1301108 Int) ($x1291107 Int) ($a1271105 (Array Int Int)) ($i1281106 Int))
    (=> (and ($main_sum73 $a1271105 $i1281106 $x1291107 $y1301108 $i1311109 $k1321110 $s1331111 $tmp1341112))
        ($main_inv72 $a1271105 $i1281106 (+ $x1291107 1) $y1301108 $i1311109 $k1321110 $s1331111 $tmp1341112))))

; loop entry $main_inv74
(assert
  (forall (($tmp1341120 Int) ($s1331119 Int) ($x1291115 Int) ($i1281114 Int) ($i1311117 Int) ($k1321118 Int) ($a1271113 (Array Int Int)) ($y1301116 Int))
    (=> (and ($main_sum72 $a1271113 $i1281114 $x1291115 $y1301116 $i1311117 $k1321118 $s1331119 $tmp1341120))
        ($main_inv74 $a1271113 $i1281114 $i1281114 $y1301116 $i1311117 $k1321118 $s1331119 $tmp1341120))))

; loop term $main_sum74
(assert
  (forall (($a1271121 (Array Int Int)) ($tmp1341128 Int) ($i1281122 Int) ($x1291123 Int) ($y1301124 Int) ($s1331127 Int) ($k1321126 Int) ($i1311125 Int))
    (=> (and (not (< $x1291123 100000))
             ($main_inv74 $a1271121 $i1281122 $x1291123 $y1301124 $i1311125 $k1321126 $s1331127 $tmp1341128))
        ($main_sum74 $a1271121 $i1281122 $x1291123 $y1301124 $i1311125 $k1321126 $s1331127 $tmp1341128))))

; __VERIFIER_assert precondition
(assert
  (forall (($a1271121 (Array Int Int)) ($tmp1341128 Int) ($i1281122 Int) ($x1291123 Int) ($y1301124 Int) ($s1331127 Int) ($k1321126 Int) ($i1311125 Int))
    (=> (and (< $x1291123 100000)
             ($main_inv74 $a1271121 $i1281122 $x1291123 $y1301124 $i1311125 $k1321126 $s1331127 $tmp1341128))
        ($__VERIFIER_assert_pre (ite (>= (select $a1271121 $x1291123) (select $a1271121 $i1281122)) 1 0)))))

; forwards $main_inv74
(assert
  (forall (($a1271121 (Array Int Int)) ($tmp1341128 Int) ($i1281122 Int) ($x1291123 Int) ($y1301124 Int) ($s1331127 Int) ($k1321126 Int) ($i1311125 Int))
    (=> (and (__VERIFIER_assert (ite (>= (select $a1271121 $x1291123) (select $a1271121 $i1281122)) 1 0))
             (< $x1291123 100000)
             ($main_inv74 $a1271121 $i1281122 $x1291123 $y1301124 $i1311125 $k1321126 $s1331127 $tmp1341128))
        ($main_inv74 $a1271121 $i1281122 (+ $x1291123 1) $y1301124 $i1311125 $k1321126 $s1331127 $tmp1341128))))

; forwards $main_inv70
(assert
  (forall (($a1271129 (Array Int Int)) ($s1331135 Int) ($y1301132 Int) ($i1281130 Int) ($k1321134 Int) ($i1311133 Int) ($x1291131 Int) ($tmp1341136 Int))
    (=> (and ($main_sum74 $a1271129 $i1281130 $x1291131 $y1301132 $i1311133 $k1321134 $s1331135 $tmp1341136))
        ($main_inv70 $a1271129 (+ $i1281130 1) $x1291131 $y1301132 $i1311133 $k1321134 $s1331135 $tmp1341136))))

; loop entry $main_inv75
(assert
  (forall (($s1331143 Int) ($tmp1341144 Int) ($k1321142 Int) ($a1271137 (Array Int Int)) ($i1311141 Int) ($x1291139 Int) ($y1301140 Int) ($i1281138 Int))
    (=> (and ($main_sum70 $a1271137 $i1281138 $x1291139 $y1301140 $i1311141 $k1321142 $s1331143 $tmp1341144))
        ($main_inv75 $a1271137 $i1281138 0 $y1301140 $i1311141 $k1321142 $s1331143 $tmp1341144))))

; loop term $main_sum75
(assert
  (forall (($y1301148 Int) ($i1281146 Int) ($i1311149 Int) ($s1331151 Int) ($k1321150 Int) ($a1271145 (Array Int Int)) ($x1291147 Int) ($tmp1341152 Int))
    (=> (and (not (< $x1291147 100000))
             ($main_inv75 $a1271145 $i1281146 $x1291147 $y1301148 $i1311149 $k1321150 $s1331151 $tmp1341152))
        ($main_sum75 $a1271145 $i1281146 $x1291147 $y1301148 $i1311149 $k1321150 $s1331151 $tmp1341152))))

; loop entry $main_inv76
(assert
  (forall (($y1301148 Int) ($i1281146 Int) ($i1311149 Int) ($s1331151 Int) ($k1321150 Int) ($a1271145 (Array Int Int)) ($x1291147 Int) ($tmp1341152 Int))
    (=> (and (< $x1291147 100000)
             ($main_inv75 $a1271145 $i1281146 $x1291147 $y1301148 $i1311149 $k1321150 $s1331151 $tmp1341152))
        ($main_inv76 $a1271145 $i1281146 $x1291147 (+ $x1291147 1) $i1311149 $k1321150 $s1331151 $tmp1341152))))

; loop term $main_sum76
(assert
  (forall (($s1331159 Int) ($tmp1341160 Int) ($k1321158 Int) ($i1311157 Int) ($i1281154 Int) ($x1291155 Int) ($a1271153 (Array Int Int)) ($y1301156 Int))
    (=> (and (not (< $y1301156 100000))
             ($main_inv76 $a1271153 $i1281154 $x1291155 $y1301156 $i1311157 $k1321158 $s1331159 $tmp1341160))
        ($main_sum76 $a1271153 $i1281154 $x1291155 $y1301156 $i1311157 $k1321158 $s1331159 $tmp1341160))))

; __VERIFIER_assert precondition
(assert
  (forall (($s1331159 Int) ($tmp1341160 Int) ($k1321158 Int) ($i1311157 Int) ($i1281154 Int) ($x1291155 Int) ($a1271153 (Array Int Int)) ($y1301156 Int))
    (=> (and (< $y1301156 100000)
             ($main_inv76 $a1271153 $i1281154 $x1291155 $y1301156 $i1311157 $k1321158 $s1331159 $tmp1341160))
        ($__VERIFIER_assert_pre (ite (<= (select $a1271153 $x1291155) (select $a1271153 $y1301156)) 1 0)))))

; forwards $main_inv76
(assert
  (forall (($s1331159 Int) ($tmp1341160 Int) ($k1321158 Int) ($i1311157 Int) ($i1281154 Int) ($x1291155 Int) ($a1271153 (Array Int Int)) ($y1301156 Int))
    (=> (and (__VERIFIER_assert (ite (<= (select $a1271153 $x1291155) (select $a1271153 $y1301156)) 1 0))
             (< $y1301156 100000)
             ($main_inv76 $a1271153 $i1281154 $x1291155 $y1301156 $i1311157 $k1321158 $s1331159 $tmp1341160))
        ($main_inv76 $a1271153 $i1281154 $x1291155 (+ $y1301156 1) $i1311157 $k1321158 $s1331159 $tmp1341160))))

; forwards $main_inv75
(assert
  (forall (($s1331167 Int) ($k1321166 Int) ($i1311165 Int) ($y1301164 Int) ($tmp1341168 Int) ($a1271161 (Array Int Int)) ($i1281162 Int) ($x1291163 Int))
    (=> (and ($main_sum76 $a1271161 $i1281162 $x1291163 $y1301164 $i1311165 $k1321166 $s1331167 $tmp1341168))
        ($main_inv75 $a1271161 $i1281162 (+ $x1291163 1) $y1301164 $i1311165 $k1321166 $s1331167 $tmp1341168))))

(check-sat)
