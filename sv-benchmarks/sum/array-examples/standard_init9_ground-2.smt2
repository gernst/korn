(set-logic HORN)

(declare-fun $main_sum321 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_sum317 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv321 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv315 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum323 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_sum322 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_inv319 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv314 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv318 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum320 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_inv320 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum316 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_sum314 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_sum319 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_inv322 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv316 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum315 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if82 (Int Int) Bool)
(declare-fun $main_inv317 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum318 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_inv323 ((Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond6123 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond6123))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if82 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6124 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if82 cond cond6124))
        (__VERIFIER_assert cond6124))))

; loop entry $main_inv314
(assert
  (forall (($a367 (Array Int Int)) ($i368 Int) ($x369 Int))
    (=> (and (= $i368 0))
        ($main_inv314 $a367 $i368 $x369))))

; loop term $main_sum314
(assert
  (forall (($a3676125 (Array Int Int)) ($i3686126 Int) ($x3696127 Int))
    (=> (and (not (< $i3686126 100000)))
        ($main_sum314 $a3676125 $i3686126 $x3696127 $a3676125 $i3686126 $x3696127))))

; forwards $main_inv314
(assert
  (forall (($a3676125 (Array Int Int)) ($i3686126 Int) ($x3696127 Int))
    (=> (and (< $i3686126 100000)
             ($main_inv314 $a3676125 $i3686126 $x3696127))
        ($main_inv314 (store $a3676125 $i3686126 42) (+ $i3686126 1) $x3696127))))

; backwards $main_sum314
(assert
  (forall (($x3696127 Int) ($i3686126 Int) ($a3676125 (Array Int Int)) ($a3676128 (Array Int Int)) ($i3686129 Int) ($x3696130 Int))
    (=> (and ($main_sum314 (store $a3676125 $i3686126 42) (+ $i3686126 1) $x3696127 $a3676128 $i3686129 $x3696130)
             (< $i3686126 100000))
        ($main_sum314 $a3676125 $i3686126 $x3696127 $a3676128 $i3686129 $x3696130))))

; loop entry $main_inv315
(assert
  (forall (($x369 Int) ($i368 Int) ($a3676131 (Array Int Int)) ($i3686132 Int) ($a367 (Array Int Int)) ($x3696133 Int))
    (=> (and ($main_sum314 $a367 $i368 $x369 $a3676131 $i3686132 $x3696133)
             (= $i368 0))
        ($main_inv315 $a3676131 0 $x3696133))))

; loop term $main_sum315
(assert
  (forall (($a3676134 (Array Int Int)) ($i3686135 Int) ($x3696136 Int))
    (=> (and (not (< $i3686135 100000)))
        ($main_sum315 $a3676134 $i3686135 $x3696136 $a3676134 $i3686135 $x3696136))))

; forwards $main_inv315
(assert
  (forall (($a3676134 (Array Int Int)) ($i3686135 Int) ($x3696136 Int))
    (=> (and (< $i3686135 100000)
             ($main_inv315 $a3676134 $i3686135 $x3696136))
        ($main_inv315 (store $a3676134 $i3686135 43) (+ $i3686135 1) $x3696136))))

; backwards $main_sum315
(assert
  (forall (($x3696136 Int) ($a3676137 (Array Int Int)) ($x3696139 Int) ($i3686135 Int) ($a3676134 (Array Int Int)) ($i3686138 Int))
    (=> (and ($main_sum315 (store $a3676134 $i3686135 43) (+ $i3686135 1) $x3696136 $a3676137 $i3686138 $x3696139)
             (< $i3686135 100000))
        ($main_sum315 $a3676134 $i3686135 $x3696136 $a3676137 $i3686138 $x3696139))))

; loop entry $main_inv316
(assert
  (forall (($x369 Int) ($i368 Int) ($a3676131 (Array Int Int)) ($a367 (Array Int Int)) ($i3686141 Int) ($x3696133 Int) ($x3696142 Int) ($i3686132 Int) ($a3676140 (Array Int Int)))
    (=> (and ($main_sum315 $a3676131 0 $x3696133 $a3676140 $i3686141 $x3696142)
             ($main_sum314 $a367 $i368 $x369 $a3676131 $i3686132 $x3696133)
             (= $i368 0))
        ($main_inv316 $a3676140 0 $x3696142))))

; loop term $main_sum316
(assert
  (forall (($a3676143 (Array Int Int)) ($i3686144 Int) ($x3696145 Int))
    (=> (and (not (< $i3686144 100000)))
        ($main_sum316 $a3676143 $i3686144 $x3696145 $a3676143 $i3686144 $x3696145))))

; forwards $main_inv316
(assert
  (forall (($a3676143 (Array Int Int)) ($i3686144 Int) ($x3696145 Int))
    (=> (and (< $i3686144 100000)
             ($main_inv316 $a3676143 $i3686144 $x3696145))
        ($main_inv316 (store $a3676143 $i3686144 44) (+ $i3686144 1) $x3696145))))

; backwards $main_sum316
(assert
  (forall (($x3696148 Int) ($x3696145 Int) ($i3686144 Int) ($a3676146 (Array Int Int)) ($i3686147 Int) ($a3676143 (Array Int Int)))
    (=> (and ($main_sum316 (store $a3676143 $i3686144 44) (+ $i3686144 1) $x3696145 $a3676146 $i3686147 $x3696148)
             (< $i3686144 100000))
        ($main_sum316 $a3676143 $i3686144 $x3696145 $a3676146 $i3686147 $x3696148))))

; loop entry $main_inv317
(assert
  (forall (($a3676149 (Array Int Int)) ($x369 Int) ($i368 Int) ($i3686150 Int) ($a3676131 (Array Int Int)) ($a367 (Array Int Int)) ($i3686141 Int) ($x3696151 Int) ($x3696133 Int) ($x3696142 Int) ($i3686132 Int) ($a3676140 (Array Int Int)))
    (=> (and ($main_sum316 $a3676140 0 $x3696142 $a3676149 $i3686150 $x3696151)
             ($main_sum315 $a3676131 0 $x3696133 $a3676140 $i3686141 $x3696142)
             ($main_sum314 $a367 $i368 $x369 $a3676131 $i3686132 $x3696133)
             (= $i368 0))
        ($main_inv317 $a3676149 0 $x3696151))))

; loop term $main_sum317
(assert
  (forall (($a3676152 (Array Int Int)) ($i3686153 Int) ($x3696154 Int))
    (=> (and (not (< $i3686153 100000)))
        ($main_sum317 $a3676152 $i3686153 $x3696154 $a3676152 $i3686153 $x3696154))))

; forwards $main_inv317
(assert
  (forall (($a3676152 (Array Int Int)) ($i3686153 Int) ($x3696154 Int))
    (=> (and (< $i3686153 100000)
             ($main_inv317 $a3676152 $i3686153 $x3696154))
        ($main_inv317 (store $a3676152 $i3686153 45) (+ $i3686153 1) $x3696154))))

; backwards $main_sum317
(assert
  (forall (($a3676152 (Array Int Int)) ($i3686156 Int) ($i3686153 Int) ($x3696154 Int) ($a3676155 (Array Int Int)) ($x3696157 Int))
    (=> (and ($main_sum317 (store $a3676152 $i3686153 45) (+ $i3686153 1) $x3696154 $a3676155 $i3686156 $x3696157)
             (< $i3686153 100000))
        ($main_sum317 $a3676152 $i3686153 $x3696154 $a3676155 $i3686156 $x3696157))))

; loop entry $main_inv318
(assert
  (forall (($a3676149 (Array Int Int)) ($i3686159 Int) ($x369 Int) ($i368 Int) ($i3686150 Int) ($a3676131 (Array Int Int)) ($a367 (Array Int Int)) ($x3696160 Int) ($x3696151 Int) ($x3696133 Int) ($x3696142 Int) ($i3686132 Int) ($a3676140 (Array Int Int)) ($a3676158 (Array Int Int)) ($i3686141 Int))
    (=> (and ($main_sum317 $a3676149 0 $x3696151 $a3676158 $i3686159 $x3696160)
             ($main_sum316 $a3676140 0 $x3696142 $a3676149 $i3686150 $x3696151)
             ($main_sum315 $a3676131 0 $x3696133 $a3676140 $i3686141 $x3696142)
             ($main_sum314 $a367 $i368 $x369 $a3676131 $i3686132 $x3696133)
             (= $i368 0))
        ($main_inv318 $a3676158 0 $x3696160))))

; loop term $main_sum318
(assert
  (forall (($a3676161 (Array Int Int)) ($i3686162 Int) ($x3696163 Int))
    (=> (and (not (< $i3686162 100000)))
        ($main_sum318 $a3676161 $i3686162 $x3696163 $a3676161 $i3686162 $x3696163))))

; forwards $main_inv318
(assert
  (forall (($a3676161 (Array Int Int)) ($i3686162 Int) ($x3696163 Int))
    (=> (and (< $i3686162 100000)
             ($main_inv318 $a3676161 $i3686162 $x3696163))
        ($main_inv318 (store $a3676161 $i3686162 46) (+ $i3686162 1) $x3696163))))

; backwards $main_sum318
(assert
  (forall (($a3676164 (Array Int Int)) ($x3696163 Int) ($i3686165 Int) ($a3676161 (Array Int Int)) ($x3696166 Int) ($i3686162 Int))
    (=> (and ($main_sum318 (store $a3676161 $i3686162 46) (+ $i3686162 1) $x3696163 $a3676164 $i3686165 $x3696166)
             (< $i3686162 100000))
        ($main_sum318 $a3676161 $i3686162 $x3696163 $a3676164 $i3686165 $x3696166))))

; loop entry $main_inv319
(assert
  (forall (($i3686168 Int) ($i3686159 Int) ($x369 Int) ($i368 Int) ($i3686150 Int) ($a3676131 (Array Int Int)) ($a367 (Array Int Int)) ($x3696160 Int) ($x3696151 Int) ($x3696133 Int) ($x3696142 Int) ($x3696169 Int) ($a3676149 (Array Int Int)) ($i3686132 Int) ($a3676140 (Array Int Int)) ($a3676158 (Array Int Int)) ($a3676167 (Array Int Int)) ($i3686141 Int))
    (=> (and ($main_sum318 $a3676158 0 $x3696160 $a3676167 $i3686168 $x3696169)
             ($main_sum317 $a3676149 0 $x3696151 $a3676158 $i3686159 $x3696160)
             ($main_sum316 $a3676140 0 $x3696142 $a3676149 $i3686150 $x3696151)
             ($main_sum315 $a3676131 0 $x3696133 $a3676140 $i3686141 $x3696142)
             ($main_sum314 $a367 $i368 $x369 $a3676131 $i3686132 $x3696133)
             (= $i368 0))
        ($main_inv319 $a3676167 0 $x3696169))))

; loop term $main_sum319
(assert
  (forall (($a3676170 (Array Int Int)) ($i3686171 Int) ($x3696172 Int))
    (=> (and (not (< $i3686171 100000)))
        ($main_sum319 $a3676170 $i3686171 $x3696172 $a3676170 $i3686171 $x3696172))))

; forwards $main_inv319
(assert
  (forall (($a3676170 (Array Int Int)) ($i3686171 Int) ($x3696172 Int))
    (=> (and (< $i3686171 100000)
             ($main_inv319 $a3676170 $i3686171 $x3696172))
        ($main_inv319 (store $a3676170 $i3686171 47) (+ $i3686171 1) $x3696172))))

; backwards $main_sum319
(assert
  (forall (($i3686174 Int) ($x3696172 Int) ($a3676170 (Array Int Int)) ($a3676173 (Array Int Int)) ($i3686171 Int) ($x3696175 Int))
    (=> (and ($main_sum319 (store $a3676170 $i3686171 47) (+ $i3686171 1) $x3696172 $a3676173 $i3686174 $x3696175)
             (< $i3686171 100000))
        ($main_sum319 $a3676170 $i3686171 $x3696172 $a3676173 $i3686174 $x3696175))))

; loop entry $main_inv320
(assert
  (forall (($i3686168 Int) ($i3686159 Int) ($x369 Int) ($i3686177 Int) ($a3676176 (Array Int Int)) ($i368 Int) ($i3686150 Int) ($a3676131 (Array Int Int)) ($a367 (Array Int Int)) ($x3696160 Int) ($x3696151 Int) ($x3696142 Int) ($x3696169 Int) ($a3676149 (Array Int Int)) ($i3686132 Int) ($a3676140 (Array Int Int)) ($a3676158 (Array Int Int)) ($a3676167 (Array Int Int)) ($i3686141 Int) ($x3696178 Int) ($x3696133 Int))
    (=> (and ($main_sum319 $a3676167 0 $x3696169 $a3676176 $i3686177 $x3696178)
             ($main_sum318 $a3676158 0 $x3696160 $a3676167 $i3686168 $x3696169)
             ($main_sum317 $a3676149 0 $x3696151 $a3676158 $i3686159 $x3696160)
             ($main_sum316 $a3676140 0 $x3696142 $a3676149 $i3686150 $x3696151)
             ($main_sum315 $a3676131 0 $x3696133 $a3676140 $i3686141 $x3696142)
             ($main_sum314 $a367 $i368 $x369 $a3676131 $i3686132 $x3696133)
             (= $i368 0))
        ($main_inv320 $a3676176 0 $x3696178))))

; loop term $main_sum320
(assert
  (forall (($a3676179 (Array Int Int)) ($i3686180 Int) ($x3696181 Int))
    (=> (and (not (< $i3686180 100000)))
        ($main_sum320 $a3676179 $i3686180 $x3696181 $a3676179 $i3686180 $x3696181))))

; forwards $main_inv320
(assert
  (forall (($a3676179 (Array Int Int)) ($i3686180 Int) ($x3696181 Int))
    (=> (and (< $i3686180 100000)
             ($main_inv320 $a3676179 $i3686180 $x3696181))
        ($main_inv320 (store $a3676179 $i3686180 48) (+ $i3686180 1) $x3696181))))

; backwards $main_sum320
(assert
  (forall (($x3696184 Int) ($i3686180 Int) ($i3686183 Int) ($x3696181 Int) ($a3676182 (Array Int Int)) ($a3676179 (Array Int Int)))
    (=> (and ($main_sum320 (store $a3676179 $i3686180 48) (+ $i3686180 1) $x3696181 $a3676182 $i3686183 $x3696184)
             (< $i3686180 100000))
        ($main_sum320 $a3676179 $i3686180 $x3696181 $a3676182 $i3686183 $x3696184))))

; loop entry $main_inv321
(assert
  (forall (($i3686168 Int) ($i3686159 Int) ($x369 Int) ($a3676176 (Array Int Int)) ($i368 Int) ($i3686150 Int) ($a367 (Array Int Int)) ($x3696160 Int) ($x3696142 Int) ($x3696169 Int) ($a3676149 (Array Int Int)) ($i3686177 Int) ($a3676185 (Array Int Int)) ($a3676131 (Array Int Int)) ($x3696187 Int) ($i3686132 Int) ($a3676140 (Array Int Int)) ($a3676158 (Array Int Int)) ($a3676167 (Array Int Int)) ($i3686141 Int) ($i3686186 Int) ($x3696151 Int) ($x3696178 Int) ($x3696133 Int))
    (=> (and ($main_sum320 $a3676176 0 $x3696178 $a3676185 $i3686186 $x3696187)
             ($main_sum319 $a3676167 0 $x3696169 $a3676176 $i3686177 $x3696178)
             ($main_sum318 $a3676158 0 $x3696160 $a3676167 $i3686168 $x3696169)
             ($main_sum317 $a3676149 0 $x3696151 $a3676158 $i3686159 $x3696160)
             ($main_sum316 $a3676140 0 $x3696142 $a3676149 $i3686150 $x3696151)
             ($main_sum315 $a3676131 0 $x3696133 $a3676140 $i3686141 $x3696142)
             ($main_sum314 $a367 $i368 $x369 $a3676131 $i3686132 $x3696133)
             (= $i368 0))
        ($main_inv321 $a3676185 0 $x3696187))))

; loop term $main_sum321
(assert
  (forall (($a3676188 (Array Int Int)) ($i3686189 Int) ($x3696190 Int))
    (=> (and (not (< $i3686189 100000)))
        ($main_sum321 $a3676188 $i3686189 $x3696190 $a3676188 $i3686189 $x3696190))))

; forwards $main_inv321
(assert
  (forall (($a3676188 (Array Int Int)) ($i3686189 Int) ($x3696190 Int))
    (=> (and (< $i3686189 100000)
             ($main_inv321 $a3676188 $i3686189 $x3696190))
        ($main_inv321 (store $a3676188 $i3686189 49) (+ $i3686189 1) $x3696190))))

; backwards $main_sum321
(assert
  (forall (($i3686189 Int) ($x3696193 Int) ($x3696190 Int) ($a3676188 (Array Int Int)) ($a3676191 (Array Int Int)) ($i3686192 Int))
    (=> (and ($main_sum321 (store $a3676188 $i3686189 49) (+ $i3686189 1) $x3696190 $a3676191 $i3686192 $x3696193)
             (< $i3686189 100000))
        ($main_sum321 $a3676188 $i3686189 $x3696190 $a3676191 $i3686192 $x3696193))))

; loop entry $main_inv322
(assert
  (forall (($i3686168 Int) ($i3686159 Int) ($x369 Int) ($a3676176 (Array Int Int)) ($i368 Int) ($i3686150 Int) ($a367 (Array Int Int)) ($x3696196 Int) ($x3696160 Int) ($x3696169 Int) ($a3676149 (Array Int Int)) ($i3686177 Int) ($a3676185 (Array Int Int)) ($a3676131 (Array Int Int)) ($x3696187 Int) ($i3686132 Int) ($a3676140 (Array Int Int)) ($i3686195 Int) ($a3676158 (Array Int Int)) ($a3676167 (Array Int Int)) ($i3686141 Int) ($i3686186 Int) ($x3696151 Int) ($x3696178 Int) ($x3696133 Int) ($a3676194 (Array Int Int)) ($x3696142 Int))
    (=> (and ($main_sum321 $a3676185 0 $x3696187 $a3676194 $i3686195 $x3696196)
             ($main_sum320 $a3676176 0 $x3696178 $a3676185 $i3686186 $x3696187)
             ($main_sum319 $a3676167 0 $x3696169 $a3676176 $i3686177 $x3696178)
             ($main_sum318 $a3676158 0 $x3696160 $a3676167 $i3686168 $x3696169)
             ($main_sum317 $a3676149 0 $x3696151 $a3676158 $i3686159 $x3696160)
             ($main_sum316 $a3676140 0 $x3696142 $a3676149 $i3686150 $x3696151)
             ($main_sum315 $a3676131 0 $x3696133 $a3676140 $i3686141 $x3696142)
             ($main_sum314 $a367 $i368 $x369 $a3676131 $i3686132 $x3696133)
             (= $i368 0))
        ($main_inv322 $a3676194 0 $x3696196))))

; loop term $main_sum322
(assert
  (forall (($a3676197 (Array Int Int)) ($i3686198 Int) ($x3696199 Int))
    (=> (and (not (< $i3686198 100000)))
        ($main_sum322 $a3676197 $i3686198 $x3696199 $a3676197 $i3686198 $x3696199))))

; forwards $main_inv322
(assert
  (forall (($a3676197 (Array Int Int)) ($i3686198 Int) ($x3696199 Int))
    (=> (and (< $i3686198 100000)
             ($main_inv322 $a3676197 $i3686198 $x3696199))
        ($main_inv322 (store $a3676197 $i3686198 50) (+ $i3686198 1) $x3696199))))

; backwards $main_sum322
(assert
  (forall (($x3696199 Int) ($i3686198 Int) ($a3676200 (Array Int Int)) ($x3696202 Int) ($i3686201 Int) ($a3676197 (Array Int Int)))
    (=> (and ($main_sum322 (store $a3676197 $i3686198 50) (+ $i3686198 1) $x3696199 $a3676200 $i3686201 $x3696202)
             (< $i3686198 100000))
        ($main_sum322 $a3676197 $i3686198 $x3696199 $a3676200 $i3686201 $x3696202))))

; loop entry $main_inv323
(assert
  (forall (($i3686168 Int) ($x369 Int) ($i368 Int) ($i3686150 Int) ($i3686204 Int) ($a367 (Array Int Int)) ($x3696196 Int) ($x3696160 Int) ($x3696169 Int) ($a3676149 (Array Int Int)) ($x3696205 Int) ($i3686159 Int) ($i3686177 Int) ($a3676185 (Array Int Int)) ($a3676176 (Array Int Int)) ($a3676203 (Array Int Int)) ($a3676131 (Array Int Int)) ($x3696187 Int) ($i3686132 Int) ($a3676140 (Array Int Int)) ($i3686195 Int) ($a3676158 (Array Int Int)) ($a3676167 (Array Int Int)) ($i3686141 Int) ($i3686186 Int) ($x3696151 Int) ($x3696178 Int) ($x3696133 Int) ($a3676194 (Array Int Int)) ($x3696142 Int))
    (=> (and ($main_sum322 $a3676194 0 $x3696196 $a3676203 $i3686204 $x3696205)
             ($main_sum321 $a3676185 0 $x3696187 $a3676194 $i3686195 $x3696196)
             ($main_sum320 $a3676176 0 $x3696178 $a3676185 $i3686186 $x3696187)
             ($main_sum319 $a3676167 0 $x3696169 $a3676176 $i3686177 $x3696178)
             ($main_sum318 $a3676158 0 $x3696160 $a3676167 $i3686168 $x3696169)
             ($main_sum317 $a3676149 0 $x3696151 $a3676158 $i3686159 $x3696160)
             ($main_sum316 $a3676140 0 $x3696142 $a3676149 $i3686150 $x3696151)
             ($main_sum315 $a3676131 0 $x3696133 $a3676140 $i3686141 $x3696142)
             ($main_sum314 $a367 $i368 $x369 $a3676131 $i3686132 $x3696133)
             (= $i368 0))
        ($main_inv323 $a3676203 $i3686204 0))))

; loop term $main_sum323
(assert
  (forall (($a3676206 (Array Int Int)) ($i3686207 Int) ($x3696208 Int))
    (=> (and (not (< $x3696208 100000)))
        ($main_sum323 $a3676206 $i3686207 $x3696208 $a3676206 $i3686207 $x3696208))))

; __VERIFIER_assert precondition
(assert
  (forall (($a3676206 (Array Int Int)) ($x3696208 Int) ($i3686207 Int))
    (=> (and (< $x3696208 100000)
             ($main_inv323 $a3676206 $i3686207 $x3696208))
        ($__VERIFIER_assert_pre (ite (= (select $a3676206 $x3696208) 50) 1 0)))))

; forwards $main_inv323
(assert
  (forall (($a3676206 (Array Int Int)) ($i3686207 Int) ($x3696208 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a3676206 $x3696208) 50) 1 0))
             (< $x3696208 100000)
             ($main_inv323 $a3676206 $i3686207 $x3696208))
        ($main_inv323 $a3676206 $i3686207 (+ $x3696208 1)))))

; backwards $main_sum323
(assert
  (forall (($x3696208 Int) ($x3696211 Int) ($i3686207 Int) ($a3676209 (Array Int Int)) ($i3686210 Int) ($a3676206 (Array Int Int)))
    (=> (and ($main_sum323 $a3676206 $i3686207 (+ $x3696208 1) $a3676209 $i3686210 $x3696211)
             (__VERIFIER_assert (ite (= (select $a3676206 $x3696208) 50) 1 0))
             (< $x3696208 100000))
        ($main_sum323 $a3676206 $i3686207 $x3696208 $a3676209 $i3686210 $x3696211))))

(check-sat)
