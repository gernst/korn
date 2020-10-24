(set-logic HORN)

(declare-fun $main_sum400 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if127 (Int Int) Bool)
(declare-fun $main_inv399 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum399 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv400 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum398 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv398 ((Array Int Int) (Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond7471 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond7471))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if127 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond7472 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if127 cond cond7472))
        (__VERIFIER_assert cond7472))))

; loop entry $main_inv398
(assert
  (forall (($a484 (Array Int Int)) ($b485 (Array Int Int)) ($i486 Int) ($j487 Int))
    (=> (and (= $j487 0)
             (= $i486 0))
        ($main_inv398 $a484 $b485 $i486 $j487))))

; loop term $main_sum398
(assert
  (forall (($a4847473 (Array Int Int)) ($b4857474 (Array Int Int)) ($i4867475 Int) ($j4877476 Int))
    (=> (and (not (< $i4867475 100000)))
        ($main_sum398 $a4847473 $b4857474 $i4867475 $j4877476 $a4847473 $b4857474 $i4867475 $j4877476))))

; forwards $main_inv398
(assert
  (forall (($int7477 Int) ($j4877476 Int) ($b4857474 (Array Int Int)) ($i4867475 Int) ($a4847473 (Array Int Int)))
    (=> (and (<= (- 2147483648) $int7477)
             (<= $int7477 2147483647)
             (< $i4867475 100000)
             ($main_inv398 $a4847473 $b4857474 $i4867475 $j4877476))
        ($main_inv398 $a4847473 (store $b4857474 $i4867475 $int7477) (+ $i4867475 1) $j4877476))))

; backwards $main_sum398
(assert
  (forall (($int7477 Int) ($b4857474 (Array Int Int)) ($i4867475 Int) ($i4867480 Int) ($j4877481 Int) ($a4847473 (Array Int Int)) ($a4847478 (Array Int Int)) ($b4857479 (Array Int Int)) ($j4877476 Int))
    (=> (and ($main_sum398 $a4847473 (store $b4857474 $i4867475 $int7477) (+ $i4867475 1) $j4877476 $a4847478 $b4857479 $i4867480 $j4877481)
             (<= (- 2147483648) $int7477)
             (<= $int7477 2147483647)
             (< $i4867475 100000))
        ($main_sum398 $a4847473 $b4857474 $i4867475 $j4877476 $a4847478 $b4857479 $i4867480 $j4877481))))

; loop entry $main_inv399
(assert
  (forall (($i4867484 Int) ($j487 Int) ($b485 (Array Int Int)) ($a484 (Array Int Int)) ($i486 Int) ($a4847482 (Array Int Int)) ($b4857483 (Array Int Int)) ($j4877485 Int))
    (=> (and ($main_sum398 $a484 $b485 $i486 $j487 $a4847482 $b4857483 $i4867484 $j4877485)
             (= $j487 0)
             (= $i486 0))
        ($main_inv399 $a4847482 $b4857483 1 $j4877485))))

; loop term $main_sum399
(assert
  (forall (($a4847486 (Array Int Int)) ($b4857487 (Array Int Int)) ($i4867488 Int) ($j4877489 Int))
    (=> (and (not (< $i4867488 100000)))
        ($main_sum399 $a4847486 $b4857487 $i4867488 $j4877489 $a4847486 $b4857487 $i4867488 $j4877489))))

; forwards $main_inv399
(assert
  (forall (($a4847486 (Array Int Int)) ($j4877489 Int) ($b4857487 (Array Int Int)) ($i4867488 Int))
    (=> (and (< $i4867488 100000)
             ($main_inv399 $a4847486 $b4857487 $i4867488 $j4877489))
        ($main_inv399 (store $a4847486 $j4877489 (select $b4857487 $i4867488)) $b4857487 (+ $i4867488 8) (+ $j4877489 1)))))

; backwards $main_sum399
(assert
  (forall (($j4877493 Int) ($a4847490 (Array Int Int)) ($a4847486 (Array Int Int)) ($i4867488 Int) ($b4857491 (Array Int Int)) ($i4867492 Int) ($j4877489 Int) ($b4857487 (Array Int Int)))
    (=> (and ($main_sum399 (store $a4847486 $j4877489 (select $b4857487 $i4867488)) $b4857487 (+ $i4867488 8) (+ $j4877489 1) $a4847490 $b4857491 $i4867492 $j4877493)
             (< $i4867488 100000))
        ($main_sum399 $a4847486 $b4857487 $i4867488 $j4877489 $a4847490 $b4857491 $i4867492 $j4877493))))

; loop entry $main_inv400
(assert
  (forall (($i4867484 Int) ($i4867496 Int) ($j487 Int) ($a484 (Array Int Int)) ($i486 Int) ($j4877497 Int) ($b4857495 (Array Int Int)) ($a4847482 (Array Int Int)) ($b485 (Array Int Int)) ($a4847494 (Array Int Int)) ($b4857483 (Array Int Int)) ($j4877485 Int))
    (=> (and ($main_sum399 $a4847482 $b4857483 1 $j4877485 $a4847494 $b4857495 $i4867496 $j4877497)
             ($main_sum398 $a484 $b485 $i486 $j487 $a4847482 $b4857483 $i4867484 $j4877485)
             (= $j487 0)
             (= $i486 0))
        ($main_inv400 $a4847494 $b4857495 1 0))))

; loop term $main_sum400
(assert
  (forall (($a4847498 (Array Int Int)) ($b4857499 (Array Int Int)) ($i4867500 Int) ($j4877501 Int))
    (=> (and (not (< $i4867500 100000)))
        ($main_sum400 $a4847498 $b4857499 $i4867500 $j4877501 $a4847498 $b4857499 $i4867500 $j4877501))))

; __VERIFIER_assert precondition
(assert
  (forall (($a4847498 (Array Int Int)) ($j4877501 Int) ($b4857499 (Array Int Int)) ($i4867500 Int))
    (=> (and (< $i4867500 100000)
             ($main_inv400 $a4847498 $b4857499 $i4867500 $j4877501))
        ($__VERIFIER_assert_pre (ite (= (select $a4847498 $j4877501) (select $b4857499 (+ (* 8 $j4877501) 1))) 1 0)))))

; forwards $main_inv400
(assert
  (forall (($a4847498 (Array Int Int)) ($b4857499 (Array Int Int)) ($i4867500 Int) ($j4877501 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a4847498 $j4877501) (select $b4857499 (+ (* 8 $j4877501) 1))) 1 0))
             (< $i4867500 100000)
             ($main_inv400 $a4847498 $b4857499 $i4867500 $j4877501))
        ($main_inv400 $a4847498 $b4857499 (+ $i4867500 8) (+ $j4877501 1)))))

; backwards $main_sum400
(assert
  (forall (($b4857503 (Array Int Int)) ($a4847498 (Array Int Int)) ($i4867504 Int) ($b4857499 (Array Int Int)) ($j4877501 Int) ($a4847502 (Array Int Int)) ($j4877505 Int) ($i4867500 Int))
    (=> (and ($main_sum400 $a4847498 $b4857499 (+ $i4867500 8) (+ $j4877501 1) $a4847502 $b4857503 $i4867504 $j4877505)
             (__VERIFIER_assert (ite (= (select $a4847498 $j4877501) (select $b4857499 (+ (* 8 $j4877501) 1))) 1 0))
             (< $i4867500 100000))
        ($main_sum400 $a4847498 $b4857499 $i4867500 $j4877501 $a4847502 $b4857503 $i4867504 $j4877505))))

(check-sat)
