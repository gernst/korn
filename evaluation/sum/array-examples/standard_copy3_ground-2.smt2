(set-logic HORN)

(declare-fun $main_sum110 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv112 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv111 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv109 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum112 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv108 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum108 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if48 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum111 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv110 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum109 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond2291 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond2291))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if48 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond2292 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if48 cond cond2292))
        (__VERIFIER_assert cond2292))))

; loop entry $main_inv108
(assert
  (forall (($a3185 (Array Int Int)) ($i188 Int) ($a2184 (Array Int Int)) ($a1183 (Array Int Int)) ($a4186 (Array Int Int)) ($x189 Int))
        ($main_inv108 $a1183 $a2184 $a3185 $a4186 0 $i188 $x189)))

; loop term $main_sum108
(assert
  (forall (($i1882298 Int) ($a21842294 (Array Int Int)) ($a41862296 (Array Int Int)) ($a31852295 (Array Int Int)) ($a11832293 (Array Int Int)) ($a1872297 Int) ($x1892299 Int))
    (=> (and (not (< $a1872297 100000)))
        ($main_sum108 $a11832293 $a21842294 $a31852295 $a41862296 $a1872297 $i1882298 $x1892299 $a11832293 $a21842294 $a31852295 $a41862296 $a1872297 $i1882298 $x1892299))))

; forwards $main_inv108
(assert
  (forall (($i1882298 Int) ($a21842294 (Array Int Int)) ($a41862296 (Array Int Int)) ($int2300 Int) ($a31852295 (Array Int Int)) ($a11832293 (Array Int Int)) ($x1892299 Int) ($a1872297 Int) ($int2301 Int))
    (=> (and (<= (- 2147483648) $int2301)
             (<= $int2301 2147483647)
             (<= (- 2147483648) $int2300)
             (<= $int2300 2147483647)
             (< $a1872297 100000)
             ($main_inv108 $a11832293 $a21842294 $a31852295 $a41862296 $a1872297 $i1882298 $x1892299))
        ($main_inv108 (store $a11832293 $a1872297 $int2300) $a21842294 (store $a31852295 $a1872297 $int2301) $a41862296 (+ $a1872297 1) $i1882298 $x1892299))))

; backwards $main_sum108
(assert
  (forall (($i1882298 Int) ($a21842303 (Array Int Int)) ($i1882307 Int) ($a41862296 (Array Int Int)) ($a1872306 Int) ($a11832302 (Array Int Int)) ($int2300 Int) ($a31852304 (Array Int Int)) ($a31852295 (Array Int Int)) ($x1892299 Int) ($a21842294 (Array Int Int)) ($a41862305 (Array Int Int)) ($a11832293 (Array Int Int)) ($x1892308 Int) ($a1872297 Int) ($int2301 Int))
    (=> (and ($main_sum108 (store $a11832293 $a1872297 $int2300) $a21842294 (store $a31852295 $a1872297 $int2301) $a41862296 (+ $a1872297 1) $i1882298 $x1892299 $a11832302 $a21842303 $a31852304 $a41862305 $a1872306 $i1882307 $x1892308)
             (<= (- 2147483648) $int2301)
             (<= $int2301 2147483647)
             (<= (- 2147483648) $int2300)
             (<= $int2300 2147483647)
             (< $a1872297 100000))
        ($main_sum108 $a11832293 $a21842294 $a31852295 $a41862296 $a1872297 $i1882298 $x1892299 $a11832302 $a21842303 $a31852304 $a41862305 $a1872306 $i1882307 $x1892308))))

; loop entry $main_inv109
(assert
  (forall (($a31852311 (Array Int Int)) ($i188 Int) ($x1892315 Int) ($a21842310 (Array Int Int)) ($a2184 (Array Int Int)) ($a4186 (Array Int Int)) ($x189 Int) ($a41862312 (Array Int Int)) ($a3185 (Array Int Int)) ($a1183 (Array Int Int)) ($i1882314 Int) ($a1872313 Int) ($a11832309 (Array Int Int)))
    (=> (and ($main_sum108 $a1183 $a2184 $a3185 $a4186 0 $i188 $x189 $a11832309 $a21842310 $a31852311 $a41862312 $a1872313 $i1882314 $x1892315))
        ($main_inv109 $a11832309 $a21842310 $a31852311 $a41862312 $a1872313 0 $x1892315))))

; loop term $main_sum109
(assert
  (forall (($a31852318 (Array Int Int)) ($i1882321 Int) ($a21842317 (Array Int Int)) ($a11832316 (Array Int Int)) ($a1872320 Int) ($x1892322 Int) ($a41862319 (Array Int Int)))
    (=> (and (not (< $i1882321 100000)))
        ($main_sum109 $a11832316 $a21842317 $a31852318 $a41862319 $a1872320 $i1882321 $x1892322 $a11832316 $a21842317 $a31852318 $a41862319 $a1872320 $i1882321 $x1892322))))

; forwards $main_inv109
(assert
  (forall (($a31852318 (Array Int Int)) ($i1882321 Int) ($a21842317 (Array Int Int)) ($a11832316 (Array Int Int)) ($a1872320 Int) ($x1892322 Int) ($a41862319 (Array Int Int)))
    (=> (and (< $i1882321 100000)
             ($main_inv109 $a11832316 $a21842317 $a31852318 $a41862319 $a1872320 $i1882321 $x1892322))
        ($main_inv109 $a11832316 (store $a21842317 $i1882321 (select $a11832316 $i1882321)) $a31852318 $a41862319 $a1872320 (+ $i1882321 1) $x1892322))))

; backwards $main_sum109
(assert
  (forall (($a31852318 (Array Int Int)) ($a11832323 (Array Int Int)) ($i1882321 Int) ($a21842317 (Array Int Int)) ($a11832316 (Array Int Int)) ($a1872320 Int) ($a31852325 (Array Int Int)) ($x1892322 Int) ($a41862319 (Array Int Int)) ($a1872327 Int) ($x1892329 Int) ($a21842324 (Array Int Int)) ($i1882328 Int) ($a41862326 (Array Int Int)))
    (=> (and ($main_sum109 $a11832316 (store $a21842317 $i1882321 (select $a11832316 $i1882321)) $a31852318 $a41862319 $a1872320 (+ $i1882321 1) $x1892322 $a11832323 $a21842324 $a31852325 $a41862326 $a1872327 $i1882328 $x1892329)
             (< $i1882321 100000))
        ($main_sum109 $a11832316 $a21842317 $a31852318 $a41862319 $a1872320 $i1882321 $x1892322 $a11832323 $a21842324 $a31852325 $a41862326 $a1872327 $i1882328 $x1892329))))

; loop entry $main_inv110
(assert
  (forall (($a31852311 (Array Int Int)) ($i188 Int) ($x1892315 Int) ($a21842310 (Array Int Int)) ($a11832330 (Array Int Int)) ($a2184 (Array Int Int)) ($x1892336 Int) ($a31852332 (Array Int Int)) ($a1872334 Int) ($i1882335 Int) ($a41862312 (Array Int Int)) ($a3185 (Array Int Int)) ($a1183 (Array Int Int)) ($i1882314 Int) ($a4186 (Array Int Int)) ($a21842331 (Array Int Int)) ($a41862333 (Array Int Int)) ($x189 Int) ($a1872313 Int) ($a11832309 (Array Int Int)))
    (=> (and ($main_sum109 $a11832309 $a21842310 $a31852311 $a41862312 $a1872313 0 $x1892315 $a11832330 $a21842331 $a31852332 $a41862333 $a1872334 $i1882335 $x1892336)
             ($main_sum108 $a1183 $a2184 $a3185 $a4186 0 $i188 $x189 $a11832309 $a21842310 $a31852311 $a41862312 $a1872313 $i1882314 $x1892315))
        ($main_inv110 $a11832330 $a21842331 $a31852332 $a41862333 $a1872334 0 $x1892336))))

; loop term $main_sum110
(assert
  (forall (($i1882342 Int) ($x1892343 Int) ($a41862340 (Array Int Int)) ($a1872341 Int) ($a31852339 (Array Int Int)) ($a11832337 (Array Int Int)) ($a21842338 (Array Int Int)))
    (=> (and (not (< $i1882342 100000)))
        ($main_sum110 $a11832337 $a21842338 $a31852339 $a41862340 $a1872341 $i1882342 $x1892343 $a11832337 $a21842338 $a31852339 $a41862340 $a1872341 $i1882342 $x1892343))))

; forwards $main_inv110
(assert
  (forall (($i1882342 Int) ($x1892343 Int) ($a41862340 (Array Int Int)) ($a1872341 Int) ($a31852339 (Array Int Int)) ($a11832337 (Array Int Int)) ($a21842338 (Array Int Int)))
    (=> (and (< $i1882342 100000)
             ($main_inv110 $a11832337 $a21842338 $a31852339 $a41862340 $a1872341 $i1882342 $x1892343))
        ($main_inv110 $a11832337 $a21842338 $a31852339 (store $a41862340 $i1882342 (select $a21842338 $i1882342)) $a1872341 (+ $i1882342 1) $x1892343))))

; backwards $main_sum110
(assert
  (forall (($i1882342 Int) ($a31852346 (Array Int Int)) ($a41862340 (Array Int Int)) ($a41862347 (Array Int Int)) ($a1872341 Int) ($a31852339 (Array Int Int)) ($x1892350 Int) ($a21842345 (Array Int Int)) ($a11832337 (Array Int Int)) ($a21842338 (Array Int Int)) ($x1892343 Int) ($i1882349 Int) ($a1872348 Int) ($a11832344 (Array Int Int)))
    (=> (and ($main_sum110 $a11832337 $a21842338 $a31852339 (store $a41862340 $i1882342 (select $a21842338 $i1882342)) $a1872341 (+ $i1882342 1) $x1892343 $a11832344 $a21842345 $a31852346 $a41862347 $a1872348 $i1882349 $x1892350)
             (< $i1882342 100000))
        ($main_sum110 $a11832337 $a21842338 $a31852339 $a41862340 $a1872341 $i1882342 $x1892343 $a11832344 $a21842345 $a31852346 $a41862347 $a1872348 $i1882349 $x1892350))))

; loop entry $main_inv111
(assert
  (forall (($a31852311 (Array Int Int)) ($a41862354 (Array Int Int)) ($i188 Int) ($a21842352 (Array Int Int)) ($x1892315 Int) ($a21842310 (Array Int Int)) ($a2184 (Array Int Int)) ($x1892336 Int) ($a31852332 (Array Int Int)) ($a1872355 Int) ($i1882356 Int) ($a41862312 (Array Int Int)) ($a3185 (Array Int Int)) ($a11832330 (Array Int Int)) ($x1892357 Int) ($a1183 (Array Int Int)) ($i1882314 Int) ($a4186 (Array Int Int)) ($a21842331 (Array Int Int)) ($a1872334 Int) ($a31852353 (Array Int Int)) ($a11832351 (Array Int Int)) ($i1882335 Int) ($a41862333 (Array Int Int)) ($x189 Int) ($a1872313 Int) ($a11832309 (Array Int Int)))
    (=> (and ($main_sum110 $a11832330 $a21842331 $a31852332 $a41862333 $a1872334 0 $x1892336 $a11832351 $a21842352 $a31852353 $a41862354 $a1872355 $i1882356 $x1892357)
             ($main_sum109 $a11832309 $a21842310 $a31852311 $a41862312 $a1872313 0 $x1892315 $a11832330 $a21842331 $a31852332 $a41862333 $a1872334 $i1882335 $x1892336)
             ($main_sum108 $a1183 $a2184 $a3185 $a4186 0 $i188 $x189 $a11832309 $a21842310 $a31852311 $a41862312 $a1872313 $i1882314 $x1892315))
        ($main_inv111 $a11832351 $a21842352 $a31852353 $a41862354 $a1872355 0 $x1892357))))

; loop term $main_sum111
(assert
  (forall (($a41862361 (Array Int Int)) ($a11832358 (Array Int Int)) ($a31852360 (Array Int Int)) ($i1882363 Int) ($a1872362 Int) ($x1892364 Int) ($a21842359 (Array Int Int)))
    (=> (and (not (< $i1882363 100000)))
        ($main_sum111 $a11832358 $a21842359 $a31852360 $a41862361 $a1872362 $i1882363 $x1892364 $a11832358 $a21842359 $a31852360 $a41862361 $a1872362 $i1882363 $x1892364))))

; forwards $main_inv111
(assert
  (forall (($a41862361 (Array Int Int)) ($a11832358 (Array Int Int)) ($a31852360 (Array Int Int)) ($i1882363 Int) ($a1872362 Int) ($x1892364 Int) ($a21842359 (Array Int Int)))
    (=> (and (< $i1882363 100000)
             ($main_inv111 $a11832358 $a21842359 $a31852360 $a41862361 $a1872362 $i1882363 $x1892364))
        ($main_inv111 $a11832358 $a21842359 $a31852360 (store $a41862361 $i1882363 (select $a31852360 $i1882363)) $a1872362 (+ $i1882363 1) $x1892364))))

; backwards $main_sum111
(assert
  (forall (($a41862361 (Array Int Int)) ($a31852367 (Array Int Int)) ($a41862368 (Array Int Int)) ($a31852360 (Array Int Int)) ($i1882363 Int) ($x1892364 Int) ($a1872369 Int) ($a21842366 (Array Int Int)) ($a11832358 (Array Int Int)) ($i1882370 Int) ($a1872362 Int) ($x1892371 Int) ($a11832365 (Array Int Int)) ($a21842359 (Array Int Int)))
    (=> (and ($main_sum111 $a11832358 $a21842359 $a31852360 (store $a41862361 $i1882363 (select $a31852360 $i1882363)) $a1872362 (+ $i1882363 1) $x1892364 $a11832365 $a21842366 $a31852367 $a41862368 $a1872369 $i1882370 $x1892371)
             (< $i1882363 100000))
        ($main_sum111 $a11832358 $a21842359 $a31852360 $a41862361 $a1872362 $i1882363 $x1892364 $a11832365 $a21842366 $a31852367 $a41862368 $a1872369 $i1882370 $x1892371))))

; loop entry $main_inv112
(assert
  (forall (($a31852311 (Array Int Int)) ($a41862354 (Array Int Int)) ($a21842352 (Array Int Int)) ($x1892315 Int) ($a21842310 (Array Int Int)) ($a11832372 (Array Int Int)) ($a21842373 (Array Int Int)) ($a2184 (Array Int Int)) ($x1892336 Int) ($a31852332 (Array Int Int)) ($a1872355 Int) ($i1882356 Int) ($x1892378 Int) ($a41862312 (Array Int Int)) ($a3185 (Array Int Int)) ($i1882377 Int) ($i188 Int) ($a1872376 Int) ($a11832330 (Array Int Int)) ($x1892357 Int) ($a1183 (Array Int Int)) ($i1882314 Int) ($a4186 (Array Int Int)) ($a21842331 (Array Int Int)) ($a1872334 Int) ($a31852353 (Array Int Int)) ($a11832351 (Array Int Int)) ($i1882335 Int) ($a41862333 (Array Int Int)) ($x189 Int) ($a1872313 Int) ($a11832309 (Array Int Int)) ($a41862375 (Array Int Int)) ($a31852374 (Array Int Int)))
    (=> (and ($main_sum111 $a11832351 $a21842352 $a31852353 $a41862354 $a1872355 0 $x1892357 $a11832372 $a21842373 $a31852374 $a41862375 $a1872376 $i1882377 $x1892378)
             ($main_sum110 $a11832330 $a21842331 $a31852332 $a41862333 $a1872334 0 $x1892336 $a11832351 $a21842352 $a31852353 $a41862354 $a1872355 $i1882356 $x1892357)
             ($main_sum109 $a11832309 $a21842310 $a31852311 $a41862312 $a1872313 0 $x1892315 $a11832330 $a21842331 $a31852332 $a41862333 $a1872334 $i1882335 $x1892336)
             ($main_sum108 $a1183 $a2184 $a3185 $a4186 0 $i188 $x189 $a11832309 $a21842310 $a31852311 $a41862312 $a1872313 $i1882314 $x1892315))
        ($main_inv112 $a11832372 $a21842373 $a31852374 $a41862375 $a1872376 $i1882377 0))))

; loop term $main_sum112
(assert
  (forall (($a31852381 (Array Int Int)) ($a1872383 Int) ($a21842380 (Array Int Int)) ($i1882384 Int) ($a41862382 (Array Int Int)) ($x1892385 Int) ($a11832379 (Array Int Int)))
    (=> (and (not (< $x1892385 100000)))
        ($main_sum112 $a11832379 $a21842380 $a31852381 $a41862382 $a1872383 $i1882384 $x1892385 $a11832379 $a21842380 $a31852381 $a41862382 $a1872383 $i1882384 $x1892385))))

; __VERIFIER_assert precondition
(assert
  (forall (($a31852381 (Array Int Int)) ($a1872383 Int) ($a21842380 (Array Int Int)) ($i1882384 Int) ($a41862382 (Array Int Int)) ($x1892385 Int) ($a11832379 (Array Int Int)))
    (=> (and (< $x1892385 100000)
             ($main_inv112 $a11832379 $a21842380 $a31852381 $a41862382 $a1872383 $i1882384 $x1892385))
        ($__VERIFIER_assert_pre (ite (= (select $a11832379 $x1892385) (select $a41862382 $x1892385)) 1 0)))))

; forwards $main_inv112
(assert
  (forall (($a31852381 (Array Int Int)) ($a1872383 Int) ($a21842380 (Array Int Int)) ($i1882384 Int) ($a41862382 (Array Int Int)) ($x1892385 Int) ($a11832379 (Array Int Int)))
    (=> (and (__VERIFIER_assert (ite (= (select $a11832379 $x1892385) (select $a41862382 $x1892385)) 1 0))
             (< $x1892385 100000)
             ($main_inv112 $a11832379 $a21842380 $a31852381 $a41862382 $a1872383 $i1882384 $x1892385))
        ($main_inv112 $a11832379 $a21842380 $a31852381 $a41862382 $a1872383 $i1882384 (+ $x1892385 1)))))

; backwards $main_sum112
(assert
  (forall (($a31852381 (Array Int Int)) ($a1872383 Int) ($i1882384 Int) ($i1882391 Int) ($a41862382 (Array Int Int)) ($a11832386 (Array Int Int)) ($a1872390 Int) ($a21842387 (Array Int Int)) ($x1892392 Int) ($a21842380 (Array Int Int)) ($a31852388 (Array Int Int)) ($x1892385 Int) ($a41862389 (Array Int Int)) ($a11832379 (Array Int Int)))
    (=> (and ($main_sum112 $a11832379 $a21842380 $a31852381 $a41862382 $a1872383 $i1882384 (+ $x1892385 1) $a11832386 $a21842387 $a31852388 $a41862389 $a1872390 $i1882391 $x1892392)
             (__VERIFIER_assert (ite (= (select $a11832379 $x1892385) (select $a41862382 $x1892385)) 1 0))
             (< $x1892385 100000))
        ($main_sum112 $a11832379 $a21842380 $a31852381 $a41862382 $a1872383 $i1882384 $x1892385 $a11832386 $a21842387 $a31852388 $a41862389 $a1872390 $i1882391 $x1892392))))

(check-sat)
