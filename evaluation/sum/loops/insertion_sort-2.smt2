(set-logic HORN)

(declare-fun $main_inv248 (Int Int Int Int Int (Array Int Int)) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum246 (Int Int Int Int Int (Array Int Int) Int Int Int Int Int (Array Int Int)) Bool)
(declare-fun $main_sum248 (Int Int Int Int Int (Array Int Int) Int Int Int Int Int (Array Int Int)) Bool)
(declare-fun $main_inv245 (Int Int Int Int Int (Array Int Int)) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $main_sum245 (Int Int Int Int Int (Array Int Int) Int Int Int Int Int (Array Int Int)) Bool)
(declare-fun $main_inv246 (Int Int Int Int Int (Array Int Int)) Bool)
(declare-fun $__VERIFIER_assert_if678 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum247 (Int Int Int Int Int (Array Int Int) Int Int Int Int Int (Array Int Int)) Bool)
(declare-fun $main_inv247 (Int Int Int Int Int (Array Int Int)) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond16230 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond16230))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if678 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond16231 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if678 cond cond16231))
        (__VERIFIER_assert cond16231))))

; loop entry $main_inv245
(assert
  (forall (($uint16232 Int) ($k700 Int) ($key701 Int) ($v702 (Array Int Int)) ($i698 Int) ($SIZE697 Int))
    (=> (and (= $SIZE697 $uint16232)
             (<= 0 $uint16232)
             (<= $uint16232 4294967295))
        ($main_inv245 $SIZE697 $i698 0 $k700 $key701 $v702))))

; loop term $main_sum245
(assert
  (forall (($SIZE69716233 Int) ($i69816234 Int) ($k70016236 Int) ($v70216238 (Array Int Int)) ($key70116237 Int) ($j69916235 Int))
    (=> (and (not (< $j69916235 $SIZE69716233)))
        ($main_sum245 $SIZE69716233 $i69816234 $j69916235 $k70016236 $key70116237 $v70216238 $SIZE69716233 $i69816234 $j69916235 $k70016236 $key70116237 $v70216238))))

; forwards $main_inv245
(assert
  (forall (($int16239 Int) ($SIZE69716233 Int) ($i69816234 Int) ($k70016236 Int) ($v70216238 (Array Int Int)) ($key70116237 Int) ($j69916235 Int))
    (=> (and (<= (- 2147483648) $int16239)
             (<= $int16239 2147483647)
             (< $j69916235 $SIZE69716233)
             ($main_inv245 $SIZE69716233 $i69816234 $j69916235 $k70016236 $key70116237 $v70216238))
        ($main_inv245 $SIZE69716233 $i69816234 (+ $j69916235 1) $k70016236 $key70116237 (store $v70216238 $j69916235 $int16239)))))

; backwards $main_sum245
(assert
  (forall (($int16239 Int) ($SIZE69716233 Int) ($key70116244 Int) ($j69916242 Int) ($i69816234 Int) ($v70216245 (Array Int Int)) ($k70016236 Int) ($k70016243 Int) ($SIZE69716240 Int) ($key70116237 Int) ($j69916235 Int) ($v70216238 (Array Int Int)) ($i69816241 Int))
    (=> (and ($main_sum245 $SIZE69716233 $i69816234 (+ $j69916235 1) $k70016236 $key70116237 (store $v70216238 $j69916235 $int16239) $SIZE69716240 $i69816241 $j69916242 $k70016243 $key70116244 $v70216245)
             (<= (- 2147483648) $int16239)
             (<= $int16239 2147483647)
             (< $j69916235 $SIZE69716233))
        ($main_sum245 $SIZE69716233 $i69816234 $j69916235 $k70016236 $key70116237 $v70216238 $SIZE69716240 $i69816241 $j69916242 $k70016243 $key70116244 $v70216245))))

; loop entry $main_inv246
(assert
  (forall (($key70116250 Int) ($uint16232 Int) ($k700 Int) ($v70216251 (Array Int Int)) ($key701 Int) ($v702 (Array Int Int)) ($k70016249 Int) ($i69816247 Int) ($i698 Int) ($SIZE697 Int) ($j69916248 Int) ($SIZE69716246 Int))
    (=> (and ($main_sum245 $SIZE697 $i698 0 $k700 $key701 $v702 $SIZE69716246 $i69816247 $j69916248 $k70016249 $key70116250 $v70216251)
             (= $SIZE697 $uint16232)
             (<= 0 $uint16232)
             (<= $uint16232 4294967295))
        ($main_inv246 $SIZE69716246 $i69816247 1 $k70016249 $key70116250 $v70216251))))

; loop term $main_sum246
(assert
  (forall (($SIZE69716252 Int) ($i69816253 Int) ($k70016255 Int) ($key70116256 Int) ($j69916254 Int) ($v70216257 (Array Int Int)))
    (=> (and (not (< $j69916254 $SIZE69716252)))
        ($main_sum246 $SIZE69716252 $i69816253 $j69916254 $k70016255 $key70116256 $v70216257 $SIZE69716252 $i69816253 $j69916254 $k70016255 $key70116256 $v70216257))))

; loop entry $main_inv247
(assert
  (forall (($SIZE69716252 Int) ($i69816253 Int) ($k70016255 Int) ($key70116256 Int) ($j69916254 Int) ($v70216257 (Array Int Int)))
    (=> (and (< $j69916254 $SIZE69716252)
             ($main_inv246 $SIZE69716252 $i69816253 $j69916254 $k70016255 $key70116256 $v70216257))
        ($main_inv247 $SIZE69716252 (- $j69916254 1) $j69916254 $k70016255 (select $v70216257 $j69916254) $v70216257))))

; loop term $main_sum247
(assert
  (forall (($j69916260 Int) ($v70216263 (Array Int Int)) ($k70016261 Int) ($key70116262 Int) ($i69816259 Int) ($SIZE69716258 Int))
    (=> (and (not (and (>= $i69816259 0) (> (select $v70216263 $i69816259) $key70116262))))
        ($main_sum247 $SIZE69716258 $i69816259 $j69916260 $k70016261 $key70116262 $v70216263 $SIZE69716258 $i69816259 $j69916260 $k70016261 $key70116262 $v70216263))))

; forwards $main_inv247
(assert
  (forall (($j69916260 Int) ($v70216263 (Array Int Int)) ($k70016261 Int) ($key70116262 Int) ($i69816259 Int) ($SIZE69716258 Int))
    (=> (and (>= $i69816259 0)
             (> (select $v70216263 $i69816259) $key70116262)
             ($main_inv247 $SIZE69716258 $i69816259 $j69916260 $k70016261 $key70116262 $v70216263))
        ($main_inv247 $SIZE69716258 (- $i69816259 1) $j69916260 $k70016261 $key70116262 (store $v70216263 (+ $i69816259 1) (select $v70216263 $i69816259))))))

; backwards $main_sum247
(assert
  (forall (($j69916260 Int) ($j69916266 Int) ($v70216263 (Array Int Int)) ($k70016261 Int) ($key70116262 Int) ($i69816259 Int) ($key70116268 Int) ($SIZE69716258 Int) ($i69816265 Int) ($SIZE69716264 Int) ($v70216269 (Array Int Int)) ($k70016267 Int))
    (=> (and ($main_sum247 $SIZE69716258 (- $i69816259 1) $j69916260 $k70016261 $key70116262 (store $v70216263 (+ $i69816259 1) (select $v70216263 $i69816259)) $SIZE69716264 $i69816265 $j69916266 $k70016267 $key70116268 $v70216269)
             (>= $i69816259 0)
             (> (select $v70216263 $i69816259) $key70116262))
        ($main_sum247 $SIZE69716258 $i69816259 $j69916260 $k70016261 $key70116262 $v70216263 $SIZE69716264 $i69816265 $j69916266 $k70016267 $key70116268 $v70216269))))

; forwards $main_inv246
(assert
  (forall (($k70016273 Int) ($SIZE69716252 Int) ($i69816271 Int) ($i69816253 Int) ($key70116274 Int) ($k70016255 Int) ($j69916272 Int) ($key70116256 Int) ($v70216275 (Array Int Int)) ($j69916254 Int) ($v70216257 (Array Int Int)) ($SIZE69716270 Int))
    (=> (and ($main_sum247 $SIZE69716252 (- $j69916254 1) $j69916254 $k70016255 (select $v70216257 $j69916254) $v70216257 $SIZE69716270 $i69816271 $j69916272 $k70016273 $key70116274 $v70216275)
             (< $j69916254 $SIZE69716252)
             ($main_inv246 $SIZE69716252 $i69816253 $j69916254 $k70016255 $key70116256 $v70216257))
        ($main_inv246 $SIZE69716270 $i69816271 (+ $j69916272 1) $k70016273 $key70116274 (store $v70216275 (+ $i69816271 1) $key70116274)))))

; backwards $main_sum246
(assert
  (forall (($SIZE69716252 Int) ($i69816271 Int) ($i69816253 Int) ($key70116274 Int) ($v70216281 (Array Int Int)) ($k70016255 Int) ($j69916272 Int) ($j69916278 Int) ($SIZE69716276 Int) ($key70116256 Int) ($v70216275 (Array Int Int)) ($j69916254 Int) ($v70216257 (Array Int Int)) ($key70116280 Int) ($k70016273 Int) ($i69816277 Int) ($k70016279 Int) ($SIZE69716270 Int))
    (=> (and ($main_sum246 $SIZE69716270 $i69816271 (+ $j69916272 1) $k70016273 $key70116274 (store $v70216275 (+ $i69816271 1) $key70116274) $SIZE69716276 $i69816277 $j69916278 $k70016279 $key70116280 $v70216281)
             ($main_sum247 $SIZE69716252 (- $j69916254 1) $j69916254 $k70016255 (select $v70216257 $j69916254) $v70216257 $SIZE69716270 $i69816271 $j69916272 $k70016273 $key70116274 $v70216275)
             (< $j69916254 $SIZE69716252))
        ($main_sum246 $SIZE69716252 $i69816253 $j69916254 $k70016255 $key70116256 $v70216257 $SIZE69716276 $i69816277 $j69916278 $k70016279 $key70116280 $v70216281))))

; loop entry $main_inv248
(assert
  (forall (($key70116250 Int) ($uint16232 Int) ($i69816283 Int) ($k70016285 Int) ($SIZE69716282 Int) ($key70116286 Int) ($v70216251 (Array Int Int)) ($key701 Int) ($k70016249 Int) ($i69816247 Int) ($i698 Int) ($SIZE697 Int) ($j69916248 Int) ($SIZE69716246 Int) ($k700 Int) ($j69916284 Int) ($v70216287 (Array Int Int)) ($v702 (Array Int Int)))
    (=> (and ($main_sum246 $SIZE69716246 $i69816247 1 $k70016249 $key70116250 $v70216251 $SIZE69716282 $i69816283 $j69916284 $k70016285 $key70116286 $v70216287)
             ($main_sum245 $SIZE697 $i698 0 $k700 $key701 $v702 $SIZE69716246 $i69816247 $j69916248 $k70016249 $key70116250 $v70216251)
             (= $SIZE697 $uint16232)
             (<= 0 $uint16232)
             (<= $uint16232 4294967295))
        ($main_inv248 $SIZE69716282 $i69816283 $j69916284 1 $key70116286 $v70216287))))

; loop term $main_sum248
(assert
  (forall (($j69916290 Int) ($k70016291 Int) ($i69816289 Int) ($v70216293 (Array Int Int)) ($key70116292 Int) ($SIZE69716288 Int))
    (=> (and (not (< $k70016291 $SIZE69716288)))
        ($main_sum248 $SIZE69716288 $i69816289 $j69916290 $k70016291 $key70116292 $v70216293 $SIZE69716288 $i69816289 $j69916290 $k70016291 $key70116292 $v70216293))))

; __VERIFIER_assert precondition
(assert
  (forall (($j69916290 Int) ($k70016291 Int) ($i69816289 Int) ($v70216293 (Array Int Int)) ($key70116292 Int) ($SIZE69716288 Int))
    (=> (and (< $k70016291 $SIZE69716288)
             ($main_inv248 $SIZE69716288 $i69816289 $j69916290 $k70016291 $key70116292 $v70216293))
        ($__VERIFIER_assert_pre (ite (<= (select $v70216293 (- $k70016291 1)) (select $v70216293 $k70016291)) 1 0)))))

; forwards $main_inv248
(assert
  (forall (($j69916290 Int) ($k70016291 Int) ($i69816289 Int) ($v70216293 (Array Int Int)) ($key70116292 Int) ($SIZE69716288 Int))
    (=> (and (__VERIFIER_assert (ite (<= (select $v70216293 (- $k70016291 1)) (select $v70216293 $k70016291)) 1 0))
             (< $k70016291 $SIZE69716288)
             ($main_inv248 $SIZE69716288 $i69816289 $j69916290 $k70016291 $key70116292 $v70216293))
        ($main_inv248 $SIZE69716288 $i69816289 $j69916290 (+ $k70016291 1) $key70116292 $v70216293))))

; backwards $main_sum248
(assert
  (forall (($j69916296 Int) ($j69916290 Int) ($i69816295 Int) ($SIZE69716294 Int) ($k70016291 Int) ($v70216299 (Array Int Int)) ($i69816289 Int) ($key70116298 Int) ($v70216293 (Array Int Int)) ($key70116292 Int) ($k70016297 Int) ($SIZE69716288 Int))
    (=> (and ($main_sum248 $SIZE69716288 $i69816289 $j69916290 (+ $k70016291 1) $key70116292 $v70216293 $SIZE69716294 $i69816295 $j69916296 $k70016297 $key70116298 $v70216299)
             (__VERIFIER_assert (ite (<= (select $v70216293 (- $k70016291 1)) (select $v70216293 $k70016291)) 1 0))
             (< $k70016291 $SIZE69716288))
        ($main_sum248 $SIZE69716288 $i69816289 $j69916290 $k70016291 $key70116292 $v70216293 $SIZE69716294 $i69816295 $j69916296 $k70016297 $key70116298 $v70216299))))

(check-sat)
