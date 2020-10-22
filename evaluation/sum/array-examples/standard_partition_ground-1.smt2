(set-logic HORN)

(declare-fun $main_sum342 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv343 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv341 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_sum341 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_if94 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_if92 (Int Int) Bool)
(declare-fun $main_inv340 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv342 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_sum340 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_if93 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_sum343 ((Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond6476 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond6476))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if92 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6477 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if92 cond cond6477))
        (__VERIFIER_assert cond6477))))

; loop entry $main_inv340
(assert
  (forall (($cc398 (Array Int Int)) ($bb397 (Array Int Int)) ($aa393 (Array Int Int)) ($c396 Int) ($a394 Int) ($x399 Int) ($b395 Int))
    (=> (and (= $c396 0)
             (= $b395 0)
             (= $a394 0))
        ($main_inv340 $aa393 $a394 $b395 $c396 $bb397 $cc398 $x399))))

; loop term $main_sum340
(assert
  (forall (($x3996484 Int) ($b3956480 Int) ($a3946479 Int) ($c3966481 Int) ($cc3986483 (Array Int Int)) ($aa3936478 (Array Int Int)) ($bb3976482 (Array Int Int)))
    (=> (and (not (< $a3946479 100000)))
        ($main_sum340 $aa3936478 $a3946479 $b3956480 $c3966481 $bb3976482 $cc3986483 $x3996484 $aa3936478 $a3946479 $b3956480 $c3966481 $bb3976482 $cc3986483 $x3996484))))

; if then
(assert
  (forall (($x3996484 Int) ($int6485 Int) ($b3956480 Int) ($a3946479 Int) ($c3966481 Int) ($cc3986483 (Array Int Int)) ($aa3936478 (Array Int Int)) ($bb3976482 (Array Int Int)))
    (=> (and (>= (select (store $aa3936478 $a3946479 $int6485) $a3946479) 0)
             (<= (- 2147483648) $int6485)
             (<= $int6485 2147483647)
             (< $a3946479 100000)
             ($main_inv340 $aa3936478 $a3946479 $b3956480 $c3966481 $bb3976482 $cc3986483 $x3996484))
        ($main_if93 $aa3936478 $a3946479 $b3956480 $c3966481 $bb3976482 $cc3986483 $x3996484 (store $aa3936478 $a3946479 $int6485) $a3946479 (+ $b3956480 1) $c3966481 (store $bb3976482 $b3956480 (select (store $aa3936478 $a3946479 $int6485) $a3946479)) $cc3986483 $x3996484))))

; if else
(assert
  (forall (($x3996484 Int) ($int6485 Int) ($b3956480 Int) ($a3946479 Int) ($c3966481 Int) ($cc3986483 (Array Int Int)) ($aa3936478 (Array Int Int)) ($bb3976482 (Array Int Int)))
    (=> (and (not (>= (select (store $aa3936478 $a3946479 $int6485) $a3946479) 0))
             (<= (- 2147483648) $int6485)
             (<= $int6485 2147483647)
             (< $a3946479 100000)
             ($main_inv340 $aa3936478 $a3946479 $b3956480 $c3966481 $bb3976482 $cc3986483 $x3996484))
        ($main_if93 $aa3936478 $a3946479 $b3956480 $c3966481 $bb3976482 $cc3986483 $x3996484 (store $aa3936478 $a3946479 $int6485) $a3946479 $b3956480 $c3966481 $bb3976482 $cc3986483 $x3996484))))

; forwards $main_inv340
(assert
  (forall (($x3996492 Int) ($x3996484 Int) ($b3956480 Int) ($a3946479 Int) ($cc3986491 (Array Int Int)) ($a3946487 Int) ($aa3936486 (Array Int Int)) ($c3966481 Int) ($c3966489 Int) ($cc3986483 (Array Int Int)) ($aa3936478 (Array Int Int)) ($bb3976482 (Array Int Int)) ($b3956488 Int) ($bb3976490 (Array Int Int)))
    (=> (and ($main_if93 $aa3936478 $a3946479 $b3956480 $c3966481 $bb3976482 $cc3986483 $x3996484 $aa3936486 $a3946487 $b3956488 $c3966489 $bb3976490 $cc3986491 $x3996492))
        ($main_inv340 $aa3936486 (+ $a3946487 1) $b3956488 $c3966489 $bb3976490 $cc3986491 $x3996492))))

; backwards $main_sum340
(assert
  (forall (($x3996492 Int) ($x3996499 Int) ($x3996484 Int) ($a3946494 Int) ($cc3986498 (Array Int Int)) ($b3956480 Int) ($a3946479 Int) ($bb3976497 (Array Int Int)) ($cc3986491 (Array Int Int)) ($a3946487 Int) ($aa3936486 (Array Int Int)) ($c3966496 Int) ($c3966481 Int) ($cc3986483 (Array Int Int)) ($aa3936478 (Array Int Int)) ($aa3936493 (Array Int Int)) ($bb3976482 (Array Int Int)) ($b3956488 Int) ($bb3976490 (Array Int Int)) ($b3956495 Int) ($c3966489 Int))
    (=> (and ($main_sum340 $aa3936486 (+ $a3946487 1) $b3956488 $c3966489 $bb3976490 $cc3986491 $x3996492 $aa3936493 $a3946494 $b3956495 $c3966496 $bb3976497 $cc3986498 $x3996499)
             ($main_if93 $aa3936478 $a3946479 $b3956480 $c3966481 $bb3976482 $cc3986483 $x3996484 $aa3936486 $a3946487 $b3956488 $c3966489 $bb3976490 $cc3986491 $x3996492))
        ($main_sum340 $aa3936478 $a3946479 $b3956480 $c3966481 $bb3976482 $cc3986483 $x3996484 $aa3936493 $a3946494 $b3956495 $c3966496 $bb3976497 $cc3986498 $x3996499))))

; loop entry $main_inv341
(assert
  (forall (($aa3936500 (Array Int Int)) ($cc398 (Array Int Int)) ($b3956502 Int) ($bb397 (Array Int Int)) ($a3946501 Int) ($aa393 (Array Int Int)) ($c3966503 Int) ($c396 Int) ($cc3986505 (Array Int Int)) ($a394 Int) ($b395 Int) ($bb3976504 (Array Int Int)) ($x399 Int) ($x3996506 Int))
    (=> (and ($main_sum340 $aa393 $a394 $b395 $c396 $bb397 $cc398 $x399 $aa3936500 $a3946501 $b3956502 $c3966503 $bb3976504 $cc3986505 $x3996506)
             (= $c396 0)
             (= $b395 0)
             (= $a394 0))
        ($main_inv341 $aa3936500 0 $b3956502 $c3966503 $bb3976504 $cc3986505 $x3996506))))

; loop term $main_sum341
(assert
  (forall (($aa3936507 (Array Int Int)) ($x3996513 Int) ($b3956509 Int) ($bb3976511 (Array Int Int)) ($cc3986512 (Array Int Int)) ($a3946508 Int) ($c3966510 Int))
    (=> (and (not (< $a3946508 100000)))
        ($main_sum341 $aa3936507 $a3946508 $b3956509 $c3966510 $bb3976511 $cc3986512 $x3996513 $aa3936507 $a3946508 $b3956509 $c3966510 $bb3976511 $cc3986512 $x3996513))))

; if then
(assert
  (forall (($aa3936507 (Array Int Int)) ($x3996513 Int) ($b3956509 Int) ($bb3976511 (Array Int Int)) ($cc3986512 (Array Int Int)) ($a3946508 Int) ($c3966510 Int))
    (=> (and (>= (select $aa3936507 $a3946508) 0)
             (< $a3946508 100000)
             ($main_inv341 $aa3936507 $a3946508 $b3956509 $c3966510 $bb3976511 $cc3986512 $x3996513))
        ($main_if94 $aa3936507 $a3946508 $b3956509 $c3966510 $bb3976511 $cc3986512 $x3996513 $aa3936507 $a3946508 $b3956509 (+ $c3966510 1) $bb3976511 (store $cc3986512 $c3966510 (select $aa3936507 $a3946508)) $x3996513))))

; if else
(assert
  (forall (($aa3936507 (Array Int Int)) ($x3996513 Int) ($b3956509 Int) ($bb3976511 (Array Int Int)) ($cc3986512 (Array Int Int)) ($a3946508 Int) ($c3966510 Int))
    (=> (and (not (>= (select $aa3936507 $a3946508) 0))
             (< $a3946508 100000)
             ($main_inv341 $aa3936507 $a3946508 $b3956509 $c3966510 $bb3976511 $cc3986512 $x3996513))
        ($main_if94 $aa3936507 $a3946508 $b3956509 $c3966510 $bb3976511 $cc3986512 $x3996513 $aa3936507 $a3946508 $b3956509 $c3966510 $bb3976511 $cc3986512 $x3996513))))

; forwards $main_inv341
(assert
  (forall (($aa3936507 (Array Int Int)) ($x3996513 Int) ($b3956509 Int) ($a3946515 Int) ($cc3986512 (Array Int Int)) ($a3946508 Int) ($aa3936514 (Array Int Int)) ($b3956516 Int) ($cc3986519 (Array Int Int)) ($c3966517 Int) ($bb3976511 (Array Int Int)) ($x3996520 Int) ($c3966510 Int) ($bb3976518 (Array Int Int)))
    (=> (and ($main_if94 $aa3936507 $a3946508 $b3956509 $c3966510 $bb3976511 $cc3986512 $x3996513 $aa3936514 $a3946515 $b3956516 $c3966517 $bb3976518 $cc3986519 $x3996520))
        ($main_inv341 $aa3936514 (+ $a3946515 1) $b3956516 $c3966517 $bb3976518 $cc3986519 $x3996520))))

; backwards $main_sum341
(assert
  (forall (($aa3936507 (Array Int Int)) ($x3996513 Int) ($b3956509 Int) ($a3946522 Int) ($a3946515 Int) ($x3996527 Int) ($a3946508 Int) ($cc3986526 (Array Int Int)) ($c3966524 Int) ($aa3936514 (Array Int Int)) ($b3956516 Int) ($cc3986519 (Array Int Int)) ($c3966517 Int) ($bb3976511 (Array Int Int)) ($bb3976525 (Array Int Int)) ($cc3986512 (Array Int Int)) ($aa3936521 (Array Int Int)) ($b3956523 Int) ($x3996520 Int) ($c3966510 Int) ($bb3976518 (Array Int Int)))
    (=> (and ($main_sum341 $aa3936514 (+ $a3946515 1) $b3956516 $c3966517 $bb3976518 $cc3986519 $x3996520 $aa3936521 $a3946522 $b3956523 $c3966524 $bb3976525 $cc3986526 $x3996527)
             ($main_if94 $aa3936507 $a3946508 $b3956509 $c3966510 $bb3976511 $cc3986512 $x3996513 $aa3936514 $a3946515 $b3956516 $c3966517 $bb3976518 $cc3986519 $x3996520))
        ($main_sum341 $aa3936507 $a3946508 $b3956509 $c3966510 $bb3976511 $cc3986512 $x3996513 $aa3936521 $a3946522 $b3956523 $c3966524 $bb3976525 $cc3986526 $x3996527))))

; loop entry $main_inv342
(assert
  (forall (($aa3936500 (Array Int Int)) ($cc398 (Array Int Int)) ($b3956502 Int) ($bb397 (Array Int Int)) ($a3946501 Int) ($a3946529 Int) ($aa393 (Array Int Int)) ($c3966503 Int) ($c396 Int) ($bb3976532 (Array Int Int)) ($cc3986505 (Array Int Int)) ($aa3936528 (Array Int Int)) ($a394 Int) ($b395 Int) ($bb3976504 (Array Int Int)) ($x3996534 Int) ($b3956530 Int) ($cc3986533 (Array Int Int)) ($c3966531 Int) ($x399 Int) ($x3996506 Int))
    (=> (and ($main_sum341 $aa3936500 0 $b3956502 $c3966503 $bb3976504 $cc3986505 $x3996506 $aa3936528 $a3946529 $b3956530 $c3966531 $bb3976532 $cc3986533 $x3996534)
             ($main_sum340 $aa393 $a394 $b395 $c396 $bb397 $cc398 $x399 $aa3936500 $a3946501 $b3956502 $c3966503 $bb3976504 $cc3986505 $x3996506)
             (= $c396 0)
             (= $b395 0)
             (= $a394 0))
        ($main_inv342 $aa3936528 $a3946529 $b3956530 $c3966531 $bb3976532 $cc3986533 0))))

; loop term $main_sum342
(assert
  (forall (($x3996541 Int) ($a3946536 Int) ($b3956537 Int) ($bb3976539 (Array Int Int)) ($c3966538 Int) ($aa3936535 (Array Int Int)) ($cc3986540 (Array Int Int)))
    (=> (and (not (< $x3996541 $b3956537)))
        ($main_sum342 $aa3936535 $a3946536 $b3956537 $c3966538 $bb3976539 $cc3986540 $x3996541 $aa3936535 $a3946536 $b3956537 $c3966538 $bb3976539 $cc3986540 $x3996541))))

; __VERIFIER_assert precondition
(assert
  (forall (($x3996541 Int) ($a3946536 Int) ($b3956537 Int) ($bb3976539 (Array Int Int)) ($c3966538 Int) ($aa3936535 (Array Int Int)) ($cc3986540 (Array Int Int)))
    (=> (and (< $x3996541 $b3956537)
             ($main_inv342 $aa3936535 $a3946536 $b3956537 $c3966538 $bb3976539 $cc3986540 $x3996541))
        ($__VERIFIER_assert_pre (ite (>= (select $bb3976539 $x3996541) 0) 1 0)))))

; forwards $main_inv342
(assert
  (forall (($x3996541 Int) ($a3946536 Int) ($b3956537 Int) ($bb3976539 (Array Int Int)) ($c3966538 Int) ($aa3936535 (Array Int Int)) ($cc3986540 (Array Int Int)))
    (=> (and (__VERIFIER_assert (ite (>= (select $bb3976539 $x3996541) 0) 1 0))
             (< $x3996541 $b3956537)
             ($main_inv342 $aa3936535 $a3946536 $b3956537 $c3966538 $bb3976539 $cc3986540 $x3996541))
        ($main_inv342 $aa3936535 $a3946536 $b3956537 $c3966538 $bb3976539 $cc3986540 (+ $x3996541 1)))))

; backwards $main_sum342
(assert
  (forall (($a3946543 Int) ($x3996541 Int) ($b3956544 Int) ($cc3986547 (Array Int Int)) ($a3946536 Int) ($b3956537 Int) ($bb3976539 (Array Int Int)) ($aa3936542 (Array Int Int)) ($c3966545 Int) ($x3996548 Int) ($aa3936535 (Array Int Int)) ($cc3986540 (Array Int Int)) ($c3966538 Int) ($bb3976546 (Array Int Int)))
    (=> (and ($main_sum342 $aa3936535 $a3946536 $b3956537 $c3966538 $bb3976539 $cc3986540 (+ $x3996541 1) $aa3936542 $a3946543 $b3956544 $c3966545 $bb3976546 $cc3986547 $x3996548)
             (__VERIFIER_assert (ite (>= (select $bb3976539 $x3996541) 0) 1 0))
             (< $x3996541 $b3956537))
        ($main_sum342 $aa3936535 $a3946536 $b3956537 $c3966538 $bb3976539 $cc3986540 $x3996541 $aa3936542 $a3946543 $b3956544 $c3966545 $bb3976546 $cc3986547 $x3996548))))

; loop entry $main_inv343
(assert
  (forall (($aa3936500 (Array Int Int)) ($cc398 (Array Int Int)) ($bb397 (Array Int Int)) ($a3946501 Int) ($a3946529 Int) ($aa3936549 (Array Int Int)) ($c3966552 Int) ($aa393 (Array Int Int)) ($c3966503 Int) ($c396 Int) ($bb3976532 (Array Int Int)) ($b3956551 Int) ($cc3986505 (Array Int Int)) ($a394 Int) ($b395 Int) ($bb3976504 (Array Int Int)) ($x3996534 Int) ($b3956530 Int) ($bb3976553 (Array Int Int)) ($cc3986554 (Array Int Int)) ($x3996555 Int) ($b3956502 Int) ($cc3986533 (Array Int Int)) ($c3966531 Int) ($aa3936528 (Array Int Int)) ($a3946550 Int) ($x399 Int) ($x3996506 Int))
    (=> (and ($main_sum342 $aa3936528 $a3946529 $b3956530 $c3966531 $bb3976532 $cc3986533 0 $aa3936549 $a3946550 $b3956551 $c3966552 $bb3976553 $cc3986554 $x3996555)
             ($main_sum341 $aa3936500 0 $b3956502 $c3966503 $bb3976504 $cc3986505 $x3996506 $aa3936528 $a3946529 $b3956530 $c3966531 $bb3976532 $cc3986533 $x3996534)
             ($main_sum340 $aa393 $a394 $b395 $c396 $bb397 $cc398 $x399 $aa3936500 $a3946501 $b3956502 $c3966503 $bb3976504 $cc3986505 $x3996506)
             (= $c396 0)
             (= $b395 0)
             (= $a394 0))
        ($main_inv343 $aa3936549 $a3946550 $b3956551 $c3966552 $bb3976553 $cc3986554 0))))

; loop term $main_sum343
(assert
  (forall (($x3996562 Int) ($cc3986561 (Array Int Int)) ($aa3936556 (Array Int Int)) ($c3966559 Int) ($b3956558 Int) ($bb3976560 (Array Int Int)) ($a3946557 Int))
    (=> (and (not (< $x3996562 $c3966559)))
        ($main_sum343 $aa3936556 $a3946557 $b3956558 $c3966559 $bb3976560 $cc3986561 $x3996562 $aa3936556 $a3946557 $b3956558 $c3966559 $bb3976560 $cc3986561 $x3996562))))

; __VERIFIER_assert precondition
(assert
  (forall (($x3996562 Int) ($cc3986561 (Array Int Int)) ($aa3936556 (Array Int Int)) ($c3966559 Int) ($b3956558 Int) ($bb3976560 (Array Int Int)) ($a3946557 Int))
    (=> (and (< $x3996562 $c3966559)
             ($main_inv343 $aa3936556 $a3946557 $b3956558 $c3966559 $bb3976560 $cc3986561 $x3996562))
        ($__VERIFIER_assert_pre (ite (< (select $cc3986561 $x3996562) 0) 1 0)))))

; forwards $main_inv343
(assert
  (forall (($x3996562 Int) ($cc3986561 (Array Int Int)) ($aa3936556 (Array Int Int)) ($c3966559 Int) ($b3956558 Int) ($bb3976560 (Array Int Int)) ($a3946557 Int))
    (=> (and (__VERIFIER_assert (ite (< (select $cc3986561 $x3996562) 0) 1 0))
             (< $x3996562 $c3966559)
             ($main_inv343 $aa3936556 $a3946557 $b3956558 $c3966559 $bb3976560 $cc3986561 $x3996562))
        ($main_inv343 $aa3936556 $a3946557 $b3956558 $c3966559 $bb3976560 $cc3986561 (+ $x3996562 1)))))

; backwards $main_sum343
(assert
  (forall (($x3996562 Int) ($bb3976567 (Array Int Int)) ($cc3986561 (Array Int Int)) ($a3946564 Int) ($c3966566 Int) ($cc3986568 (Array Int Int)) ($aa3936556 (Array Int Int)) ($c3966559 Int) ($b3956558 Int) ($x3996569 Int) ($b3956565 Int) ($bb3976560 (Array Int Int)) ($a3946557 Int) ($aa3936563 (Array Int Int)))
    (=> (and ($main_sum343 $aa3936556 $a3946557 $b3956558 $c3966559 $bb3976560 $cc3986561 (+ $x3996562 1) $aa3936563 $a3946564 $b3956565 $c3966566 $bb3976567 $cc3986568 $x3996569)
             (__VERIFIER_assert (ite (< (select $cc3986561 $x3996562) 0) 1 0))
             (< $x3996562 $c3966559))
        ($main_sum343 $aa3936556 $a3946557 $b3956558 $c3966559 $bb3976560 $cc3986561 $x3996562 $aa3936563 $a3946564 $b3956565 $c3966566 $bb3976567 $cc3986568 $x3996569))))

(check-sat)
