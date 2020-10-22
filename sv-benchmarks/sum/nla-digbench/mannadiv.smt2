(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_if771 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if769 (Int Int) Bool)
(declare-fun $main_sum294 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_if770 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv294 (Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_if768 (Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if768 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond17467 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if768 cond cond17467))
        (assume_abort_if_not cond17467))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond17468 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond17468))
        false)))

; if then
(assert
  (forall ((cond Int) (cond17468 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond17468))
        ($__VERIFIER_assert_if769 cond cond17468))))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if769 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond17469 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if769 cond cond17469))
        (__VERIFIER_assert cond17469))))

; assume_abort_if_not precondition
(assert
  (forall (($int17470 Int) ($int17471 Int))
    (=> (and (<= (- 2147483648) $int17471)
             (<= $int17471 2147483647)
             (<= (- 2147483648) $int17470)
             (<= $int17470 2147483647))
        ($assume_abort_if_not_pre (ite (>= $int17470 0) 1 0)))))

; assume_abort_if_not precondition
(assert
  (forall (($int17471 Int) ($int17470 Int))
    (=> (and (assume_abort_if_not (ite (>= $int17470 0) 1 0))
             (<= (- 2147483648) $int17471)
             (<= $int17471 2147483647)
             (<= (- 2147483648) $int17470)
             (<= $int17470 2147483647))
        ($assume_abort_if_not_pre (ite (not (= $int17471 0)) 1 0)))))

; loop entry $main_inv294
(assert
  (forall (($int17470 Int) ($int17471 Int))
    (=> (and (assume_abort_if_not (ite (not (= $int17471 0)) 1 0))
             (assume_abort_if_not (ite (>= $int17470 0) 1 0))
             (<= (- 2147483648) $int17471)
             (<= $int17471 2147483647)
             (<= (- 2147483648) $int17470)
             (<= $int17470 2147483647))
        ($main_inv294 $int17470 $int17471 0 0 $int17470))))

; loop term $main_sum294
(assert
  (forall (($y184917474 Int) ($y385117476 Int) ($y285017475 Int) ($x284817473 Int) ($x184717472 Int))
    (=> (and (= 1 0))
        ($main_sum294 $x184717472 $x284817473 $y184917474 $y285017475 $y385117476 $x184717472 $x284817473 $y184917474 $y285017475 $y385117476))))

; __VERIFIER_assert precondition
(assert
  (forall (($y184917474 Int) ($y385117476 Int) ($y285017475 Int) ($x284817473 Int) ($x184717472 Int))
    (=> (and (not (= 1 0))
             ($main_inv294 $x184717472 $x284817473 $y184917474 $y285017475 $y385117476))
        ($__VERIFIER_assert_pre (ite (= (+ (+ (* $y184917474 $x284817473) $y285017475) $y385117476) $x184717472) 1 0)))))

; break $main_sum294
(assert
  (forall (($y184917474 Int) ($y385117476 Int) ($y285017475 Int) ($x284817473 Int) ($x184717472 Int))
    (=> (and (= $y385117476 0)
             (__VERIFIER_assert (ite (= (+ (+ (* $y184917474 $x284817473) $y285017475) $y385117476) $x184717472) 1 0))
             (not (= 1 0))
             ($main_inv294 $x184717472 $x284817473 $y184917474 $y285017475 $y385117476))
        ($main_sum294 $x184717472 $x284817473 $y184917474 $y285017475 $y385117476 $x184717472 $x284817473 $y184917474 $y285017475 $y385117476))))

; if else
(assert
  (forall (($y184917474 Int) ($y385117476 Int) ($y285017475 Int) ($x284817473 Int) ($x184717472 Int))
    (=> (and (not (= $y385117476 0))
             (__VERIFIER_assert (ite (= (+ (+ (* $y184917474 $x284817473) $y285017475) $y385117476) $x184717472) 1 0))
             (not (= 1 0))
             ($main_inv294 $x184717472 $x284817473 $y184917474 $y285017475 $y385117476))
        ($main_if770 $x184717472 $x284817473 $y184917474 $y285017475 $y385117476 $x184717472 $x284817473 $y184917474 $y285017475 $y385117476))))

; if then
(assert
  (forall (($y184917479 Int) ($x284817478 Int) ($y385117476 Int) ($y285017480 Int) ($x184717477 Int) ($y285017475 Int) ($x284817473 Int) ($x184717472 Int) ($y184917474 Int) ($y385117481 Int))
    (=> (and (= (+ $y285017480 1) $x284817478)
             ($main_if770 $x184717472 $x284817473 $y184917474 $y285017475 $y385117476 $x184717477 $x284817478 $y184917479 $y285017480 $y385117481))
        ($main_if771 $x184717472 $x284817473 $y184917474 $y285017475 $y385117476 $x184717477 $x284817478 (+ $y184917479 1) 0 (- $y385117481 1)))))

; if else
(assert
  (forall (($y184917479 Int) ($x284817478 Int) ($y385117476 Int) ($y285017480 Int) ($x184717477 Int) ($y285017475 Int) ($x284817473 Int) ($x184717472 Int) ($y184917474 Int) ($y385117481 Int))
    (=> (and (not (= (+ $y285017480 1) $x284817478))
             ($main_if770 $x184717472 $x284817473 $y184917474 $y285017475 $y385117476 $x184717477 $x284817478 $y184917479 $y285017480 $y385117481))
        ($main_if771 $x184717472 $x284817473 $y184917474 $y285017475 $y385117476 $x184717477 $x284817478 $y184917479 (+ $y285017480 1) (- $y385117481 1)))))

; forwards $main_inv294
(assert
  (forall (($y184917474 Int) ($x184717482 Int) ($x284817483 Int) ($y385117476 Int) ($y285017475 Int) ($x284817473 Int) ($y385117486 Int) ($x184717472 Int) ($y285017485 Int) ($y184917484 Int))
    (=> (and ($main_if771 $x184717472 $x284817473 $y184917474 $y285017475 $y385117476 $x184717482 $x284817483 $y184917484 $y285017485 $y385117486))
        ($main_inv294 $x184717482 $x284817483 $y184917484 $y285017485 $y385117486))))

; backwards $main_sum294
(assert
  (forall (($y184917474 Int) ($x284817488 Int) ($x184717482 Int) ($x284817483 Int) ($y385117476 Int) ($x184717487 Int) ($y285017475 Int) ($y184917489 Int) ($x284817473 Int) ($y385117486 Int) ($x184717472 Int) ($y285017490 Int) ($y385117491 Int) ($y285017485 Int) ($y184917484 Int))
    (=> (and ($main_sum294 $x184717482 $x284817483 $y184917484 $y285017485 $y385117486 $x184717487 $x284817488 $y184917489 $y285017490 $y385117491)
             ($main_if771 $x184717472 $x284817473 $y184917474 $y285017475 $y385117476 $x184717482 $x284817483 $y184917484 $y285017485 $y385117486))
        ($main_sum294 $x184717472 $x284817473 $y184917474 $y285017475 $y385117476 $x184717487 $x284817488 $y184917489 $y285017490 $y385117491))))

; __VERIFIER_assert precondition
(assert
  (forall (($y385117496 Int) ($x284817493 Int) ($int17470 Int) ($x184717492 Int) ($y184917494 Int) ($int17471 Int) ($y285017495 Int))
    (=> (and ($main_sum294 $int17470 $int17471 0 0 $int17470 $x184717492 $x284817493 $y184917494 $y285017495 $y385117496)
             (assume_abort_if_not (ite (not (= $int17471 0)) 1 0))
             (assume_abort_if_not (ite (>= $int17470 0) 1 0))
             (<= (- 2147483648) $int17471)
             (<= $int17471 2147483647)
             (<= (- 2147483648) $int17470)
             (<= $int17470 2147483647))
        ($__VERIFIER_assert_pre (ite (= (+ (* $y184917494 $x284817493) $y285017495) $x184717492) 1 0)))))

(check-sat)
