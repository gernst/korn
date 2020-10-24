(set-logic HORN)

(declare-fun $__VERIFIER_assert_if19 (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv27 (Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv26 (Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum27 (Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv29 (Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv25 (Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum29 (Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum28 (Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv30 (Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum30 (Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum26 (Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv28 (Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum25 (Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond326 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond326))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if19 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond327 Int))
    (=> (and ($__VERIFIER_assert_if19 cond327))
        (__VERIFIER_assert cond327))))

; loop entry $main_inv25
(assert
  (forall (($n43 Int) ($A44 (Array Int (Array Int Int))) ($B45 (Array Int (Array Int Int))))
    (=> (and (= $n43 1000))
        ($main_inv25 0 0 $n43 $A44 $B45))))

; loop term $main_sum25
(assert
  (forall (($i41328 Int) ($A44331 (Array Int (Array Int Int))) ($j42329 Int) ($n43330 Int) ($B45332 (Array Int (Array Int Int))))
    (=> (and (not (< $i41328 $n43330))
             ($main_inv25 $i41328 $j42329 $n43330 $A44331 $B45332))
        ($main_sum25 $i41328 $j42329 $n43330 $A44331 $B45332))))

; loop entry $main_inv26
(assert
  (forall (($i41328 Int) ($A44331 (Array Int (Array Int Int))) ($j42329 Int) ($n43330 Int) ($B45332 (Array Int (Array Int Int))))
    (=> (and (< $i41328 $n43330)
             ($main_inv25 $i41328 $j42329 $n43330 $A44331 $B45332))
        ($main_inv26 $i41328 0 $n43330 $A44331 $B45332))))

; loop term $main_sum26
(assert
  (forall (($j42334 Int) ($i41333 Int) ($n43335 Int) ($A44336 (Array Int (Array Int Int))) ($B45337 (Array Int (Array Int Int))))
    (=> (and (not (< $j42334 $n43335))
             ($main_inv26 $i41333 $j42334 $n43335 $A44336 $B45337))
        ($main_sum26 $i41333 $j42334 $n43335 $A44336 $B45337))))

; forwards $main_inv26
(assert
  (forall (($int338 Int) ($j42334 Int) ($i41333 Int) ($n43335 Int) ($A44336 (Array Int (Array Int Int))) ($B45337 (Array Int (Array Int Int))))
    (=> (and (<= (- 2147483648) $int338)
             (<= $int338 2147483647)
             (< $j42334 $n43335)
             ($main_inv26 $i41333 $j42334 $n43335 $A44336 $B45337))
        ($main_inv26 $i41333 (+ $j42334 1) $n43335 $A44336 (store $B45337 $i41333 (store (select $B45337 $i41333) $j42334 $int338))))))

; forwards $main_inv25
(assert
  (forall (($i41339 Int) ($j42340 Int) ($A44342 (Array Int (Array Int Int))) ($n43341 Int) ($B45343 (Array Int (Array Int Int))))
    (=> (and ($main_sum26 $i41339 $j42340 $n43341 $A44342 $B45343))
        ($main_inv25 (+ $i41339 1) $j42340 $n43341 $A44342 $B45343))))

; loop entry $main_inv27
(assert
  (forall (($n43346 Int) ($A44347 (Array Int (Array Int Int))) ($i41344 Int) ($j42345 Int) ($B45348 (Array Int (Array Int Int))))
    (=> (and ($main_sum25 $i41344 $j42345 $n43346 $A44347 $B45348))
        ($main_inv27 0 0 $n43346 $A44347 $B45348))))

; loop term $main_sum27
(assert
  (forall (($i41349 Int) ($A44352 (Array Int (Array Int Int))) ($B45353 (Array Int (Array Int Int))) ($j42350 Int) ($n43351 Int))
    (=> (and (not (< $i41349 $n43351))
             ($main_inv27 $i41349 $j42350 $n43351 $A44352 $B45353))
        ($main_sum27 $i41349 $j42350 $n43351 $A44352 $B45353))))

; loop entry $main_inv28
(assert
  (forall (($i41349 Int) ($A44352 (Array Int (Array Int Int))) ($B45353 (Array Int (Array Int Int))) ($j42350 Int) ($n43351 Int))
    (=> (and (< $i41349 $n43351)
             ($main_inv27 $i41349 $j42350 $n43351 $A44352 $B45353))
        ($main_inv28 $i41349 0 $n43351 $A44352 $B45353))))

; loop term $main_sum28
(assert
  (forall (($B45358 (Array Int (Array Int Int))) ($i41354 Int) ($A44357 (Array Int (Array Int Int))) ($n43356 Int) ($j42355 Int))
    (=> (and (not (< $j42355 $n43356))
             ($main_inv28 $i41354 $j42355 $n43356 $A44357 $B45358))
        ($main_sum28 $i41354 $j42355 $n43356 $A44357 $B45358))))

; forwards $main_inv28
(assert
  (forall (($B45358 (Array Int (Array Int Int))) ($i41354 Int) ($A44357 (Array Int (Array Int Int))) ($n43356 Int) ($j42355 Int))
    (=> (and (< $j42355 $n43356)
             ($main_inv28 $i41354 $j42355 $n43356 $A44357 $B45358))
        ($main_inv28 $i41354 (+ $j42355 1) $n43356 (store $A44357 $i41354 (store (select $A44357 $i41354) $j42355 (select (select $B45358 $i41354) $j42355))) $B45358))))

; forwards $main_inv27
(assert
  (forall (($i41359 Int) ($A44362 (Array Int (Array Int Int))) ($j42360 Int) ($n43361 Int) ($B45363 (Array Int (Array Int Int))))
    (=> (and ($main_sum28 $i41359 $j42360 $n43361 $A44362 $B45363))
        ($main_inv27 (+ $i41359 1) $j42360 $n43361 $A44362 $B45363))))

; loop entry $main_inv29
(assert
  (forall (($i41364 Int) ($B45368 (Array Int (Array Int Int))) ($j42365 Int) ($n43366 Int) ($A44367 (Array Int (Array Int Int))))
    (=> (and ($main_sum27 $i41364 $j42365 $n43366 $A44367 $B45368))
        ($main_inv29 0 0 $n43366 $A44367 $B45368))))

; loop term $main_sum29
(assert
  (forall (($B45373 (Array Int (Array Int Int))) ($i41369 Int) ($A44372 (Array Int (Array Int Int))) ($j42370 Int) ($n43371 Int))
    (=> (and (not (< $i41369 $n43371))
             ($main_inv29 $i41369 $j42370 $n43371 $A44372 $B45373))
        ($main_sum29 $i41369 $j42370 $n43371 $A44372 $B45373))))

; loop entry $main_inv30
(assert
  (forall (($B45373 (Array Int (Array Int Int))) ($i41369 Int) ($A44372 (Array Int (Array Int Int))) ($j42370 Int) ($n43371 Int))
    (=> (and (< $i41369 $n43371)
             ($main_inv29 $i41369 $j42370 $n43371 $A44372 $B45373))
        ($main_inv30 $i41369 0 $n43371 $A44372 $B45373))))

; loop term $main_sum30
(assert
  (forall (($i41374 Int) ($n43376 Int) ($B45378 (Array Int (Array Int Int))) ($A44377 (Array Int (Array Int Int))) ($j42375 Int))
    (=> (and (not (< $j42375 $n43376))
             ($main_inv30 $i41374 $j42375 $n43376 $A44377 $B45378))
        ($main_sum30 $i41374 $j42375 $n43376 $A44377 $B45378))))

; __VERIFIER_assert precondition
(assert
  (forall (($i41374 Int) ($n43376 Int) ($B45378 (Array Int (Array Int Int))) ($A44377 (Array Int (Array Int Int))) ($j42375 Int))
    (=> (and (< $j42375 $n43376)
             ($main_inv30 $i41374 $j42375 $n43376 $A44377 $B45378))
        ($__VERIFIER_assert_pre (ite (= (select (select $A44377 $i41374) $j42375) (select (select $B45378 $i41374) $j42375)) 1 0)))))

; forwards $main_inv30
(assert
  (forall (($i41374 Int) ($n43376 Int) ($B45378 (Array Int (Array Int Int))) ($A44377 (Array Int (Array Int Int))) ($j42375 Int))
    (=> (and (__VERIFIER_assert (ite (= (select (select $A44377 $i41374) $j42375) (select (select $B45378 $i41374) $j42375)) 1 0))
             (< $j42375 $n43376)
             ($main_inv30 $i41374 $j42375 $n43376 $A44377 $B45378))
        ($main_inv30 $i41374 (+ $j42375 1) $n43376 $A44377 $B45378))))

; forwards $main_inv29
(assert
  (forall (($n43381 Int) ($i41379 Int) ($A44382 (Array Int (Array Int Int))) ($B45383 (Array Int (Array Int Int))) ($j42380 Int))
    (=> (and ($main_sum30 $i41379 $j42380 $n43381 $A44382 $B45383))
        ($main_inv29 (+ $i41379 1) $j42380 $n43381 $A44382 $B45383))))

(check-sat)
