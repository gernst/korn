(set-logic HORN)

(declare-fun $main_if148 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv419 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_if147 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if146 (Int) Bool)
(declare-fun $main_inv420 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum418 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum420 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum419 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv418 ((Array Int Int) (Array Int Int) Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond5399 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond5399))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if146 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5400 Int))
    (=> (and ($__VERIFIER_assert_if146 cond5400))
        (__VERIFIER_assert cond5400))))

; loop entry $main_inv418
(assert
  (forall (($a1516 (Array Int Int)) ($a2517 (Array Int Int)) ($x520 Int))
        ($main_inv418 $a1516 $a2517 0 150000 $x520)))

; loop term $main_sum418
(assert
  (forall (($x5205405 Int) ($a25175402 (Array Int Int)) ($z5195404 Int) ($a15165401 (Array Int Int)) ($i5185403 Int))
    (=> (and (not (< $i5185403 200000))
             ($main_inv418 $a15165401 $a25175402 $i5185403 $z5195404 $x5205405))
        ($main_sum418 $a15165401 $a25175402 $i5185403 $z5195404 $x5205405))))

; forwards $main_inv418
(assert
  (forall (($x5205405 Int) ($int5407 Int) ($a25175402 (Array Int Int)) ($z5195404 Int) ($int5406 Int) ($a15165401 (Array Int Int)) ($i5185403 Int))
    (=> (and (<= (- 2147483648) $int5407)
             (<= $int5407 2147483647)
             (<= (- 2147483648) $int5406)
             (<= $int5406 2147483647)
             (< $i5185403 200000)
             ($main_inv418 $a15165401 $a25175402 $i5185403 $z5195404 $x5205405))
        ($main_inv418 (store $a15165401 $i5185403 $int5406) (store $a25175402 $i5185403 $int5407) (+ $i5185403 1) $z5195404 $x5205405))))

; loop entry $main_inv419
(assert
  (forall (($x5205412 Int) ($i5185410 Int) ($a25175409 (Array Int Int)) ($z5195411 Int) ($a15165408 (Array Int Int)))
    (=> (and ($main_sum418 $a15165408 $a25175409 $i5185410 $z5195411 $x5205412))
        ($main_inv419 $a15165408 $a25175409 0 $z5195411 $x5205412))))

; loop term $main_sum419
(assert
  (forall (($a15165413 (Array Int Int)) ($z5195416 Int) ($x5205417 Int) ($a25175414 (Array Int Int)) ($i5185415 Int))
    (=> (and (not (< $i5185415 200000))
             ($main_inv419 $a15165413 $a25175414 $i5185415 $z5195416 $x5205417))
        ($main_sum419 $a15165413 $a25175414 $i5185415 $z5195416 $x5205417))))

; if then
(assert
  (forall (($a15165413 (Array Int Int)) ($z5195416 Int) ($x5205417 Int) ($a25175414 (Array Int Int)) ($i5185415 Int))
    (=> (and (not (= $i5185415 $z5195416))
             (< $i5185415 200000)
             ($main_inv419 $a15165413 $a25175414 $i5185415 $z5195416 $x5205417))
        ($main_if147 $a15165413 (store $a25175414 $i5185415 (select $a15165413 $i5185415)) $i5185415 $z5195416 $x5205417))))

; if else
(assert
  (forall (($a15165413 (Array Int Int)) ($z5195416 Int) ($x5205417 Int) ($a25175414 (Array Int Int)) ($i5185415 Int))
    (=> (and (= $i5185415 $z5195416)
             (< $i5185415 200000)
             ($main_inv419 $a15165413 $a25175414 $i5185415 $z5195416 $x5205417))
        ($main_if147 $a15165413 $a25175414 $i5185415 $z5195416 $x5205417))))

; forwards $main_inv419
(assert
  (forall (($i5185420 Int) ($z5195421 Int) ($a25175419 (Array Int Int)) ($x5205422 Int) ($a15165418 (Array Int Int)))
    (=> (and ($main_if147 $a15165418 $a25175419 $i5185420 $z5195421 $x5205422))
        ($main_inv419 $a15165418 $a25175419 (+ $i5185420 1) $z5195421 $x5205422))))

; loop entry $main_inv420
(assert
  (forall (($a25175424 (Array Int Int)) ($a15165423 (Array Int Int)) ($z5195426 Int) ($i5185425 Int) ($x5205427 Int))
    (=> (and ($main_sum419 $a15165423 $a25175424 $i5185425 $z5195426 $x5205427))
        ($main_inv420 $a15165423 $a25175424 $i5185425 $z5195426 0))))

; loop term $main_sum420
(assert
  (forall (($i5185430 Int) ($z5195431 Int) ($x5205432 Int) ($a25175429 (Array Int Int)) ($a15165428 (Array Int Int)))
    (=> (and (not (< $x5205432 200000))
             ($main_inv420 $a15165428 $a25175429 $i5185430 $z5195431 $x5205432))
        ($main_sum420 $a15165428 $a25175429 $i5185430 $z5195431 $x5205432))))

; __VERIFIER_assert precondition
(assert
  (forall (($i5185430 Int) ($z5195431 Int) ($x5205432 Int) ($a25175429 (Array Int Int)) ($a15165428 (Array Int Int)))
    (=> (and (not (= $x5205432 $z5195431))
             (< $x5205432 200000)
             ($main_inv420 $a15165428 $a25175429 $i5185430 $z5195431 $x5205432))
        ($__VERIFIER_assert_pre (ite (= (select $a15165428 $x5205432) (select $a25175429 $x5205432)) 1 0)))))

; if then
(assert
  (forall (($i5185430 Int) ($z5195431 Int) ($x5205432 Int) ($a25175429 (Array Int Int)) ($a15165428 (Array Int Int)))
    (=> (and (__VERIFIER_assert (ite (= (select $a15165428 $x5205432) (select $a25175429 $x5205432)) 1 0))
             (not (= $x5205432 $z5195431))
             (< $x5205432 200000)
             ($main_inv420 $a15165428 $a25175429 $i5185430 $z5195431 $x5205432))
        ($main_if148 $a15165428 $a25175429 $i5185430 $z5195431 $x5205432))))

; if else
(assert
  (forall (($i5185430 Int) ($z5195431 Int) ($x5205432 Int) ($a25175429 (Array Int Int)) ($a15165428 (Array Int Int)))
    (=> (and (= $x5205432 $z5195431)
             (< $x5205432 200000)
             ($main_inv420 $a15165428 $a25175429 $i5185430 $z5195431 $x5205432))
        ($main_if148 $a15165428 $a25175429 $i5185430 $z5195431 $x5205432))))

; forwards $main_inv420
(assert
  (forall (($z5195436 Int) ($x5205437 Int) ($a25175434 (Array Int Int)) ($i5185435 Int) ($a15165433 (Array Int Int)))
    (=> (and ($main_if148 $a15165433 $a25175434 $i5185435 $z5195436 $x5205437))
        ($main_inv420 $a15165433 $a25175434 $i5185435 $z5195436 (+ $x5205437 1)))))

(check-sat)
