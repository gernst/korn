(set-logic HORN)

(declare-fun $main_sum241 (Int Int Int Int Int (Array Int Int) Int Int Int Int Int (Array Int Int)) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $__VERIFIER_assert_if676 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_if677 (Int Int Int Int Int (Array Int Int) Int Int Int Int Int (Array Int Int)) Bool)
(declare-fun $main_sum243 (Int Int Int Int Int (Array Int Int) Int Int Int Int Int (Array Int Int)) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $main_inv243 (Int Int Int Int Int (Array Int Int)) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum242 (Int Int Int Int Int (Array Int Int) Int Int Int Int Int (Array Int Int)) Bool)
(declare-fun $main_inv242 (Int Int Int Int Int (Array Int Int)) Bool)
(declare-fun $main_sum244 (Int Int Int Int Int (Array Int Int) Int Int Int Int Int (Array Int Int)) Bool)
(declare-fun $main_inv241 (Int Int Int Int Int (Array Int Int)) Bool)
(declare-fun $main_inv244 (Int Int Int Int Int (Array Int Int)) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond16148 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond16148))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if676 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond16149 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if676 cond cond16149))
        (__VERIFIER_assert cond16149))))

; loop entry $main_inv241
(assert
  (forall (($SIZE691 Int) ($k694 Int) ($uint16150 Int) ($i692 Int) ($key695 Int) ($v696 (Array Int Int)))
    (=> (and (= $SIZE691 $uint16150)
             (<= 0 $uint16150)
             (<= $uint16150 4294967295))
        ($main_inv241 $SIZE691 $i692 0 $k694 $key695 $v696))))

; loop term $main_sum241
(assert
  (forall (($v69616156 (Array Int Int)) ($k69416154 Int) ($SIZE69116151 Int) ($key69516155 Int) ($i69216152 Int) ($j69316153 Int))
    (=> (and (not (< $j69316153 $SIZE69116151)))
        ($main_sum241 $SIZE69116151 $i69216152 $j69316153 $k69416154 $key69516155 $v69616156 $SIZE69116151 $i69216152 $j69316153 $k69416154 $key69516155 $v69616156))))

; forwards $main_inv241
(assert
  (forall (($v69616156 (Array Int Int)) ($k69416154 Int) ($SIZE69116151 Int) ($key69516155 Int) ($int16157 Int) ($i69216152 Int) ($j69316153 Int))
    (=> (and (<= (- 2147483648) $int16157)
             (<= $int16157 2147483647)
             (< $j69316153 $SIZE69116151)
             ($main_inv241 $SIZE69116151 $i69216152 $j69316153 $k69416154 $key69516155 $v69616156))
        ($main_inv241 $SIZE69116151 $i69216152 (+ $j69316153 1) $k69416154 $key69516155 (store $v69616156 $j69316153 $int16157)))))

; backwards $main_sum241
(assert
  (forall (($v69616156 (Array Int Int)) ($SIZE69116158 Int) ($SIZE69116151 Int) ($j69316160 Int) ($i69216159 Int) ($key69516155 Int) ($int16157 Int) ($v69616163 (Array Int Int)) ($k69416154 Int) ($k69416161 Int) ($i69216152 Int) ($j69316153 Int) ($key69516162 Int))
    (=> (and ($main_sum241 $SIZE69116151 $i69216152 (+ $j69316153 1) $k69416154 $key69516155 (store $v69616156 $j69316153 $int16157) $SIZE69116158 $i69216159 $j69316160 $k69416161 $key69516162 $v69616163)
             (<= (- 2147483648) $int16157)
             (<= $int16157 2147483647)
             (< $j69316153 $SIZE69116151))
        ($main_sum241 $SIZE69116151 $i69216152 $j69316153 $k69416154 $key69516155 $v69616156 $SIZE69116158 $i69216159 $j69316160 $k69416161 $key69516162 $v69616163))))

; loop entry $main_inv242
(assert
  (forall (($uint16150 Int) ($SIZE69116164 Int) ($i692 Int) ($key695 Int) ($v696 (Array Int Int)) ($i69216165 Int) ($k69416167 Int) ($SIZE691 Int) ($k694 Int) ($key69516168 Int) ($j69316166 Int) ($v69616169 (Array Int Int)))
    (=> (and ($main_sum241 $SIZE691 $i692 0 $k694 $key695 $v696 $SIZE69116164 $i69216165 $j69316166 $k69416167 $key69516168 $v69616169)
             (= $SIZE691 $uint16150)
             (<= 0 $uint16150)
             (<= $uint16150 4294967295))
        ($main_inv242 $SIZE69116164 $i69216165 1 $k69416167 $key69516168 $v69616169))))

; loop term $main_sum242
(assert
  (forall (($key69516174 Int) ($k69416173 Int) ($i69216171 Int) ($j69316172 Int) ($SIZE69116170 Int) ($v69616175 (Array Int Int)))
    (=> (and (not (< $j69316172 $SIZE69116170)))
        ($main_sum242 $SIZE69116170 $i69216171 $j69316172 $k69416173 $key69516174 $v69616175 $SIZE69116170 $i69216171 $j69316172 $k69416173 $key69516174 $v69616175))))

; loop entry $main_inv243
(assert
  (forall (($key69516174 Int) ($k69416173 Int) ($i69216171 Int) ($j69316172 Int) ($SIZE69116170 Int) ($v69616175 (Array Int Int)))
    (=> (and (< $j69316172 $SIZE69116170)
             ($main_inv242 $SIZE69116170 $i69216171 $j69316172 $k69416173 $key69516174 $v69616175))
        ($main_inv243 $SIZE69116170 (- $j69316172 1) $j69316172 $k69416173 (select $v69616175 $j69316172) $v69616175))))

; loop term $main_sum243
(assert
  (forall (($v69616181 (Array Int Int)) ($j69316178 Int) ($i69216177 Int) ($k69416179 Int) ($SIZE69116176 Int) ($key69516180 Int))
    (=> (and (not (and (>= $i69216177 0) (> (select $v69616181 $i69216177) $key69516180))))
        ($main_sum243 $SIZE69116176 $i69216177 $j69316178 $k69416179 $key69516180 $v69616181 $SIZE69116176 $i69216177 $j69316178 $k69416179 $key69516180 $v69616181))))

; if then
(assert
  (forall (($v69616181 (Array Int Int)) ($j69316178 Int) ($i69216177 Int) ($k69416179 Int) ($SIZE69116176 Int) ($key69516180 Int))
    (=> (and (< $i69216177 2)
             (>= $i69216177 0)
             (> (select $v69616181 $i69216177) $key69516180)
             ($main_inv243 $SIZE69116176 $i69216177 $j69316178 $k69416179 $key69516180 $v69616181))
        ($main_if677 $SIZE69116176 $i69216177 $j69316178 $k69416179 $key69516180 $v69616181 $SIZE69116176 $i69216177 $j69316178 $k69416179 $key69516180 (store $v69616181 (+ $i69216177 1) (select $v69616181 $i69216177))))))

; if else
(assert
  (forall (($v69616181 (Array Int Int)) ($j69316178 Int) ($i69216177 Int) ($k69416179 Int) ($SIZE69116176 Int) ($key69516180 Int))
    (=> (and (not (< $i69216177 2))
             (>= $i69216177 0)
             (> (select $v69616181 $i69216177) $key69516180)
             ($main_inv243 $SIZE69116176 $i69216177 $j69316178 $k69416179 $key69516180 $v69616181))
        ($main_if677 $SIZE69116176 $i69216177 $j69316178 $k69416179 $key69516180 $v69616181 $SIZE69116176 $i69216177 $j69316178 $k69416179 $key69516180 $v69616181))))

; forwards $main_inv243
(assert
  (forall (($j69316184 Int) ($k69416185 Int) ($i69216183 Int) ($v69616181 (Array Int Int)) ($v69616187 (Array Int Int)) ($j69316178 Int) ($i69216177 Int) ($SIZE69116182 Int) ($SIZE69116176 Int) ($key69516180 Int) ($k69416179 Int) ($key69516186 Int))
    (=> (and ($main_if677 $SIZE69116176 $i69216177 $j69316178 $k69416179 $key69516180 $v69616181 $SIZE69116182 $i69216183 $j69316184 $k69416185 $key69516186 $v69616187))
        ($main_inv243 $SIZE69116182 (- $i69216183 1) $j69316184 $k69416185 $key69516186 $v69616187))))

; backwards $main_sum243
(assert
  (forall (($k69416191 Int) ($SIZE69116188 Int) ($j69316184 Int) ($k69416185 Int) ($i69216183 Int) ($v69616181 (Array Int Int)) ($i69216189 Int) ($v69616187 (Array Int Int)) ($v69616193 (Array Int Int)) ($j69316178 Int) ($i69216177 Int) ($SIZE69116182 Int) ($key69516180 Int) ($j69316190 Int) ($k69416179 Int) ($key69516186 Int) ($SIZE69116176 Int) ($key69516192 Int))
    (=> (and ($main_sum243 $SIZE69116182 (- $i69216183 1) $j69316184 $k69416185 $key69516186 $v69616187 $SIZE69116188 $i69216189 $j69316190 $k69416191 $key69516192 $v69616193)
             ($main_if677 $SIZE69116176 $i69216177 $j69316178 $k69416179 $key69516180 $v69616181 $SIZE69116182 $i69216183 $j69316184 $k69416185 $key69516186 $v69616187))
        ($main_sum243 $SIZE69116176 $i69216177 $j69316178 $k69416179 $key69516180 $v69616181 $SIZE69116188 $i69216189 $j69316190 $k69416191 $key69516192 $v69616193))))

; forwards $main_inv242
(assert
  (forall (($j69316196 Int) ($key69516174 Int) ($SIZE69116194 Int) ($k69416173 Int) ($k69416197 Int) ($v69616199 (Array Int Int)) ($i69216171 Int) ($i69216195 Int) ($j69316172 Int) ($key69516198 Int) ($SIZE69116170 Int) ($v69616175 (Array Int Int)))
    (=> (and ($main_sum243 $SIZE69116170 (- $j69316172 1) $j69316172 $k69416173 (select $v69616175 $j69316172) $v69616175 $SIZE69116194 $i69216195 $j69316196 $k69416197 $key69516198 $v69616199)
             (< $j69316172 $SIZE69116170)
             ($main_inv242 $SIZE69116170 $i69216171 $j69316172 $k69416173 $key69516174 $v69616175))
        ($main_inv242 $SIZE69116194 $i69216195 (+ $j69316196 1) $k69416197 $key69516198 (store $v69616199 (+ $i69216195 1) $key69516198)))))

; backwards $main_sum242
(assert
  (forall (($key69516174 Int) ($SIZE69116194 Int) ($SIZE69116200 Int) ($k69416173 Int) ($k69416197 Int) ($v69616199 (Array Int Int)) ($i69216171 Int) ($key69516204 Int) ($v69616205 (Array Int Int)) ($key69516198 Int) ($j69316196 Int) ($j69316202 Int) ($i69216195 Int) ($i69216201 Int) ($j69316172 Int) ($k69416203 Int) ($SIZE69116170 Int) ($v69616175 (Array Int Int)))
    (=> (and ($main_sum242 $SIZE69116194 $i69216195 (+ $j69316196 1) $k69416197 $key69516198 (store $v69616199 (+ $i69216195 1) $key69516198) $SIZE69116200 $i69216201 $j69316202 $k69416203 $key69516204 $v69616205)
             ($main_sum243 $SIZE69116170 (- $j69316172 1) $j69316172 $k69416173 (select $v69616175 $j69316172) $v69616175 $SIZE69116194 $i69216195 $j69316196 $k69416197 $key69516198 $v69616199)
             (< $j69316172 $SIZE69116170))
        ($main_sum242 $SIZE69116170 $i69216171 $j69316172 $k69416173 $key69516174 $v69616175 $SIZE69116200 $i69216201 $j69316202 $k69416203 $key69516204 $v69616205))))

; loop entry $main_inv244
(assert
  (forall (($i69216207 Int) ($uint16150 Int) ($SIZE69116206 Int) ($SIZE69116164 Int) ($i692 Int) ($k69416209 Int) ($v696 (Array Int Int)) ($i69216165 Int) ($k69416167 Int) ($SIZE691 Int) ($j69316208 Int) ($v69616211 (Array Int Int)) ($k694 Int) ($key69516168 Int) ($key69516210 Int) ($key695 Int) ($j69316166 Int) ($v69616169 (Array Int Int)))
    (=> (and ($main_sum242 $SIZE69116164 $i69216165 1 $k69416167 $key69516168 $v69616169 $SIZE69116206 $i69216207 $j69316208 $k69416209 $key69516210 $v69616211)
             ($main_sum241 $SIZE691 $i692 0 $k694 $key695 $v696 $SIZE69116164 $i69216165 $j69316166 $k69416167 $key69516168 $v69616169)
             (= $SIZE691 $uint16150)
             (<= 0 $uint16150)
             (<= $uint16150 4294967295))
        ($main_inv244 $SIZE69116206 $i69216207 $j69316208 1 $key69516210 $v69616211))))

; loop term $main_sum244
(assert
  (forall (($j69316214 Int) ($i69216213 Int) ($key69516216 Int) ($v69616217 (Array Int Int)) ($SIZE69116212 Int) ($k69416215 Int))
    (=> (and (not (< $k69416215 $SIZE69116212)))
        ($main_sum244 $SIZE69116212 $i69216213 $j69316214 $k69416215 $key69516216 $v69616217 $SIZE69116212 $i69216213 $j69316214 $k69416215 $key69516216 $v69616217))))

; __VERIFIER_assert precondition
(assert
  (forall (($j69316214 Int) ($i69216213 Int) ($key69516216 Int) ($v69616217 (Array Int Int)) ($SIZE69116212 Int) ($k69416215 Int))
    (=> (and (< $k69416215 $SIZE69116212)
             ($main_inv244 $SIZE69116212 $i69216213 $j69316214 $k69416215 $key69516216 $v69616217))
        ($__VERIFIER_assert_pre (ite (<= (select $v69616217 (- $k69416215 1)) (select $v69616217 $k69416215)) 1 0)))))

; forwards $main_inv244
(assert
  (forall (($j69316214 Int) ($i69216213 Int) ($key69516216 Int) ($v69616217 (Array Int Int)) ($SIZE69116212 Int) ($k69416215 Int))
    (=> (and (__VERIFIER_assert (ite (<= (select $v69616217 (- $k69416215 1)) (select $v69616217 $k69416215)) 1 0))
             (< $k69416215 $SIZE69116212)
             ($main_inv244 $SIZE69116212 $i69216213 $j69316214 $k69416215 $key69516216 $v69616217))
        ($main_inv244 $SIZE69116212 $i69216213 $j69316214 (+ $k69416215 1) $key69516216 $v69616217))))

; backwards $main_sum244
(assert
  (forall (($SIZE69116218 Int) ($j69316220 Int) ($v69616223 (Array Int Int)) ($i69216219 Int) ($key69516222 Int) ($j69316214 Int) ($i69216213 Int) ($key69516216 Int) ($v69616217 (Array Int Int)) ($k69416221 Int) ($SIZE69116212 Int) ($k69416215 Int))
    (=> (and ($main_sum244 $SIZE69116212 $i69216213 $j69316214 (+ $k69416215 1) $key69516216 $v69616217 $SIZE69116218 $i69216219 $j69316220 $k69416221 $key69516222 $v69616223)
             (__VERIFIER_assert (ite (<= (select $v69616217 (- $k69416215 1)) (select $v69616217 $k69416215)) 1 0))
             (< $k69416215 $SIZE69116212))
        ($main_sum244 $SIZE69116212 $i69216213 $j69316214 $k69416215 $key69516216 $v69616217 $SIZE69116218 $i69216219 $j69316220 $k69416221 $key69516222 $v69616223))))

(check-sat)
