(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv242 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv240 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv243 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if72 (Int Int) Bool)
(declare-fun $main_sum243 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_sum240 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_sum242 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum241 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_sum239 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_inv241 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv239 ((Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond5428 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond5428))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if72 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5429 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if72 cond cond5429))
        (__VERIFIER_assert cond5429))))

; loop entry $main_inv239
(assert
  (forall (($a337 (Array Int Int)) ($i338 Int) ($x339 Int))
    (=> (and (= $i338 0))
        ($main_inv239 $a337 $i338 $x339))))

; loop term $main_sum239
(assert
  (forall (($a3375430 (Array Int Int)) ($i3385431 Int) ($x3395432 Int))
    (=> (and (not (< $i3385431 100000)))
        ($main_sum239 $a3375430 $i3385431 $x3395432 $a3375430 $i3385431 $x3395432))))

; forwards $main_inv239
(assert
  (forall (($a3375430 (Array Int Int)) ($i3385431 Int) ($x3395432 Int))
    (=> (and (< $i3385431 100000)
             ($main_inv239 $a3375430 $i3385431 $x3395432))
        ($main_inv239 (store $a3375430 $i3385431 42) (+ $i3385431 1) $x3395432))))

; backwards $main_sum239
(assert
  (forall (($a3375430 (Array Int Int)) ($a3375433 (Array Int Int)) ($i3385434 Int) ($x3395435 Int) ($x3395432 Int) ($i3385431 Int))
    (=> (and ($main_sum239 (store $a3375430 $i3385431 42) (+ $i3385431 1) $x3395432 $a3375433 $i3385434 $x3395435)
             (< $i3385431 100000))
        ($main_sum239 $a3375430 $i3385431 $x3395432 $a3375433 $i3385434 $x3395435))))

; loop entry $main_inv240
(assert
  (forall (($x3395438 Int) ($a3375436 (Array Int Int)) ($a337 (Array Int Int)) ($x339 Int) ($i338 Int) ($i3385437 Int))
    (=> (and ($main_sum239 $a337 $i338 $x339 $a3375436 $i3385437 $x3395438)
             (= $i338 0))
        ($main_inv240 $a3375436 0 $x3395438))))

; loop term $main_sum240
(assert
  (forall (($a3375439 (Array Int Int)) ($i3385440 Int) ($x3395441 Int))
    (=> (and (not (< $i3385440 100000)))
        ($main_sum240 $a3375439 $i3385440 $x3395441 $a3375439 $i3385440 $x3395441))))

; forwards $main_inv240
(assert
  (forall (($a3375439 (Array Int Int)) ($i3385440 Int) ($x3395441 Int))
    (=> (and (< $i3385440 100000)
             ($main_inv240 $a3375439 $i3385440 $x3395441))
        ($main_inv240 (store $a3375439 $i3385440 43) (+ $i3385440 1) $x3395441))))

; backwards $main_sum240
(assert
  (forall (($x3395441 Int) ($x3395444 Int) ($i3385440 Int) ($a3375442 (Array Int Int)) ($i3385443 Int) ($a3375439 (Array Int Int)))
    (=> (and ($main_sum240 (store $a3375439 $i3385440 43) (+ $i3385440 1) $x3395441 $a3375442 $i3385443 $x3395444)
             (< $i3385440 100000))
        ($main_sum240 $a3375439 $i3385440 $x3395441 $a3375442 $i3385443 $x3395444))))

; loop entry $main_inv241
(assert
  (forall (($i3385446 Int) ($x3395438 Int) ($a3375436 (Array Int Int)) ($a337 (Array Int Int)) ($x339 Int) ($a3375445 (Array Int Int)) ($x3395447 Int) ($i338 Int) ($i3385437 Int))
    (=> (and ($main_sum240 $a3375436 0 $x3395438 $a3375445 $i3385446 $x3395447)
             ($main_sum239 $a337 $i338 $x339 $a3375436 $i3385437 $x3395438)
             (= $i338 0))
        ($main_inv241 $a3375445 0 $x3395447))))

; loop term $main_sum241
(assert
  (forall (($a3375448 (Array Int Int)) ($i3385449 Int) ($x3395450 Int))
    (=> (and (not (< $i3385449 100000)))
        ($main_sum241 $a3375448 $i3385449 $x3395450 $a3375448 $i3385449 $x3395450))))

; forwards $main_inv241
(assert
  (forall (($a3375448 (Array Int Int)) ($i3385449 Int) ($x3395450 Int))
    (=> (and (< $i3385449 100000)
             ($main_inv241 $a3375448 $i3385449 $x3395450))
        ($main_inv241 (store $a3375448 $i3385449 44) (+ $i3385449 1) $x3395450))))

; backwards $main_sum241
(assert
  (forall (($a3375451 (Array Int Int)) ($i3385452 Int) ($i3385449 Int) ($a3375448 (Array Int Int)) ($x3395450 Int) ($x3395453 Int))
    (=> (and ($main_sum241 (store $a3375448 $i3385449 44) (+ $i3385449 1) $x3395450 $a3375451 $i3385452 $x3395453)
             (< $i3385449 100000))
        ($main_sum241 $a3375448 $i3385449 $x3395450 $a3375451 $i3385452 $x3395453))))

; loop entry $main_inv242
(assert
  (forall (($i3385446 Int) ($x3395456 Int) ($i3385455 Int) ($a3375454 (Array Int Int)) ($x3395438 Int) ($a3375436 (Array Int Int)) ($a337 (Array Int Int)) ($x339 Int) ($a3375445 (Array Int Int)) ($x3395447 Int) ($i338 Int) ($i3385437 Int))
    (=> (and ($main_sum241 $a3375445 0 $x3395447 $a3375454 $i3385455 $x3395456)
             ($main_sum240 $a3375436 0 $x3395438 $a3375445 $i3385446 $x3395447)
             ($main_sum239 $a337 $i338 $x339 $a3375436 $i3385437 $x3395438)
             (= $i338 0))
        ($main_inv242 $a3375454 0 $x3395456))))

; loop term $main_sum242
(assert
  (forall (($a3375457 (Array Int Int)) ($i3385458 Int) ($x3395459 Int))
    (=> (and (not (< $i3385458 100000)))
        ($main_sum242 $a3375457 $i3385458 $x3395459 $a3375457 $i3385458 $x3395459))))

; forwards $main_inv242
(assert
  (forall (($a3375457 (Array Int Int)) ($i3385458 Int) ($x3395459 Int))
    (=> (and (< $i3385458 100000)
             ($main_inv242 $a3375457 $i3385458 $x3395459))
        ($main_inv242 (store $a3375457 $i3385458 45) (+ $i3385458 1) $x3395459))))

; backwards $main_sum242
(assert
  (forall (($a3375460 (Array Int Int)) ($x3395459 Int) ($i3385461 Int) ($x3395462 Int) ($i3385458 Int) ($a3375457 (Array Int Int)))
    (=> (and ($main_sum242 (store $a3375457 $i3385458 45) (+ $i3385458 1) $x3395459 $a3375460 $i3385461 $x3395462)
             (< $i3385458 100000))
        ($main_sum242 $a3375457 $i3385458 $x3395459 $a3375460 $i3385461 $x3395462))))

; loop entry $main_inv243
(assert
  (forall (($i3385446 Int) ($x3395456 Int) ($i3385455 Int) ($a3375454 (Array Int Int)) ($a3375463 (Array Int Int)) ($i3385464 Int) ($a3375436 (Array Int Int)) ($a337 (Array Int Int)) ($x339 Int) ($a3375445 (Array Int Int)) ($x3395447 Int) ($x3395465 Int) ($x3395438 Int) ($i338 Int) ($i3385437 Int))
    (=> (and ($main_sum242 $a3375454 0 $x3395456 $a3375463 $i3385464 $x3395465)
             ($main_sum241 $a3375445 0 $x3395447 $a3375454 $i3385455 $x3395456)
             ($main_sum240 $a3375436 0 $x3395438 $a3375445 $i3385446 $x3395447)
             ($main_sum239 $a337 $i338 $x339 $a3375436 $i3385437 $x3395438)
             (= $i338 0))
        ($main_inv243 $a3375463 $i3385464 0))))

; loop term $main_sum243
(assert
  (forall (($a3375466 (Array Int Int)) ($i3385467 Int) ($x3395468 Int))
    (=> (and (not (< $x3395468 100000)))
        ($main_sum243 $a3375466 $i3385467 $x3395468 $a3375466 $i3385467 $x3395468))))

; __VERIFIER_assert precondition
(assert
  (forall (($a3375466 (Array Int Int)) ($x3395468 Int) ($i3385467 Int))
    (=> (and (< $x3395468 100000)
             ($main_inv243 $a3375466 $i3385467 $x3395468))
        ($__VERIFIER_assert_pre (ite (= (select $a3375466 $x3395468) 45) 1 0)))))

; forwards $main_inv243
(assert
  (forall (($a3375466 (Array Int Int)) ($i3385467 Int) ($x3395468 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a3375466 $x3395468) 45) 1 0))
             (< $x3395468 100000)
             ($main_inv243 $a3375466 $i3385467 $x3395468))
        ($main_inv243 $a3375466 $i3385467 (+ $x3395468 1)))))

; backwards $main_sum243
(assert
  (forall (($i3385470 Int) ($x3395468 Int) ($x3395471 Int) ($a3375466 (Array Int Int)) ($i3385467 Int) ($a3375469 (Array Int Int)))
    (=> (and ($main_sum243 $a3375466 $i3385467 (+ $x3395468 1) $a3375469 $i3385470 $x3395471)
             (__VERIFIER_assert (ite (= (select $a3375466 $x3395468) 45) 1 0))
             (< $x3395468 100000))
        ($main_sum243 $a3375466 $i3385467 $x3395468 $a3375469 $i3385470 $x3395471))))

(check-sat)
