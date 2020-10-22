(set-logic HORN)

(declare-fun $main_inv257 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_sum258 (Int Int Int Int (Array Int (Array Int Int)) Int Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_inv258 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum260 (Int Int Int Int (Array Int (Array Int Int)) Int Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_if685 (Int Int Int Int (Array Int (Array Int Int)) Int Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_inv260 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $main_inv259 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $__VERIFIER_assert_if684 (Int Int) Bool)
(declare-fun $main_sum259 (Int Int Int Int (Array Int (Array Int Int)) Int Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_sum257 (Int Int Int Int (Array Int (Array Int Int)) Int Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond16464 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond16464))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if684 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond16465 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if684 cond cond16465))
        (__VERIFIER_assert cond16465))))

; loop entry $main_inv257
(assert
  (forall (($uint16466 Int) ($k723 Int) ($N_LIN720 Int) ($N_COL721 Int) ($matriz724 (Array Int (Array Int Int))) ($int16468 Int) ($uint16467 Int))
    (=> (and (<= (- 2147483648) $int16468)
             (<= $int16468 2147483647)
             (= $N_COL721 $uint16467)
             (<= 0 $uint16467)
             (<= $uint16467 4294967295)
             (= $N_LIN720 $uint16466)
             (<= 0 $uint16466)
             (<= $uint16466 4294967295))
        ($main_inv257 $N_LIN720 $N_COL721 0 $k723 $matriz724 $int16468))))

; loop term $main_sum257
(assert
  (forall (($N_COL72116470 Int) ($j72216471 Int) ($matriz72416473 (Array Int (Array Int Int))) ($maior72516474 Int) ($k72316472 Int) ($N_LIN72016469 Int))
    (=> (and (not (< $j72216471 $N_COL72116470)))
        ($main_sum257 $N_LIN72016469 $N_COL72116470 $j72216471 $k72316472 $matriz72416473 $maior72516474 $N_LIN72016469 $N_COL72116470 $j72216471 $k72316472 $matriz72416473 $maior72516474))))

; loop entry $main_inv258
(assert
  (forall (($N_COL72116470 Int) ($j72216471 Int) ($matriz72416473 (Array Int (Array Int Int))) ($maior72516474 Int) ($k72316472 Int) ($N_LIN72016469 Int))
    (=> (and (< $j72216471 $N_COL72116470)
             ($main_inv257 $N_LIN72016469 $N_COL72116470 $j72216471 $k72316472 $matriz72416473 $maior72516474))
        ($main_inv258 $N_LIN72016469 $N_COL72116470 $j72216471 0 $matriz72416473 $maior72516474))))

; loop term $main_sum258
(assert
  (forall (($N_LIN72016475 Int) ($maior72516480 Int) ($N_COL72116476 Int) ($j72216477 Int) ($k72316478 Int) ($matriz72416479 (Array Int (Array Int Int))))
    (=> (and (not (< $k72316478 $N_LIN72016475)))
        ($main_sum258 $N_LIN72016475 $N_COL72116476 $j72216477 $k72316478 $matriz72416479 $maior72516480 $N_LIN72016475 $N_COL72116476 $j72216477 $k72316478 $matriz72416479 $maior72516480))))

; if then
(assert
  (forall (($N_LIN72016475 Int) ($maior72516480 Int) ($N_COL72116476 Int) ($int16481 Int) ($j72216477 Int) ($k72316478 Int) ($matriz72416479 (Array Int (Array Int Int))))
    (=> (and (> (select (select (store $matriz72416479 $j72216477 (store (select $matriz72416479 $j72216477) $k72316478 $int16481)) $j72216477) $k72316478) $maior72516480)
             (<= (- 2147483648) $int16481)
             (<= $int16481 2147483647)
             (< $k72316478 $N_LIN72016475)
             ($main_inv258 $N_LIN72016475 $N_COL72116476 $j72216477 $k72316478 $matriz72416479 $maior72516480))
        ($main_if685 $N_LIN72016475 $N_COL72116476 $j72216477 $k72316478 $matriz72416479 $maior72516480 $N_LIN72016475 $N_COL72116476 $j72216477 $k72316478 (store $matriz72416479 $j72216477 (store (select $matriz72416479 $j72216477) $k72316478 $int16481)) (select (select (store $matriz72416479 $j72216477 (store (select $matriz72416479 $j72216477) $k72316478 $int16481)) $j72216477) $k72316478)))))

; if else
(assert
  (forall (($N_LIN72016475 Int) ($maior72516480 Int) ($N_COL72116476 Int) ($int16481 Int) ($j72216477 Int) ($k72316478 Int) ($matriz72416479 (Array Int (Array Int Int))))
    (=> (and (not (> (select (select (store $matriz72416479 $j72216477 (store (select $matriz72416479 $j72216477) $k72316478 $int16481)) $j72216477) $k72316478) $maior72516480))
             (<= (- 2147483648) $int16481)
             (<= $int16481 2147483647)
             (< $k72316478 $N_LIN72016475)
             ($main_inv258 $N_LIN72016475 $N_COL72116476 $j72216477 $k72316478 $matriz72416479 $maior72516480))
        ($main_if685 $N_LIN72016475 $N_COL72116476 $j72216477 $k72316478 $matriz72416479 $maior72516480 $N_LIN72016475 $N_COL72116476 $j72216477 $k72316478 (store $matriz72416479 $j72216477 (store (select $matriz72416479 $j72216477) $k72316478 $int16481)) $maior72516480))))

; forwards $main_inv258
(assert
  (forall (($N_LIN72016475 Int) ($maior72516480 Int) ($N_COL72116476 Int) ($k72316485 Int) ($N_COL72116483 Int) ($N_LIN72016482 Int) ($j72216484 Int) ($j72216477 Int) ($matriz72416486 (Array Int (Array Int Int))) ($maior72516487 Int) ($k72316478 Int) ($matriz72416479 (Array Int (Array Int Int))))
    (=> (and ($main_if685 $N_LIN72016475 $N_COL72116476 $j72216477 $k72316478 $matriz72416479 $maior72516480 $N_LIN72016482 $N_COL72116483 $j72216484 $k72316485 $matriz72416486 $maior72516487))
        ($main_inv258 $N_LIN72016482 $N_COL72116483 $j72216484 (+ $k72316485 1) $matriz72416486 $maior72516487))))

; backwards $main_sum258
(assert
  (forall (($maior72516480 Int) ($N_COL72116476 Int) ($maior72516493 Int) ($k72316485 Int) ($matriz72416492 (Array Int (Array Int Int))) ($N_COL72116483 Int) ($k72316491 Int) ($j72216484 Int) ($N_LIN72016488 Int) ($j72216477 Int) ($N_LIN72016475 Int) ($j72216490 Int) ($matriz72416486 (Array Int (Array Int Int))) ($maior72516487 Int) ($k72316478 Int) ($matriz72416479 (Array Int (Array Int Int))) ($N_LIN72016482 Int) ($N_COL72116489 Int))
    (=> (and ($main_sum258 $N_LIN72016482 $N_COL72116483 $j72216484 (+ $k72316485 1) $matriz72416486 $maior72516487 $N_LIN72016488 $N_COL72116489 $j72216490 $k72316491 $matriz72416492 $maior72516493)
             ($main_if685 $N_LIN72016475 $N_COL72116476 $j72216477 $k72316478 $matriz72416479 $maior72516480 $N_LIN72016482 $N_COL72116483 $j72216484 $k72316485 $matriz72416486 $maior72516487))
        ($main_sum258 $N_LIN72016475 $N_COL72116476 $j72216477 $k72316478 $matriz72416479 $maior72516480 $N_LIN72016488 $N_COL72116489 $j72216490 $k72316491 $matriz72416492 $maior72516493))))

; forwards $main_inv257
(assert
  (forall (($maior72516499 Int) ($N_COL72116495 Int) ($N_COL72116470 Int) ($N_LIN72016494 Int) ($j72216471 Int) ($matriz72416473 (Array Int (Array Int Int))) ($k72316497 Int) ($j72216496 Int) ($maior72516474 Int) ($matriz72416498 (Array Int (Array Int Int))) ($k72316472 Int) ($N_LIN72016469 Int))
    (=> (and ($main_sum258 $N_LIN72016469 $N_COL72116470 $j72216471 0 $matriz72416473 $maior72516474 $N_LIN72016494 $N_COL72116495 $j72216496 $k72316497 $matriz72416498 $maior72516499)
             (< $j72216471 $N_COL72116470)
             ($main_inv257 $N_LIN72016469 $N_COL72116470 $j72216471 $k72316472 $matriz72416473 $maior72516474))
        ($main_inv257 $N_LIN72016494 $N_COL72116495 (+ $j72216496 1) $k72316497 $matriz72416498 $maior72516499))))

; backwards $main_sum257
(assert
  (forall (($maior72516499 Int) ($j72216502 Int) ($N_COL72116501 Int) ($N_COL72116495 Int) ($N_COL72116470 Int) ($k72316503 Int) ($N_LIN72016494 Int) ($j72216471 Int) ($matriz72416473 (Array Int (Array Int Int))) ($k72316497 Int) ($j72216496 Int) ($maior72516474 Int) ($matriz72416498 (Array Int (Array Int Int))) ($N_LIN72016500 Int) ($matriz72416504 (Array Int (Array Int Int))) ($maior72516505 Int) ($k72316472 Int) ($N_LIN72016469 Int))
    (=> (and ($main_sum257 $N_LIN72016494 $N_COL72116495 (+ $j72216496 1) $k72316497 $matriz72416498 $maior72516499 $N_LIN72016500 $N_COL72116501 $j72216502 $k72316503 $matriz72416504 $maior72516505)
             ($main_sum258 $N_LIN72016469 $N_COL72116470 $j72216471 0 $matriz72416473 $maior72516474 $N_LIN72016494 $N_COL72116495 $j72216496 $k72316497 $matriz72416498 $maior72516499)
             (< $j72216471 $N_COL72116470))
        ($main_sum257 $N_LIN72016469 $N_COL72116470 $j72216471 $k72316472 $matriz72416473 $maior72516474 $N_LIN72016500 $N_COL72116501 $j72216502 $k72316503 $matriz72416504 $maior72516505))))

; loop entry $main_inv259
(assert
  (forall (($uint16466 Int) ($k723 Int) ($N_LIN72016506 Int) ($k72316509 Int) ($N_LIN720 Int) ($N_COL721 Int) ($maior72516511 Int) ($j72216508 Int) ($N_COL72116507 Int) ($int16468 Int) ($uint16467 Int) ($matriz724 (Array Int (Array Int Int))) ($matriz72416510 (Array Int (Array Int Int))))
    (=> (and ($main_sum257 $N_LIN720 $N_COL721 0 $k723 $matriz724 $int16468 $N_LIN72016506 $N_COL72116507 $j72216508 $k72316509 $matriz72416510 $maior72516511)
             (<= (- 2147483648) $int16468)
             (<= $int16468 2147483647)
             (= $N_COL721 $uint16467)
             (<= 0 $uint16467)
             (<= $uint16467 4294967295)
             (= $N_LIN720 $uint16466)
             (<= 0 $uint16466)
             (<= $uint16466 4294967295))
        ($main_inv259 $N_LIN72016506 $N_COL72116507 0 $k72316509 $matriz72416510 $maior72516511))))

; loop term $main_sum259
(assert
  (forall (($N_COL72116513 Int) ($j72216514 Int) ($k72316515 Int) ($maior72516517 Int) ($N_LIN72016512 Int) ($matriz72416516 (Array Int (Array Int Int))))
    (=> (and (not (< $j72216514 $N_COL72116513)))
        ($main_sum259 $N_LIN72016512 $N_COL72116513 $j72216514 $k72316515 $matriz72416516 $maior72516517 $N_LIN72016512 $N_COL72116513 $j72216514 $k72316515 $matriz72416516 $maior72516517))))

; loop entry $main_inv260
(assert
  (forall (($N_COL72116513 Int) ($j72216514 Int) ($k72316515 Int) ($maior72516517 Int) ($N_LIN72016512 Int) ($matriz72416516 (Array Int (Array Int Int))))
    (=> (and (< $j72216514 $N_COL72116513)
             ($main_inv259 $N_LIN72016512 $N_COL72116513 $j72216514 $k72316515 $matriz72416516 $maior72516517))
        ($main_inv260 $N_LIN72016512 $N_COL72116513 $j72216514 0 $matriz72416516 $maior72516517))))

; loop term $main_sum260
(assert
  (forall (($matriz72416522 (Array Int (Array Int Int))) ($N_COL72116519 Int) ($j72216520 Int) ($k72316521 Int) ($N_LIN72016518 Int) ($maior72516523 Int))
    (=> (and (not (< $k72316521 $N_LIN72016518)))
        ($main_sum260 $N_LIN72016518 $N_COL72116519 $j72216520 $k72316521 $matriz72416522 $maior72516523 $N_LIN72016518 $N_COL72116519 $j72216520 $k72316521 $matriz72416522 $maior72516523))))

; __VERIFIER_assert precondition
(assert
  (forall (($matriz72416522 (Array Int (Array Int Int))) ($N_COL72116519 Int) ($j72216520 Int) ($k72316521 Int) ($N_LIN72016518 Int) ($maior72516523 Int))
    (=> (and (< $k72316521 $N_LIN72016518)
             ($main_inv260 $N_LIN72016518 $N_COL72116519 $j72216520 $k72316521 $matriz72416522 $maior72516523))
        ($__VERIFIER_assert_pre (ite (< (select (select $matriz72416522 $j72216520) $k72316521) $maior72516523) 1 0)))))

; forwards $main_inv260
(assert
  (forall (($matriz72416522 (Array Int (Array Int Int))) ($N_COL72116519 Int) ($j72216520 Int) ($k72316521 Int) ($N_LIN72016518 Int) ($maior72516523 Int))
    (=> (and (__VERIFIER_assert (ite (< (select (select $matriz72416522 $j72216520) $k72316521) $maior72516523) 1 0))
             (< $k72316521 $N_LIN72016518)
             ($main_inv260 $N_LIN72016518 $N_COL72116519 $j72216520 $k72316521 $matriz72416522 $maior72516523))
        ($main_inv260 $N_LIN72016518 $N_COL72116519 $j72216520 (+ $k72316521 1) $matriz72416522 $maior72516523))))

; backwards $main_sum260
(assert
  (forall (($N_COL72116519 Int) ($N_COL72116525 Int) ($j72216520 Int) ($maior72516529 Int) ($k72316527 Int) ($N_LIN72016524 Int) ($matriz72416522 (Array Int (Array Int Int))) ($matriz72416528 (Array Int (Array Int Int))) ($k72316521 Int) ($j72216526 Int) ($N_LIN72016518 Int) ($maior72516523 Int))
    (=> (and ($main_sum260 $N_LIN72016518 $N_COL72116519 $j72216520 (+ $k72316521 1) $matriz72416522 $maior72516523 $N_LIN72016524 $N_COL72116525 $j72216526 $k72316527 $matriz72416528 $maior72516529)
             (__VERIFIER_assert (ite (< (select (select $matriz72416522 $j72216520) $k72316521) $maior72516523) 1 0))
             (< $k72316521 $N_LIN72016518))
        ($main_sum260 $N_LIN72016518 $N_COL72116519 $j72216520 $k72316521 $matriz72416522 $maior72516523 $N_LIN72016524 $N_COL72116525 $j72216526 $k72316527 $matriz72416528 $maior72516529))))

; forwards $main_inv259
(assert
  (forall (($N_COL72116513 Int) ($matriz72416534 (Array Int (Array Int Int))) ($N_LIN72016530 Int) ($j72216514 Int) ($k72316533 Int) ($k72316515 Int) ($j72216532 Int) ($matriz72416516 (Array Int (Array Int Int))) ($maior72516517 Int) ($maior72516535 Int) ($N_LIN72016512 Int) ($N_COL72116531 Int))
    (=> (and ($main_sum260 $N_LIN72016512 $N_COL72116513 $j72216514 0 $matriz72416516 $maior72516517 $N_LIN72016530 $N_COL72116531 $j72216532 $k72316533 $matriz72416534 $maior72516535)
             (< $j72216514 $N_COL72116513)
             ($main_inv259 $N_LIN72016512 $N_COL72116513 $j72216514 $k72316515 $matriz72416516 $maior72516517))
        ($main_inv259 $N_LIN72016530 $N_COL72116531 (+ $j72216532 1) $k72316533 $matriz72416534 $maior72516535))))

; backwards $main_sum259
(assert
  (forall (($N_COL72116513 Int) ($matriz72416534 (Array Int (Array Int Int))) ($matriz72416540 (Array Int (Array Int Int))) ($N_LIN72016536 Int) ($N_COL72116537 Int) ($j72216538 Int) ($j72216514 Int) ($k72316533 Int) ($k72316515 Int) ($maior72516541 Int) ($j72216532 Int) ($matriz72416516 (Array Int (Array Int Int))) ($N_LIN72016530 Int) ($k72316539 Int) ($maior72516517 Int) ($maior72516535 Int) ($N_LIN72016512 Int) ($N_COL72116531 Int))
    (=> (and ($main_sum259 $N_LIN72016530 $N_COL72116531 (+ $j72216532 1) $k72316533 $matriz72416534 $maior72516535 $N_LIN72016536 $N_COL72116537 $j72216538 $k72316539 $matriz72416540 $maior72516541)
             ($main_sum260 $N_LIN72016512 $N_COL72116513 $j72216514 0 $matriz72416516 $maior72516517 $N_LIN72016530 $N_COL72116531 $j72216532 $k72316533 $matriz72416534 $maior72516535)
             (< $j72216514 $N_COL72116513))
        ($main_sum259 $N_LIN72016512 $N_COL72116513 $j72216514 $k72316515 $matriz72416516 $maior72516517 $N_LIN72016536 $N_COL72116537 $j72216538 $k72316539 $matriz72416540 $maior72516541))))

(check-sat)
