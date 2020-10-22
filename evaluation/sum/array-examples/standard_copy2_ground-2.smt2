(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv101 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if46 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum100 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv99 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv100 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv102 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum99 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum101 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum102 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond2108 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond2108))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if46 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond2109 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if46 cond cond2109))
        (__VERIFIER_assert cond2109))))

; loop entry $main_inv99
(assert
  (forall (($a2171 (Array Int Int)) ($a3172 (Array Int Int)) ($a1170 (Array Int Int)) ($i174 Int) ($x175 Int))
        ($main_inv99 $a1170 $a2171 $a3172 0 $i174 $x175)))

; loop term $main_sum99
(assert
  (forall (($a21712111 (Array Int Int)) ($x1752115 Int) ($a11702110 (Array Int Int)) ($i1742114 Int) ($a1732113 Int) ($a31722112 (Array Int Int)))
    (=> (and (not (< $a1732113 100000)))
        ($main_sum99 $a11702110 $a21712111 $a31722112 $a1732113 $i1742114 $x1752115 $a11702110 $a21712111 $a31722112 $a1732113 $i1742114 $x1752115))))

; forwards $main_inv99
(assert
  (forall (($a21712111 (Array Int Int)) ($x1752115 Int) ($a11702110 (Array Int Int)) ($i1742114 Int) ($a31722112 (Array Int Int)) ($int2116 Int) ($a1732113 Int))
    (=> (and (<= (- 2147483648) $int2116)
             (<= $int2116 2147483647)
             (< $a1732113 100000)
             ($main_inv99 $a11702110 $a21712111 $a31722112 $a1732113 $i1742114 $x1752115))
        ($main_inv99 (store $a11702110 $a1732113 $int2116) $a21712111 $a31722112 (+ $a1732113 1) $i1742114 $x1752115))))

; backwards $main_sum99
(assert
  (forall (($a21712111 (Array Int Int)) ($a31722119 (Array Int Int)) ($i1742121 Int) ($x1752115 Int) ($a11702110 (Array Int Int)) ($i1742114 Int) ($x1752122 Int) ($a1732120 Int) ($int2116 Int) ($a11702117 (Array Int Int)) ($a1732113 Int) ($a21712118 (Array Int Int)) ($a31722112 (Array Int Int)))
    (=> (and ($main_sum99 (store $a11702110 $a1732113 $int2116) $a21712111 $a31722112 (+ $a1732113 1) $i1742114 $x1752115 $a11702117 $a21712118 $a31722119 $a1732120 $i1742121 $x1752122)
             (<= (- 2147483648) $int2116)
             (<= $int2116 2147483647)
             (< $a1732113 100000))
        ($main_sum99 $a11702110 $a21712111 $a31722112 $a1732113 $i1742114 $x1752115 $a11702117 $a21712118 $a31722119 $a1732120 $i1742121 $x1752122))))

; loop entry $main_inv100
(assert
  (forall (($a21712124 (Array Int Int)) ($i1742127 Int) ($a2171 (Array Int Int)) ($x1752128 Int) ($a3172 (Array Int Int)) ($a31722125 (Array Int Int)) ($a1170 (Array Int Int)) ($a1732126 Int) ($a11702123 (Array Int Int)) ($i174 Int) ($x175 Int))
    (=> (and ($main_sum99 $a1170 $a2171 $a3172 0 $i174 $x175 $a11702123 $a21712124 $a31722125 $a1732126 $i1742127 $x1752128))
        ($main_inv100 $a11702123 $a21712124 $a31722125 $a1732126 0 $x1752128))))

; loop term $main_sum100
(assert
  (forall (($a1732132 Int) ($x1752134 Int) ($a21712130 (Array Int Int)) ($a31722131 (Array Int Int)) ($i1742133 Int) ($a11702129 (Array Int Int)))
    (=> (and (not (< $i1742133 100000)))
        ($main_sum100 $a11702129 $a21712130 $a31722131 $a1732132 $i1742133 $x1752134 $a11702129 $a21712130 $a31722131 $a1732132 $i1742133 $x1752134))))

; forwards $main_inv100
(assert
  (forall (($a1732132 Int) ($x1752134 Int) ($a21712130 (Array Int Int)) ($a31722131 (Array Int Int)) ($i1742133 Int) ($a11702129 (Array Int Int)))
    (=> (and (< $i1742133 100000)
             ($main_inv100 $a11702129 $a21712130 $a31722131 $a1732132 $i1742133 $x1752134))
        ($main_inv100 $a11702129 (store $a21712130 $i1742133 (select $a11702129 $i1742133)) $a31722131 $a1732132 (+ $i1742133 1) $x1752134))))

; backwards $main_sum100
(assert
  (forall (($a1732132 Int) ($x1752134 Int) ($i1742139 Int) ($a31722137 (Array Int Int)) ($a21712130 (Array Int Int)) ($x1752140 Int) ($a31722131 (Array Int Int)) ($a1732138 Int) ($i1742133 Int) ($a21712136 (Array Int Int)) ($a11702129 (Array Int Int)) ($a11702135 (Array Int Int)))
    (=> (and ($main_sum100 $a11702129 (store $a21712130 $i1742133 (select $a11702129 $i1742133)) $a31722131 $a1732132 (+ $i1742133 1) $x1752134 $a11702135 $a21712136 $a31722137 $a1732138 $i1742139 $x1752140)
             (< $i1742133 100000))
        ($main_sum100 $a11702129 $a21712130 $a31722131 $a1732132 $i1742133 $x1752134 $a11702135 $a21712136 $a31722137 $a1732138 $i1742139 $x1752140))))

; loop entry $main_inv101
(assert
  (forall (($i1742145 Int) ($a31722143 (Array Int Int)) ($a11702141 (Array Int Int)) ($i1742127 Int) ($a21712142 (Array Int Int)) ($x1752128 Int) ($a3172 (Array Int Int)) ($a31722125 (Array Int Int)) ($a1170 (Array Int Int)) ($a1732126 Int) ($a11702123 (Array Int Int)) ($a1732144 Int) ($a21712124 (Array Int Int)) ($x1752146 Int) ($a2171 (Array Int Int)) ($i174 Int) ($x175 Int))
    (=> (and ($main_sum100 $a11702123 $a21712124 $a31722125 $a1732126 0 $x1752128 $a11702141 $a21712142 $a31722143 $a1732144 $i1742145 $x1752146)
             ($main_sum99 $a1170 $a2171 $a3172 0 $i174 $x175 $a11702123 $a21712124 $a31722125 $a1732126 $i1742127 $x1752128))
        ($main_inv101 $a11702141 $a21712142 $a31722143 $a1732144 0 $x1752146))))

; loop term $main_sum101
(assert
  (forall (($a11702147 (Array Int Int)) ($a21712148 (Array Int Int)) ($x1752152 Int) ($i1742151 Int) ($a31722149 (Array Int Int)) ($a1732150 Int))
    (=> (and (not (< $i1742151 100000)))
        ($main_sum101 $a11702147 $a21712148 $a31722149 $a1732150 $i1742151 $x1752152 $a11702147 $a21712148 $a31722149 $a1732150 $i1742151 $x1752152))))

; forwards $main_inv101
(assert
  (forall (($a11702147 (Array Int Int)) ($a21712148 (Array Int Int)) ($x1752152 Int) ($i1742151 Int) ($a31722149 (Array Int Int)) ($a1732150 Int))
    (=> (and (< $i1742151 100000)
             ($main_inv101 $a11702147 $a21712148 $a31722149 $a1732150 $i1742151 $x1752152))
        ($main_inv101 $a11702147 $a21712148 (store $a31722149 $i1742151 (select $a21712148 $i1742151)) $a1732150 (+ $i1742151 1) $x1752152))))

; backwards $main_sum101
(assert
  (forall (($a1732156 Int) ($i1742157 Int) ($a31722155 (Array Int Int)) ($a21712148 (Array Int Int)) ($a11702153 (Array Int Int)) ($x1752152 Int) ($a21712154 (Array Int Int)) ($i1742151 Int) ($a31722149 (Array Int Int)) ($a1732150 Int) ($x1752158 Int) ($a11702147 (Array Int Int)))
    (=> (and ($main_sum101 $a11702147 $a21712148 (store $a31722149 $i1742151 (select $a21712148 $i1742151)) $a1732150 (+ $i1742151 1) $x1752152 $a11702153 $a21712154 $a31722155 $a1732156 $i1742157 $x1752158)
             (< $i1742151 100000))
        ($main_sum101 $a11702147 $a21712148 $a31722149 $a1732150 $i1742151 $x1752152 $a11702153 $a21712154 $a31722155 $a1732156 $i1742157 $x1752158))))

; loop entry $main_inv102
(assert
  (forall (($i1742145 Int) ($a11702141 (Array Int Int)) ($a21712142 (Array Int Int)) ($a21712160 (Array Int Int)) ($x1752128 Int) ($a3172 (Array Int Int)) ($a31722125 (Array Int Int)) ($x1752164 Int) ($i1742163 Int) ($a1732126 Int) ($a11702123 (Array Int Int)) ($a1732144 Int) ($a21712124 (Array Int Int)) ($a31722161 (Array Int Int)) ($a31722143 (Array Int Int)) ($a11702159 (Array Int Int)) ($i1742127 Int) ($x1752146 Int) ($a2171 (Array Int Int)) ($a1732162 Int) ($a1170 (Array Int Int)) ($i174 Int) ($x175 Int))
    (=> (and ($main_sum101 $a11702141 $a21712142 $a31722143 $a1732144 0 $x1752146 $a11702159 $a21712160 $a31722161 $a1732162 $i1742163 $x1752164)
             ($main_sum100 $a11702123 $a21712124 $a31722125 $a1732126 0 $x1752128 $a11702141 $a21712142 $a31722143 $a1732144 $i1742145 $x1752146)
             ($main_sum99 $a1170 $a2171 $a3172 0 $i174 $x175 $a11702123 $a21712124 $a31722125 $a1732126 $i1742127 $x1752128))
        ($main_inv102 $a11702159 $a21712160 $a31722161 $a1732162 $i1742163 0))))

; loop term $main_sum102
(assert
  (forall (($a1732168 Int) ($a21712166 (Array Int Int)) ($x1752170 Int) ($a31722167 (Array Int Int)) ($a11702165 (Array Int Int)) ($i1742169 Int))
    (=> (and (not (< $x1752170 100000)))
        ($main_sum102 $a11702165 $a21712166 $a31722167 $a1732168 $i1742169 $x1752170 $a11702165 $a21712166 $a31722167 $a1732168 $i1742169 $x1752170))))

; __VERIFIER_assert precondition
(assert
  (forall (($a1732168 Int) ($a21712166 (Array Int Int)) ($x1752170 Int) ($a31722167 (Array Int Int)) ($a11702165 (Array Int Int)) ($i1742169 Int))
    (=> (and (< $x1752170 100000)
             ($main_inv102 $a11702165 $a21712166 $a31722167 $a1732168 $i1742169 $x1752170))
        ($__VERIFIER_assert_pre (ite (= (select $a11702165 $x1752170) (select $a31722167 $x1752170)) 1 0)))))

; forwards $main_inv102
(assert
  (forall (($a1732168 Int) ($a21712166 (Array Int Int)) ($x1752170 Int) ($a31722167 (Array Int Int)) ($a11702165 (Array Int Int)) ($i1742169 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a11702165 $x1752170) (select $a31722167 $x1752170)) 1 0))
             (< $x1752170 100000)
             ($main_inv102 $a11702165 $a21712166 $a31722167 $a1732168 $i1742169 $x1752170))
        ($main_inv102 $a11702165 $a21712166 $a31722167 $a1732168 $i1742169 (+ $x1752170 1)))))

; backwards $main_sum102
(assert
  (forall (($a1732168 Int) ($a1732174 Int) ($a21712166 (Array Int Int)) ($x1752170 Int) ($a31722173 (Array Int Int)) ($i1742175 Int) ($a31722167 (Array Int Int)) ($i1742169 Int) ($x1752176 Int) ($a21712172 (Array Int Int)) ($a11702171 (Array Int Int)) ($a11702165 (Array Int Int)))
    (=> (and ($main_sum102 $a11702165 $a21712166 $a31722167 $a1732168 $i1742169 (+ $x1752170 1) $a11702171 $a21712172 $a31722173 $a1732174 $i1742175 $x1752176)
             (__VERIFIER_assert (ite (= (select $a11702165 $x1752170) (select $a31722167 $x1752170)) 1 0))
             (< $x1752170 100000))
        ($main_sum102 $a11702165 $a21712166 $a31722167 $a1732168 $i1742169 $x1752170 $a11702171 $a21712172 $a31722173 $a1732174 $i1742175 $x1752176))))

(check-sat)
