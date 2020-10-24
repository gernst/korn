(set-logic HORN)

(declare-fun $main_if306 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if303 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum496 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_if305 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv496 (Int Int Int Int) Bool)
(declare-fun $main_if304 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $assume_abort_if_not_if302 (Int Int) Bool)
(declare-fun $main_if307 (Int Int Int Int Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if302 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond9485 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if302 cond cond9485))
        (assume_abort_if_not cond9485))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond9486 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond9486))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if303 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond9487 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if303 cond cond9487))
        (__VERIFIER_assert cond9487))))

; loop entry $main_inv496
(assert
        ($main_inv496 0 0 0 0))

; loop term $main_sum496
(assert
  (forall (($z6839490 Int) ($int9492 Int) ($x6819488 Int) ($w6849491 Int) ($y6829489 Int))
    (=> (and (not (and (not (= $int9492 0)) (< $y6829489 10000)))
             (<= (- 2147483648) $int9492)
             (<= $int9492 2147483647))
        ($main_sum496 $x6819488 $y6829489 $z6839490 $w6849491 $x6819488 $y6829489 $z6839490 $w6849491))))

; if then
(assert
  (forall (($z6839490 Int) ($int9493 Int) ($int9492 Int) ($x6819488 Int) ($y6829489 Int) ($w6849491 Int) ($int9494 Int))
    (=> (and (>= $x6819488 4)
             (not (= $int9494 0))
             (<= (- 2147483648) $int9494)
             (<= $int9494 2147483647)
             (= $int9493 0)
             (<= (- 2147483648) $int9493)
             (<= $int9493 2147483647)
             (not (= $int9492 0))
             (< $y6829489 10000)
             (<= (- 2147483648) $int9492)
             (<= $int9492 2147483647)
             ($main_inv496 $x6819488 $y6829489 $z6839490 $w6849491))
        ($main_if304 $x6819488 $y6829489 $z6839490 $w6849491 (+ $x6819488 1) (+ $y6829489 1) $z6839490 $w6849491))))

; if else
(assert
  (forall (($z6839490 Int) ($int9493 Int) ($int9492 Int) ($x6819488 Int) ($y6829489 Int) ($w6849491 Int) ($int9494 Int))
    (=> (and (not (>= $x6819488 4))
             (not (= $int9494 0))
             (<= (- 2147483648) $int9494)
             (<= $int9494 2147483647)
             (= $int9493 0)
             (<= (- 2147483648) $int9493)
             (<= $int9493 2147483647)
             (not (= $int9492 0))
             (< $y6829489 10000)
             (<= (- 2147483648) $int9492)
             (<= $int9492 2147483647)
             ($main_inv496 $x6819488 $y6829489 $z6839490 $w6849491))
        ($main_if304 $x6819488 $y6829489 $z6839490 $w6849491 $x6819488 $y6829489 $z6839490 $w6849491))))

; if then
(assert
  (forall (($z6839490 Int) ($int9493 Int) ($int9492 Int) ($x6819488 Int) ($y6829489 Int) ($w6849491 Int) ($int9494 Int))
    (=> (and (> $y6829489 (* 10 $w6849491))
             (>= $z6839490 (* 100 $x6819488))
             (= $int9494 0)
             (<= (- 2147483648) $int9494)
             (<= $int9494 2147483647)
             (= $int9493 0)
             (<= (- 2147483648) $int9493)
             (<= $int9493 2147483647)
             (not (= $int9492 0))
             (< $y6829489 10000)
             (<= (- 2147483648) $int9492)
             (<= $int9492 2147483647)
             ($main_inv496 $x6819488 $y6829489 $z6839490 $w6849491))
        ($main_if305 $x6819488 $y6829489 $z6839490 $w6849491 $x6819488 (- $y6829489) $z6839490 $w6849491))))

; if else
(assert
  (forall (($z6839490 Int) ($int9493 Int) ($int9492 Int) ($x6819488 Int) ($y6829489 Int) ($w6849491 Int) ($int9494 Int))
    (=> (and (not (and (> $y6829489 (* 10 $w6849491)) (>= $z6839490 (* 100 $x6819488))))
             (= $int9494 0)
             (<= (- 2147483648) $int9494)
             (<= $int9494 2147483647)
             (= $int9493 0)
             (<= (- 2147483648) $int9493)
             (<= $int9493 2147483647)
             (not (= $int9492 0))
             (< $y6829489 10000)
             (<= (- 2147483648) $int9492)
             (<= $int9492 2147483647)
             ($main_inv496 $x6819488 $y6829489 $z6839490 $w6849491))
        ($main_if305 $x6819488 $y6829489 $z6839490 $w6849491 $x6819488 $y6829489 $z6839490 $w6849491))))

; if then
(assert
  (forall (($z6839490 Int) ($w6849498 Int) ($x6819488 Int) ($w6849491 Int) ($y6829496 Int) ($y6829489 Int) ($z6839497 Int) ($x6819495 Int))
    (=> (and ($main_if304 $x6819488 $y6829489 $z6839490 $w6849491 $x6819495 $y6829496 $z6839497 $w6849498))
        ($main_if306 $x6819488 $y6829489 $z6839490 $w6849491 $x6819495 $y6829496 $z6839497 $w6849498))))

; if else
(assert
  (forall (($z6839490 Int) ($x6819499 Int) ($w6849502 Int) ($z6839501 Int) ($y6829500 Int) ($x6819488 Int) ($w6849491 Int) ($y6829489 Int))
    (=> (and ($main_if305 $x6819488 $y6829489 $z6839490 $w6849491 $x6819499 $y6829500 $z6839501 $w6849502))
        ($main_if306 $x6819488 $y6829489 $z6839490 $w6849491 $x6819499 $y6829500 $z6839501 $w6849502))))

; if then
(assert
  (forall (($z6839490 Int) ($int9493 Int) ($int9492 Int) ($x6819488 Int) ($w6849491 Int) ($y6829489 Int))
    (=> (and (not (= $int9493 0))
             (<= (- 2147483648) $int9493)
             (<= $int9493 2147483647)
             (not (= $int9492 0))
             (< $y6829489 10000)
             (<= (- 2147483648) $int9492)
             (<= $int9492 2147483647)
             ($main_inv496 $x6819488 $y6829489 $z6839490 $w6849491))
        ($main_if307 $x6819488 $y6829489 $z6839490 $w6849491 (+ $x6819488 1) (+ $y6829489 100) $z6839490 $w6849491))))

; if else
(assert
  (forall (($z6839490 Int) ($z6839505 Int) ($w6849506 Int) ($x6819488 Int) ($w6849491 Int) ($y6829489 Int) ($y6829504 Int) ($x6819503 Int))
    (=> (and ($main_if306 $x6819488 $y6829489 $z6839490 $w6849491 $x6819503 $y6829504 $z6839505 $w6849506))
        ($main_if307 $x6819488 $y6829489 $z6839490 $w6849491 $x6819503 $y6829504 $z6839505 $w6849506))))

; forwards $main_inv496
(assert
  (forall (($z6839490 Int) ($x6819507 Int) ($y6829508 Int) ($y6829489 Int) ($x6819488 Int) ($z6839509 Int) ($w6849491 Int) ($w6849510 Int))
    (=> (and ($main_if307 $x6819488 $y6829489 $z6839490 $w6849491 $x6819507 $y6829508 $z6839509 $w6849510))
        ($main_inv496 $x6819507 $y6829508 (+ $z6839509 10) (+ $w6849510 1)))))

; backwards $main_sum496
(assert
  (forall (($z6839490 Int) ($x6819507 Int) ($w6849514 Int) ($y6829512 Int) ($y6829508 Int) ($x6819511 Int) ($y6829489 Int) ($x6819488 Int) ($z6839509 Int) ($w6849491 Int) ($z6839513 Int) ($w6849510 Int))
    (=> (and ($main_sum496 $x6819507 $y6829508 (+ $z6839509 10) (+ $w6849510 1) $x6819511 $y6829512 $z6839513 $w6849514)
             ($main_if307 $x6819488 $y6829489 $z6839490 $w6849491 $x6819507 $y6829508 $z6839509 $w6849510))
        ($main_sum496 $x6819488 $y6829489 $z6839490 $w6849491 $x6819511 $y6829512 $z6839513 $w6849514))))

; __VERIFIER_assert precondition
(assert
  (forall (($x6819515 Int) ($y6829516 Int) ($z6839517 Int) ($w6849518 Int))
    (=> (and ($main_sum496 0 0 0 0 $x6819515 $y6829516 $z6839517 $w6849518))
        ($__VERIFIER_assert_pre (ite (and (>= $x6819515 4) (<= $y6829516 2)) 1 0)))))

(check-sat)
