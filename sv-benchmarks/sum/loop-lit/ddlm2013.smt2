(set-logic HORN)

(declare-fun $main_sum495 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $assume_abort_if_not_if297 (Int Int) Bool)
(declare-fun $main_inv495 (Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if298 (Int Int) Bool)
(declare-fun $main_if299 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if300 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_if301 (Int Int Int Int Int Int Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if297 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond9450 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if297 cond cond9450))
        (assume_abort_if_not cond9450))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond9451 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond9451))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if298 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond9452 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if298 cond cond9452))
        (__VERIFIER_assert cond9452))))

; if then
(assert
  (forall (($j677 Int) ($b679 Int) ($flag680 Int) ($int9453 Int) ($i676 Int) ($a678 Int))
    (=> (and (not (= $flag680 0))
             (= $flag680 $int9453)
             (<= (- 2147483648) $int9453)
             (<= $int9453 2147483647))
        ($main_if299 $i676 $j677 $a678 $b679 $flag680 0 1 0 0 $flag680))))

; if else
(assert
  (forall (($j677 Int) ($b679 Int) ($flag680 Int) ($int9453 Int) ($i676 Int) ($a678 Int))
    (=> (and (= $flag680 0)
             (= $flag680 $int9453)
             (<= (- 2147483648) $int9453)
             (<= $int9453 2147483647))
        ($main_if299 $i676 $j677 $a678 $b679 $flag680 1 1 0 0 $flag680))))

; loop entry $main_inv495
(assert
  (forall (($b679 Int) ($a6789456 Int) ($flag6809458 Int) ($b6799457 Int) ($flag680 Int) ($i6769454 Int) ($i676 Int) ($a678 Int) ($j6779455 Int) ($j677 Int))
    (=> (and ($main_if299 $i676 $j677 $a678 $b679 $flag680 $i6769454 $j6779455 $a6789456 $b6799457 $flag6809458))
        ($main_inv495 $i6769454 $j6779455 $a6789456 $b6799457 $flag6809458))))

; loop term $main_sum495
(assert
  (forall (($flag6809463 Int) ($j6779460 Int) ($i6769459 Int) ($b6799462 Int) ($a6789461 Int) ($int9464 Int))
    (=> (and (= $int9464 0)
             (<= (- 2147483648) $int9464)
             (<= $int9464 2147483647))
        ($main_sum495 $i6769459 $j6779460 $a6789461 $b6799462 $flag6809463 $i6769459 $j6779460 $a6789461 $b6799462 $flag6809463))))

; if then
(assert
  (forall (($flag6809463 Int) ($j6779460 Int) ($i6769459 Int) ($b6799462 Int) ($a6789461 Int) ($int9464 Int))
    (=> (and (= (mod (+ $i6769459 2) 2) 0)
             (not (= $int9464 0))
             (<= (- 2147483648) $int9464)
             (<= $int9464 2147483647)
             ($main_inv495 $i6769459 $j6779460 $a6789461 $b6799462 $flag6809463))
        ($main_if300 $i6769459 $j6779460 $a6789461 $b6799462 $flag6809463 (+ $i6769459 2) (+ $j6779460 2) (+ $a6789461 1) (+ $b6799462 (- $j6779460 $i6769459)) $flag6809463))))

; if else
(assert
  (forall (($flag6809463 Int) ($j6779460 Int) ($i6769459 Int) ($b6799462 Int) ($a6789461 Int) ($int9464 Int))
    (=> (and (not (= (mod (+ $i6769459 2) 2) 0))
             (not (= $int9464 0))
             (<= (- 2147483648) $int9464)
             (<= $int9464 2147483647)
             ($main_inv495 $i6769459 $j6779460 $a6789461 $b6799462 $flag6809463))
        ($main_if300 $i6769459 $j6779460 $a6789461 $b6799462 $flag6809463 (+ $i6769459 2) (+ $j6779460 1) (+ $a6789461 1) (+ $b6799462 (- $j6779460 $i6769459)) $flag6809463))))

; forwards $main_inv495
(assert
  (forall (($flag6809463 Int) ($j6779460 Int) ($i6769459 Int) ($flag6809469 Int) ($j6779466 Int) ($b6799462 Int) ($i6769465 Int) ($a6789461 Int) ($a6789467 Int) ($b6799468 Int))
    (=> (and ($main_if300 $i6769459 $j6779460 $a6789461 $b6799462 $flag6809463 $i6769465 $j6779466 $a6789467 $b6799468 $flag6809469))
        ($main_inv495 $i6769465 $j6779466 $a6789467 $b6799468 $flag6809469))))

; backwards $main_sum495
(assert
  (forall (($j6779460 Int) ($i6769459 Int) ($flag6809469 Int) ($flag6809474 Int) ($j6779471 Int) ($j6779466 Int) ($b6799462 Int) ($i6769465 Int) ($a6789461 Int) ($a6789467 Int) ($b6799473 Int) ($i6769470 Int) ($flag6809463 Int) ($b6799468 Int) ($a6789472 Int))
    (=> (and ($main_sum495 $i6769465 $j6779466 $a6789467 $b6799468 $flag6809469 $i6769470 $j6779471 $a6789472 $b6799473 $flag6809474)
             ($main_if300 $i6769459 $j6779460 $a6789461 $b6799462 $flag6809463 $i6769465 $j6779466 $a6789467 $b6799468 $flag6809469))
        ($main_sum495 $i6769459 $j6779460 $a6789461 $b6799462 $flag6809463 $i6769470 $j6779471 $a6789472 $b6799473 $flag6809474))))

; __VERIFIER_assert precondition
(assert
  (forall (($b679 Int) ($a6789456 Int) ($flag6809458 Int) ($i6769475 Int) ($b6799457 Int) ($j6779476 Int) ($flag680 Int) ($i6769454 Int) ($i676 Int) ($a678 Int) ($b6799478 Int) ($j6779455 Int) ($j677 Int) ($flag6809479 Int) ($a6789477 Int))
    (=> (and (not (= $flag6809479 0))
             ($main_sum495 $i6769454 $j6779455 $a6789456 $b6799457 $flag6809458 $i6769475 $j6779476 $a6789477 $b6799478 $flag6809479)
             ($main_if299 $i676 $j677 $a678 $b679 $flag680 $i6769454 $j6779455 $a6789456 $b6799457 $flag6809458))
        ($__VERIFIER_assert_pre (ite (= $a6789477 $b6799478) 1 0)))))

; if then
(assert
  (forall (($b679 Int) ($a6789456 Int) ($flag6809458 Int) ($i6769475 Int) ($b6799457 Int) ($j6779476 Int) ($flag680 Int) ($i6769454 Int) ($i676 Int) ($a678 Int) ($b6799478 Int) ($j6779455 Int) ($j677 Int) ($flag6809479 Int) ($a6789477 Int))
    (=> (and (__VERIFIER_assert (ite (= $a6789477 $b6799478) 1 0))
             (not (= $flag6809479 0))
             ($main_sum495 $i6769454 $j6779455 $a6789456 $b6799457 $flag6809458 $i6769475 $j6779476 $a6789477 $b6799478 $flag6809479)
             ($main_if299 $i676 $j677 $a678 $b679 $flag680 $i6769454 $j6779455 $a6789456 $b6799457 $flag6809458))
        ($main_if301 $i676 $j677 $a678 $b679 $flag680 $i6769475 $j6779476 $a6789477 $b6799478 $flag6809479))))

; if else
(assert
  (forall (($b679 Int) ($a6789456 Int) ($flag6809458 Int) ($i6769475 Int) ($b6799457 Int) ($j6779476 Int) ($flag680 Int) ($i6769454 Int) ($i676 Int) ($a678 Int) ($b6799478 Int) ($j6779455 Int) ($j677 Int) ($flag6809479 Int) ($a6789477 Int))
    (=> (and (= $flag6809479 0)
             ($main_sum495 $i6769454 $j6779455 $a6789456 $b6799457 $flag6809458 $i6769475 $j6779476 $a6789477 $b6799478 $flag6809479)
             ($main_if299 $i676 $j677 $a678 $b679 $flag680 $i6769454 $j6779455 $a6789456 $b6799457 $flag6809458))
        ($main_if301 $i676 $j677 $a678 $b679 $flag680 $i6769475 $j6779476 $a6789477 $b6799478 $flag6809479))))

(check-sat)
