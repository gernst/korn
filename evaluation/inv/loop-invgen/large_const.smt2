(set-logic HORN)

(declare-sort Pointer 1)

(declare-fun $__VERIFIER_assert_if224 (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv466 (Int (Pointer (Pointer Int)) Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if227 (Int (Pointer (Pointer Int)) Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if225 (Int (Pointer (Pointer Int)) Int Int Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum465 (Int (Pointer (Pointer Int)) Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_if226 (Int (Pointer (Pointer Int)) Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum466 (Int (Pointer (Pointer Int)) Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv465 (Int (Pointer (Pointer Int)) Int Int Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_if223 (Int) Bool)
(declare-fun $main_if228 (Int (Pointer (Pointer Int)) Int Int Int Int Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if223 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond6106 Int))
    (=> (and ($assume_abort_if_not_if223 cond6106))
        (assume_abort_if_not cond6106))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond6107 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond6107))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if224 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6108 Int))
    (=> (and ($__VERIFIER_assert_if224 cond6108))
        (__VERIFIER_assert cond6108))))

; if else
(assert
  (forall (($c2604 Int) ($int6109 Int) ($j610 Int) ($i608 Int) (argv (Pointer (Pointer Int))) ($k609 Int) ($c1603 Int) (argc Int) ($c3605 Int) ($v607 Int))
    (=> (and (<= 0 $int6109)
             (< $int6109 10)
             (<= (- 2147483648) $int6109)
             (<= $int6109 2147483647)
             (= $c3605 10000)
             (= $c2604 2000)
             (= $c1603 4000))
        ($main_if225 argc argv $c1603 $c2604 $c3605 $int6109 $v607 $i608 $k609 $j610))))

; loop entry $main_inv465
(assert
  (forall (($n6066115 Int) (argv6111 (Pointer (Pointer Int))) (argc6110 Int) ($j6106119 Int) ($c36056114 Int) ($c16036112 Int) ($v6076116 Int) ($c26046113 Int) ($k6096118 Int) ($i6086117 Int))
    (=> (and ($main_if225 argc6110 argv6111 $c16036112 $c26046113 $c36056114 $n6066115 $v6076116 $i6086117 $k6096118 $j6106119))
        ($main_inv465 argc6110 argv6111 $c16036112 $c26046113 $c36056114 $n6066115 $v6076116 0 0 $j6106119))))

; loop term $main_sum465
(assert
  (forall ((argc6120 Int) ($k6096128 Int) ($c26046123 Int) ($i6086127 Int) ($c16036122 Int) ($v6076126 Int) (argv6121 (Pointer (Pointer Int))) ($j6106129 Int) ($c36056124 Int) ($n6066125 Int))
    (=> (and (not (< $i6086127 $n6066125))
             ($main_inv465 argc6120 argv6121 $c16036122 $c26046123 $c36056124 $n6066125 $v6076126 $i6086127 $k6096128 $j6106129))
        ($main_sum465 argc6120 argv6121 $c16036122 $c26046123 $c36056124 $n6066125 $v6076126 $i6086127 $k6096128 $j6106129))))

; if else
(assert
  (forall ((argc6120 Int) ($int6130 Int) ($k6096128 Int) ($c26046123 Int) ($i6086127 Int) ($c16036122 Int) ($v6076126 Int) (argv6121 (Pointer (Pointer Int))) ($j6106129 Int) ($c36056124 Int) ($n6066125 Int))
    (=> (and (<= 0 $int6130)
             (< $n6066125 2)
             (<= (- 2147483648) $int6130)
             (<= $int6130 2147483647)
             (< $i6086127 $n6066125)
             ($main_inv465 argc6120 argv6121 $c16036122 $c26046123 $c36056124 $n6066125 $v6076126 $i6086127 $k6096128 $j6106129))
        ($main_if226 argc6120 argv6121 $c16036122 $c26046123 $c36056124 $n6066125 $int6130 (+ $i6086127 1) $k6096128 $j6106129))))

; if then
(assert
  (forall (($i6086138 Int) ($n6066136 Int) ($c26046134 Int) (argc6131 Int) ($v6076137 Int) ($k6096139 Int) ($c36056135 Int) ($j6106140 Int) (argv6132 (Pointer (Pointer Int))) ($c16036133 Int))
    (=> (and (= $v6076137 1)
             (not (= $v6076137 0))
             ($main_if226 argc6131 argv6132 $c16036133 $c26046134 $c36056135 $n6066136 $v6076137 $i6086138 $k6096139 $j6106140))
        ($main_if227 argc6131 argv6132 $c16036133 $c26046134 $c36056135 $n6066136 $v6076137 $i6086138 (+ $k6096139 $c26046134) $j6106140))))

; if else
(assert
  (forall (($i6086138 Int) ($n6066136 Int) ($c26046134 Int) (argc6131 Int) ($v6076137 Int) ($k6096139 Int) ($c36056135 Int) ($j6106140 Int) (argv6132 (Pointer (Pointer Int))) ($c16036133 Int))
    (=> (and (not (= $v6076137 1))
             (not (= $v6076137 0))
             ($main_if226 argc6131 argv6132 $c16036133 $c26046134 $c36056135 $n6066136 $v6076137 $i6086138 $k6096139 $j6106140))
        ($main_if227 argc6131 argv6132 $c16036133 $c26046134 $c36056135 $n6066136 $v6076137 $i6086138 (+ $k6096139 $c36056135) $j6106140))))

; if then
(assert
  (forall (($i6086138 Int) ($n6066136 Int) ($c26046134 Int) (argc6131 Int) ($v6076137 Int) ($k6096139 Int) ($c36056135 Int) ($j6106140 Int) (argv6132 (Pointer (Pointer Int))) ($c16036133 Int))
    (=> (and (= $v6076137 0)
             ($main_if226 argc6131 argv6132 $c16036133 $c26046134 $c36056135 $n6066136 $v6076137 $i6086138 $k6096139 $j6106140))
        ($main_if228 argc6131 argv6132 $c16036133 $c26046134 $c36056135 $n6066136 $v6076137 $i6086138 (+ $k6096139 $c16036133) $j6106140))))

; if else
(assert
  (forall ((argv6142 (Pointer (Pointer Int))) ($n6066146 Int) ($k6096149 Int) (argc6141 Int) ($v6076147 Int) ($j6106150 Int) ($i6086148 Int) ($c16036143 Int) ($c26046144 Int) ($c36056145 Int))
    (=> (and ($main_if227 argc6141 argv6142 $c16036143 $c26046144 $c36056145 $n6066146 $v6076147 $i6086148 $k6096149 $j6106150))
        ($main_if228 argc6141 argv6142 $c16036143 $c26046144 $c36056145 $n6066146 $v6076147 $i6086148 $k6096149 $j6106150))))

; forwards $main_inv465
(assert
  (forall (($i6086158 Int) ($c16036153 Int) (argv6152 (Pointer (Pointer Int))) (argc6151 Int) ($c36056155 Int) ($v6076157 Int) ($n6066156 Int) ($k6096159 Int) ($c26046154 Int) ($j6106160 Int))
    (=> (and ($main_if228 argc6151 argv6152 $c16036153 $c26046154 $c36056155 $n6066156 $v6076157 $i6086158 $k6096159 $j6106160))
        ($main_inv465 argc6151 argv6152 $c16036153 $c26046154 $c36056155 $n6066156 $v6076157 $i6086158 $k6096159 $j6106160))))

; loop entry $main_inv466
(assert
  (forall (($v6076167 Int) ($i6086168 Int) ($k6096169 Int) (argv6162 (Pointer (Pointer Int))) ($c26046164 Int) ($c36056165 Int) ($c16036163 Int) (argc6161 Int) ($j6106170 Int) ($n6066166 Int))
    (=> (and ($main_sum465 argc6161 argv6162 $c16036163 $c26046164 $c36056165 $n6066166 $v6076167 $i6086168 $k6096169 $j6106170))
        ($main_inv466 argc6161 argv6162 $c16036163 $c26046164 $c36056165 $n6066166 $v6076167 $i6086168 $k6096169 0))))

; loop term $main_sum466
(assert
  (forall (($j6106180 Int) ($i6086178 Int) (argv6172 (Pointer (Pointer Int))) ($n6066176 Int) (argc6171 Int) ($k6096179 Int) ($c26046174 Int) ($c16036173 Int) ($v6076177 Int) ($c36056175 Int))
    (=> (and (not (< $j6106180 $n6066176))
             ($main_inv466 argc6171 argv6172 $c16036173 $c26046174 $c36056175 $n6066176 $v6076177 $i6086178 $k6096179 $j6106180))
        ($main_sum466 argc6171 argv6172 $c16036173 $c26046174 $c36056175 $n6066176 $v6076177 $i6086178 $k6096179 $j6106180))))

; __VERIFIER_assert precondition
(assert
  (forall (($j6106180 Int) ($i6086178 Int) (argv6172 (Pointer (Pointer Int))) ($n6066176 Int) (argc6171 Int) ($k6096179 Int) ($c26046174 Int) ($c16036173 Int) ($v6076177 Int) ($c36056175 Int))
    (=> (and (< $j6106180 $n6066176)
             ($main_inv466 argc6171 argv6172 $c16036173 $c26046174 $c36056175 $n6066176 $v6076177 $i6086178 $k6096179 $j6106180))
        ($__VERIFIER_assert_pre (ite (> $k6096179 0) 1 0)))))

; forwards $main_inv466
(assert
  (forall (($j6106180 Int) ($i6086178 Int) (argv6172 (Pointer (Pointer Int))) ($n6066176 Int) (argc6171 Int) ($k6096179 Int) ($c26046174 Int) ($c16036173 Int) ($v6076177 Int) ($c36056175 Int))
    (=> (and (__VERIFIER_assert (ite (> $k6096179 0) 1 0))
             (< $j6106180 $n6066176)
             ($main_inv466 argc6171 argv6172 $c16036173 $c26046174 $c36056175 $n6066176 $v6076177 $i6086178 $k6096179 $j6106180))
        ($main_inv466 argc6171 argv6172 $c16036173 $c26046174 $c36056175 $n6066176 $v6076177 $i6086178 (- $k6096179 1) (+ $j6106180 1)))))

(check-sat)
