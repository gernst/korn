(set-logic HORN)

(declare-fun $__VERIFIER_assert_if28 (Int Int) Bool)
(declare-fun $main_if30 ((Array Int Int) Int Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv67 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if29 ((Array Int Int) Int Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum62 ((Array Int Int) Int Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum64 ((Array Int Int) Int Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum66 ((Array Int Int) Int Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum63 ((Array Int Int) Int Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum61 ((Array Int Int) Int Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum68 ((Array Int Int) Int Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv64 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv65 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum67 ((Array Int Int) Int Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv62 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv66 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv63 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum65 ((Array Int Int) Int Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv68 ((Array Int Int) Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv61 ((Array Int Int) Int Int Int Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond1236 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond1236))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if28 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond1237 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if28 cond cond1237))
        (__VERIFIER_assert cond1237))))

; loop entry $main_inv61
(assert
  (forall (($s125 Int) ($i120 Int) ($i123 Int) ($k124 Int) ($x121 Int) ($tmp126 Int) ($y122 Int) ($a119 (Array Int Int)))
    (=> (and (= $i123 0)
             (= $i120 0))
        ($main_inv61 $a119 $i120 $x121 $y122 $i123 $k124 $s125 $tmp126))))

; loop term $main_sum61
(assert
  (forall (($k1241243 Int) ($s1251244 Int) ($i1201239 Int) ($i1231242 Int) ($y1221241 Int) ($tmp1261245 Int) ($x1211240 Int) ($a1191238 (Array Int Int)))
    (=> (and (not (< $i1231242 100000)))
        ($main_sum61 $a1191238 $i1201239 $x1211240 $y1221241 $i1231242 $k1241243 $s1251244 $tmp1261245 $a1191238 $i1201239 $x1211240 $y1221241 $i1231242 $k1241243 $s1251244 $tmp1261245))))

; forwards $main_inv61
(assert
  (forall (($k1241243 Int) ($s1251244 Int) ($i1201239 Int) ($int1246 Int) ($i1231242 Int) ($y1221241 Int) ($tmp1261245 Int) ($x1211240 Int) ($a1191238 (Array Int Int)))
    (=> (and (<= (- 2147483648) $int1246)
             (<= $int1246 2147483647)
             (< $i1231242 100000)
             ($main_inv61 $a1191238 $i1201239 $x1211240 $y1221241 $i1231242 $k1241243 $s1251244 $tmp1261245))
        ($main_inv61 (store $a1191238 $i1231242 $int1246) $i1201239 $x1211240 $y1221241 (+ $i1231242 1) $k1241243 $s1251244 $tmp1261245))))

; backwards $main_sum61
(assert
  (forall (($k1241243 Int) ($k1241252 Int) ($s1251253 Int) ($s1251244 Int) ($i1201248 Int) ($tmp1261254 Int) ($x1211249 Int) ($i1201239 Int) ($a1191247 (Array Int Int)) ($y1221250 Int) ($i1231242 Int) ($y1221241 Int) ($tmp1261245 Int) ($int1246 Int) ($i1231251 Int) ($x1211240 Int) ($a1191238 (Array Int Int)))
    (=> (and ($main_sum61 (store $a1191238 $i1231242 $int1246) $i1201239 $x1211240 $y1221241 (+ $i1231242 1) $k1241243 $s1251244 $tmp1261245 $a1191247 $i1201248 $x1211249 $y1221250 $i1231251 $k1241252 $s1251253 $tmp1261254)
             (<= (- 2147483648) $int1246)
             (<= $int1246 2147483647)
             (< $i1231242 100000))
        ($main_sum61 $a1191238 $i1201239 $x1211240 $y1221241 $i1231242 $k1241243 $s1251244 $tmp1261245 $a1191247 $i1201248 $x1211249 $y1221250 $i1231251 $k1241252 $s1251253 $tmp1261254))))

; loop entry $main_inv62
(assert
  (forall (($i1201256 Int) ($s125 Int) ($i120 Int) ($i123 Int) ($y1221258 Int) ($k124 Int) ($x121 Int) ($i1231259 Int) ($x1211257 Int) ($tmp1261262 Int) ($tmp126 Int) ($s1251261 Int) ($a1191255 (Array Int Int)) ($k1241260 Int) ($y122 Int) ($a119 (Array Int Int)))
    (=> (and ($main_sum61 $a119 $i120 $x121 $y122 $i123 $k124 $s125 $tmp126 $a1191255 $i1201256 $x1211257 $y1221258 $i1231259 $k1241260 $s1251261 $tmp1261262)
             (= $i123 0)
             (= $i120 0))
        ($main_inv62 $a1191255 0 $x1211257 $y1221258 $i1231259 $k1241260 $s1251261 $tmp1261262))))

; loop term $main_sum62
(assert
  (forall (($k1241268 Int) ($i1201264 Int) ($i1231267 Int) ($tmp1261270 Int) ($y1221266 Int) ($s1251269 Int) ($a1191263 (Array Int Int)) ($x1211265 Int))
    (=> (and (not (< $i1201264 100000)))
        ($main_sum62 $a1191263 $i1201264 $x1211265 $y1221266 $i1231267 $k1241268 $s1251269 $tmp1261270 $a1191263 $i1201264 $x1211265 $y1221266 $i1231267 $k1241268 $s1251269 $tmp1261270))))

; loop entry $main_inv63
(assert
  (forall (($k1241268 Int) ($i1201264 Int) ($i1231267 Int) ($tmp1261270 Int) ($y1221266 Int) ($s1251269 Int) ($a1191263 (Array Int Int)) ($x1211265 Int))
    (=> (and (= $s1251269 $i1201264)
             (= $k1241268 (+ $i1201264 1))
             (< $i1201264 100000)
             ($main_inv62 $a1191263 $i1201264 $x1211265 $y1221266 $i1231267 $k1241268 $s1251269 $tmp1261270))
        ($main_inv63 $a1191263 $i1201264 $x1211265 $y1221266 $i1231267 $k1241268 $s1251269 $tmp1261270))))

; loop term $main_sum63
(assert
  (forall (($i1201272 Int) ($k1241276 Int) ($y1221274 Int) ($s1251277 Int) ($tmp1261278 Int) ($a1191271 (Array Int Int)) ($i1231275 Int) ($x1211273 Int))
    (=> (and (not (< $k1241276 100000)))
        ($main_sum63 $a1191271 $i1201272 $x1211273 $y1221274 $i1231275 $k1241276 $s1251277 $tmp1261278 $a1191271 $i1201272 $x1211273 $y1221274 $i1231275 $k1241276 $s1251277 $tmp1261278))))

; if then
(assert
  (forall (($i1201272 Int) ($k1241276 Int) ($y1221274 Int) ($s1251277 Int) ($tmp1261278 Int) ($a1191271 (Array Int Int)) ($i1231275 Int) ($x1211273 Int))
    (=> (and (< (select $a1191271 $k1241276) (select $a1191271 $s1251277))
             (< $k1241276 100000)
             ($main_inv63 $a1191271 $i1201272 $x1211273 $y1221274 $i1231275 $k1241276 $s1251277 $tmp1261278))
        ($main_if29 $a1191271 $i1201272 $x1211273 $y1221274 $i1231275 $k1241276 $s1251277 $tmp1261278 $a1191271 $i1201272 $x1211273 $y1221274 $i1231275 $k1241276 $k1241276 $tmp1261278))))

; if else
(assert
  (forall (($i1201272 Int) ($k1241276 Int) ($y1221274 Int) ($s1251277 Int) ($tmp1261278 Int) ($a1191271 (Array Int Int)) ($i1231275 Int) ($x1211273 Int))
    (=> (and (not (< (select $a1191271 $k1241276) (select $a1191271 $s1251277)))
             (< $k1241276 100000)
             ($main_inv63 $a1191271 $i1201272 $x1211273 $y1221274 $i1231275 $k1241276 $s1251277 $tmp1261278))
        ($main_if29 $a1191271 $i1201272 $x1211273 $y1221274 $i1231275 $k1241276 $s1251277 $tmp1261278 $a1191271 $i1201272 $x1211273 $y1221274 $i1231275 $k1241276 $s1251277 $tmp1261278))))

; forwards $main_inv63
(assert
  (forall (($a1191279 (Array Int Int)) ($i1201272 Int) ($k1241276 Int) ($y1221274 Int) ($s1251277 Int) ($k1241284 Int) ($i1231283 Int) ($i1201280 Int) ($tmp1261286 Int) ($s1251285 Int) ($x1211281 Int) ($tmp1261278 Int) ($a1191271 (Array Int Int)) ($y1221282 Int) ($i1231275 Int) ($x1211273 Int))
    (=> (and ($main_if29 $a1191271 $i1201272 $x1211273 $y1221274 $i1231275 $k1241276 $s1251277 $tmp1261278 $a1191279 $i1201280 $x1211281 $y1221282 $i1231283 $k1241284 $s1251285 $tmp1261286))
        ($main_inv63 $a1191279 $i1201280 $x1211281 $y1221282 $i1231283 (+ $k1241284 1) $s1251285 $tmp1261286))))

; backwards $main_sum63
(assert
  (forall (($a1191279 (Array Int Int)) ($a1191287 (Array Int Int)) ($k1241292 Int) ($y1221274 Int) ($y1221290 Int) ($tmp1261294 Int) ($s1251277 Int) ($k1241284 Int) ($i1231283 Int) ($i1201280 Int) ($i1231291 Int) ($i1201272 Int) ($s1251293 Int) ($k1241276 Int) ($i1201288 Int) ($s1251285 Int) ($x1211281 Int) ($tmp1261278 Int) ($a1191271 (Array Int Int)) ($x1211289 Int) ($tmp1261286 Int) ($y1221282 Int) ($i1231275 Int) ($x1211273 Int))
    (=> (and ($main_sum63 $a1191279 $i1201280 $x1211281 $y1221282 $i1231283 (+ $k1241284 1) $s1251285 $tmp1261286 $a1191287 $i1201288 $x1211289 $y1221290 $i1231291 $k1241292 $s1251293 $tmp1261294)
             ($main_if29 $a1191271 $i1201272 $x1211273 $y1221274 $i1231275 $k1241276 $s1251277 $tmp1261278 $a1191279 $i1201280 $x1211281 $y1221282 $i1231283 $k1241284 $s1251285 $tmp1261286))
        ($main_sum63 $a1191271 $i1201272 $x1211273 $y1221274 $i1231275 $k1241276 $s1251277 $tmp1261278 $a1191287 $i1201288 $x1211289 $y1221290 $i1231291 $k1241292 $s1251293 $tmp1261294))))

; if then
(assert
  (forall (($a1191295 (Array Int Int)) ($i1201264 Int) ($i1201296 Int) ($i1231267 Int) ($k1241300 Int) ($i1231299 Int) ($y1221266 Int) ($s1251269 Int) ($a1191263 (Array Int Int)) ($x1211265 Int) ($k1241268 Int) ($y1221298 Int) ($s1251301 Int) ($tmp1261302 Int) ($x1211297 Int) ($tmp1261270 Int))
    (=> (and (= $tmp1261302 (select $a1191295 $s1251301))
             (not (= $s1251301 $i1201296))
             ($main_sum63 $a1191263 $i1201264 $x1211265 $y1221266 $i1231267 $k1241268 $s1251269 $tmp1261270 $a1191295 $i1201296 $x1211297 $y1221298 $i1231299 $k1241300 $s1251301 $tmp1261302)
             (= $s1251269 $i1201264)
             (= $k1241268 (+ $i1201264 1))
             (< $i1201264 100000)
             ($main_inv62 $a1191263 $i1201264 $x1211265 $y1221266 $i1231267 $k1241268 $s1251269 $tmp1261270))
        ($main_if30 $a1191263 $i1201264 $x1211265 $y1221266 $i1231267 $k1241268 $s1251269 $tmp1261270 (store (store $a1191295 $s1251301 (select $a1191295 $i1201296)) $i1201296 $tmp1261302) $i1201296 $x1211297 $y1221298 $i1231299 $k1241300 $s1251301 $tmp1261302))))

; if else
(assert
  (forall (($a1191295 (Array Int Int)) ($i1201264 Int) ($i1201296 Int) ($i1231267 Int) ($k1241300 Int) ($i1231299 Int) ($y1221266 Int) ($s1251269 Int) ($a1191263 (Array Int Int)) ($x1211265 Int) ($k1241268 Int) ($y1221298 Int) ($s1251301 Int) ($tmp1261302 Int) ($x1211297 Int) ($tmp1261270 Int))
    (=> (and (= $s1251301 $i1201296)
             ($main_sum63 $a1191263 $i1201264 $x1211265 $y1221266 $i1231267 $k1241268 $s1251269 $tmp1261270 $a1191295 $i1201296 $x1211297 $y1221298 $i1231299 $k1241300 $s1251301 $tmp1261302)
             (= $s1251269 $i1201264)
             (= $k1241268 (+ $i1201264 1))
             (< $i1201264 100000)
             ($main_inv62 $a1191263 $i1201264 $x1211265 $y1221266 $i1231267 $k1241268 $s1251269 $tmp1261270))
        ($main_if30 $a1191263 $i1201264 $x1211265 $y1221266 $i1231267 $k1241268 $s1251269 $tmp1261270 $a1191295 $i1201296 $x1211297 $y1221298 $i1231299 $k1241300 $s1251301 $tmp1261302))))

; loop entry $main_inv64
(assert
  (forall (($i1231307 Int) ($k1241268 Int) ($tmp1261310 Int) ($x1211305 Int) ($k1241308 Int) ($tmp1261270 Int) ($y1221306 Int) ($y1221266 Int) ($a1191263 (Array Int Int)) ($x1211265 Int) ($i1201264 Int) ($i1201304 Int) ($s1251309 Int) ($i1231267 Int) ($a1191303 (Array Int Int)) ($s1251269 Int))
    (=> (and ($main_if30 $a1191263 $i1201264 $x1211265 $y1221266 $i1231267 $k1241268 $s1251269 $tmp1261270 $a1191303 $i1201304 $x1211305 $y1221306 $i1231307 $k1241308 $s1251309 $tmp1261310))
        ($main_inv64 $a1191303 $i1201304 0 $y1221306 $i1231307 $k1241308 $s1251309 $tmp1261310))))

; loop term $main_sum64
(assert
  (forall (($i1201312 Int) ($tmp1261318 Int) ($k1241316 Int) ($a1191311 (Array Int Int)) ($x1211313 Int) ($y1221314 Int) ($i1231315 Int) ($s1251317 Int))
    (=> (and (not (< $x1211313 $i1201312)))
        ($main_sum64 $a1191311 $i1201312 $x1211313 $y1221314 $i1231315 $k1241316 $s1251317 $tmp1261318 $a1191311 $i1201312 $x1211313 $y1221314 $i1231315 $k1241316 $s1251317 $tmp1261318))))

; loop entry $main_inv65
(assert
  (forall (($i1201312 Int) ($tmp1261318 Int) ($k1241316 Int) ($a1191311 (Array Int Int)) ($x1211313 Int) ($y1221314 Int) ($i1231315 Int) ($s1251317 Int))
    (=> (and (< $x1211313 $i1201312)
             ($main_inv64 $a1191311 $i1201312 $x1211313 $y1221314 $i1231315 $k1241316 $s1251317 $tmp1261318))
        ($main_inv65 $a1191311 $i1201312 $x1211313 (+ $x1211313 1) $i1231315 $k1241316 $s1251317 $tmp1261318))))

; loop term $main_sum65
(assert
  (forall (($s1251325 Int) ($k1241324 Int) ($a1191319 (Array Int Int)) ($tmp1261326 Int) ($i1201320 Int) ($y1221322 Int) ($x1211321 Int) ($i1231323 Int))
    (=> (and (not (< $y1221322 $i1201320)))
        ($main_sum65 $a1191319 $i1201320 $x1211321 $y1221322 $i1231323 $k1241324 $s1251325 $tmp1261326 $a1191319 $i1201320 $x1211321 $y1221322 $i1231323 $k1241324 $s1251325 $tmp1261326))))

; __VERIFIER_assert precondition
(assert
  (forall (($s1251325 Int) ($k1241324 Int) ($a1191319 (Array Int Int)) ($tmp1261326 Int) ($i1201320 Int) ($y1221322 Int) ($x1211321 Int) ($i1231323 Int))
    (=> (and (< $y1221322 $i1201320)
             ($main_inv65 $a1191319 $i1201320 $x1211321 $y1221322 $i1231323 $k1241324 $s1251325 $tmp1261326))
        ($__VERIFIER_assert_pre (ite (<= (select $a1191319 $x1211321) (select $a1191319 $y1221322)) 1 0)))))

; forwards $main_inv65
(assert
  (forall (($s1251325 Int) ($k1241324 Int) ($a1191319 (Array Int Int)) ($tmp1261326 Int) ($i1201320 Int) ($y1221322 Int) ($x1211321 Int) ($i1231323 Int))
    (=> (and (__VERIFIER_assert (ite (<= (select $a1191319 $x1211321) (select $a1191319 $y1221322)) 1 0))
             (< $y1221322 $i1201320)
             ($main_inv65 $a1191319 $i1201320 $x1211321 $y1221322 $i1231323 $k1241324 $s1251325 $tmp1261326))
        ($main_inv65 $a1191319 $i1201320 $x1211321 (+ $y1221322 1) $i1231323 $k1241324 $s1251325 $tmp1261326))))

; backwards $main_sum65
(assert
  (forall (($s1251325 Int) ($k1241324 Int) ($i1231331 Int) ($a1191327 (Array Int Int)) ($i1201328 Int) ($k1241332 Int) ($i1201320 Int) ($y1221322 Int) ($y1221330 Int) ($tmp1261334 Int) ($a1191319 (Array Int Int)) ($s1251333 Int) ($tmp1261326 Int) ($x1211321 Int) ($i1231323 Int) ($x1211329 Int))
    (=> (and ($main_sum65 $a1191319 $i1201320 $x1211321 (+ $y1221322 1) $i1231323 $k1241324 $s1251325 $tmp1261326 $a1191327 $i1201328 $x1211329 $y1221330 $i1231331 $k1241332 $s1251333 $tmp1261334)
             (__VERIFIER_assert (ite (<= (select $a1191319 $x1211321) (select $a1191319 $y1221322)) 1 0))
             (< $y1221322 $i1201320))
        ($main_sum65 $a1191319 $i1201320 $x1211321 $y1221322 $i1231323 $k1241324 $s1251325 $tmp1261326 $a1191327 $i1201328 $x1211329 $y1221330 $i1231331 $k1241332 $s1251333 $tmp1261334))))

; forwards $main_inv64
(assert
  (forall (($y1221338 Int) ($i1231339 Int) ($x1211337 Int) ($tmp1261318 Int) ($k1241316 Int) ($a1191311 (Array Int Int)) ($i1201336 Int) ($k1241340 Int) ($s1251341 Int) ($a1191335 (Array Int Int)) ($x1211313 Int) ($y1221314 Int) ($i1231315 Int) ($s1251317 Int) ($i1201312 Int) ($tmp1261342 Int))
    (=> (and ($main_sum65 $a1191311 $i1201312 $x1211313 (+ $x1211313 1) $i1231315 $k1241316 $s1251317 $tmp1261318 $a1191335 $i1201336 $x1211337 $y1221338 $i1231339 $k1241340 $s1251341 $tmp1261342)
             (< $x1211313 $i1201312)
             ($main_inv64 $a1191311 $i1201312 $x1211313 $y1221314 $i1231315 $k1241316 $s1251317 $tmp1261318))
        ($main_inv64 $a1191335 $i1201336 (+ $x1211337 1) $y1221338 $i1231339 $k1241340 $s1251341 $tmp1261342))))

; backwards $main_sum64
(assert
  (forall (($x1211345 Int) ($y1221338 Int) ($k1241348 Int) ($i1231339 Int) ($x1211337 Int) ($tmp1261318 Int) ($k1241316 Int) ($i1201336 Int) ($k1241340 Int) ($a1191335 (Array Int Int)) ($x1211313 Int) ($y1221314 Int) ($s1251349 Int) ($i1201344 Int) ($i1231315 Int) ($s1251317 Int) ($i1201312 Int) ($tmp1261342 Int) ($i1231347 Int) ($a1191311 (Array Int Int)) ($a1191343 (Array Int Int)) ($s1251341 Int) ($tmp1261350 Int) ($y1221346 Int))
    (=> (and ($main_sum64 $a1191335 $i1201336 (+ $x1211337 1) $y1221338 $i1231339 $k1241340 $s1251341 $tmp1261342 $a1191343 $i1201344 $x1211345 $y1221346 $i1231347 $k1241348 $s1251349 $tmp1261350)
             ($main_sum65 $a1191311 $i1201312 $x1211313 (+ $x1211313 1) $i1231315 $k1241316 $s1251317 $tmp1261318 $a1191335 $i1201336 $x1211337 $y1221338 $i1231339 $k1241340 $s1251341 $tmp1261342)
             (< $x1211313 $i1201312))
        ($main_sum64 $a1191311 $i1201312 $x1211313 $y1221314 $i1231315 $k1241316 $s1251317 $tmp1261318 $a1191343 $i1201344 $x1211345 $y1221346 $i1231347 $k1241348 $s1251349 $tmp1261350))))

; loop entry $main_inv66
(assert
  (forall (($i1231307 Int) ($k1241268 Int) ($y1221354 Int) ($k1241356 Int) ($tmp1261310 Int) ($x1211305 Int) ($x1211353 Int) ($tmp1261270 Int) ($y1221306 Int) ($x1211265 Int) ($i1201264 Int) ($i1201304 Int) ($i1201352 Int) ($s1251309 Int) ($i1231267 Int) ($a1191351 (Array Int Int)) ($k1241308 Int) ($s1251357 Int) ($y1221266 Int) ($a1191303 (Array Int Int)) ($s1251269 Int) ($tmp1261358 Int) ($a1191263 (Array Int Int)) ($i1231355 Int))
    (=> (and ($main_sum64 $a1191303 $i1201304 0 $y1221306 $i1231307 $k1241308 $s1251309 $tmp1261310 $a1191351 $i1201352 $x1211353 $y1221354 $i1231355 $k1241356 $s1251357 $tmp1261358)
             ($main_if30 $a1191263 $i1201264 $x1211265 $y1221266 $i1231267 $k1241268 $s1251269 $tmp1261270 $a1191303 $i1201304 $x1211305 $y1221306 $i1231307 $k1241308 $s1251309 $tmp1261310))
        ($main_inv66 $a1191351 $i1201352 0 $y1221354 $i1231355 $k1241356 $s1251357 $tmp1261358))))

; loop term $main_sum66
(assert
  (forall (($k1241364 Int) ($a1191359 (Array Int Int)) ($i1201360 Int) ($y1221362 Int) ($s1251365 Int) ($i1231363 Int) ($tmp1261366 Int) ($x1211361 Int))
    (=> (and (not (< $x1211361 100000)))
        ($main_sum66 $a1191359 $i1201360 $x1211361 $y1221362 $i1231363 $k1241364 $s1251365 $tmp1261366 $a1191359 $i1201360 $x1211361 $y1221362 $i1231363 $k1241364 $s1251365 $tmp1261366))))

; __VERIFIER_assert precondition
(assert
  (forall (($k1241364 Int) ($a1191359 (Array Int Int)) ($i1201360 Int) ($y1221362 Int) ($s1251365 Int) ($i1231363 Int) ($tmp1261366 Int) ($x1211361 Int))
    (=> (and (< $x1211361 100000)
             ($main_inv66 $a1191359 $i1201360 $x1211361 $y1221362 $i1231363 $k1241364 $s1251365 $tmp1261366))
        ($__VERIFIER_assert_pre (ite (>= (select $a1191359 $x1211361) (select $a1191359 $i1201360)) 1 0)))))

; forwards $main_inv66
(assert
  (forall (($k1241364 Int) ($a1191359 (Array Int Int)) ($i1201360 Int) ($y1221362 Int) ($s1251365 Int) ($i1231363 Int) ($tmp1261366 Int) ($x1211361 Int))
    (=> (and (__VERIFIER_assert (ite (>= (select $a1191359 $x1211361) (select $a1191359 $i1201360)) 1 0))
             (< $x1211361 100000)
             ($main_inv66 $a1191359 $i1201360 $x1211361 $y1221362 $i1231363 $k1241364 $s1251365 $tmp1261366))
        ($main_inv66 $a1191359 $i1201360 (+ $x1211361 1) $y1221362 $i1231363 $k1241364 $s1251365 $tmp1261366))))

; backwards $main_sum66
(assert
  (forall (($k1241364 Int) ($a1191367 (Array Int Int)) ($x1211369 Int) ($a1191359 (Array Int Int)) ($i1201360 Int) ($y1221362 Int) ($k1241372 Int) ($i1201368 Int) ($tmp1261374 Int) ($i1231371 Int) ($i1231363 Int) ($tmp1261366 Int) ($x1211361 Int) ($y1221370 Int) ($s1251373 Int) ($s1251365 Int))
    (=> (and ($main_sum66 $a1191359 $i1201360 (+ $x1211361 1) $y1221362 $i1231363 $k1241364 $s1251365 $tmp1261366 $a1191367 $i1201368 $x1211369 $y1221370 $i1231371 $k1241372 $s1251373 $tmp1261374)
             (__VERIFIER_assert (ite (>= (select $a1191359 $x1211361) (select $a1191359 $i1201360)) 1 0))
             (< $x1211361 100000))
        ($main_sum66 $a1191359 $i1201360 $x1211361 $y1221362 $i1231363 $k1241364 $s1251365 $tmp1261366 $a1191367 $i1201368 $x1211369 $y1221370 $i1231371 $k1241372 $s1251373 $tmp1261374))))

; forwards $main_inv62
(assert
  (forall (($s1251381 Int) ($i1231307 Int) ($k1241268 Int) ($y1221354 Int) ($i1201376 Int) ($tmp1261310 Int) ($x1211305 Int) ($y1221378 Int) ($tmp1261270 Int) ($y1221306 Int) ($x1211265 Int) ($k1241356 Int) ($k1241380 Int) ($x1211377 Int) ($i1201264 Int) ($i1201304 Int) ($tmp1261382 Int) ($a1191375 (Array Int Int)) ($i1201352 Int) ($s1251309 Int) ($i1231267 Int) ($i1231379 Int) ($x1211353 Int) ($a1191351 (Array Int Int)) ($k1241308 Int) ($s1251357 Int) ($y1221266 Int) ($a1191303 (Array Int Int)) ($s1251269 Int) ($tmp1261358 Int) ($a1191263 (Array Int Int)) ($i1231355 Int))
    (=> (and ($main_sum66 $a1191351 $i1201352 0 $y1221354 $i1231355 $k1241356 $s1251357 $tmp1261358 $a1191375 $i1201376 $x1211377 $y1221378 $i1231379 $k1241380 $s1251381 $tmp1261382)
             ($main_sum64 $a1191303 $i1201304 0 $y1221306 $i1231307 $k1241308 $s1251309 $tmp1261310 $a1191351 $i1201352 $x1211353 $y1221354 $i1231355 $k1241356 $s1251357 $tmp1261358)
             ($main_if30 $a1191263 $i1201264 $x1211265 $y1221266 $i1231267 $k1241268 $s1251269 $tmp1261270 $a1191303 $i1201304 $x1211305 $y1221306 $i1231307 $k1241308 $s1251309 $tmp1261310))
        ($main_inv62 $a1191375 (+ $i1201376 1) $x1211377 $y1221378 $i1231379 $k1241380 $s1251381 $tmp1261382))))

; backwards $main_sum62
(assert
  (forall (($i1231307 Int) ($k1241268 Int) ($a1191383 (Array Int Int)) ($y1221354 Int) ($i1231387 Int) ($i1201376 Int) ($tmp1261310 Int) ($y1221378 Int) ($tmp1261270 Int) ($y1221306 Int) ($x1211265 Int) ($s1251381 Int) ($s1251389 Int) ($k1241388 Int) ($k1241356 Int) ($k1241380 Int) ($x1211377 Int) ($i1201264 Int) ($i1201304 Int) ($tmp1261382 Int) ($a1191375 (Array Int Int)) ($i1201352 Int) ($s1251309 Int) ($i1231267 Int) ($x1211305 Int) ($i1201384 Int) ($i1231379 Int) ($x1211353 Int) ($x1211385 Int) ($a1191351 (Array Int Int)) ($k1241308 Int) ($s1251357 Int) ($y1221266 Int) ($y1221386 Int) ($a1191303 (Array Int Int)) ($tmp1261390 Int) ($s1251269 Int) ($tmp1261358 Int) ($a1191263 (Array Int Int)) ($i1231355 Int))
    (=> (and ($main_sum62 $a1191375 (+ $i1201376 1) $x1211377 $y1221378 $i1231379 $k1241380 $s1251381 $tmp1261382 $a1191383 $i1201384 $x1211385 $y1221386 $i1231387 $k1241388 $s1251389 $tmp1261390)
             ($main_sum66 $a1191351 $i1201352 0 $y1221354 $i1231355 $k1241356 $s1251357 $tmp1261358 $a1191375 $i1201376 $x1211377 $y1221378 $i1231379 $k1241380 $s1251381 $tmp1261382)
             ($main_sum64 $a1191303 $i1201304 0 $y1221306 $i1231307 $k1241308 $s1251309 $tmp1261310 $a1191351 $i1201352 $x1211353 $y1221354 $i1231355 $k1241356 $s1251357 $tmp1261358)
             ($main_if30 $a1191263 $i1201264 $x1211265 $y1221266 $i1231267 $k1241268 $s1251269 $tmp1261270 $a1191303 $i1201304 $x1211305 $y1221306 $i1231307 $k1241308 $s1251309 $tmp1261310))
        ($main_sum62 $a1191263 $i1201264 $x1211265 $y1221266 $i1231267 $k1241268 $s1251269 $tmp1261270 $a1191383 $i1201384 $x1211385 $y1221386 $i1231387 $k1241388 $s1251389 $tmp1261390))))

; loop entry $main_inv67
(assert
  (forall (($y1221394 Int) ($i1201256 Int) ($x1211393 Int) ($i120 Int) ($i123 Int) ($y1221258 Int) ($k124 Int) ($x121 Int) ($k1241396 Int) ($i1201392 Int) ($i1231259 Int) ($i1231395 Int) ($x1211257 Int) ($tmp1261262 Int) ($tmp126 Int) ($s1251261 Int) ($a1191255 (Array Int Int)) ($k1241260 Int) ($a1191391 (Array Int Int)) ($s125 Int) ($s1251397 Int) ($tmp1261398 Int) ($y122 Int) ($a119 (Array Int Int)))
    (=> (and ($main_sum62 $a1191255 0 $x1211257 $y1221258 $i1231259 $k1241260 $s1251261 $tmp1261262 $a1191391 $i1201392 $x1211393 $y1221394 $i1231395 $k1241396 $s1251397 $tmp1261398)
             ($main_sum61 $a119 $i120 $x121 $y122 $i123 $k124 $s125 $tmp126 $a1191255 $i1201256 $x1211257 $y1221258 $i1231259 $k1241260 $s1251261 $tmp1261262)
             (= $i123 0)
             (= $i120 0))
        ($main_inv67 $a1191391 $i1201392 0 $y1221394 $i1231395 $k1241396 $s1251397 $tmp1261398))))

; loop term $main_sum67
(assert
  (forall (($s1251405 Int) ($i1231403 Int) ($k1241404 Int) ($tmp1261406 Int) ($y1221402 Int) ($i1201400 Int) ($x1211401 Int) ($a1191399 (Array Int Int)))
    (=> (and (not (< $x1211401 100000)))
        ($main_sum67 $a1191399 $i1201400 $x1211401 $y1221402 $i1231403 $k1241404 $s1251405 $tmp1261406 $a1191399 $i1201400 $x1211401 $y1221402 $i1231403 $k1241404 $s1251405 $tmp1261406))))

; loop entry $main_inv68
(assert
  (forall (($s1251405 Int) ($i1231403 Int) ($k1241404 Int) ($tmp1261406 Int) ($y1221402 Int) ($i1201400 Int) ($x1211401 Int) ($a1191399 (Array Int Int)))
    (=> (and (< $x1211401 100000)
             ($main_inv67 $a1191399 $i1201400 $x1211401 $y1221402 $i1231403 $k1241404 $s1251405 $tmp1261406))
        ($main_inv68 $a1191399 $i1201400 $x1211401 (+ $x1211401 1) $i1231403 $k1241404 $s1251405 $tmp1261406))))

; loop term $main_sum68
(assert
  (forall (($i1231411 Int) ($k1241412 Int) ($s1251413 Int) ($x1211409 Int) ($tmp1261414 Int) ($i1201408 Int) ($y1221410 Int) ($a1191407 (Array Int Int)))
    (=> (and (not (< $y1221410 100000)))
        ($main_sum68 $a1191407 $i1201408 $x1211409 $y1221410 $i1231411 $k1241412 $s1251413 $tmp1261414 $a1191407 $i1201408 $x1211409 $y1221410 $i1231411 $k1241412 $s1251413 $tmp1261414))))

; __VERIFIER_assert precondition
(assert
  (forall (($i1231411 Int) ($k1241412 Int) ($s1251413 Int) ($x1211409 Int) ($tmp1261414 Int) ($i1201408 Int) ($y1221410 Int) ($a1191407 (Array Int Int)))
    (=> (and (< $y1221410 100000)
             ($main_inv68 $a1191407 $i1201408 $x1211409 $y1221410 $i1231411 $k1241412 $s1251413 $tmp1261414))
        ($__VERIFIER_assert_pre (ite (<= (select $a1191407 $x1211409) (select $a1191407 $y1221410)) 1 0)))))

; forwards $main_inv68
(assert
  (forall (($i1231411 Int) ($k1241412 Int) ($s1251413 Int) ($x1211409 Int) ($tmp1261414 Int) ($i1201408 Int) ($y1221410 Int) ($a1191407 (Array Int Int)))
    (=> (and (__VERIFIER_assert (ite (<= (select $a1191407 $x1211409) (select $a1191407 $y1221410)) 1 0))
             (< $y1221410 100000)
             ($main_inv68 $a1191407 $i1201408 $x1211409 $y1221410 $i1231411 $k1241412 $s1251413 $tmp1261414))
        ($main_inv68 $a1191407 $i1201408 $x1211409 (+ $y1221410 1) $i1231411 $k1241412 $s1251413 $tmp1261414))))

; backwards $main_sum68
(assert
  (forall (($i1231419 Int) ($i1231411 Int) ($k1241412 Int) ($s1251413 Int) ($a1191415 (Array Int Int)) ($tmp1261414 Int) ($y1221418 Int) ($tmp1261422 Int) ($i1201408 Int) ($i1201416 Int) ($a1191407 (Array Int Int)) ($k1241420 Int) ($s1251421 Int) ($x1211409 Int) ($x1211417 Int) ($y1221410 Int))
    (=> (and ($main_sum68 $a1191407 $i1201408 $x1211409 (+ $y1221410 1) $i1231411 $k1241412 $s1251413 $tmp1261414 $a1191415 $i1201416 $x1211417 $y1221418 $i1231419 $k1241420 $s1251421 $tmp1261422)
             (__VERIFIER_assert (ite (<= (select $a1191407 $x1211409) (select $a1191407 $y1221410)) 1 0))
             (< $y1221410 100000))
        ($main_sum68 $a1191407 $i1201408 $x1211409 $y1221410 $i1231411 $k1241412 $s1251413 $tmp1261414 $a1191415 $i1201416 $x1211417 $y1221418 $i1231419 $k1241420 $s1251421 $tmp1261422))))

; forwards $main_inv67
(assert
  (forall (($a1191423 (Array Int Int)) ($i1231403 Int) ($k1241428 Int) ($x1211425 Int) ($i1201424 Int) ($y1221426 Int) ($tmp1261406 Int) ($i1201400 Int) ($tmp1261430 Int) ($s1251405 Int) ($x1211401 Int) ($a1191399 (Array Int Int)) ($k1241404 Int) ($i1231427 Int) ($y1221402 Int) ($s1251429 Int))
    (=> (and ($main_sum68 $a1191399 $i1201400 $x1211401 (+ $x1211401 1) $i1231403 $k1241404 $s1251405 $tmp1261406 $a1191423 $i1201424 $x1211425 $y1221426 $i1231427 $k1241428 $s1251429 $tmp1261430)
             (< $x1211401 100000)
             ($main_inv67 $a1191399 $i1201400 $x1211401 $y1221402 $i1231403 $k1241404 $s1251405 $tmp1261406))
        ($main_inv67 $a1191423 $i1201424 (+ $x1211425 1) $y1221426 $i1231427 $k1241428 $s1251429 $tmp1261430))))

; backwards $main_sum67
(assert
  (forall (($a1191423 (Array Int Int)) ($s1251437 Int) ($k1241428 Int) ($x1211425 Int) ($i1201424 Int) ($tmp1261438 Int) ($a1191431 (Array Int Int)) ($k1241436 Int) ($tmp1261406 Int) ($tmp1261430 Int) ($s1251405 Int) ($i1231403 Int) ($i1231435 Int) ($x1211401 Int) ($a1191399 (Array Int Int)) ($y1221434 Int) ($y1221426 Int) ($k1241404 Int) ($i1201432 Int) ($i1231427 Int) ($y1221402 Int) ($s1251429 Int) ($x1211433 Int) ($i1201400 Int))
    (=> (and ($main_sum67 $a1191423 $i1201424 (+ $x1211425 1) $y1221426 $i1231427 $k1241428 $s1251429 $tmp1261430 $a1191431 $i1201432 $x1211433 $y1221434 $i1231435 $k1241436 $s1251437 $tmp1261438)
             ($main_sum68 $a1191399 $i1201400 $x1211401 (+ $x1211401 1) $i1231403 $k1241404 $s1251405 $tmp1261406 $a1191423 $i1201424 $x1211425 $y1221426 $i1231427 $k1241428 $s1251429 $tmp1261430)
             (< $x1211401 100000))
        ($main_sum67 $a1191399 $i1201400 $x1211401 $y1221402 $i1231403 $k1241404 $s1251405 $tmp1261406 $a1191431 $i1201432 $x1211433 $y1221434 $i1231435 $k1241436 $s1251437 $tmp1261438))))

(check-sat)
