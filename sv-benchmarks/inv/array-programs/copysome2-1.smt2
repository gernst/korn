(set-logic HORN)

(declare-fun $main_sum426 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv427 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv426 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum424 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum425 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum427 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_if153 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv424 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv425 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if152 (Int) Bool)
(declare-fun $main_if154 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond5487 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond5487))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if152 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5488 Int))
    (=> (and ($__VERIFIER_assert_if152 cond5488))
        (__VERIFIER_assert cond5488))))

; loop entry $main_inv424
(assert
  (forall (($a1526 (Array Int Int)) ($a2527 (Array Int Int)) ($a3528 (Array Int Int)) ($x531 Int))
        ($main_inv424 $a1526 $a2527 $a3528 0 150000 $x531)))

; loop term $main_sum424
(assert
  (forall (($a25275490 (Array Int Int)) ($z5305493 Int) ($a15265489 (Array Int Int)) ($i5295492 Int) ($a35285491 (Array Int Int)) ($x5315494 Int))
    (=> (and (not (< $i5295492 200000))
             ($main_inv424 $a15265489 $a25275490 $a35285491 $i5295492 $z5305493 $x5315494))
        ($main_sum424 $a15265489 $a25275490 $a35285491 $i5295492 $z5305493 $x5315494))))

; forwards $main_inv424
(assert
  (forall (($a25275490 (Array Int Int)) ($int5497 Int) ($z5305493 Int) ($int5496 Int) ($a15265489 (Array Int Int)) ($int5495 Int) ($i5295492 Int) ($a35285491 (Array Int Int)) ($x5315494 Int))
    (=> (and (<= (- 2147483648) $int5497)
             (<= $int5497 2147483647)
             (<= (- 2147483648) $int5496)
             (<= $int5496 2147483647)
             (<= (- 2147483648) $int5495)
             (<= $int5495 2147483647)
             (< $i5295492 200000)
             ($main_inv424 $a15265489 $a25275490 $a35285491 $i5295492 $z5305493 $x5315494))
        ($main_inv424 (store $a15265489 $i5295492 $int5495) (store $a25275490 $i5295492 $int5496) (store $a35285491 $i5295492 $int5497) (+ $i5295492 1) $z5305493 $x5315494))))

; loop entry $main_inv425
(assert
  (forall (($z5305502 Int) ($i5295501 Int) ($x5315503 Int) ($a35285500 (Array Int Int)) ($a15265498 (Array Int Int)) ($a25275499 (Array Int Int)))
    (=> (and ($main_sum424 $a15265498 $a25275499 $a35285500 $i5295501 $z5305502 $x5315503))
        ($main_inv425 $a15265498 $a25275499 $a35285500 0 $z5305502 $x5315503))))

; loop term $main_sum425
(assert
  (forall (($x5315509 Int) ($a35285506 (Array Int Int)) ($z5305508 Int) ($i5295507 Int) ($a25275505 (Array Int Int)) ($a15265504 (Array Int Int)))
    (=> (and (not (< $i5295507 200000))
             ($main_inv425 $a15265504 $a25275505 $a35285506 $i5295507 $z5305508 $x5315509))
        ($main_sum425 $a15265504 $a25275505 $a35285506 $i5295507 $z5305508 $x5315509))))

; if then
(assert
  (forall (($x5315509 Int) ($a35285506 (Array Int Int)) ($z5305508 Int) ($i5295507 Int) ($a25275505 (Array Int Int)) ($a15265504 (Array Int Int)))
    (=> (and (not (= $i5295507 $z5305508))
             (< $i5295507 200000)
             ($main_inv425 $a15265504 $a25275505 $a35285506 $i5295507 $z5305508 $x5315509))
        ($main_if153 $a15265504 (store $a25275505 $i5295507 (select $a15265504 $i5295507)) $a35285506 $i5295507 $z5305508 $x5315509))))

; if else
(assert
  (forall (($x5315509 Int) ($a35285506 (Array Int Int)) ($z5305508 Int) ($i5295507 Int) ($a25275505 (Array Int Int)) ($a15265504 (Array Int Int)))
    (=> (and (= $i5295507 $z5305508)
             (< $i5295507 200000)
             ($main_inv425 $a15265504 $a25275505 $a35285506 $i5295507 $z5305508 $x5315509))
        ($main_if153 $a15265504 $a25275505 $a35285506 $i5295507 $z5305508 $x5315509))))

; forwards $main_inv425
(assert
  (forall (($x5315515 Int) ($a15265510 (Array Int Int)) ($i5295513 Int) ($a35285512 (Array Int Int)) ($a25275511 (Array Int Int)) ($z5305514 Int))
    (=> (and ($main_if153 $a15265510 $a25275511 $a35285512 $i5295513 $z5305514 $x5315515))
        ($main_inv425 $a15265510 $a25275511 $a35285512 (+ $i5295513 1) $z5305514 $x5315515))))

; loop entry $main_inv426
(assert
  (forall (($x5315521 Int) ($a25275517 (Array Int Int)) ($a15265516 (Array Int Int)) ($a35285518 (Array Int Int)) ($z5305520 Int) ($i5295519 Int))
    (=> (and ($main_sum425 $a15265516 $a25275517 $a35285518 $i5295519 $z5305520 $x5315521))
        ($main_inv426 $a15265516 $a25275517 $a35285518 0 $z5305520 $x5315521))))

; loop term $main_sum426
(assert
  (forall (($a25275523 (Array Int Int)) ($i5295525 Int) ($z5305526 Int) ($a35285524 (Array Int Int)) ($a15265522 (Array Int Int)) ($x5315527 Int))
    (=> (and (not (< $i5295525 200000))
             ($main_inv426 $a15265522 $a25275523 $a35285524 $i5295525 $z5305526 $x5315527))
        ($main_sum426 $a15265522 $a25275523 $a35285524 $i5295525 $z5305526 $x5315527))))

; if then
(assert
  (forall (($a25275523 (Array Int Int)) ($i5295525 Int) ($z5305526 Int) ($a35285524 (Array Int Int)) ($a15265522 (Array Int Int)) ($x5315527 Int))
    (=> (and (not (= $i5295525 $z5305526))
             (< $i5295525 200000)
             ($main_inv426 $a15265522 $a25275523 $a35285524 $i5295525 $z5305526 $x5315527))
        ($main_if154 $a15265522 $a25275523 (store $a35285524 $i5295525 (select $a25275523 $i5295525)) $i5295525 $z5305526 $x5315527))))

; if else
(assert
  (forall (($a25275523 (Array Int Int)) ($i5295525 Int) ($z5305526 Int) ($a35285524 (Array Int Int)) ($a15265522 (Array Int Int)) ($x5315527 Int))
    (=> (and (= $i5295525 $z5305526)
             (< $i5295525 200000)
             ($main_inv426 $a15265522 $a25275523 $a35285524 $i5295525 $z5305526 $x5315527))
        ($main_if154 $a15265522 $a25275523 (store $a35285524 $i5295525 (select $a15265522 $i5295525)) $i5295525 $z5305526 $x5315527))))

; forwards $main_inv426
(assert
  (forall (($a35285530 (Array Int Int)) ($a15265528 (Array Int Int)) ($a25275529 (Array Int Int)) ($i5295531 Int) ($x5315533 Int) ($z5305532 Int))
    (=> (and ($main_if154 $a15265528 $a25275529 $a35285530 $i5295531 $z5305532 $x5315533))
        ($main_inv426 $a15265528 $a25275529 $a35285530 (+ $i5295531 1) $z5305532 $x5315533))))

; loop entry $main_inv427
(assert
  (forall (($a25275535 (Array Int Int)) ($i5295537 Int) ($x5315539 Int) ($a35285536 (Array Int Int)) ($z5305538 Int) ($a15265534 (Array Int Int)))
    (=> (and ($main_sum426 $a15265534 $a25275535 $a35285536 $i5295537 $z5305538 $x5315539))
        ($main_inv427 $a15265534 $a25275535 $a35285536 $i5295537 $z5305538 0))))

; loop term $main_sum427
(assert
  (forall (($z5305544 Int) ($i5295543 Int) ($x5315545 Int) ($a15265540 (Array Int Int)) ($a35285542 (Array Int Int)) ($a25275541 (Array Int Int)))
    (=> (and (not (< $x5315545 200000))
             ($main_inv427 $a15265540 $a25275541 $a35285542 $i5295543 $z5305544 $x5315545))
        ($main_sum427 $a15265540 $a25275541 $a35285542 $i5295543 $z5305544 $x5315545))))

; __VERIFIER_assert precondition
(assert
  (forall (($z5305544 Int) ($i5295543 Int) ($x5315545 Int) ($a15265540 (Array Int Int)) ($a35285542 (Array Int Int)) ($a25275541 (Array Int Int)))
    (=> (and (< $x5315545 200000)
             ($main_inv427 $a15265540 $a25275541 $a35285542 $i5295543 $z5305544 $x5315545))
        ($__VERIFIER_assert_pre (ite (= (select $a15265540 $x5315545) (select $a35285542 $x5315545)) 1 0)))))

; forwards $main_inv427
(assert
  (forall (($z5305544 Int) ($i5295543 Int) ($x5315545 Int) ($a15265540 (Array Int Int)) ($a35285542 (Array Int Int)) ($a25275541 (Array Int Int)))
    (=> (and (__VERIFIER_assert (ite (= (select $a15265540 $x5315545) (select $a35285542 $x5315545)) 1 0))
             (< $x5315545 200000)
             ($main_inv427 $a15265540 $a25275541 $a35285542 $i5295543 $z5305544 $x5315545))
        ($main_inv427 $a15265540 $a25275541 $a35285542 $i5295543 $z5305544 (+ $x5315545 1)))))

(check-sat)
