(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv157 (Int Int Int Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_sum155 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if550 (Int Int) Bool)
(declare-fun $main_inv156 (Int Int Int Int) Bool)
(declare-fun $main_sum158 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum154 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $main_inv158 (Int Int Int Int) Bool)
(declare-fun $main_inv155 (Int Int Int Int) Bool)
(declare-fun $main_sum157 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum156 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv154 (Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond14377 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond14377))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if550 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14378 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if550 cond cond14378))
        (__VERIFIER_assert cond14378))))

; loop entry $main_inv154
(assert
  (forall (($y511 Int) ($x510 Int) ($z512 Int) ($n509 Int) ($uint14379 Int))
    (=> (and (= $y511 0)
             (= $x510 $n509)
             (= $n509 $uint14379)
             (<= 0 $uint14379)
             (<= $uint14379 4294967295))
        ($main_inv154 $n509 $x510 $y511 $z512))))

; loop term $main_sum154
(assert
  (forall (($n50914380 Int) ($x51014381 Int) ($y51114382 Int) ($z51214383 Int))
    (=> (and (not (> $x51014381 0)))
        ($main_sum154 $n50914380 $x51014381 $y51114382 $z51214383 $n50914380 $x51014381 $y51114382 $z51214383))))

; forwards $main_inv154
(assert
  (forall (($n50914380 Int) ($x51014381 Int) ($y51114382 Int) ($z51214383 Int))
    (=> (and (> $x51014381 0)
             ($main_inv154 $n50914380 $x51014381 $y51114382 $z51214383))
        ($main_inv154 $n50914380 (- $x51014381 1) (+ $y51114382 1) $z51214383))))

; backwards $main_sum154
(assert
  (forall (($x51014385 Int) ($y51114386 Int) ($x51014381 Int) ($n50914380 Int) ($y51114382 Int) ($n50914384 Int) ($z51214383 Int) ($z51214387 Int))
    (=> (and ($main_sum154 $n50914380 (- $x51014381 1) (+ $y51114382 1) $z51214383 $n50914384 $x51014385 $y51114386 $z51214387)
             (> $x51014381 0))
        ($main_sum154 $n50914380 $x51014381 $y51114382 $z51214383 $n50914384 $x51014385 $y51114386 $z51214387))))

; loop entry $main_inv155
(assert
  (forall (($n50914388 Int) ($x510 Int) ($z51214391 Int) ($z512 Int) ($y51114390 Int) ($n509 Int) ($uint14379 Int) ($x51014389 Int) ($y511 Int))
    (=> (and ($main_sum154 $n509 $x510 $y511 $z512 $n50914388 $x51014389 $y51114390 $z51214391)
             (= $y511 0)
             (= $x510 $n509)
             (= $n509 $uint14379)
             (<= 0 $uint14379)
             (<= $uint14379 4294967295))
        ($main_inv155 $n50914388 $x51014389 $y51114390 $y51114390))))

; loop term $main_sum155
(assert
  (forall (($n50914392 Int) ($x51014393 Int) ($y51114394 Int) ($z51214395 Int))
    (=> (and (not (> $z51214395 0)))
        ($main_sum155 $n50914392 $x51014393 $y51114394 $z51214395 $n50914392 $x51014393 $y51114394 $z51214395))))

; forwards $main_inv155
(assert
  (forall (($n50914392 Int) ($x51014393 Int) ($y51114394 Int) ($z51214395 Int))
    (=> (and (> $z51214395 0)
             ($main_inv155 $n50914392 $x51014393 $y51114394 $z51214395))
        ($main_inv155 $n50914392 (+ $x51014393 1) $y51114394 (- $z51214395 1)))))

; backwards $main_sum155
(assert
  (forall (($n50914396 Int) ($x51014397 Int) ($y51114398 Int) ($x51014393 Int) ($z51214395 Int) ($n50914392 Int) ($z51214399 Int) ($y51114394 Int))
    (=> (and ($main_sum155 $n50914392 (+ $x51014393 1) $y51114394 (- $z51214395 1) $n50914396 $x51014397 $y51114398 $z51214399)
             (> $z51214395 0))
        ($main_sum155 $n50914392 $x51014393 $y51114394 $z51214395 $n50914396 $x51014397 $y51114398 $z51214399))))

; loop entry $main_inv156
(assert
  (forall (($n50914388 Int) ($x510 Int) ($z51214391 Int) ($z51214403 Int) ($x51014401 Int) ($n50914400 Int) ($y51114402 Int) ($z512 Int) ($y51114390 Int) ($n509 Int) ($uint14379 Int) ($x51014389 Int) ($y511 Int))
    (=> (and ($main_sum155 $n50914388 $x51014389 $y51114390 $y51114390 $n50914400 $x51014401 $y51114402 $z51214403)
             ($main_sum154 $n509 $x510 $y511 $z512 $n50914388 $x51014389 $y51114390 $z51214391)
             (= $y511 0)
             (= $x510 $n509)
             (= $n509 $uint14379)
             (<= 0 $uint14379)
             (<= $uint14379 4294967295))
        ($main_inv156 $n50914400 $x51014401 $y51114402 $z51214403))))

; loop term $main_sum156
(assert
  (forall (($n50914404 Int) ($x51014405 Int) ($y51114406 Int) ($z51214407 Int))
    (=> (and (not (> $y51114406 0)))
        ($main_sum156 $n50914404 $x51014405 $y51114406 $z51214407 $n50914404 $x51014405 $y51114406 $z51214407))))

; forwards $main_inv156
(assert
  (forall (($n50914404 Int) ($x51014405 Int) ($y51114406 Int) ($z51214407 Int))
    (=> (and (> $y51114406 0)
             ($main_inv156 $n50914404 $x51014405 $y51114406 $z51214407))
        ($main_inv156 $n50914404 $x51014405 (- $y51114406 1) (+ $z51214407 1)))))

; backwards $main_sum156
(assert
  (forall (($x51014405 Int) ($x51014409 Int) ($n50914408 Int) ($z51214407 Int) ($y51114410 Int) ($z51214411 Int) ($y51114406 Int) ($n50914404 Int))
    (=> (and ($main_sum156 $n50914404 $x51014405 (- $y51114406 1) (+ $z51214407 1) $n50914408 $x51014409 $y51114410 $z51214411)
             (> $y51114406 0))
        ($main_sum156 $n50914404 $x51014405 $y51114406 $z51214407 $n50914408 $x51014409 $y51114410 $z51214411))))

; loop entry $main_inv157
(assert
  (forall (($n50914388 Int) ($z51214415 Int) ($x510 Int) ($z51214391 Int) ($z51214403 Int) ($x51014401 Int) ($x51014413 Int) ($n50914400 Int) ($y51114402 Int) ($y51114390 Int) ($n509 Int) ($uint14379 Int) ($x51014389 Int) ($y511 Int) ($y51114414 Int) ($z512 Int) ($n50914412 Int))
    (=> (and ($main_sum156 $n50914400 $x51014401 $y51114402 $z51214403 $n50914412 $x51014413 $y51114414 $z51214415)
             ($main_sum155 $n50914388 $x51014389 $y51114390 $y51114390 $n50914400 $x51014401 $y51114402 $z51214403)
             ($main_sum154 $n509 $x510 $y511 $z512 $n50914388 $x51014389 $y51114390 $z51214391)
             (= $y511 0)
             (= $x510 $n509)
             (= $n509 $uint14379)
             (<= 0 $uint14379)
             (<= $uint14379 4294967295))
        ($main_inv157 $n50914412 $x51014413 $y51114414 $z51214415))))

; loop term $main_sum157
(assert
  (forall (($n50914416 Int) ($x51014417 Int) ($y51114418 Int) ($z51214419 Int))
    (=> (and (not (> $x51014417 0)))
        ($main_sum157 $n50914416 $x51014417 $y51114418 $z51214419 $n50914416 $x51014417 $y51114418 $z51214419))))

; forwards $main_inv157
(assert
  (forall (($n50914416 Int) ($x51014417 Int) ($y51114418 Int) ($z51214419 Int))
    (=> (and (> $x51014417 0)
             ($main_inv157 $n50914416 $x51014417 $y51114418 $z51214419))
        ($main_inv157 $n50914416 (- $x51014417 1) (+ $y51114418 1) $z51214419))))

; backwards $main_sum157
(assert
  (forall (($x51014421 Int) ($y51114418 Int) ($x51014417 Int) ($z51214423 Int) ($n50914416 Int) ($y51114422 Int) ($n50914420 Int) ($z51214419 Int))
    (=> (and ($main_sum157 $n50914416 (- $x51014417 1) (+ $y51114418 1) $z51214419 $n50914420 $x51014421 $y51114422 $z51214423)
             (> $x51014417 0))
        ($main_sum157 $n50914416 $x51014417 $y51114418 $z51214419 $n50914420 $x51014421 $y51114422 $z51214423))))

; loop entry $main_inv158
(assert
  (forall (($z51214415 Int) ($x510 Int) ($z51214403 Int) ($x51014401 Int) ($y51114426 Int) ($x51014413 Int) ($n50914400 Int) ($z51214427 Int) ($y51114402 Int) ($y51114390 Int) ($n509 Int) ($uint14379 Int) ($n50914388 Int) ($n50914424 Int) ($x51014389 Int) ($y511 Int) ($y51114414 Int) ($z51214391 Int) ($x51014425 Int) ($z512 Int) ($n50914412 Int))
    (=> (and ($main_sum157 $n50914412 $x51014413 $y51114414 $z51214415 $n50914424 $x51014425 $y51114426 $z51214427)
             ($main_sum156 $n50914400 $x51014401 $y51114402 $z51214403 $n50914412 $x51014413 $y51114414 $z51214415)
             ($main_sum155 $n50914388 $x51014389 $y51114390 $y51114390 $n50914400 $x51014401 $y51114402 $z51214403)
             ($main_sum154 $n509 $x510 $y511 $z512 $n50914388 $x51014389 $y51114390 $z51214391)
             (= $y511 0)
             (= $x510 $n509)
             (= $n509 $uint14379)
             (<= 0 $uint14379)
             (<= $uint14379 4294967295))
        ($main_inv158 $n50914424 $x51014425 $y51114426 $z51214427))))

; loop term $main_sum158
(assert
  (forall (($n50914428 Int) ($x51014429 Int) ($y51114430 Int) ($z51214431 Int))
    (=> (and (not (> $z51214431 0)))
        ($main_sum158 $n50914428 $x51014429 $y51114430 $z51214431 $n50914428 $x51014429 $y51114430 $z51214431))))

; forwards $main_inv158
(assert
  (forall (($n50914428 Int) ($x51014429 Int) ($y51114430 Int) ($z51214431 Int))
    (=> (and (> $z51214431 0)
             ($main_inv158 $n50914428 $x51014429 $y51114430 $z51214431))
        ($main_inv158 $n50914428 (+ $x51014429 1) $y51114430 (- $z51214431 1)))))

; backwards $main_sum158
(assert
  (forall (($x51014433 Int) ($y51114430 Int) ($z51214435 Int) ($x51014429 Int) ($n50914432 Int) ($z51214431 Int) ($n50914428 Int) ($y51114434 Int))
    (=> (and ($main_sum158 $n50914428 (+ $x51014429 1) $y51114430 (- $z51214431 1) $n50914432 $x51014433 $y51114434 $z51214435)
             (> $z51214431 0))
        ($main_sum158 $n50914428 $x51014429 $y51114430 $z51214431 $n50914432 $x51014433 $y51114434 $z51214435))))

; __VERIFIER_assert precondition
(assert
  (forall (($z51214415 Int) ($z51214403 Int) ($x51014401 Int) ($y51114426 Int) ($z51214439 Int) ($x51014413 Int) ($n50914400 Int) ($z51214427 Int) ($y51114390 Int) ($n509 Int) ($n50914436 Int) ($uint14379 Int) ($n50914388 Int) ($n50914424 Int) ($x51014389 Int) ($y511 Int) ($y51114414 Int) ($y51114438 Int) ($x510 Int) ($z51214391 Int) ($x51014425 Int) ($x51014437 Int) ($y51114402 Int) ($z512 Int) ($n50914412 Int))
    (=> (and ($main_sum158 $n50914424 $x51014425 $y51114426 $z51214427 $n50914436 $x51014437 $y51114438 $z51214439)
             ($main_sum157 $n50914412 $x51014413 $y51114414 $z51214415 $n50914424 $x51014425 $y51114426 $z51214427)
             ($main_sum156 $n50914400 $x51014401 $y51114402 $z51214403 $n50914412 $x51014413 $y51114414 $z51214415)
             ($main_sum155 $n50914388 $x51014389 $y51114390 $y51114390 $n50914400 $x51014401 $y51114402 $z51214403)
             ($main_sum154 $n509 $x510 $y511 $z512 $n50914388 $x51014389 $y51114390 $z51214391)
             (= $y511 0)
             (= $x510 $n509)
             (= $n509 $uint14379)
             (<= 0 $uint14379)
             (<= $uint14379 4294967295))
        ($__VERIFIER_assert_pre (ite (= $x51014437 $n50914436) 1 0)))))

(check-sat)
