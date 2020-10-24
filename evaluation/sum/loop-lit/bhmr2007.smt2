(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_if285 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if286 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum488 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv488 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $assume_abort_if_not_if283 (Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $__VERIFIER_assert_if284 (Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if283 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond9354 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if283 cond cond9354))
        (assume_abort_if_not cond9354))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond9355 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond9355))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if284 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond9356 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if284 cond cond9356))
        (__VERIFIER_assert cond9356))))

; if else
(assert
  (forall (($b664 Int) ($int9357 Int) ($a663 Int) ($i661 Int) ($n662 Int))
    (=> (and (>= $int9357 0)
             (<= $int9357 1000000)
             (<= (- 2147483648) $int9357)
             (<= $int9357 2147483647))
        ($main_if285 $i661 $n662 $a663 $b664 0 $int9357 0 0))))

; loop entry $main_inv488
(assert
  (forall (($b6649361 Int) ($a663 Int) ($i6619358 Int) ($i661 Int) ($a6639360 Int) ($n662 Int) ($n6629359 Int) ($b664 Int))
    (=> (and ($main_if285 $i661 $n662 $a663 $b664 $i6619358 $n6629359 $a6639360 $b6649361))
        ($main_inv488 $i6619358 $n6629359 $a6639360 $b6649361))))

; loop term $main_sum488
(assert
  (forall (($i6619362 Int) ($n6629363 Int) ($a6639364 Int) ($b6649365 Int))
    (=> (and (not (< $i6619362 $n6629363)))
        ($main_sum488 $i6619362 $n6629363 $a6639364 $b6649365 $i6619362 $n6629363 $a6639364 $b6649365))))

; if then
(assert
  (forall (($int9366 Int) ($n6629363 Int) ($a6639364 Int) ($i6619362 Int) ($b6649365 Int))
    (=> (and (not (= $int9366 0))
             (<= (- 2147483648) $int9366)
             (<= $int9366 2147483647)
             (< $i6619362 $n6629363)
             ($main_inv488 $i6619362 $n6629363 $a6639364 $b6649365))
        ($main_if286 $i6619362 $n6629363 $a6639364 $b6649365 $i6619362 $n6629363 (+ $a6639364 1) (+ $b6649365 2)))))

; if else
(assert
  (forall (($int9366 Int) ($n6629363 Int) ($a6639364 Int) ($i6619362 Int) ($b6649365 Int))
    (=> (and (= $int9366 0)
             (<= (- 2147483648) $int9366)
             (<= $int9366 2147483647)
             (< $i6619362 $n6629363)
             ($main_inv488 $i6619362 $n6629363 $a6639364 $b6649365))
        ($main_if286 $i6619362 $n6629363 $a6639364 $b6649365 $i6619362 $n6629363 (+ $a6639364 2) (+ $b6649365 1)))))

; forwards $main_inv488
(assert
  (forall (($a6639369 Int) ($n6629368 Int) ($i6619362 Int) ($b6649365 Int) ($n6629363 Int) ($b6649370 Int) ($a6639364 Int) ($i6619367 Int))
    (=> (and ($main_if286 $i6619362 $n6629363 $a6639364 $b6649365 $i6619367 $n6629368 $a6639369 $b6649370))
        ($main_inv488 (+ $i6619367 1) $n6629368 $a6639369 $b6649370))))

; backwards $main_sum488
(assert
  (forall (($a6639369 Int) ($a6639373 Int) ($b6649374 Int) ($n6629372 Int) ($i6619371 Int) ($n6629368 Int) ($i6619362 Int) ($b6649365 Int) ($n6629363 Int) ($b6649370 Int) ($a6639364 Int) ($i6619367 Int))
    (=> (and ($main_sum488 (+ $i6619367 1) $n6629368 $a6639369 $b6649370 $i6619371 $n6629372 $a6639373 $b6649374)
             ($main_if286 $i6619362 $n6629363 $a6639364 $b6649365 $i6619367 $n6629368 $a6639369 $b6649370))
        ($main_sum488 $i6619362 $n6629363 $a6639364 $b6649365 $i6619371 $n6629372 $a6639373 $b6649374))))

; __VERIFIER_assert precondition
(assert
  (forall (($b6649378 Int) ($b6649361 Int) ($a663 Int) ($i661 Int) ($i6619375 Int) ($n662 Int) ($n6629359 Int) ($b664 Int) ($i6619358 Int) ($a6639377 Int) ($n6629376 Int) ($a6639360 Int))
    (=> (and ($main_sum488 $i6619358 $n6629359 $a6639360 $b6649361 $i6619375 $n6629376 $a6639377 $b6649378)
             ($main_if285 $i661 $n662 $a663 $b664 $i6619358 $n6629359 $a6639360 $b6649361))
        ($__VERIFIER_assert_pre (ite (= (+ $a6639377 $b6649378) (* 3 $n6629376)) 1 0)))))

(check-sat)
