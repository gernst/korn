(set-logic HORN)

(declare-fun $main_inv85 ((Array Int Int) (Array Int Int) Int (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum86 ((Array Int Int) (Array Int Int) Int (Array Int Int) Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum85 ((Array Int Int) (Array Int Int) Int (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv87 ((Array Int Int) (Array Int Int) Int (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if40 (Int) Bool)
(declare-fun $main_sum88 ((Array Int Int) (Array Int Int) Int (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum87 ((Array Int Int) (Array Int Int) Int (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv86 ((Array Int Int) (Array Int Int) Int (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_if41 ((Array Int Int) (Array Int Int) Int (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv88 ((Array Int Int) (Array Int Int) Int (Array Int Int) Int Int Int) Bool)
(declare-fun $main_if42 ((Array Int Int) (Array Int Int) Int (Array Int Int) Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond1304 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond1304))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if40 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond1305 Int))
    (=> (and ($__VERIFIER_assert_if40 cond1305))
        (__VERIFIER_assert cond1305))))

; loop entry $main_inv85
(assert
  (forall (($rv151 Int) ($x153 Int) ($c150 (Array Int Int)) ($i149 Int) ($a147 (Array Int Int)) ($j152 Int) ($b148 (Array Int Int)))
    (=> (and (= $j152 0)
             (= $rv151 1)
             (= $i149 0))
        ($main_inv85 $a147 $b148 $i149 $c150 $rv151 $j152 $x153))))

; loop term $main_sum85
(assert
  (forall (($x1531312 Int) ($rv1511310 Int) ($c1501309 (Array Int Int)) ($j1521311 Int) ($a1471306 (Array Int Int)) ($b1481307 (Array Int Int)) ($i1491308 Int))
    (=> (and (not (< $j1521311 100000))
             ($main_inv85 $a1471306 $b1481307 $i1491308 $c1501309 $rv1511310 $j1521311 $x1531312))
        ($main_sum85 $a1471306 $b1481307 $i1491308 $c1501309 $rv1511310 $j1521311 $x1531312))))

; forwards $main_inv85
(assert
  (forall (($x1531312 Int) ($rv1511310 Int) ($c1501309 (Array Int Int)) ($j1521311 Int) ($int1313 Int) ($a1471306 (Array Int Int)) ($b1481307 (Array Int Int)) ($i1491308 Int) ($int1314 Int))
    (=> (and (<= (- 2147483648) $int1314)
             (<= $int1314 2147483647)
             (<= (- 2147483648) $int1313)
             (<= $int1313 2147483647)
             (< $j1521311 100000)
             ($main_inv85 $a1471306 $b1481307 $i1491308 $c1501309 $rv1511310 $j1521311 $x1531312))
        ($main_inv85 (store $a1471306 $j1521311 $int1313) (store $b1481307 $j1521311 $int1314) $i1491308 $c1501309 $rv1511310 (+ $j1521311 1) $x1531312))))

; loop entry $main_inv86
(assert
  (forall (($c1501318 (Array Int Int)) ($rv1511319 Int) ($j1521320 Int) ($i1491317 Int) ($a1471315 (Array Int Int)) ($b1481316 (Array Int Int)) ($x1531321 Int))
    (=> (and ($main_sum85 $a1471315 $b1481316 $i1491317 $c1501318 $rv1511319 $j1521320 $x1531321))
        ($main_inv86 $a1471315 $b1481316 $i1491317 $c1501318 $rv1511319 $j1521320 $x1531321))))

; loop term $main_sum86
(assert
  (forall (($c1501325 (Array Int Int)) ($a1471322 (Array Int Int)) ($i1491324 Int) ($b1481323 (Array Int Int)) ($j1521327 Int) ($rv1511326 Int) ($x1531328 Int))
    (=> (and (not (< $i1491324 100000))
             ($main_inv86 $a1471322 $b1481323 $i1491324 $c1501325 $rv1511326 $j1521327 $x1531328))
        ($main_sum86 $a1471322 $b1481323 $i1491324 $c1501325 $rv1511326 $j1521327 $x1531328))))

; if then
(assert
  (forall (($c1501325 (Array Int Int)) ($a1471322 (Array Int Int)) ($i1491324 Int) ($b1481323 (Array Int Int)) ($j1521327 Int) ($rv1511326 Int) ($x1531328 Int))
    (=> (and (not (= (select $a1471322 $i1491324) (select $b1481323 $i1491324)))
             (< $i1491324 100000)
             ($main_inv86 $a1471322 $b1481323 $i1491324 $c1501325 $rv1511326 $j1521327 $x1531328))
        ($main_if41 $a1471322 $b1481323 $i1491324 $c1501325 0 $j1521327 $x1531328))))

; if else
(assert
  (forall (($c1501325 (Array Int Int)) ($a1471322 (Array Int Int)) ($i1491324 Int) ($b1481323 (Array Int Int)) ($j1521327 Int) ($rv1511326 Int) ($x1531328 Int))
    (=> (and (= (select $a1471322 $i1491324) (select $b1481323 $i1491324))
             (< $i1491324 100000)
             ($main_inv86 $a1471322 $b1481323 $i1491324 $c1501325 $rv1511326 $j1521327 $x1531328))
        ($main_if41 $a1471322 $b1481323 $i1491324 $c1501325 $rv1511326 $j1521327 $x1531328))))

; forwards $main_inv86
(assert
  (forall (($a1471329 (Array Int Int)) ($j1521334 Int) ($rv1511333 Int) ($i1491331 Int) ($c1501332 (Array Int Int)) ($b1481330 (Array Int Int)) ($x1531335 Int))
    (=> (and ($main_if41 $a1471329 $b1481330 $i1491331 $c1501332 $rv1511333 $j1521334 $x1531335))
        ($main_inv86 $a1471329 $b1481330 (+ $i1491331 1) (store $c1501332 $i1491331 (select $a1471329 $i1491331)) $rv1511333 $j1521334 $x1531335))))

; loop entry $main_inv87
(assert
  (forall (($b1481337 (Array Int Int)) ($x1531342 Int) ($a1471336 (Array Int Int)) ($rv1511340 Int) ($c1501339 (Array Int Int)) ($i1491338 Int) ($j1521341 Int))
    (=> (and (not (= $rv1511340 0))
             ($main_sum86 $a1471336 $b1481337 $i1491338 $c1501339 $rv1511340 $j1521341 $x1531342))
        ($main_inv87 $a1471336 $b1481337 $i1491338 $c1501339 $rv1511340 $j1521341 0))))

; loop term $main_sum87
(assert
  (forall (($b1481344 (Array Int Int)) ($c1501346 (Array Int Int)) ($rv1511347 Int) ($j1521348 Int) ($a1471343 (Array Int Int)) ($x1531349 Int) ($i1491345 Int))
    (=> (and (not (< $x1531349 100000))
             ($main_inv87 $a1471343 $b1481344 $i1491345 $c1501346 $rv1511347 $j1521348 $x1531349))
        ($main_sum87 $a1471343 $b1481344 $i1491345 $c1501346 $rv1511347 $j1521348 $x1531349))))

; __VERIFIER_assert precondition
(assert
  (forall (($b1481344 (Array Int Int)) ($c1501346 (Array Int Int)) ($rv1511347 Int) ($j1521348 Int) ($a1471343 (Array Int Int)) ($x1531349 Int) ($i1491345 Int))
    (=> (and (< $x1531349 100000)
             ($main_inv87 $a1471343 $b1481344 $i1491345 $c1501346 $rv1511347 $j1521348 $x1531349))
        ($__VERIFIER_assert_pre (ite (= (select $a1471343 $x1531349) (select $b1481344 $x1531349)) 1 0)))))

; forwards $main_inv87
(assert
  (forall (($b1481344 (Array Int Int)) ($c1501346 (Array Int Int)) ($rv1511347 Int) ($j1521348 Int) ($a1471343 (Array Int Int)) ($x1531349 Int) ($i1491345 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a1471343 $x1531349) (select $b1481344 $x1531349)) 1 0))
             (< $x1531349 100000)
             ($main_inv87 $a1471343 $b1481344 $i1491345 $c1501346 $rv1511347 $j1521348 $x1531349))
        ($main_inv87 $a1471343 $b1481344 $i1491345 $c1501346 $rv1511347 $j1521348 (+ $x1531349 1)))))

; if then
(assert
  (forall (($j1521355 Int) ($x1531356 Int) ($a1471350 (Array Int Int)) ($rv1511354 Int) ($c1501353 (Array Int Int)) ($i1491352 Int) ($b1481351 (Array Int Int)))
    (=> (and ($main_sum87 $a1471350 $b1481351 $i1491352 $c1501353 $rv1511354 $j1521355 $x1531356))
        ($main_if42 $a1471350 $b1481351 $i1491352 $c1501353 $rv1511354 $j1521355 $x1531356))))

; if else
(assert
  (forall (($b1481337 (Array Int Int)) ($x1531342 Int) ($a1471336 (Array Int Int)) ($rv1511340 Int) ($c1501339 (Array Int Int)) ($i1491338 Int) ($j1521341 Int))
    (=> (and (= $rv1511340 0)
             ($main_sum86 $a1471336 $b1481337 $i1491338 $c1501339 $rv1511340 $j1521341 $x1531342))
        ($main_if42 $a1471336 $b1481337 $i1491338 $c1501339 $rv1511340 $j1521341 $x1531342))))

; loop entry $main_inv88
(assert
  (forall (($rv1511361 Int) ($a1471357 (Array Int Int)) ($x1531363 Int) ($i1491359 Int) ($b1481358 (Array Int Int)) ($c1501360 (Array Int Int)) ($j1521362 Int))
    (=> (and ($main_if42 $a1471357 $b1481358 $i1491359 $c1501360 $rv1511361 $j1521362 $x1531363))
        ($main_inv88 $a1471357 $b1481358 $i1491359 $c1501360 $rv1511361 $j1521362 0))))

; loop term $main_sum88
(assert
  (forall (($c1501367 (Array Int Int)) ($a1471364 (Array Int Int)) ($i1491366 Int) ($rv1511368 Int) ($x1531370 Int) ($j1521369 Int) ($b1481365 (Array Int Int)))
    (=> (and (not (< $x1531370 100000))
             ($main_inv88 $a1471364 $b1481365 $i1491366 $c1501367 $rv1511368 $j1521369 $x1531370))
        ($main_sum88 $a1471364 $b1481365 $i1491366 $c1501367 $rv1511368 $j1521369 $x1531370))))

; __VERIFIER_assert precondition
(assert
  (forall (($c1501367 (Array Int Int)) ($a1471364 (Array Int Int)) ($i1491366 Int) ($rv1511368 Int) ($x1531370 Int) ($j1521369 Int) ($b1481365 (Array Int Int)))
    (=> (and (< $x1531370 100000)
             ($main_inv88 $a1471364 $b1481365 $i1491366 $c1501367 $rv1511368 $j1521369 $x1531370))
        ($__VERIFIER_assert_pre (ite (= (select $a1471364 $x1531370) (select $c1501367 $x1531370)) 1 0)))))

; forwards $main_inv88
(assert
  (forall (($c1501367 (Array Int Int)) ($a1471364 (Array Int Int)) ($i1491366 Int) ($rv1511368 Int) ($x1531370 Int) ($j1521369 Int) ($b1481365 (Array Int Int)))
    (=> (and (__VERIFIER_assert (ite (= (select $a1471364 $x1531370) (select $c1501367 $x1531370)) 1 0))
             (< $x1531370 100000)
             ($main_inv88 $a1471364 $b1481365 $i1491366 $c1501367 $rv1511368 $j1521369 $x1531370))
        ($main_inv88 $a1471364 $b1481365 $i1491366 $c1501367 $rv1511368 $j1521369 (+ $x1531370 1)))))

(check-sat)
