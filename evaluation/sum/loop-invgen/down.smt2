(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $assume_abort_if_not_if201 (Int Int) Bool)
(declare-fun $main_inv453 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum453 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if202 (Int Int) Bool)
(declare-fun $main_sum454 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_inv454 (Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if201 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond8413 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if201 cond cond8413))
        (assume_abort_if_not cond8413))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond8414 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond8414))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if202 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond8415 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if202 cond cond8415))
        (__VERIFIER_assert cond8415))))

; loop entry $main_inv453
(assert
  (forall (($int8416 Int) ($k575 Int) ($i576 Int) ($j577 Int))
    (=> (and (<= (- 2147483648) $int8416)
             (<= $int8416 2147483647)
             (= $i576 0)
             (= $k575 0))
        ($main_inv453 $int8416 $k575 $i576 $j577))))

; loop term $main_sum453
(assert
  (forall (($n5748417 Int) ($k5758418 Int) ($i5768419 Int) ($j5778420 Int))
    (=> (and (not (< $i5768419 $n5748417)))
        ($main_sum453 $n5748417 $k5758418 $i5768419 $j5778420 $n5748417 $k5758418 $i5768419 $j5778420))))

; forwards $main_inv453
(assert
  (forall (($n5748417 Int) ($k5758418 Int) ($i5768419 Int) ($j5778420 Int))
    (=> (and (< $i5768419 $n5748417)
             ($main_inv453 $n5748417 $k5758418 $i5768419 $j5778420))
        ($main_inv453 $n5748417 (+ $k5758418 1) (+ $i5768419 1) $j5778420))))

; backwards $main_sum453
(assert
  (forall (($k5758418 Int) ($k5758422 Int) ($j5778420 Int) ($j5778424 Int) ($n5748421 Int) ($i5768419 Int) ($n5748417 Int) ($i5768423 Int))
    (=> (and ($main_sum453 $n5748417 (+ $k5758418 1) (+ $i5768419 1) $j5778420 $n5748421 $k5758422 $i5768423 $j5778424)
             (< $i5768419 $n5748417))
        ($main_sum453 $n5748417 $k5758418 $i5768419 $j5778420 $n5748421 $k5758422 $i5768423 $j5778424))))

; loop entry $main_inv454
(assert
  (forall (($i5768427 Int) ($n5748425 Int) ($int8416 Int) ($k5758426 Int) ($j5778428 Int) ($i576 Int) ($k575 Int) ($j577 Int))
    (=> (and (= $j5778428 $n5748425)
             ($main_sum453 $int8416 $k575 $i576 $j577 $n5748425 $k5758426 $i5768427 $j5778428)
             (<= (- 2147483648) $int8416)
             (<= $int8416 2147483647)
             (= $i576 0)
             (= $k575 0))
        ($main_inv454 $n5748425 $k5758426 $i5768427 $j5778428))))

; loop term $main_sum454
(assert
  (forall (($n5748429 Int) ($k5758430 Int) ($i5768431 Int) ($j5778432 Int))
    (=> (and (not (> $j5778432 0)))
        ($main_sum454 $n5748429 $k5758430 $i5768431 $j5778432 $n5748429 $k5758430 $i5768431 $j5778432))))

; __VERIFIER_assert precondition
(assert
  (forall (($k5758430 Int) ($j5778432 Int) ($n5748429 Int) ($i5768431 Int))
    (=> (and (> $j5778432 0)
             ($main_inv454 $n5748429 $k5758430 $i5768431 $j5778432))
        ($__VERIFIER_assert_pre (ite (> $k5758430 0) 1 0)))))

; forwards $main_inv454
(assert
  (forall (($n5748429 Int) ($k5758430 Int) ($i5768431 Int) ($j5778432 Int))
    (=> (and (__VERIFIER_assert (ite (> $k5758430 0) 1 0))
             (> $j5778432 0)
             ($main_inv454 $n5748429 $k5758430 $i5768431 $j5778432))
        ($main_inv454 $n5748429 (- $k5758430 1) $i5768431 (- $j5778432 1)))))

; backwards $main_sum454
(assert
  (forall (($k5758434 Int) ($n5748429 Int) ($i5768435 Int) ($j5778436 Int) ($k5758430 Int) ($i5768431 Int) ($n5748433 Int) ($j5778432 Int))
    (=> (and ($main_sum454 $n5748429 (- $k5758430 1) $i5768431 (- $j5778432 1) $n5748433 $k5758434 $i5768435 $j5778436)
             (__VERIFIER_assert (ite (> $k5758430 0) 1 0))
             (> $j5778432 0))
        ($main_sum454 $n5748429 $k5758430 $i5768431 $j5778432 $n5748433 $k5758434 $i5768435 $j5778436))))

(check-sat)
