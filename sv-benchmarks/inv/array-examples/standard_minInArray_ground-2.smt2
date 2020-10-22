(set-logic HORN)

(declare-fun $main_sum332 ((Array Int Int) Int Int Int) Bool)
(declare-fun $main_if88 ((Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum331 ((Array Int Int) Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv332 ((Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv331 ((Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if87 (Int) Bool)
(declare-fun $main_inv330 ((Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum330 ((Array Int Int) Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond4343 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond4343))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if87 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond4344 Int))
    (=> (and ($__VERIFIER_assert_if87 cond4344))
        (__VERIFIER_assert cond4344))))

; loop entry $main_inv330
(assert
  (forall (($a380 (Array Int Int)) ($min381 Int) ($x383 Int) ($i382 Int))
    (=> (and (= $i382 0)
             (= $min381 0))
        ($main_inv330 $a380 $min381 0 $x383))))

; loop term $main_sum330
(assert
  (forall (($a3804345 (Array Int Int)) ($min3814346 Int) ($i3824347 Int) ($x3834348 Int))
    (=> (and (not (< $i3824347 100000))
             ($main_inv330 $a3804345 $min3814346 $i3824347 $x3834348))
        ($main_sum330 $a3804345 $min3814346 $i3824347 $x3834348))))

; forwards $main_inv330
(assert
  (forall (($x3834348 Int) ($i3824347 Int) ($min3814346 Int) ($int4349 Int) ($a3804345 (Array Int Int)))
    (=> (and (<= (- 2147483648) $int4349)
             (<= $int4349 2147483647)
             (< $i3824347 100000)
             ($main_inv330 $a3804345 $min3814346 $i3824347 $x3834348))
        ($main_inv330 (store $a3804345 $i3824347 $int4349) $min3814346 (+ $i3824347 1) $x3834348))))

; loop entry $main_inv331
(assert
  (forall (($a3804350 (Array Int Int)) ($min3814351 Int) ($x3834353 Int) ($i3824352 Int))
    (=> (and ($main_sum330 $a3804350 $min3814351 $i3824352 $x3834353))
        ($main_inv331 $a3804350 $min3814351 0 $x3834353))))

; loop term $main_sum331
(assert
  (forall (($a3804354 (Array Int Int)) ($min3814355 Int) ($i3824356 Int) ($x3834357 Int))
    (=> (and (not (< $i3824356 100000))
             ($main_inv331 $a3804354 $min3814355 $i3824356 $x3834357))
        ($main_sum331 $a3804354 $min3814355 $i3824356 $x3834357))))

; if then
(assert
  (forall (($a3804354 (Array Int Int)) ($i3824356 Int) ($x3834357 Int) ($min3814355 Int))
    (=> (and (< (select $a3804354 $i3824356) $min3814355)
             (< $i3824356 100000)
             ($main_inv331 $a3804354 $min3814355 $i3824356 $x3834357))
        ($main_if88 $a3804354 (select $a3804354 $i3824356) $i3824356 $x3834357))))

; if else
(assert
  (forall (($a3804354 (Array Int Int)) ($min3814355 Int) ($i3824356 Int) ($x3834357 Int))
    (=> (and (not (< (select $a3804354 $i3824356) $min3814355))
             (< $i3824356 100000)
             ($main_inv331 $a3804354 $min3814355 $i3824356 $x3834357))
        ($main_if88 $a3804354 $min3814355 $i3824356 $x3834357))))

; forwards $main_inv331
(assert
  (forall (($a3804358 (Array Int Int)) ($min3814359 Int) ($i3824360 Int) ($x3834361 Int))
    (=> (and ($main_if88 $a3804358 $min3814359 $i3824360 $x3834361))
        ($main_inv331 $a3804358 $min3814359 (+ $i3824360 1) $x3834361))))

; loop entry $main_inv332
(assert
  (forall (($a3804362 (Array Int Int)) ($min3814363 Int) ($i3824364 Int) ($x3834365 Int))
    (=> (and ($main_sum331 $a3804362 $min3814363 $i3824364 $x3834365))
        ($main_inv332 $a3804362 $min3814363 $i3824364 0))))

; loop term $main_sum332
(assert
  (forall (($a3804366 (Array Int Int)) ($min3814367 Int) ($i3824368 Int) ($x3834369 Int))
    (=> (and (not (< $x3834369 100000))
             ($main_inv332 $a3804366 $min3814367 $i3824368 $x3834369))
        ($main_sum332 $a3804366 $min3814367 $i3824368 $x3834369))))

; __VERIFIER_assert precondition
(assert
  (forall (($a3804366 (Array Int Int)) ($x3834369 Int) ($min3814367 Int) ($i3824368 Int))
    (=> (and (< $x3834369 100000)
             ($main_inv332 $a3804366 $min3814367 $i3824368 $x3834369))
        ($__VERIFIER_assert_pre (ite (>= (select $a3804366 $x3834369) $min3814367) 1 0)))))

; forwards $main_inv332
(assert
  (forall (($a3804366 (Array Int Int)) ($min3814367 Int) ($i3824368 Int) ($x3834369 Int))
    (=> (and (__VERIFIER_assert (ite (>= (select $a3804366 $x3834369) $min3814367) 1 0))
             (< $x3834369 100000)
             ($main_inv332 $a3804366 $min3814367 $i3824368 $x3834369))
        ($main_inv332 $a3804366 $min3814367 $i3824368 (+ $x3834369 1)))))

(check-sat)
