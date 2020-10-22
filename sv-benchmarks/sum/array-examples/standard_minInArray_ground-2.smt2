(set-logic HORN)

(declare-fun $main_sum331 ((Array Int Int) Int Int Int (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if87 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum332 ((Array Int Int) Int Int Int (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv332 ((Array Int Int) Int Int Int) Bool)
(declare-fun $main_if88 ((Array Int Int) Int Int Int (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum330 ((Array Int Int) Int Int Int (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv331 ((Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv330 ((Array Int Int) Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond6321 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond6321))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if87 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6322 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if87 cond cond6322))
        (__VERIFIER_assert cond6322))))

; loop entry $main_inv330
(assert
  (forall (($a380 (Array Int Int)) ($min381 Int) ($x383 Int) ($i382 Int))
    (=> (and (= $i382 0)
             (= $min381 0))
        ($main_inv330 $a380 $min381 0 $x383))))

; loop term $main_sum330
(assert
  (forall (($a3806323 (Array Int Int)) ($min3816324 Int) ($i3826325 Int) ($x3836326 Int))
    (=> (and (not (< $i3826325 100000)))
        ($main_sum330 $a3806323 $min3816324 $i3826325 $x3836326 $a3806323 $min3816324 $i3826325 $x3836326))))

; forwards $main_inv330
(assert
  (forall (($int6327 Int) ($i3826325 Int) ($a3806323 (Array Int Int)) ($min3816324 Int) ($x3836326 Int))
    (=> (and (<= (- 2147483648) $int6327)
             (<= $int6327 2147483647)
             (< $i3826325 100000)
             ($main_inv330 $a3806323 $min3816324 $i3826325 $x3836326))
        ($main_inv330 (store $a3806323 $i3826325 $int6327) $min3816324 (+ $i3826325 1) $x3836326))))

; backwards $main_sum330
(assert
  (forall (($int6327 Int) ($a3806328 (Array Int Int)) ($i3826330 Int) ($min3816329 Int) ($i3826325 Int) ($min3816324 Int) ($x3836326 Int) ($x3836331 Int) ($a3806323 (Array Int Int)))
    (=> (and ($main_sum330 (store $a3806323 $i3826325 $int6327) $min3816324 (+ $i3826325 1) $x3836326 $a3806328 $min3816329 $i3826330 $x3836331)
             (<= (- 2147483648) $int6327)
             (<= $int6327 2147483647)
             (< $i3826325 100000))
        ($main_sum330 $a3806323 $min3816324 $i3826325 $x3836326 $a3806328 $min3816329 $i3826330 $x3836331))))

; loop entry $main_inv331
(assert
  (forall (($a380 (Array Int Int)) ($a3806332 (Array Int Int)) ($min3816333 Int) ($i3826334 Int) ($i382 Int) ($x3836335 Int) ($x383 Int) ($min381 Int))
    (=> (and ($main_sum330 $a380 $min381 0 $x383 $a3806332 $min3816333 $i3826334 $x3836335)
             (= $i382 0)
             (= $min381 0))
        ($main_inv331 $a3806332 $min3816333 0 $x3836335))))

; loop term $main_sum331
(assert
  (forall (($a3806336 (Array Int Int)) ($min3816337 Int) ($i3826338 Int) ($x3836339 Int))
    (=> (and (not (< $i3826338 100000)))
        ($main_sum331 $a3806336 $min3816337 $i3826338 $x3836339 $a3806336 $min3816337 $i3826338 $x3836339))))

; if then
(assert
  (forall (($a3806336 (Array Int Int)) ($min3816337 Int) ($i3826338 Int) ($x3836339 Int))
    (=> (and (< (select $a3806336 $i3826338) $min3816337)
             (< $i3826338 100000)
             ($main_inv331 $a3806336 $min3816337 $i3826338 $x3836339))
        ($main_if88 $a3806336 $min3816337 $i3826338 $x3836339 $a3806336 (select $a3806336 $i3826338) $i3826338 $x3836339))))

; if else
(assert
  (forall (($a3806336 (Array Int Int)) ($min3816337 Int) ($i3826338 Int) ($x3836339 Int))
    (=> (and (not (< (select $a3806336 $i3826338) $min3816337))
             (< $i3826338 100000)
             ($main_inv331 $a3806336 $min3816337 $i3826338 $x3836339))
        ($main_if88 $a3806336 $min3816337 $i3826338 $x3836339 $a3806336 $min3816337 $i3826338 $x3836339))))

; forwards $main_inv331
(assert
  (forall (($min3816341 Int) ($x3836339 Int) ($i3826342 Int) ($i3826338 Int) ($min3816337 Int) ($a3806340 (Array Int Int)) ($x3836343 Int) ($a3806336 (Array Int Int)))
    (=> (and ($main_if88 $a3806336 $min3816337 $i3826338 $x3836339 $a3806340 $min3816341 $i3826342 $x3836343))
        ($main_inv331 $a3806340 $min3816341 (+ $i3826342 1) $x3836343))))

; backwards $main_sum331
(assert
  (forall (($min3816345 Int) ($min3816341 Int) ($x3836339 Int) ($x3836347 Int) ($i3826338 Int) ($min3816337 Int) ($a3806344 (Array Int Int)) ($a3806340 (Array Int Int)) ($x3836343 Int) ($a3806336 (Array Int Int)) ($i3826346 Int) ($i3826342 Int))
    (=> (and ($main_sum331 $a3806340 $min3816341 (+ $i3826342 1) $x3836343 $a3806344 $min3816345 $i3826346 $x3836347)
             ($main_if88 $a3806336 $min3816337 $i3826338 $x3836339 $a3806340 $min3816341 $i3826342 $x3836343))
        ($main_sum331 $a3806336 $min3816337 $i3826338 $x3836339 $a3806344 $min3816345 $i3826346 $x3836347))))

; loop entry $main_inv332
(assert
  (forall (($a3806332 (Array Int Int)) ($min3816333 Int) ($i3826334 Int) ($i382 Int) ($x3836335 Int) ($min3816349 Int) ($x383 Int) ($a3806348 (Array Int Int)) ($x3836351 Int) ($min381 Int) ($a380 (Array Int Int)) ($i3826350 Int))
    (=> (and ($main_sum331 $a3806332 $min3816333 0 $x3836335 $a3806348 $min3816349 $i3826350 $x3836351)
             ($main_sum330 $a380 $min381 0 $x383 $a3806332 $min3816333 $i3826334 $x3836335)
             (= $i382 0)
             (= $min381 0))
        ($main_inv332 $a3806348 $min3816349 $i3826350 0))))

; loop term $main_sum332
(assert
  (forall (($a3806352 (Array Int Int)) ($min3816353 Int) ($i3826354 Int) ($x3836355 Int))
    (=> (and (not (< $x3836355 100000)))
        ($main_sum332 $a3806352 $min3816353 $i3826354 $x3836355 $a3806352 $min3816353 $i3826354 $x3836355))))

; __VERIFIER_assert precondition
(assert
  (forall (($a3806352 (Array Int Int)) ($x3836355 Int) ($min3816353 Int) ($i3826354 Int))
    (=> (and (< $x3836355 100000)
             ($main_inv332 $a3806352 $min3816353 $i3826354 $x3836355))
        ($__VERIFIER_assert_pre (ite (>= (select $a3806352 $x3836355) $min3816353) 1 0)))))

; forwards $main_inv332
(assert
  (forall (($a3806352 (Array Int Int)) ($min3816353 Int) ($i3826354 Int) ($x3836355 Int))
    (=> (and (__VERIFIER_assert (ite (>= (select $a3806352 $x3836355) $min3816353) 1 0))
             (< $x3836355 100000)
             ($main_inv332 $a3806352 $min3816353 $i3826354 $x3836355))
        ($main_inv332 $a3806352 $min3816353 $i3826354 (+ $x3836355 1)))))

; backwards $main_sum332
(assert
  (forall (($i3826358 Int) ($x3836359 Int) ($a3806352 (Array Int Int)) ($min3816353 Int) ($min3816357 Int) ($a3806356 (Array Int Int)) ($i3826354 Int) ($x3836355 Int))
    (=> (and ($main_sum332 $a3806352 $min3816353 $i3826354 (+ $x3836355 1) $a3806356 $min3816357 $i3826358 $x3836359)
             (__VERIFIER_assert (ite (>= (select $a3806352 $x3836355) $min3816353) 1 0))
             (< $x3836355 100000))
        ($main_sum332 $a3806352 $min3816353 $i3826354 $x3836355 $a3806356 $min3816357 $i3826358 $x3836359))))

(check-sat)
