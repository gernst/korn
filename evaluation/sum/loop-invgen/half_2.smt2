(set-logic HORN)

(declare-fun $main_inv458 (Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum459 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv459 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $assume_abort_if_not_if207 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if208 (Int Int) Bool)
(declare-fun $main_if209 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_sum458 (Int Int Int Int Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if207 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond8513 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if207 cond cond8513))
        (assume_abort_if_not cond8513))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond8514 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond8514))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if208 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond8515 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if208 cond cond8515))
        (__VERIFIER_assert cond8515))))

; if else
(assert
  (forall (($int8516 Int) ($k586 Int) ($i585 Int) ($n584 Int) ($j587 Int))
    (=> (and (<= $int8516 1000000)
             (<= (- 2147483648) $int8516)
             (<= $int8516 2147483647))
        ($main_if209 $n584 $i585 $k586 $j587 $int8516 $i585 $k586 $j587))))

; loop entry $main_inv458
(assert
  (forall (($k586 Int) ($i585 Int) ($n584 Int) ($j5878520 Int) ($i5858518 Int) ($j587 Int) ($k5868519 Int) ($n5848517 Int))
    (=> (and ($main_if209 $n584 $i585 $k586 $j587 $n5848517 $i5858518 $k5868519 $j5878520))
        ($main_inv458 $n5848517 0 $n5848517 $j5878520))))

; loop term $main_sum458
(assert
  (forall (($n5848521 Int) ($i5858522 Int) ($k5868523 Int) ($j5878524 Int))
    (=> (and (not (< $i5858522 $n5848521)))
        ($main_sum458 $n5848521 $i5858522 $k5868523 $j5878524 $n5848521 $i5858522 $k5868523 $j5878524))))

; forwards $main_inv458
(assert
  (forall (($n5848521 Int) ($i5858522 Int) ($k5868523 Int) ($j5878524 Int))
    (=> (and (< $i5858522 $n5848521)
             ($main_inv458 $n5848521 $i5858522 $k5868523 $j5878524))
        ($main_inv458 $n5848521 (+ $i5858522 2) (- $k5868523 1) $j5878524))))

; backwards $main_sum458
(assert
  (forall (($k5868527 Int) ($j5878528 Int) ($i5858526 Int) ($i5858522 Int) ($n5848525 Int) ($n5848521 Int) ($j5878524 Int) ($k5868523 Int))
    (=> (and ($main_sum458 $n5848521 (+ $i5858522 2) (- $k5868523 1) $j5878524 $n5848525 $i5858526 $k5868527 $j5878528)
             (< $i5858522 $n5848521))
        ($main_sum458 $n5848521 $i5858522 $k5868523 $j5878524 $n5848525 $i5858526 $k5868527 $j5878528))))

; loop entry $main_inv459
(assert
  (forall (($n5848529 Int) ($k586 Int) ($i585 Int) ($k5868531 Int) ($i5858530 Int) ($n584 Int) ($j5878520 Int) ($i5858518 Int) ($j5878532 Int) ($j587 Int) ($k5868519 Int) ($n5848517 Int))
    (=> (and (= $j5878532 0)
             ($main_sum458 $n5848517 0 $n5848517 $j5878520 $n5848529 $i5858530 $k5868531 $j5878532)
             ($main_if209 $n584 $i585 $k586 $j587 $n5848517 $i5858518 $k5868519 $j5878520))
        ($main_inv459 $n5848529 $i5858530 $k5868531 $j5878532))))

; loop term $main_sum459
(assert
  (forall (($n5848533 Int) ($i5858534 Int) ($k5868535 Int) ($j5878536 Int))
    (=> (and (not (< $j5878536 (div $n5848533 2))))
        ($main_sum459 $n5848533 $i5858534 $k5868535 $j5878536 $n5848533 $i5858534 $k5868535 $j5878536))))

; __VERIFIER_assert precondition
(assert
  (forall (($k5868535 Int) ($j5878536 Int) ($n5848533 Int) ($i5858534 Int))
    (=> (and (< $j5878536 (div $n5848533 2))
             ($main_inv459 $n5848533 $i5858534 $k5868535 $j5878536))
        ($__VERIFIER_assert_pre (ite (> $k5868535 0) 1 0)))))

; forwards $main_inv459
(assert
  (forall (($n5848533 Int) ($i5858534 Int) ($k5868535 Int) ($j5878536 Int))
    (=> (and (__VERIFIER_assert (ite (> $k5868535 0) 1 0))
             (< $j5878536 (div $n5848533 2))
             ($main_inv459 $n5848533 $i5858534 $k5868535 $j5878536))
        ($main_inv459 $n5848533 $i5858534 (- $k5868535 1) (+ $j5878536 1)))))

; backwards $main_sum459
(assert
  (forall (($n5848537 Int) ($i5858534 Int) ($j5878536 Int) ($j5878540 Int) ($k5868539 Int) ($n5848533 Int) ($k5868535 Int) ($i5858538 Int))
    (=> (and ($main_sum459 $n5848533 $i5858534 (- $k5868535 1) (+ $j5878536 1) $n5848537 $i5858538 $k5868539 $j5878540)
             (__VERIFIER_assert (ite (> $k5868535 0) 1 0))
             (< $j5878536 (div $n5848533 2)))
        ($main_sum459 $n5848533 $i5858534 $k5868535 $j5878536 $n5848537 $i5858538 $k5868539 $j5878540))))

(check-sat)
