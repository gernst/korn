(set-logic HORN)

(declare-fun $main_if247 (Int Int Int Int Int Int) Bool)
(declare-fun $main_if249 (Int Int Int Int Int Int) Bool)
(declare-fun $main_if248 (Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum473 (Int Int Int Int Int Int) Bool)
(declare-fun $main_if246 (Int Int Int Int Int Int) Bool)
(declare-fun $main_sum472 (Int Int Int Int Int Int) Bool)
(declare-fun $main_inv471 (Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if245 (Int) Bool)
(declare-fun $main_inv472 (Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_END (Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_inv473 (Int Int Int Int Int Int) Bool)
(declare-fun $main_sum471 (Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_if244 (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if244 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond6309 Int))
    (=> (and ($assume_abort_if_not_if244 cond6309))
        (assume_abort_if_not cond6309))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond6310 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond6310))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if245 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6311 Int))
    (=> (and ($__VERIFIER_assert_if245 cond6311))
        (__VERIFIER_assert cond6311))))

; if else
(assert
  (forall (($i621 Int) ($j622 Int) ($int6315 Int) ($k623 Int) ($int6313 Int) ($int6314 Int))
    (=> (and (< (- 1000000) $int6313)
             (< $int6313 1000000)
             (<= (- 2147483648) $int6315)
             (<= $int6315 2147483647)
             (<= (- 2147483648) $int6314)
             (<= $int6314 2147483647)
             (<= (- 2147483648) $int6313)
             (<= $int6313 2147483647))
        ($main_if246 $i621 $j622 $k623 $int6313 $int6315 $int6314))))

; if else
(assert
  (forall (($i6216316 Int) ($l6256320 Int) ($k6236318 Int) ($n6246319 Int) ($j6226317 Int) ($m6266321 Int))
    (=> (and (< (- 1000000) $m6266321)
             (< $m6266321 1000000)
             ($main_if246 $i6216316 $j6226317 $k6236318 $n6246319 $l6256320 $m6266321))
        ($main_if247 $i6216316 $j6226317 $k6236318 $n6246319 $l6256320 $m6266321))))

; if else
(assert
  (forall (($n6246325 Int) ($l6256326 Int) ($i6216322 Int) ($k6236324 Int) ($j6226323 Int) ($m6266327 Int))
    (=> (and (< (- 1000000) $l6256326)
             (< $l6256326 1000000)
             ($main_if247 $i6216322 $j6226323 $k6236324 $n6246325 $l6256326 $m6266327))
        ($main_if248 $i6216322 $j6226323 $k6236324 $n6246325 $l6256326 $m6266327))))

; goto END
(assert
  (forall (($l6256332 Int) ($i6216328 Int) ($n6246331 Int) ($j6226329 Int) ($m6266333 Int) ($k6236330 Int))
    (=> (and (not (<= (* 3 $n6246331) (+ $m6266333 $l6256332)))
             ($main_if248 $i6216328 $j6226329 $k6236330 $n6246331 $l6256332 $m6266333))
        ($main_END $i6216328 $j6226329 $k6236330 $n6246331 $l6256332 $m6266333))))

; if then
(assert
  (forall (($l6256332 Int) ($i6216328 Int) ($n6246331 Int) ($j6226329 Int) ($m6266333 Int) ($k6236330 Int))
    (=> (and (<= (* 3 $n6246331) (+ $m6266333 $l6256332))
             ($main_if248 $i6216328 $j6226329 $k6236330 $n6246331 $l6256332 $m6266333))
        ($main_if249 $i6216328 $j6226329 $k6236330 $n6246331 $l6256332 $m6266333))))

; loop entry $main_inv471
(assert
  (forall (($m6266339 Int) ($l6256338 Int) ($k6236336 Int) ($i6216334 Int) ($n6246337 Int) ($j6226335 Int))
    (=> (and ($main_if249 $i6216334 $j6226335 $k6236336 $n6246337 $l6256338 $m6266339))
        ($main_inv471 0 $j6226335 $k6236336 $n6246337 $l6256338 $m6266339))))

; loop term $main_sum471
(assert
  (forall (($k6236342 Int) ($l6256344 Int) ($i6216340 Int) ($j6226341 Int) ($n6246343 Int) ($m6266345 Int))
    (=> (and (not (< $i6216340 $n6246343))
             ($main_inv471 $i6216340 $j6226341 $k6236342 $n6246343 $l6256344 $m6266345))
        ($main_sum471 $i6216340 $j6226341 $k6236342 $n6246343 $l6256344 $m6266345))))

; loop entry $main_inv472
(assert
  (forall (($k6236342 Int) ($l6256344 Int) ($i6216340 Int) ($j6226341 Int) ($n6246343 Int) ($m6266345 Int))
    (=> (and (< $i6216340 $n6246343)
             ($main_inv471 $i6216340 $j6226341 $k6236342 $n6246343 $l6256344 $m6266345))
        ($main_inv472 $i6216340 (* 2 $i6216340) $k6236342 $n6246343 $l6256344 $m6266345))))

; loop term $main_sum472
(assert
  (forall (($l6256350 Int) ($n6246349 Int) ($j6226347 Int) ($i6216346 Int) ($m6266351 Int) ($k6236348 Int))
    (=> (and (not (< $j6226347 (* 3 $i6216346)))
             ($main_inv472 $i6216346 $j6226347 $k6236348 $n6246349 $l6256350 $m6266351))
        ($main_sum472 $i6216346 $j6226347 $k6236348 $n6246349 $l6256350 $m6266351))))

; loop entry $main_inv473
(assert
  (forall (($l6256350 Int) ($n6246349 Int) ($j6226347 Int) ($i6216346 Int) ($m6266351 Int) ($k6236348 Int))
    (=> (and (< $j6226347 (* 3 $i6216346))
             ($main_inv472 $i6216346 $j6226347 $k6236348 $n6246349 $l6256350 $m6266351))
        ($main_inv473 $i6216346 $j6226347 $i6216346 $n6246349 $l6256350 $m6266351))))

; loop term $main_sum473
(assert
  (forall (($l6256356 Int) ($m6266357 Int) ($n6246355 Int) ($i6216352 Int) ($k6236354 Int) ($j6226353 Int))
    (=> (and (not (< $k6236354 $j6226353))
             ($main_inv473 $i6216352 $j6226353 $k6236354 $n6246355 $l6256356 $m6266357))
        ($main_sum473 $i6216352 $j6226353 $k6236354 $n6246355 $l6256356 $m6266357))))

; __VERIFIER_assert precondition
(assert
  (forall (($l6256356 Int) ($m6266357 Int) ($n6246355 Int) ($i6216352 Int) ($k6236354 Int) ($j6226353 Int))
    (=> (and (< $k6236354 $j6226353)
             ($main_inv473 $i6216352 $j6226353 $k6236354 $n6246355 $l6256356 $m6266357))
        ($__VERIFIER_assert_pre (ite (<= (- $k6236354 $i6216352) (* 2 $n6246355)) 1 0)))))

; forwards $main_inv473
(assert
  (forall (($l6256356 Int) ($m6266357 Int) ($n6246355 Int) ($i6216352 Int) ($k6236354 Int) ($j6226353 Int))
    (=> (and (__VERIFIER_assert (ite (<= (- $k6236354 $i6216352) (* 2 $n6246355)) 1 0))
             (< $k6236354 $j6226353)
             ($main_inv473 $i6216352 $j6226353 $k6236354 $n6246355 $l6256356 $m6266357))
        ($main_inv473 $i6216352 $j6226353 (+ $k6236354 1) $n6246355 $l6256356 $m6266357))))

; forwards $main_inv472
(assert
  (forall (($l6256362 Int) ($m6266363 Int) ($j6226359 Int) ($n6246361 Int) ($i6216358 Int) ($k6236360 Int))
    (=> (and ($main_sum473 $i6216358 $j6226359 $k6236360 $n6246361 $l6256362 $m6266363))
        ($main_inv472 $i6216358 (+ $j6226359 1) $k6236360 $n6246361 $l6256362 $m6266363))))

; forwards $main_inv471
(assert
  (forall (($i6216364 Int) ($m6266369 Int) ($l6256368 Int) ($k6236366 Int) ($n6246367 Int) ($j6226365 Int))
    (=> (and ($main_sum472 $i6216364 $j6226365 $k6236366 $n6246367 $l6256368 $m6266369))
        ($main_inv471 (+ $i6216364 1) $j6226365 $k6236366 $n6246367 $l6256368 $m6266369))))

; label END
(assert
  (forall (($k6236372 Int) ($i6216370 Int) ($j6226371 Int) ($l6256374 Int) ($n6246373 Int) ($m6266375 Int))
    (=> (and ($main_sum471 $i6216370 $j6226371 $k6236372 $n6246373 $l6256374 $m6266375))
        ($main_END $i6216370 $j6226371 $k6236372 $n6246373 $l6256374 $m6266375))))

(check-sat)
