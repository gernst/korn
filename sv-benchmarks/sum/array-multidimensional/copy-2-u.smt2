(set-logic HORN)

(declare-fun $__VERIFIER_assert_if19 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum26 (Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum25 (Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv27 (Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv26 (Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv29 (Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv25 (Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum30 (Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum27 (Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv30 (Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum28 (Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv28 (Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum29 (Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond459 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond459))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if19 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond460 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if19 cond cond460))
        (__VERIFIER_assert cond460))))

; loop entry $main_inv25
(assert
  (forall (($n43 Int) ($A44 (Array Int (Array Int Int))) ($B45 (Array Int (Array Int Int))))
    (=> (and (= $n43 1000))
        ($main_inv25 0 0 $n43 $A44 $B45))))

; loop term $main_sum25
(assert
  (forall (($B45465 (Array Int (Array Int Int))) ($j42462 Int) ($n43463 Int) ($i41461 Int) ($A44464 (Array Int (Array Int Int))))
    (=> (and (not (< $i41461 $n43463)))
        ($main_sum25 $i41461 $j42462 $n43463 $A44464 $B45465 $i41461 $j42462 $n43463 $A44464 $B45465))))

; loop entry $main_inv26
(assert
  (forall (($B45465 (Array Int (Array Int Int))) ($j42462 Int) ($n43463 Int) ($i41461 Int) ($A44464 (Array Int (Array Int Int))))
    (=> (and (< $i41461 $n43463)
             ($main_inv25 $i41461 $j42462 $n43463 $A44464 $B45465))
        ($main_inv26 $i41461 0 $n43463 $A44464 $B45465))))

; loop term $main_sum26
(assert
  (forall (($j42467 Int) ($i41466 Int) ($A44469 (Array Int (Array Int Int))) ($B45470 (Array Int (Array Int Int))) ($n43468 Int))
    (=> (and (not (< $j42467 $n43468)))
        ($main_sum26 $i41466 $j42467 $n43468 $A44469 $B45470 $i41466 $j42467 $n43468 $A44469 $B45470))))

; forwards $main_inv26
(assert
  (forall (($j42467 Int) ($i41466 Int) ($A44469 (Array Int (Array Int Int))) ($B45470 (Array Int (Array Int Int))) ($int471 Int) ($n43468 Int))
    (=> (and (<= (- 2147483648) $int471)
             (<= $int471 2147483647)
             (< $j42467 $n43468)
             ($main_inv26 $i41466 $j42467 $n43468 $A44469 $B45470))
        ($main_inv26 $i41466 (+ $j42467 1) $n43468 $A44469 (store $B45470 $i41466 (store (select $B45470 $i41466) $j42467 $int471))))))

; backwards $main_sum26
(assert
  (forall (($j42467 Int) ($i41466 Int) ($A44469 (Array Int (Array Int Int))) ($B45476 (Array Int (Array Int Int))) ($B45470 (Array Int (Array Int Int))) ($j42473 Int) ($n43474 Int) ($n43468 Int) ($i41472 Int) ($int471 Int) ($A44475 (Array Int (Array Int Int))))
    (=> (and ($main_sum26 $i41466 (+ $j42467 1) $n43468 $A44469 (store $B45470 $i41466 (store (select $B45470 $i41466) $j42467 $int471)) $i41472 $j42473 $n43474 $A44475 $B45476)
             (<= (- 2147483648) $int471)
             (<= $int471 2147483647)
             (< $j42467 $n43468))
        ($main_sum26 $i41466 $j42467 $n43468 $A44469 $B45470 $i41472 $j42473 $n43474 $A44475 $B45476))))

; forwards $main_inv25
(assert
  (forall (($B45465 (Array Int (Array Int Int))) ($j42462 Int) ($n43463 Int) ($n43479 Int) ($j42478 Int) ($i41461 Int) ($A44480 (Array Int (Array Int Int))) ($A44464 (Array Int (Array Int Int))) ($B45481 (Array Int (Array Int Int))) ($i41477 Int))
    (=> (and ($main_sum26 $i41461 0 $n43463 $A44464 $B45465 $i41477 $j42478 $n43479 $A44480 $B45481)
             (< $i41461 $n43463)
             ($main_inv25 $i41461 $j42462 $n43463 $A44464 $B45465))
        ($main_inv25 (+ $i41477 1) $j42478 $n43479 $A44480 $B45481))))

; backwards $main_sum25
(assert
  (forall (($B45486 (Array Int (Array Int Int))) ($j42483 Int) ($A44485 (Array Int (Array Int Int))) ($B45465 (Array Int (Array Int Int))) ($j42462 Int) ($n43463 Int) ($n43479 Int) ($j42478 Int) ($i41461 Int) ($B45481 (Array Int (Array Int Int))) ($i41477 Int) ($n43484 Int) ($A44480 (Array Int (Array Int Int))) ($i41482 Int) ($A44464 (Array Int (Array Int Int))))
    (=> (and ($main_sum25 (+ $i41477 1) $j42478 $n43479 $A44480 $B45481 $i41482 $j42483 $n43484 $A44485 $B45486)
             ($main_sum26 $i41461 0 $n43463 $A44464 $B45465 $i41477 $j42478 $n43479 $A44480 $B45481)
             (< $i41461 $n43463))
        ($main_sum25 $i41461 $j42462 $n43463 $A44464 $B45465 $i41482 $j42483 $n43484 $A44485 $B45486))))

; loop entry $main_inv27
(assert
  (forall (($n43489 Int) ($B45491 (Array Int (Array Int Int))) ($B45 (Array Int (Array Int Int))) ($i41487 Int) ($j42488 Int) ($A44 (Array Int (Array Int Int))) ($n43 Int) ($A44490 (Array Int (Array Int Int))))
    (=> (and ($main_sum25 0 0 $n43 $A44 $B45 $i41487 $j42488 $n43489 $A44490 $B45491)
             (= $n43 1000))
        ($main_inv27 0 0 $n43489 $A44490 $B45491))))

; loop term $main_sum27
(assert
  (forall (($B45496 (Array Int (Array Int Int))) ($j42493 Int) ($i41492 Int) ($n43494 Int) ($A44495 (Array Int (Array Int Int))))
    (=> (and (not (< $i41492 $n43494)))
        ($main_sum27 $i41492 $j42493 $n43494 $A44495 $B45496 $i41492 $j42493 $n43494 $A44495 $B45496))))

; loop entry $main_inv28
(assert
  (forall (($B45496 (Array Int (Array Int Int))) ($j42493 Int) ($i41492 Int) ($n43494 Int) ($A44495 (Array Int (Array Int Int))))
    (=> (and (< $i41492 $n43494)
             ($main_inv27 $i41492 $j42493 $n43494 $A44495 $B45496))
        ($main_inv28 $i41492 0 $n43494 $A44495 $B45496))))

; loop term $main_sum28
(assert
  (forall (($A44500 (Array Int (Array Int Int))) ($B45501 (Array Int (Array Int Int))) ($n43499 Int) ($i41497 Int) ($j42498 Int))
    (=> (and (not (< $j42498 $n43499)))
        ($main_sum28 $i41497 $j42498 $n43499 $A44500 $B45501 $i41497 $j42498 $n43499 $A44500 $B45501))))

; forwards $main_inv28
(assert
  (forall (($A44500 (Array Int (Array Int Int))) ($B45501 (Array Int (Array Int Int))) ($n43499 Int) ($i41497 Int) ($j42498 Int))
    (=> (and (< $j42498 $n43499)
             ($main_inv28 $i41497 $j42498 $n43499 $A44500 $B45501))
        ($main_inv28 $i41497 (+ $j42498 1) $n43499 (store $A44500 $i41497 (store (select $A44500 $i41497) $j42498 (select (select $B45501 $i41497) $j42498))) $B45501))))

; backwards $main_sum28
(assert
  (forall (($A44500 (Array Int (Array Int Int))) ($n43504 Int) ($B45501 (Array Int (Array Int Int))) ($n43499 Int) ($i41502 Int) ($j42498 Int) ($i41497 Int) ($A44505 (Array Int (Array Int Int))) ($B45506 (Array Int (Array Int Int))) ($j42503 Int))
    (=> (and ($main_sum28 $i41497 (+ $j42498 1) $n43499 (store $A44500 $i41497 (store (select $A44500 $i41497) $j42498 (select (select $B45501 $i41497) $j42498))) $B45501 $i41502 $j42503 $n43504 $A44505 $B45506)
             (< $j42498 $n43499))
        ($main_sum28 $i41497 $j42498 $n43499 $A44500 $B45501 $i41502 $j42503 $n43504 $A44505 $B45506))))

; forwards $main_inv27
(assert
  (forall (($j42508 Int) ($i41507 Int) ($B45511 (Array Int (Array Int Int))) ($B45496 (Array Int (Array Int Int))) ($n43509 Int) ($j42493 Int) ($i41492 Int) ($A44510 (Array Int (Array Int Int))) ($n43494 Int) ($A44495 (Array Int (Array Int Int))))
    (=> (and ($main_sum28 $i41492 0 $n43494 $A44495 $B45496 $i41507 $j42508 $n43509 $A44510 $B45511)
             (< $i41492 $n43494)
             ($main_inv27 $i41492 $j42493 $n43494 $A44495 $B45496))
        ($main_inv27 (+ $i41507 1) $j42508 $n43509 $A44510 $B45511))))

; backwards $main_sum27
(assert
  (forall (($j42508 Int) ($A44515 (Array Int (Array Int Int))) ($n43514 Int) ($i41507 Int) ($B45511 (Array Int (Array Int Int))) ($B45516 (Array Int (Array Int Int))) ($i41512 Int) ($B45496 (Array Int (Array Int Int))) ($n43509 Int) ($j42493 Int) ($A44510 (Array Int (Array Int Int))) ($n43494 Int) ($A44495 (Array Int (Array Int Int))) ($i41492 Int) ($j42513 Int))
    (=> (and ($main_sum27 (+ $i41507 1) $j42508 $n43509 $A44510 $B45511 $i41512 $j42513 $n43514 $A44515 $B45516)
             ($main_sum28 $i41492 0 $n43494 $A44495 $B45496 $i41507 $j42508 $n43509 $A44510 $B45511)
             (< $i41492 $n43494))
        ($main_sum27 $i41492 $j42493 $n43494 $A44495 $B45496 $i41512 $j42513 $n43514 $A44515 $B45516))))

; loop entry $main_inv29
(assert
  (forall (($n43489 Int) ($B45491 (Array Int (Array Int Int))) ($i41517 Int) ($B45 (Array Int (Array Int Int))) ($i41487 Int) ($n43519 Int) ($A44 (Array Int (Array Int Int))) ($n43 Int) ($A44520 (Array Int (Array Int Int))) ($A44490 (Array Int (Array Int Int))) ($j42518 Int) ($j42488 Int) ($B45521 (Array Int (Array Int Int))))
    (=> (and ($main_sum27 0 0 $n43489 $A44490 $B45491 $i41517 $j42518 $n43519 $A44520 $B45521)
             ($main_sum25 0 0 $n43 $A44 $B45 $i41487 $j42488 $n43489 $A44490 $B45491)
             (= $n43 1000))
        ($main_inv29 0 0 $n43519 $A44520 $B45521))))

; loop term $main_sum29
(assert
  (forall (($i41522 Int) ($B45526 (Array Int (Array Int Int))) ($A44525 (Array Int (Array Int Int))) ($j42523 Int) ($n43524 Int))
    (=> (and (not (< $i41522 $n43524)))
        ($main_sum29 $i41522 $j42523 $n43524 $A44525 $B45526 $i41522 $j42523 $n43524 $A44525 $B45526))))

; loop entry $main_inv30
(assert
  (forall (($i41522 Int) ($B45526 (Array Int (Array Int Int))) ($A44525 (Array Int (Array Int Int))) ($j42523 Int) ($n43524 Int))
    (=> (and (< $i41522 $n43524)
             ($main_inv29 $i41522 $j42523 $n43524 $A44525 $B45526))
        ($main_inv30 $i41522 0 $n43524 $A44525 $B45526))))

; loop term $main_sum30
(assert
  (forall (($A44530 (Array Int (Array Int Int))) ($B45531 (Array Int (Array Int Int))) ($i41527 Int) ($n43529 Int) ($j42528 Int))
    (=> (and (not (< $j42528 $n43529)))
        ($main_sum30 $i41527 $j42528 $n43529 $A44530 $B45531 $i41527 $j42528 $n43529 $A44530 $B45531))))

; __VERIFIER_assert precondition
(assert
  (forall (($A44530 (Array Int (Array Int Int))) ($B45531 (Array Int (Array Int Int))) ($i41527 Int) ($n43529 Int) ($j42528 Int))
    (=> (and (< $j42528 $n43529)
             ($main_inv30 $i41527 $j42528 $n43529 $A44530 $B45531))
        ($__VERIFIER_assert_pre (ite (= (select (select $A44530 $i41527) $j42528) (select (select $B45531 $i41527) $j42528)) 1 0)))))

; forwards $main_inv30
(assert
  (forall (($A44530 (Array Int (Array Int Int))) ($B45531 (Array Int (Array Int Int))) ($i41527 Int) ($n43529 Int) ($j42528 Int))
    (=> (and (__VERIFIER_assert (ite (= (select (select $A44530 $i41527) $j42528) (select (select $B45531 $i41527) $j42528)) 1 0))
             (< $j42528 $n43529)
             ($main_inv30 $i41527 $j42528 $n43529 $A44530 $B45531))
        ($main_inv30 $i41527 (+ $j42528 1) $n43529 $A44530 $B45531))))

; backwards $main_sum30
(assert
  (forall (($A44530 (Array Int (Array Int Int))) ($i41527 Int) ($i41532 Int) ($n43529 Int) ($j42528 Int) ($A44535 (Array Int (Array Int Int))) ($B45536 (Array Int (Array Int Int))) ($j42533 Int) ($n43534 Int) ($B45531 (Array Int (Array Int Int))))
    (=> (and ($main_sum30 $i41527 (+ $j42528 1) $n43529 $A44530 $B45531 $i41532 $j42533 $n43534 $A44535 $B45536)
             (__VERIFIER_assert (ite (= (select (select $A44530 $i41527) $j42528) (select (select $B45531 $i41527) $j42528)) 1 0))
             (< $j42528 $n43529))
        ($main_sum30 $i41527 $j42528 $n43529 $A44530 $B45531 $i41532 $j42533 $n43534 $A44535 $B45536))))

; forwards $main_inv29
(assert
  (forall (($i41522 Int) ($j42538 Int) ($n43539 Int) ($B45526 (Array Int (Array Int Int))) ($A44525 (Array Int (Array Int Int))) ($A44540 (Array Int (Array Int Int))) ($j42523 Int) ($n43524 Int) ($B45541 (Array Int (Array Int Int))) ($i41537 Int))
    (=> (and ($main_sum30 $i41522 0 $n43524 $A44525 $B45526 $i41537 $j42538 $n43539 $A44540 $B45541)
             (< $i41522 $n43524)
             ($main_inv29 $i41522 $j42523 $n43524 $A44525 $B45526))
        ($main_inv29 (+ $i41537 1) $j42538 $n43539 $A44540 $B45541))))

; backwards $main_sum29
(assert
  (forall (($i41522 Int) ($A44545 (Array Int (Array Int Int))) ($j42538 Int) ($n43539 Int) ($j42543 Int) ($B45526 (Array Int (Array Int Int))) ($B45546 (Array Int (Array Int Int))) ($i41542 Int) ($A44540 (Array Int (Array Int Int))) ($j42523 Int) ($n43524 Int) ($A44525 (Array Int (Array Int Int))) ($n43544 Int) ($B45541 (Array Int (Array Int Int))) ($i41537 Int))
    (=> (and ($main_sum29 (+ $i41537 1) $j42538 $n43539 $A44540 $B45541 $i41542 $j42543 $n43544 $A44545 $B45546)
             ($main_sum30 $i41522 0 $n43524 $A44525 $B45526 $i41537 $j42538 $n43539 $A44540 $B45541)
             (< $i41522 $n43524))
        ($main_sum29 $i41522 $j42523 $n43524 $A44525 $B45526 $i41542 $j42543 $n43544 $A44545 $B45546))))

(check-sat)
