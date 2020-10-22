(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv343 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_if92 (Int) Bool)
(declare-fun $main_inv341 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_if93 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_sum342 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_sum340 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_if94 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_inv340 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_sum343 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum341 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv342 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond4453 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond4453))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if92 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond4454 Int))
    (=> (and ($__VERIFIER_assert_if92 cond4454))
        (__VERIFIER_assert cond4454))))

; loop entry $main_inv340
(assert
  (forall (($cc398 (Array Int Int)) ($bb397 (Array Int Int)) ($aa393 (Array Int Int)) ($c396 Int) ($a394 Int) ($x399 Int) ($b395 Int))
    (=> (and (= $c396 0)
             (= $b395 0)
             (= $a394 0))
        ($main_inv340 $aa393 $a394 $b395 $c396 $bb397 $cc398 $x399))))

; loop term $main_sum340
(assert
  (forall (($bb3974459 (Array Int Int)) ($b3954457 Int) ($c3964458 Int) ($cc3984460 (Array Int Int)) ($a3944456 Int) ($x3994461 Int) ($aa3934455 (Array Int Int)))
    (=> (and (not (< $a3944456 100000))
             ($main_inv340 $aa3934455 $a3944456 $b3954457 $c3964458 $bb3974459 $cc3984460 $x3994461))
        ($main_sum340 $aa3934455 $a3944456 $b3954457 $c3964458 $bb3974459 $cc3984460 $x3994461))))

; if then
(assert
  (forall (($bb3974459 (Array Int Int)) ($b3954457 Int) ($c3964458 Int) ($cc3984460 (Array Int Int)) ($int4462 Int) ($a3944456 Int) ($x3994461 Int) ($aa3934455 (Array Int Int)))
    (=> (and (>= (select (store $aa3934455 $a3944456 $int4462) $a3944456) 0)
             (<= (- 2147483648) $int4462)
             (<= $int4462 2147483647)
             (< $a3944456 100000)
             ($main_inv340 $aa3934455 $a3944456 $b3954457 $c3964458 $bb3974459 $cc3984460 $x3994461))
        ($main_if93 (store $aa3934455 $a3944456 $int4462) $a3944456 (+ $b3954457 1) $c3964458 (store $bb3974459 $b3954457 (select (store $aa3934455 $a3944456 $int4462) $a3944456)) $cc3984460 $x3994461))))

; if else
(assert
  (forall (($bb3974459 (Array Int Int)) ($b3954457 Int) ($c3964458 Int) ($cc3984460 (Array Int Int)) ($int4462 Int) ($a3944456 Int) ($x3994461 Int) ($aa3934455 (Array Int Int)))
    (=> (and (not (>= (select (store $aa3934455 $a3944456 $int4462) $a3944456) 0))
             (<= (- 2147483648) $int4462)
             (<= $int4462 2147483647)
             (< $a3944456 100000)
             ($main_inv340 $aa3934455 $a3944456 $b3954457 $c3964458 $bb3974459 $cc3984460 $x3994461))
        ($main_if93 (store $aa3934455 $a3944456 $int4462) $a3944456 $b3954457 $c3964458 $bb3974459 $cc3984460 $x3994461))))

; forwards $main_inv340
(assert
  (forall (($bb3974467 (Array Int Int)) ($aa3934463 (Array Int Int)) ($c3964466 Int) ($b3954465 Int) ($a3944464 Int) ($cc3984468 (Array Int Int)) ($x3994469 Int))
    (=> (and ($main_if93 $aa3934463 $a3944464 $b3954465 $c3964466 $bb3974467 $cc3984468 $x3994469))
        ($main_inv340 $aa3934463 (+ $a3944464 1) $b3954465 $c3964466 $bb3974467 $cc3984468 $x3994469))))

; loop entry $main_inv341
(assert
  (forall (($bb3974474 (Array Int Int)) ($aa3934470 (Array Int Int)) ($cc3984475 (Array Int Int)) ($c3964473 Int) ($a3944471 Int) ($x3994476 Int) ($b3954472 Int))
    (=> (and ($main_sum340 $aa3934470 $a3944471 $b3954472 $c3964473 $bb3974474 $cc3984475 $x3994476))
        ($main_inv341 $aa3934470 0 $b3954472 $c3964473 $bb3974474 $cc3984475 $x3994476))))

; loop term $main_sum341
(assert
  (forall (($x3994483 Int) ($a3944478 Int) ($aa3934477 (Array Int Int)) ($cc3984482 (Array Int Int)) ($c3964480 Int) ($b3954479 Int) ($bb3974481 (Array Int Int)))
    (=> (and (not (< $a3944478 100000))
             ($main_inv341 $aa3934477 $a3944478 $b3954479 $c3964480 $bb3974481 $cc3984482 $x3994483))
        ($main_sum341 $aa3934477 $a3944478 $b3954479 $c3964480 $bb3974481 $cc3984482 $x3994483))))

; if then
(assert
  (forall (($x3994483 Int) ($a3944478 Int) ($aa3934477 (Array Int Int)) ($cc3984482 (Array Int Int)) ($c3964480 Int) ($b3954479 Int) ($bb3974481 (Array Int Int)))
    (=> (and (>= (select $aa3934477 $a3944478) 0)
             (< $a3944478 100000)
             ($main_inv341 $aa3934477 $a3944478 $b3954479 $c3964480 $bb3974481 $cc3984482 $x3994483))
        ($main_if94 $aa3934477 $a3944478 $b3954479 (+ $c3964480 1) $bb3974481 (store $cc3984482 $c3964480 (select $aa3934477 $a3944478)) $x3994483))))

; if else
(assert
  (forall (($x3994483 Int) ($a3944478 Int) ($aa3934477 (Array Int Int)) ($cc3984482 (Array Int Int)) ($c3964480 Int) ($b3954479 Int) ($bb3974481 (Array Int Int)))
    (=> (and (not (>= (select $aa3934477 $a3944478) 0))
             (< $a3944478 100000)
             ($main_inv341 $aa3934477 $a3944478 $b3954479 $c3964480 $bb3974481 $cc3984482 $x3994483))
        ($main_if94 $aa3934477 $a3944478 $b3954479 $c3964480 $bb3974481 $cc3984482 $x3994483))))

; forwards $main_inv341
(assert
  (forall (($c3964487 Int) ($b3954486 Int) ($x3994490 Int) ($a3944485 Int) ($aa3934484 (Array Int Int)) ($bb3974488 (Array Int Int)) ($cc3984489 (Array Int Int)))
    (=> (and ($main_if94 $aa3934484 $a3944485 $b3954486 $c3964487 $bb3974488 $cc3984489 $x3994490))
        ($main_inv341 $aa3934484 (+ $a3944485 1) $b3954486 $c3964487 $bb3974488 $cc3984489 $x3994490))))

; loop entry $main_inv342
(assert
  (forall (($aa3934491 (Array Int Int)) ($b3954493 Int) ($bb3974495 (Array Int Int)) ($cc3984496 (Array Int Int)) ($c3964494 Int) ($a3944492 Int) ($x3994497 Int))
    (=> (and ($main_sum341 $aa3934491 $a3944492 $b3954493 $c3964494 $bb3974495 $cc3984496 $x3994497))
        ($main_inv342 $aa3934491 $a3944492 $b3954493 $c3964494 $bb3974495 $cc3984496 0))))

; loop term $main_sum342
(assert
  (forall (($b3954500 Int) ($aa3934498 (Array Int Int)) ($bb3974502 (Array Int Int)) ($cc3984503 (Array Int Int)) ($a3944499 Int) ($x3994504 Int) ($c3964501 Int))
    (=> (and (not (< $x3994504 $b3954500))
             ($main_inv342 $aa3934498 $a3944499 $b3954500 $c3964501 $bb3974502 $cc3984503 $x3994504))
        ($main_sum342 $aa3934498 $a3944499 $b3954500 $c3964501 $bb3974502 $cc3984503 $x3994504))))

; __VERIFIER_assert precondition
(assert
  (forall (($b3954500 Int) ($aa3934498 (Array Int Int)) ($bb3974502 (Array Int Int)) ($cc3984503 (Array Int Int)) ($a3944499 Int) ($x3994504 Int) ($c3964501 Int))
    (=> (and (< $x3994504 $b3954500)
             ($main_inv342 $aa3934498 $a3944499 $b3954500 $c3964501 $bb3974502 $cc3984503 $x3994504))
        ($__VERIFIER_assert_pre (ite (>= (select $bb3974502 $x3994504) 0) 1 0)))))

; forwards $main_inv342
(assert
  (forall (($b3954500 Int) ($aa3934498 (Array Int Int)) ($bb3974502 (Array Int Int)) ($cc3984503 (Array Int Int)) ($a3944499 Int) ($x3994504 Int) ($c3964501 Int))
    (=> (and (__VERIFIER_assert (ite (>= (select $bb3974502 $x3994504) 0) 1 0))
             (< $x3994504 $b3954500)
             ($main_inv342 $aa3934498 $a3944499 $b3954500 $c3964501 $bb3974502 $cc3984503 $x3994504))
        ($main_inv342 $aa3934498 $a3944499 $b3954500 $c3964501 $bb3974502 $cc3984503 (+ $x3994504 1)))))

; loop entry $main_inv343
(assert
  (forall (($x3994511 Int) ($a3944506 Int) ($c3964508 Int) ($aa3934505 (Array Int Int)) ($b3954507 Int) ($cc3984510 (Array Int Int)) ($bb3974509 (Array Int Int)))
    (=> (and ($main_sum342 $aa3934505 $a3944506 $b3954507 $c3964508 $bb3974509 $cc3984510 $x3994511))
        ($main_inv343 $aa3934505 $a3944506 $b3954507 $c3964508 $bb3974509 $cc3984510 0))))

; loop term $main_sum343
(assert
  (forall (($cc3984517 (Array Int Int)) ($x3994518 Int) ($c3964515 Int) ($b3954514 Int) ($a3944513 Int) ($bb3974516 (Array Int Int)) ($aa3934512 (Array Int Int)))
    (=> (and (not (< $x3994518 $c3964515))
             ($main_inv343 $aa3934512 $a3944513 $b3954514 $c3964515 $bb3974516 $cc3984517 $x3994518))
        ($main_sum343 $aa3934512 $a3944513 $b3954514 $c3964515 $bb3974516 $cc3984517 $x3994518))))

; __VERIFIER_assert precondition
(assert
  (forall (($cc3984517 (Array Int Int)) ($x3994518 Int) ($c3964515 Int) ($b3954514 Int) ($a3944513 Int) ($bb3974516 (Array Int Int)) ($aa3934512 (Array Int Int)))
    (=> (and (< $x3994518 $c3964515)
             ($main_inv343 $aa3934512 $a3944513 $b3954514 $c3964515 $bb3974516 $cc3984517 $x3994518))
        ($__VERIFIER_assert_pre (ite (< (select $cc3984517 $x3994518) 0) 1 0)))))

; forwards $main_inv343
(assert
  (forall (($cc3984517 (Array Int Int)) ($x3994518 Int) ($c3964515 Int) ($b3954514 Int) ($a3944513 Int) ($bb3974516 (Array Int Int)) ($aa3934512 (Array Int Int)))
    (=> (and (__VERIFIER_assert (ite (< (select $cc3984517 $x3994518) 0) 1 0))
             (< $x3994518 $c3964515)
             ($main_inv343 $aa3934512 $a3944513 $b3954514 $c3964515 $bb3974516 $cc3984517 $x3994518))
        ($main_inv343 $aa3934512 $a3944513 $b3954514 $c3964515 $bb3974516 $cc3984517 (+ $x3994518 1)))))

(check-sat)
