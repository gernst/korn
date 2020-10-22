(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv152 (Int Int Int Int) Bool)
(declare-fun $main_sum153 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if549 (Int Int) Bool)
(declare-fun $main_sum152 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv151 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $main_sum151 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv153 (Int Int Int Int) Bool)
(declare-fun $main_sum150 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv150 (Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond14326 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond14326))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if549 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14327 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if549 cond cond14327))
        (__VERIFIER_assert cond14327))))

; loop entry $main_inv150
(assert
  (forall (($uint14328 Int) ($x506 Int) ($z508 Int) ($y507 Int) ($n505 Int))
    (=> (and (= $y507 0)
             (= $x506 $n505)
             (= $n505 $uint14328)
             (<= 0 $uint14328)
             (<= $uint14328 4294967295))
        ($main_inv150 $n505 $x506 $y507 $z508))))

; loop term $main_sum150
(assert
  (forall (($n50514329 Int) ($x50614330 Int) ($y50714331 Int) ($z50814332 Int))
    (=> (and (not (> $x50614330 0)))
        ($main_sum150 $n50514329 $x50614330 $y50714331 $z50814332 $n50514329 $x50614330 $y50714331 $z50814332))))

; forwards $main_inv150
(assert
  (forall (($n50514329 Int) ($x50614330 Int) ($y50714331 Int) ($z50814332 Int))
    (=> (and (> $x50614330 0)
             ($main_inv150 $n50514329 $x50614330 $y50714331 $z50814332))
        ($main_inv150 $n50514329 (- $x50614330 1) (+ $y50714331 1) $z50814332))))

; backwards $main_sum150
(assert
  (forall (($n50514333 Int) ($y50714335 Int) ($y50714331 Int) ($x50614330 Int) ($x50614334 Int) ($z50814336 Int) ($n50514329 Int) ($z50814332 Int))
    (=> (and ($main_sum150 $n50514329 (- $x50614330 1) (+ $y50714331 1) $z50814332 $n50514333 $x50614334 $y50714335 $z50814336)
             (> $x50614330 0))
        ($main_sum150 $n50514329 $x50614330 $y50714331 $z50814332 $n50514333 $x50614334 $y50714335 $z50814336))))

; loop entry $main_inv151
(assert
  (forall (($uint14328 Int) ($n50514337 Int) ($x506 Int) ($y50714339 Int) ($z508 Int) ($z50814340 Int) ($y507 Int) ($n505 Int) ($x50614338 Int))
    (=> (and ($main_sum150 $n505 $x506 $y507 $z508 $n50514337 $x50614338 $y50714339 $z50814340)
             (= $y507 0)
             (= $x506 $n505)
             (= $n505 $uint14328)
             (<= 0 $uint14328)
             (<= $uint14328 4294967295))
        ($main_inv151 $n50514337 $x50614338 $y50714339 $y50714339))))

; loop term $main_sum151
(assert
  (forall (($n50514341 Int) ($x50614342 Int) ($y50714343 Int) ($z50814344 Int))
    (=> (and (not (> $z50814344 0)))
        ($main_sum151 $n50514341 $x50614342 $y50714343 $z50814344 $n50514341 $x50614342 $y50714343 $z50814344))))

; forwards $main_inv151
(assert
  (forall (($n50514341 Int) ($x50614342 Int) ($y50714343 Int) ($z50814344 Int))
    (=> (and (> $z50814344 0)
             ($main_inv151 $n50514341 $x50614342 $y50714343 $z50814344))
        ($main_inv151 $n50514341 (+ $x50614342 1) $y50714343 (- $z50814344 1)))))

; backwards $main_sum151
(assert
  (forall (($x50614342 Int) ($y50714347 Int) ($n50514345 Int) ($y50714343 Int) ($z50814348 Int) ($z50814344 Int) ($x50614346 Int) ($n50514341 Int))
    (=> (and ($main_sum151 $n50514341 (+ $x50614342 1) $y50714343 (- $z50814344 1) $n50514345 $x50614346 $y50714347 $z50814348)
             (> $z50814344 0))
        ($main_sum151 $n50514341 $x50614342 $y50714343 $z50814344 $n50514345 $x50614346 $y50714347 $z50814348))))

; loop entry $main_inv152
(assert
  (forall (($x50614350 Int) ($n50514349 Int) ($uint14328 Int) ($n50514337 Int) ($y50714351 Int) ($z50814352 Int) ($x506 Int) ($y50714339 Int) ($z508 Int) ($z50814340 Int) ($y507 Int) ($n505 Int) ($x50614338 Int))
    (=> (and ($main_sum151 $n50514337 $x50614338 $y50714339 $y50714339 $n50514349 $x50614350 $y50714351 $z50814352)
             ($main_sum150 $n505 $x506 $y507 $z508 $n50514337 $x50614338 $y50714339 $z50814340)
             (= $y507 0)
             (= $x506 $n505)
             (= $n505 $uint14328)
             (<= 0 $uint14328)
             (<= $uint14328 4294967295))
        ($main_inv152 $n50514349 $x50614350 $y50714351 $z50814352))))

; loop term $main_sum152
(assert
  (forall (($n50514353 Int) ($x50614354 Int) ($y50714355 Int) ($z50814356 Int))
    (=> (and (not (> $y50714355 0)))
        ($main_sum152 $n50514353 $x50614354 $y50714355 $z50814356 $n50514353 $x50614354 $y50714355 $z50814356))))

; forwards $main_inv152
(assert
  (forall (($n50514353 Int) ($x50614354 Int) ($y50714355 Int) ($z50814356 Int))
    (=> (and (> $y50714355 0)
             ($main_inv152 $n50514353 $x50614354 $y50714355 $z50814356))
        ($main_inv152 $n50514353 $x50614354 (- $y50714355 1) (+ $z50814356 1)))))

; backwards $main_sum152
(assert
  (forall (($y50714359 Int) ($y50714355 Int) ($z50814360 Int) ($x50614354 Int) ($x50614358 Int) ($z50814356 Int) ($n50514357 Int) ($n50514353 Int))
    (=> (and ($main_sum152 $n50514353 $x50614354 (- $y50714355 1) (+ $z50814356 1) $n50514357 $x50614358 $y50714359 $z50814360)
             (> $y50714355 0))
        ($main_sum152 $n50514353 $x50614354 $y50714355 $z50814356 $n50514357 $x50614358 $y50714359 $z50814360))))

; loop entry $main_inv153
(assert
  (forall (($x50614350 Int) ($n50514349 Int) ($n50514361 Int) ($uint14328 Int) ($y50714363 Int) ($n50514337 Int) ($y50714351 Int) ($z50814352 Int) ($x506 Int) ($y50714339 Int) ($z508 Int) ($z50814340 Int) ($y507 Int) ($x50614362 Int) ($n505 Int) ($x50614338 Int) ($z50814364 Int))
    (=> (and ($main_sum152 $n50514349 $x50614350 $y50714351 $z50814352 $n50514361 $x50614362 $y50714363 $z50814364)
             ($main_sum151 $n50514337 $x50614338 $y50714339 $y50714339 $n50514349 $x50614350 $y50714351 $z50814352)
             ($main_sum150 $n505 $x506 $y507 $z508 $n50514337 $x50614338 $y50714339 $z50814340)
             (= $y507 0)
             (= $x506 $n505)
             (= $n505 $uint14328)
             (<= 0 $uint14328)
             (<= $uint14328 4294967295))
        ($main_inv153 $n50514361 $x50614362 $y50714363 $z50814364))))

; loop term $main_sum153
(assert
  (forall (($n50514365 Int) ($x50614366 Int) ($y50714367 Int) ($z50814368 Int))
    (=> (and (not (> $x50614366 0)))
        ($main_sum153 $n50514365 $x50614366 $y50714367 $z50814368 $n50514365 $x50614366 $y50714367 $z50814368))))

; forwards $main_inv153
(assert
  (forall (($n50514365 Int) ($x50614366 Int) ($y50714367 Int) ($z50814368 Int))
    (=> (and (> $x50614366 0)
             ($main_inv153 $n50514365 $x50614366 $y50714367 $z50814368))
        ($main_inv153 $n50514365 (- $x50614366 1) $y50714367 (+ $z50814368 1)))))

; backwards $main_sum153
(assert
  (forall (($z50814372 Int) ($x50614366 Int) ($y50714371 Int) ($n50514369 Int) ($z50814368 Int) ($n50514365 Int) ($x50614370 Int) ($y50714367 Int))
    (=> (and ($main_sum153 $n50514365 (- $x50614366 1) $y50714367 (+ $z50814368 1) $n50514369 $x50614370 $y50714371 $z50814372)
             (> $x50614366 0))
        ($main_sum153 $n50514365 $x50614366 $y50714367 $z50814368 $n50514369 $x50614370 $y50714371 $z50814372))))

; __VERIFIER_assert precondition
(assert
  (forall (($y50714375 Int) ($x50614350 Int) ($n50514349 Int) ($n50514373 Int) ($uint14328 Int) ($y50714363 Int) ($n50514337 Int) ($y50714351 Int) ($z50814352 Int) ($x506 Int) ($y50714339 Int) ($z508 Int) ($z50814376 Int) ($z50814340 Int) ($y507 Int) ($x50614362 Int) ($n505 Int) ($x50614338 Int) ($z50814364 Int) ($n50514361 Int) ($x50614374 Int))
    (=> (and ($main_sum153 $n50514361 $x50614362 $y50714363 $z50814364 $n50514373 $x50614374 $y50714375 $z50814376)
             ($main_sum152 $n50514349 $x50614350 $y50714351 $z50814352 $n50514361 $x50614362 $y50714363 $z50814364)
             ($main_sum151 $n50514337 $x50614338 $y50714339 $y50714339 $n50514349 $x50614350 $y50714351 $z50814352)
             ($main_sum150 $n505 $x506 $y507 $z508 $n50514337 $x50614338 $y50714339 $z50814340)
             (= $y507 0)
             (= $x506 $n505)
             (= $n505 $uint14328)
             (<= 0 $uint14328)
             (<= $uint14328 4294967295))
        ($__VERIFIER_assert_pre (ite (= $z50814376 (* 2 $n50514373)) 1 0)))))

(check-sat)
