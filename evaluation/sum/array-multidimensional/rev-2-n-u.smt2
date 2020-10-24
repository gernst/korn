(set-logic HORN)

(declare-fun $main_inv66 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv70 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum69 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv65 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv67 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv68 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv69 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum68 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum65 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum66 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum70 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if30 (Int Int) Bool)
(declare-fun $main_sum67 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond1285 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond1285))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if30 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond1286 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if30 cond cond1286))
        (__VERIFIER_assert cond1286))))

; loop entry $main_inv65
(assert
  (forall (($B93 (Array Int (Array Int Int))) ($A92 (Array Int (Array Int Int))) ($n90 Int) ($p91 Int) ($m89 Int))
    (=> (and (= $p91 1800)
             (= $n90 1500)
             (= $m89 1000))
        ($main_inv65 0 0 $m89 $n90 $p91 $A92 $B93))))

; loop term $main_sum65
(assert
  (forall (($m891289 Int) ($p911291 Int) ($j881288 Int) ($n901290 Int) ($B931293 (Array Int (Array Int Int))) ($i871287 Int) ($A921292 (Array Int (Array Int Int))))
    (=> (and (not (< $i871287 $m891289)))
        ($main_sum65 $i871287 $j881288 $m891289 $n901290 $p911291 $A921292 $B931293 $i871287 $j881288 $m891289 $n901290 $p911291 $A921292 $B931293))))

; loop entry $main_inv66
(assert
  (forall (($m891289 Int) ($p911291 Int) ($j881288 Int) ($n901290 Int) ($B931293 (Array Int (Array Int Int))) ($i871287 Int) ($A921292 (Array Int (Array Int Int))))
    (=> (and (< $i871287 $m891289)
             ($main_inv65 $i871287 $j881288 $m891289 $n901290 $p911291 $A921292 $B931293))
        ($main_inv66 $i871287 0 $m891289 $n901290 $p911291 $A921292 $B931293))))

; loop term $main_sum66
(assert
  (forall (($n901297 Int) ($m891296 Int) ($B931300 (Array Int (Array Int Int))) ($i871294 Int) ($j881295 Int) ($p911298 Int) ($A921299 (Array Int (Array Int Int))))
    (=> (and (not (< $j881295 $n901297)))
        ($main_sum66 $i871294 $j881295 $m891296 $n901297 $p911298 $A921299 $B931300 $i871294 $j881295 $m891296 $n901297 $p911298 $A921299 $B931300))))

; forwards $main_inv66
(assert
  (forall (($n901297 Int) ($m891296 Int) ($B931300 (Array Int (Array Int Int))) ($i871294 Int) ($j881295 Int) ($p911298 Int) ($A921299 (Array Int (Array Int Int))) ($int1301 Int))
    (=> (and (<= (- 2147483648) $int1301)
             (<= $int1301 2147483647)
             (< $j881295 $n901297)
             ($main_inv66 $i871294 $j881295 $m891296 $n901297 $p911298 $A921299 $B931300))
        ($main_inv66 $i871294 (+ $j881295 1) $m891296 $n901297 $p911298 $A921299 (store $B931300 $i871294 (store (select $B931300 $i871294) $j881295 $int1301))))))

; backwards $main_sum66
(assert
  (forall (($B931308 (Array Int (Array Int Int))) ($i871302 Int) ($n901297 Int) ($m891296 Int) ($m891304 Int) ($i871294 Int) ($p911306 Int) ($A921307 (Array Int (Array Int Int))) ($j881295 Int) ($p911298 Int) ($A921299 (Array Int (Array Int Int))) ($n901305 Int) ($int1301 Int) ($B931300 (Array Int (Array Int Int))) ($j881303 Int))
    (=> (and ($main_sum66 $i871294 (+ $j881295 1) $m891296 $n901297 $p911298 $A921299 (store $B931300 $i871294 (store (select $B931300 $i871294) $j881295 $int1301)) $i871302 $j881303 $m891304 $n901305 $p911306 $A921307 $B931308)
             (<= (- 2147483648) $int1301)
             (<= $int1301 2147483647)
             (< $j881295 $n901297))
        ($main_sum66 $i871294 $j881295 $m891296 $n901297 $p911298 $A921299 $B931300 $i871302 $j881303 $m891304 $n901305 $p911306 $A921307 $B931308))))

; forwards $main_inv65
(assert
  (forall (($m891289 Int) ($p911291 Int) ($j881288 Int) ($B931315 (Array Int (Array Int Int))) ($p911313 Int) ($n901290 Int) ($j881310 Int) ($n901312 Int) ($A921314 (Array Int (Array Int Int))) ($B931293 (Array Int (Array Int Int))) ($i871287 Int) ($A921292 (Array Int (Array Int Int))) ($i871309 Int) ($m891311 Int))
    (=> (and ($main_sum66 $i871287 0 $m891289 $n901290 $p911291 $A921292 $B931293 $i871309 $j881310 $m891311 $n901312 $p911313 $A921314 $B931315)
             (< $i871287 $m891289)
             ($main_inv65 $i871287 $j881288 $m891289 $n901290 $p911291 $A921292 $B931293))
        ($main_inv65 (+ $i871309 1) $j881310 $m891311 $n901312 $p911313 $A921314 $B931315))))

; backwards $main_sum65
(assert
  (forall (($n901319 Int) ($m891289 Int) ($p911291 Int) ($j881288 Int) ($B931315 (Array Int (Array Int Int))) ($p911320 Int) ($p911313 Int) ($n901290 Int) ($j881310 Int) ($j881317 Int) ($m891318 Int) ($A921314 (Array Int (Array Int Int))) ($i871316 Int) ($B931293 (Array Int (Array Int Int))) ($i871287 Int) ($n901312 Int) ($B931322 (Array Int (Array Int Int))) ($i871309 Int) ($m891311 Int) ($A921292 (Array Int (Array Int Int))) ($A921321 (Array Int (Array Int Int))))
    (=> (and ($main_sum65 (+ $i871309 1) $j881310 $m891311 $n901312 $p911313 $A921314 $B931315 $i871316 $j881317 $m891318 $n901319 $p911320 $A921321 $B931322)
             ($main_sum66 $i871287 0 $m891289 $n901290 $p911291 $A921292 $B931293 $i871309 $j881310 $m891311 $n901312 $p911313 $A921314 $B931315)
             (< $i871287 $m891289))
        ($main_sum65 $i871287 $j881288 $m891289 $n901290 $p911291 $A921292 $B931293 $i871316 $j881317 $m891318 $n901319 $p911320 $A921321 $B931322))))

; loop entry $main_inv67
(assert
  (forall (($B93 (Array Int (Array Int Int))) ($p911327 Int) ($B931329 (Array Int (Array Int Int))) ($A92 (Array Int (Array Int Int))) ($n90 Int) ($m891325 Int) ($i871323 Int) ($n901326 Int) ($A921328 (Array Int (Array Int Int))) ($p91 Int) ($m89 Int) ($j881324 Int))
    (=> (and ($main_sum65 0 0 $m89 $n90 $p91 $A92 $B93 $i871323 $j881324 $m891325 $n901326 $p911327 $A921328 $B931329)
             (= $p91 1800)
             (= $n90 1500)
             (= $m89 1000))
        ($main_inv67 0 0 $m891325 $n901326 $p911327 $A921328 $B931329))))

; loop term $main_sum67
(assert
  (forall (($j881331 Int) ($n901333 Int) ($p911334 Int) ($i871330 Int) ($A921335 (Array Int (Array Int Int))) ($B931336 (Array Int (Array Int Int))) ($m891332 Int))
    (=> (and (not (< $i871330 $m891332)))
        ($main_sum67 $i871330 $j881331 $m891332 $n901333 $p911334 $A921335 $B931336 $i871330 $j881331 $m891332 $n901333 $p911334 $A921335 $B931336))))

; loop entry $main_inv68
(assert
  (forall (($j881331 Int) ($n901333 Int) ($p911334 Int) ($i871330 Int) ($A921335 (Array Int (Array Int Int))) ($B931336 (Array Int (Array Int Int))) ($m891332 Int))
    (=> (and (< $i871330 $m891332)
             ($main_inv67 $i871330 $j881331 $m891332 $n901333 $p911334 $A921335 $B931336))
        ($main_inv68 $i871330 0 $m891332 $n901333 $p911334 $A921335 $B931336))))

; loop term $main_sum68
(assert
  (forall (($m891339 Int) ($j881338 Int) ($B931343 (Array Int (Array Int Int))) ($i871337 Int) ($n901340 Int) ($p911341 Int) ($A921342 (Array Int (Array Int Int))))
    (=> (and (not (< $j881338 $n901340)))
        ($main_sum68 $i871337 $j881338 $m891339 $n901340 $p911341 $A921342 $B931343 $i871337 $j881338 $m891339 $n901340 $p911341 $A921342 $B931343))))

; forwards $main_inv68
(assert
  (forall (($m891339 Int) ($j881338 Int) ($B931343 (Array Int (Array Int Int))) ($i871337 Int) ($n901340 Int) ($p911341 Int) ($A921342 (Array Int (Array Int Int))))
    (=> (and (< $j881338 $n901340)
             ($main_inv68 $i871337 $j881338 $m891339 $n901340 $p911341 $A921342 $B931343))
        ($main_inv68 $i871337 (+ $j881338 1) $m891339 $n901340 $p911341 (store $A921342 $i871337 (store (select $A921342 $i871337) $j881338 (select (select $B931343 (- (- $m891339 $i871337) 1)) (- (- $n901340 $j881338) 1)))) $B931343))))

; backwards $main_sum68
(assert
  (forall (($m891339 Int) ($B931350 (Array Int (Array Int Int))) ($j881338 Int) ($i871337 Int) ($j881345 Int) ($n901340 Int) ($p911341 Int) ($i871344 Int) ($A921342 (Array Int (Array Int Int))) ($m891346 Int) ($B931343 (Array Int (Array Int Int))) ($A921349 (Array Int (Array Int Int))) ($n901347 Int) ($p911348 Int))
    (=> (and ($main_sum68 $i871337 (+ $j881338 1) $m891339 $n901340 $p911341 (store $A921342 $i871337 (store (select $A921342 $i871337) $j881338 (select (select $B931343 (- (- $m891339 $i871337) 1)) (- (- $n901340 $j881338) 1)))) $B931343 $i871344 $j881345 $m891346 $n901347 $p911348 $A921349 $B931350)
             (< $j881338 $n901340))
        ($main_sum68 $i871337 $j881338 $m891339 $n901340 $p911341 $A921342 $B931343 $i871344 $j881345 $m891346 $n901347 $p911348 $A921349 $B931350))))

; forwards $main_inv67
(assert
  (forall (($m891353 Int) ($j881331 Int) ($p911334 Int) ($i871351 Int) ($j881352 Int) ($B931357 (Array Int (Array Int Int))) ($B931336 (Array Int (Array Int Int))) ($m891332 Int) ($p911355 Int) ($n901333 Int) ($A921356 (Array Int (Array Int Int))) ($i871330 Int) ($A921335 (Array Int (Array Int Int))) ($n901354 Int))
    (=> (and ($main_sum68 $i871330 0 $m891332 $n901333 $p911334 $A921335 $B931336 $i871351 $j881352 $m891353 $n901354 $p911355 $A921356 $B931357)
             (< $i871330 $m891332)
             ($main_inv67 $i871330 $j881331 $m891332 $n901333 $p911334 $A921335 $B931336))
        ($main_inv67 (+ $i871351 1) $j881352 $m891353 $n901354 $p911355 $A921356 $B931357))))

; backwards $main_sum67
(assert
  (forall (($m891353 Int) ($j881331 Int) ($B931364 (Array Int (Array Int Int))) ($p911334 Int) ($j881352 Int) ($B931357 (Array Int (Array Int Int))) ($m891360 Int) ($B931336 (Array Int (Array Int Int))) ($m891332 Int) ($i871358 Int) ($A921363 (Array Int (Array Int Int))) ($p911355 Int) ($n901333 Int) ($i871351 Int) ($p911362 Int) ($A921356 (Array Int (Array Int Int))) ($i871330 Int) ($A921335 (Array Int (Array Int Int))) ($n901354 Int) ($j881359 Int) ($n901361 Int))
    (=> (and ($main_sum67 (+ $i871351 1) $j881352 $m891353 $n901354 $p911355 $A921356 $B931357 $i871358 $j881359 $m891360 $n901361 $p911362 $A921363 $B931364)
             ($main_sum68 $i871330 0 $m891332 $n901333 $p911334 $A921335 $B931336 $i871351 $j881352 $m891353 $n901354 $p911355 $A921356 $B931357)
             (< $i871330 $m891332))
        ($main_sum67 $i871330 $j881331 $m891332 $n901333 $p911334 $A921335 $B931336 $i871358 $j881359 $m891360 $n901361 $p911362 $A921363 $B931364))))

; loop entry $main_inv69
(assert
  (forall (($i871365 Int) ($B931371 (Array Int (Array Int Int))) ($j881366 Int) ($p911327 Int) ($m891367 Int) ($p911369 Int) ($B931329 (Array Int (Array Int Int))) ($A92 (Array Int (Array Int Int))) ($n90 Int) ($A921370 (Array Int (Array Int Int))) ($B93 (Array Int (Array Int Int))) ($m891325 Int) ($i871323 Int) ($n901326 Int) ($A921328 (Array Int (Array Int Int))) ($p91 Int) ($n901368 Int) ($m89 Int) ($j881324 Int))
    (=> (and ($main_sum67 0 0 $m891325 $n901326 $p911327 $A921328 $B931329 $i871365 $j881366 $m891367 $n901368 $p911369 $A921370 $B931371)
             ($main_sum65 0 0 $m89 $n90 $p91 $A92 $B93 $i871323 $j881324 $m891325 $n901326 $p911327 $A921328 $B931329)
             (= $p91 1800)
             (= $n90 1500)
             (= $m89 1000))
        ($main_inv69 0 0 $m891367 $n901368 $p911369 $A921370 $B931371))))

; loop term $main_sum69
(assert
  (forall (($p911376 Int) ($j881373 Int) ($A921377 (Array Int (Array Int Int))) ($m891374 Int) ($B931378 (Array Int (Array Int Int))) ($i871372 Int) ($n901375 Int))
    (=> (and (not (< $i871372 $m891374)))
        ($main_sum69 $i871372 $j881373 $m891374 $n901375 $p911376 $A921377 $B931378 $i871372 $j881373 $m891374 $n901375 $p911376 $A921377 $B931378))))

; loop entry $main_inv70
(assert
  (forall (($p911376 Int) ($j881373 Int) ($A921377 (Array Int (Array Int Int))) ($m891374 Int) ($B931378 (Array Int (Array Int Int))) ($i871372 Int) ($n901375 Int))
    (=> (and (< $i871372 $m891374)
             ($main_inv69 $i871372 $j881373 $m891374 $n901375 $p911376 $A921377 $B931378))
        ($main_inv70 $i871372 0 $m891374 $n901375 $p911376 $A921377 $B931378))))

; loop term $main_sum70
(assert
  (forall (($A921384 (Array Int (Array Int Int))) ($p911383 Int) ($i871379 Int) ($j881380 Int) ($B931385 (Array Int (Array Int Int))) ($m891381 Int) ($n901382 Int))
    (=> (and (not (< $j881380 $n901382)))
        ($main_sum70 $i871379 $j881380 $m891381 $n901382 $p911383 $A921384 $B931385 $i871379 $j881380 $m891381 $n901382 $p911383 $A921384 $B931385))))

; __VERIFIER_assert precondition
(assert
  (forall (($A921384 (Array Int (Array Int Int))) ($p911383 Int) ($i871379 Int) ($j881380 Int) ($B931385 (Array Int (Array Int Int))) ($m891381 Int) ($n901382 Int))
    (=> (and (< $j881380 $n901382)
             ($main_inv70 $i871379 $j881380 $m891381 $n901382 $p911383 $A921384 $B931385))
        ($__VERIFIER_assert_pre (ite (= (select (select $A921384 $i871379) $j881380) (select (select $B931385 (- (- $m891381 $i871379) 1)) (- (- $n901382 $j881380) 1))) 1 0)))))

; forwards $main_inv70
(assert
  (forall (($A921384 (Array Int (Array Int Int))) ($p911383 Int) ($i871379 Int) ($j881380 Int) ($B931385 (Array Int (Array Int Int))) ($m891381 Int) ($n901382 Int))
    (=> (and (__VERIFIER_assert (ite (= (select (select $A921384 $i871379) $j881380) (select (select $B931385 (- (- $m891381 $i871379) 1)) (- (- $n901382 $j881380) 1))) 1 0))
             (< $j881380 $n901382)
             ($main_inv70 $i871379 $j881380 $m891381 $n901382 $p911383 $A921384 $B931385))
        ($main_inv70 $i871379 (+ $j881380 1) $m891381 $n901382 $p911383 $A921384 $B931385))))

; backwards $main_sum70
(assert
  (forall (($A921391 (Array Int (Array Int Int))) ($B931392 (Array Int (Array Int Int))) ($i871386 Int) ($p911383 Int) ($p911390 Int) ($i871379 Int) ($j881380 Int) ($B931385 (Array Int (Array Int Int))) ($m891381 Int) ($n901382 Int) ($m891388 Int) ($A921384 (Array Int (Array Int Int))) ($j881387 Int) ($n901389 Int))
    (=> (and ($main_sum70 $i871379 (+ $j881380 1) $m891381 $n901382 $p911383 $A921384 $B931385 $i871386 $j881387 $m891388 $n901389 $p911390 $A921391 $B931392)
             (__VERIFIER_assert (ite (= (select (select $A921384 $i871379) $j881380) (select (select $B931385 (- (- $m891381 $i871379) 1)) (- (- $n901382 $j881380) 1))) 1 0))
             (< $j881380 $n901382))
        ($main_sum70 $i871379 $j881380 $m891381 $n901382 $p911383 $A921384 $B931385 $i871386 $j881387 $m891388 $n901389 $p911390 $A921391 $B931392))))

; forwards $main_inv69
(assert
  (forall (($p911376 Int) ($j881373 Int) ($m891374 Int) ($i871372 Int) ($p911397 Int) ($A921398 (Array Int (Array Int Int))) ($i871393 Int) ($n901375 Int) ($j881394 Int) ($n901396 Int) ($m891395 Int) ($A921377 (Array Int (Array Int Int))) ($B931399 (Array Int (Array Int Int))) ($B931378 (Array Int (Array Int Int))))
    (=> (and ($main_sum70 $i871372 0 $m891374 $n901375 $p911376 $A921377 $B931378 $i871393 $j881394 $m891395 $n901396 $p911397 $A921398 $B931399)
             (< $i871372 $m891374)
             ($main_inv69 $i871372 $j881373 $m891374 $n901375 $p911376 $A921377 $B931378))
        ($main_inv69 (+ $i871393 1) $j881394 $m891395 $n901396 $p911397 $A921398 $B931399))))

; backwards $main_sum69
(assert
  (forall (($p911376 Int) ($p911404 Int) ($j881401 Int) ($m891374 Int) ($p911397 Int) ($A921398 (Array Int (Array Int Int))) ($i871393 Int) ($n901375 Int) ($m891402 Int) ($j881373 Int) ($i871400 Int) ($j881394 Int) ($n901396 Int) ($m891395 Int) ($A921377 (Array Int (Array Int Int))) ($B931406 (Array Int (Array Int Int))) ($A921405 (Array Int (Array Int Int))) ($B931399 (Array Int (Array Int Int))) ($B931378 (Array Int (Array Int Int))) ($n901403 Int) ($i871372 Int))
    (=> (and ($main_sum69 (+ $i871393 1) $j881394 $m891395 $n901396 $p911397 $A921398 $B931399 $i871400 $j881401 $m891402 $n901403 $p911404 $A921405 $B931406)
             ($main_sum70 $i871372 0 $m891374 $n901375 $p911376 $A921377 $B931378 $i871393 $j881394 $m891395 $n901396 $p911397 $A921398 $B931399)
             (< $i871372 $m891374))
        ($main_sum69 $i871372 $j881373 $m891374 $n901375 $p911376 $A921377 $B931378 $i871400 $j881401 $m891402 $n901403 $p911404 $A921405 $B931406))))

(check-sat)
