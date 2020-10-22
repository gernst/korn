(set-logic HORN)

(declare-fun $main_inv104 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv103 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum107 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum103 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv106 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv107 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum106 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum105 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if47 (Int Int) Bool)
(declare-fun $main_inv105 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum104 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond2183 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond2183))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if47 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond2184 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if47 cond cond2184))
        (__VERIFIER_assert cond2184))))

; loop entry $main_inv103
(assert
  (forall (($a4179 (Array Int Int)) ($a1176 (Array Int Int)) ($a3178 (Array Int Int)) ($i181 Int) ($x182 Int) ($a2177 (Array Int Int)))
        ($main_inv103 $a1176 $a2177 $a3178 $a4179 0 $i181 $x182)))

; loop term $main_sum103
(assert
  (forall (($x1822191 Int) ($i1812190 Int) ($a41792188 (Array Int Int)) ($a31782187 (Array Int Int)) ($a1802189 Int) ($a21772186 (Array Int Int)) ($a11762185 (Array Int Int)))
    (=> (and (not (< $a1802189 100000)))
        ($main_sum103 $a11762185 $a21772186 $a31782187 $a41792188 $a1802189 $i1812190 $x1822191 $a11762185 $a21772186 $a31782187 $a41792188 $a1802189 $i1812190 $x1822191))))

; forwards $main_inv103
(assert
  (forall (($i1812190 Int) ($a41792188 (Array Int Int)) ($a31782187 (Array Int Int)) ($a1802189 Int) ($a21772186 (Array Int Int)) ($a11762185 (Array Int Int)) ($int2192 Int) ($x1822191 Int))
    (=> (and (<= (- 2147483648) $int2192)
             (<= $int2192 2147483647)
             (< $a1802189 100000)
             ($main_inv103 $a11762185 $a21772186 $a31782187 $a41792188 $a1802189 $i1812190 $x1822191))
        ($main_inv103 (store $a11762185 $a1802189 $int2192) $a21772186 $a31782187 $a41792188 (+ $a1802189 1) $i1812190 $x1822191))))

; backwards $main_sum103
(assert
  (forall (($i1812198 Int) ($a21772194 (Array Int Int)) ($a41792188 (Array Int Int)) ($a1802197 Int) ($a31782187 (Array Int Int)) ($a21772186 (Array Int Int)) ($a41792196 (Array Int Int)) ($a11762185 (Array Int Int)) ($a31782195 (Array Int Int)) ($int2192 Int) ($x1822191 Int) ($x1822199 Int) ($i1812190 Int) ($a1802189 Int) ($a11762193 (Array Int Int)))
    (=> (and ($main_sum103 (store $a11762185 $a1802189 $int2192) $a21772186 $a31782187 $a41792188 (+ $a1802189 1) $i1812190 $x1822191 $a11762193 $a21772194 $a31782195 $a41792196 $a1802197 $i1812198 $x1822199)
             (<= (- 2147483648) $int2192)
             (<= $int2192 2147483647)
             (< $a1802189 100000))
        ($main_sum103 $a11762185 $a21772186 $a31782187 $a41792188 $a1802189 $i1812190 $x1822191 $a11762193 $a21772194 $a31782195 $a41792196 $a1802197 $i1812198 $x1822199))))

; loop entry $main_inv104
(assert
  (forall (($a4179 (Array Int Int)) ($a1176 (Array Int Int)) ($a3178 (Array Int Int)) ($a31782202 (Array Int Int)) ($i181 Int) ($a11762200 (Array Int Int)) ($a1802204 Int) ($x1822206 Int) ($i1812205 Int) ($x182 Int) ($a2177 (Array Int Int)) ($a21772201 (Array Int Int)) ($a41792203 (Array Int Int)))
    (=> (and ($main_sum103 $a1176 $a2177 $a3178 $a4179 0 $i181 $x182 $a11762200 $a21772201 $a31782202 $a41792203 $a1802204 $i1812205 $x1822206))
        ($main_inv104 $a11762200 $a21772201 $a31782202 $a41792203 $a1802204 0 $x1822206))))

; loop term $main_sum104
(assert
  (forall (($x1822213 Int) ($a41792210 (Array Int Int)) ($i1812212 Int) ($a21772208 (Array Int Int)) ($a31782209 (Array Int Int)) ($a11762207 (Array Int Int)) ($a1802211 Int))
    (=> (and (not (< $i1812212 100000)))
        ($main_sum104 $a11762207 $a21772208 $a31782209 $a41792210 $a1802211 $i1812212 $x1822213 $a11762207 $a21772208 $a31782209 $a41792210 $a1802211 $i1812212 $x1822213))))

; forwards $main_inv104
(assert
  (forall (($x1822213 Int) ($a41792210 (Array Int Int)) ($i1812212 Int) ($a21772208 (Array Int Int)) ($a31782209 (Array Int Int)) ($a11762207 (Array Int Int)) ($a1802211 Int))
    (=> (and (< $i1812212 100000)
             ($main_inv104 $a11762207 $a21772208 $a31782209 $a41792210 $a1802211 $i1812212 $x1822213))
        ($main_inv104 $a11762207 (store $a21772208 $i1812212 (select $a11762207 $i1812212)) $a31782209 $a41792210 $a1802211 (+ $i1812212 1) $x1822213))))

; backwards $main_sum104
(assert
  (forall (($a11762214 (Array Int Int)) ($a41792210 (Array Int Int)) ($i1812212 Int) ($a1802218 Int) ($a31782216 (Array Int Int)) ($a41792217 (Array Int Int)) ($a21772208 (Array Int Int)) ($a21772215 (Array Int Int)) ($a31782209 (Array Int Int)) ($a11762207 (Array Int Int)) ($x1822220 Int) ($x1822213 Int) ($a1802211 Int) ($i1812219 Int))
    (=> (and ($main_sum104 $a11762207 (store $a21772208 $i1812212 (select $a11762207 $i1812212)) $a31782209 $a41792210 $a1802211 (+ $i1812212 1) $x1822213 $a11762214 $a21772215 $a31782216 $a41792217 $a1802218 $i1812219 $x1822220)
             (< $i1812212 100000))
        ($main_sum104 $a11762207 $a21772208 $a31782209 $a41792210 $a1802211 $i1812212 $x1822213 $a11762214 $a21772215 $a31782216 $a41792217 $a1802218 $i1812219 $x1822220))))

; loop entry $main_inv105
(assert
  (forall (($a4179 (Array Int Int)) ($a31782223 (Array Int Int)) ($a1176 (Array Int Int)) ($x1822227 Int) ($a3178 (Array Int Int)) ($a31782202 (Array Int Int)) ($i181 Int) ($a11762200 (Array Int Int)) ($a1802204 Int) ($x1822206 Int) ($a11762221 (Array Int Int)) ($a41792224 (Array Int Int)) ($a1802225 Int) ($i1812226 Int) ($x182 Int) ($a2177 (Array Int Int)) ($a21772201 (Array Int Int)) ($a41792203 (Array Int Int)) ($a21772222 (Array Int Int)) ($i1812205 Int))
    (=> (and ($main_sum104 $a11762200 $a21772201 $a31782202 $a41792203 $a1802204 0 $x1822206 $a11762221 $a21772222 $a31782223 $a41792224 $a1802225 $i1812226 $x1822227)
             ($main_sum103 $a1176 $a2177 $a3178 $a4179 0 $i181 $x182 $a11762200 $a21772201 $a31782202 $a41792203 $a1802204 $i1812205 $x1822206))
        ($main_inv105 $a11762221 $a21772222 $a31782223 $a41792224 $a1802225 0 $x1822227))))

; loop term $main_sum105
(assert
  (forall (($x1822234 Int) ($a31782230 (Array Int Int)) ($i1812233 Int) ($a11762228 (Array Int Int)) ($a41792231 (Array Int Int)) ($a1802232 Int) ($a21772229 (Array Int Int)))
    (=> (and (not (< $i1812233 100000)))
        ($main_sum105 $a11762228 $a21772229 $a31782230 $a41792231 $a1802232 $i1812233 $x1822234 $a11762228 $a21772229 $a31782230 $a41792231 $a1802232 $i1812233 $x1822234))))

; forwards $main_inv105
(assert
  (forall (($x1822234 Int) ($a31782230 (Array Int Int)) ($i1812233 Int) ($a11762228 (Array Int Int)) ($a41792231 (Array Int Int)) ($a1802232 Int) ($a21772229 (Array Int Int)))
    (=> (and (< $i1812233 100000)
             ($main_inv105 $a11762228 $a21772229 $a31782230 $a41792231 $a1802232 $i1812233 $x1822234))
        ($main_inv105 $a11762228 $a21772229 (store $a31782230 $i1812233 (select $a21772229 $i1812233)) $a41792231 $a1802232 (+ $i1812233 1) $x1822234))))

; backwards $main_sum105
(assert
  (forall (($x1822234 Int) ($a31782230 (Array Int Int)) ($i1812233 Int) ($x1822241 Int) ($a21772236 (Array Int Int)) ($a11762228 (Array Int Int)) ($a41792231 (Array Int Int)) ($i1812240 Int) ($a41792238 (Array Int Int)) ($a1802239 Int) ($a11762235 (Array Int Int)) ($a21772229 (Array Int Int)) ($a31782237 (Array Int Int)) ($a1802232 Int))
    (=> (and ($main_sum105 $a11762228 $a21772229 (store $a31782230 $i1812233 (select $a21772229 $i1812233)) $a41792231 $a1802232 (+ $i1812233 1) $x1822234 $a11762235 $a21772236 $a31782237 $a41792238 $a1802239 $i1812240 $x1822241)
             (< $i1812233 100000))
        ($main_sum105 $a11762228 $a21772229 $a31782230 $a41792231 $a1802232 $i1812233 $x1822234 $a11762235 $a21772236 $a31782237 $a41792238 $a1802239 $i1812240 $x1822241))))

; loop entry $main_inv106
(assert
  (forall (($a4179 (Array Int Int)) ($a11762242 (Array Int Int)) ($a21772243 (Array Int Int)) ($a31782223 (Array Int Int)) ($a1802246 Int) ($a1176 (Array Int Int)) ($a31782244 (Array Int Int)) ($x1822227 Int) ($a3178 (Array Int Int)) ($a31782202 (Array Int Int)) ($i181 Int) ($a11762200 (Array Int Int)) ($i1812247 Int) ($a1802204 Int) ($x1822248 Int) ($x1822206 Int) ($a11762221 (Array Int Int)) ($a41792224 (Array Int Int)) ($a1802225 Int) ($i1812226 Int) ($x182 Int) ($a2177 (Array Int Int)) ($a21772201 (Array Int Int)) ($a41792203 (Array Int Int)) ($a21772222 (Array Int Int)) ($a41792245 (Array Int Int)) ($i1812205 Int))
    (=> (and ($main_sum105 $a11762221 $a21772222 $a31782223 $a41792224 $a1802225 0 $x1822227 $a11762242 $a21772243 $a31782244 $a41792245 $a1802246 $i1812247 $x1822248)
             ($main_sum104 $a11762200 $a21772201 $a31782202 $a41792203 $a1802204 0 $x1822206 $a11762221 $a21772222 $a31782223 $a41792224 $a1802225 $i1812226 $x1822227)
             ($main_sum103 $a1176 $a2177 $a3178 $a4179 0 $i181 $x182 $a11762200 $a21772201 $a31782202 $a41792203 $a1802204 $i1812205 $x1822206))
        ($main_inv106 $a11762242 $a21772243 $a31782244 $a41792245 $a1802246 0 $x1822248))))

; loop term $main_sum106
(assert
  (forall (($x1822255 Int) ($a1802253 Int) ($a31782251 (Array Int Int)) ($a11762249 (Array Int Int)) ($a21772250 (Array Int Int)) ($i1812254 Int) ($a41792252 (Array Int Int)))
    (=> (and (not (< $i1812254 100000)))
        ($main_sum106 $a11762249 $a21772250 $a31782251 $a41792252 $a1802253 $i1812254 $x1822255 $a11762249 $a21772250 $a31782251 $a41792252 $a1802253 $i1812254 $x1822255))))

; forwards $main_inv106
(assert
  (forall (($x1822255 Int) ($a1802253 Int) ($a31782251 (Array Int Int)) ($a11762249 (Array Int Int)) ($a21772250 (Array Int Int)) ($i1812254 Int) ($a41792252 (Array Int Int)))
    (=> (and (< $i1812254 100000)
             ($main_inv106 $a11762249 $a21772250 $a31782251 $a41792252 $a1802253 $i1812254 $x1822255))
        ($main_inv106 $a11762249 $a21772250 $a31782251 (store $a41792252 $i1812254 (select $a31782251 $i1812254)) $a1802253 (+ $i1812254 1) $x1822255))))

; backwards $main_sum106
(assert
  (forall (($a41792259 (Array Int Int)) ($a1802253 Int) ($a31782251 (Array Int Int)) ($a11762256 (Array Int Int)) ($a21772257 (Array Int Int)) ($a21772250 (Array Int Int)) ($x1822262 Int) ($i1812254 Int) ($a41792252 (Array Int Int)) ($i1812261 Int) ($x1822255 Int) ($a31782258 (Array Int Int)) ($a1802260 Int) ($a11762249 (Array Int Int)))
    (=> (and ($main_sum106 $a11762249 $a21772250 $a31782251 (store $a41792252 $i1812254 (select $a31782251 $i1812254)) $a1802253 (+ $i1812254 1) $x1822255 $a11762256 $a21772257 $a31782258 $a41792259 $a1802260 $i1812261 $x1822262)
             (< $i1812254 100000))
        ($main_sum106 $a11762249 $a21772250 $a31782251 $a41792252 $a1802253 $i1812254 $x1822255 $a11762256 $a21772257 $a31782258 $a41792259 $a1802260 $i1812261 $x1822262))))

; loop entry $main_inv107
(assert
  (forall (($a11762263 (Array Int Int)) ($a4179 (Array Int Int)) ($a21772243 (Array Int Int)) ($a31782223 (Array Int Int)) ($a1802246 Int) ($a1176 (Array Int Int)) ($x1822269 Int) ($a31782244 (Array Int Int)) ($x1822227 Int) ($a3178 (Array Int Int)) ($i181 Int) ($a11762200 (Array Int Int)) ($i1812247 Int) ($x1822248 Int) ($a31782265 (Array Int Int)) ($i1812268 Int) ($a11762242 (Array Int Int)) ($a11762221 (Array Int Int)) ($a41792224 (Array Int Int)) ($a1802267 Int) ($a31782202 (Array Int Int)) ($a1802225 Int) ($i1812226 Int) ($x182 Int) ($a2177 (Array Int Int)) ($a21772201 (Array Int Int)) ($a41792203 (Array Int Int)) ($a1802204 Int) ($a21772264 (Array Int Int)) ($x1822206 Int) ($a41792266 (Array Int Int)) ($a21772222 (Array Int Int)) ($a41792245 (Array Int Int)) ($i1812205 Int))
    (=> (and ($main_sum106 $a11762242 $a21772243 $a31782244 $a41792245 $a1802246 0 $x1822248 $a11762263 $a21772264 $a31782265 $a41792266 $a1802267 $i1812268 $x1822269)
             ($main_sum105 $a11762221 $a21772222 $a31782223 $a41792224 $a1802225 0 $x1822227 $a11762242 $a21772243 $a31782244 $a41792245 $a1802246 $i1812247 $x1822248)
             ($main_sum104 $a11762200 $a21772201 $a31782202 $a41792203 $a1802204 0 $x1822206 $a11762221 $a21772222 $a31782223 $a41792224 $a1802225 $i1812226 $x1822227)
             ($main_sum103 $a1176 $a2177 $a3178 $a4179 0 $i181 $x182 $a11762200 $a21772201 $a31782202 $a41792203 $a1802204 $i1812205 $x1822206))
        ($main_inv107 $a11762263 $a21772264 $a31782265 $a41792266 $a1802267 $i1812268 0))))

; loop term $main_sum107
(assert
  (forall (($x1822276 Int) ($a31782272 (Array Int Int)) ($a21772271 (Array Int Int)) ($i1812275 Int) ($a11762270 (Array Int Int)) ($a41792273 (Array Int Int)) ($a1802274 Int))
    (=> (and (not (< $x1822276 100000)))
        ($main_sum107 $a11762270 $a21772271 $a31782272 $a41792273 $a1802274 $i1812275 $x1822276 $a11762270 $a21772271 $a31782272 $a41792273 $a1802274 $i1812275 $x1822276))))

; __VERIFIER_assert precondition
(assert
  (forall (($x1822276 Int) ($a31782272 (Array Int Int)) ($a21772271 (Array Int Int)) ($i1812275 Int) ($a11762270 (Array Int Int)) ($a41792273 (Array Int Int)) ($a1802274 Int))
    (=> (and (< $x1822276 100000)
             ($main_inv107 $a11762270 $a21772271 $a31782272 $a41792273 $a1802274 $i1812275 $x1822276))
        ($__VERIFIER_assert_pre (ite (= (select $a11762270 $x1822276) (select $a41792273 $x1822276)) 1 0)))))

; forwards $main_inv107
(assert
  (forall (($x1822276 Int) ($a31782272 (Array Int Int)) ($a21772271 (Array Int Int)) ($i1812275 Int) ($a11762270 (Array Int Int)) ($a41792273 (Array Int Int)) ($a1802274 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a11762270 $x1822276) (select $a41792273 $x1822276)) 1 0))
             (< $x1822276 100000)
             ($main_inv107 $a11762270 $a21772271 $a31782272 $a41792273 $a1802274 $i1812275 $x1822276))
        ($main_inv107 $a11762270 $a21772271 $a31782272 $a41792273 $a1802274 $i1812275 (+ $x1822276 1)))))

; backwards $main_sum107
(assert
  (forall (($x1822276 Int) ($a31782272 (Array Int Int)) ($a21772271 (Array Int Int)) ($i1812275 Int) ($a41792273 (Array Int Int)) ($a1802274 Int) ($a41792280 (Array Int Int)) ($a11762270 (Array Int Int)) ($a11762277 (Array Int Int)) ($a21772278 (Array Int Int)) ($i1812282 Int) ($a31782279 (Array Int Int)) ($a1802281 Int) ($x1822283 Int))
    (=> (and ($main_sum107 $a11762270 $a21772271 $a31782272 $a41792273 $a1802274 $i1812275 (+ $x1822276 1) $a11762277 $a21772278 $a31782279 $a41792280 $a1802281 $i1812282 $x1822283)
             (__VERIFIER_assert (ite (= (select $a11762270 $x1822276) (select $a41792273 $x1822276)) 1 0))
             (< $x1822276 100000))
        ($main_sum107 $a11762270 $a21772271 $a31782272 $a41792273 $a1802274 $i1812275 $x1822276 $a11762277 $a21772278 $a31782279 $a41792280 $a1802281 $i1812282 $x1822283))))

(check-sat)
