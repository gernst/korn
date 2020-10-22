(set-logic HORN)

(declare-fun $main_inv163 (Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_sum163 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if551 (Int) Bool)
(declare-fun $main_inv159 (Int Int Int Int) Bool)
(declare-fun $main_inv160 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $main_inv162 (Int Int Int Int) Bool)
(declare-fun $main_sum159 (Int Int Int Int) Bool)
(declare-fun $main_sum160 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum161 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum162 (Int Int Int Int) Bool)
(declare-fun $main_inv161 (Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13485 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13485))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if551 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13486 Int))
    (=> (and ($__VERIFIER_assert_if551 cond13486))
        (__VERIFIER_assert cond13486))))

; loop entry $main_inv159
(assert
  (forall (($z516 Int) ($y515 Int) ($uint13487 Int) ($x514 Int) ($n513 Int))
    (=> (and (= $y515 0)
             (= $x514 $n513)
             (= $n513 $uint13487)
             (<= 0 $uint13487)
             (<= $uint13487 4294967295))
        ($main_inv159 $n513 $x514 $y515 $z516))))

; loop term $main_sum159
(assert
  (forall (($n51313488 Int) ($x51413489 Int) ($y51513490 Int) ($z51613491 Int))
    (=> (and (not (> $x51413489 0))
             ($main_inv159 $n51313488 $x51413489 $y51513490 $z51613491))
        ($main_sum159 $n51313488 $x51413489 $y51513490 $z51613491))))

; forwards $main_inv159
(assert
  (forall (($n51313488 Int) ($x51413489 Int) ($y51513490 Int) ($z51613491 Int))
    (=> (and (> $x51413489 0)
             ($main_inv159 $n51313488 $x51413489 $y51513490 $z51613491))
        ($main_inv159 $n51313488 (- $x51413489 1) (+ $y51513490 1) $z51613491))))

; loop entry $main_inv160
(assert
  (forall (($n51313492 Int) ($x51413493 Int) ($y51513494 Int) ($z51613495 Int))
    (=> (and ($main_sum159 $n51313492 $x51413493 $y51513494 $z51613495))
        ($main_inv160 $n51313492 $x51413493 $y51513494 $y51513494))))

; loop term $main_sum160
(assert
  (forall (($n51313496 Int) ($x51413497 Int) ($y51513498 Int) ($z51613499 Int))
    (=> (and (not (> $z51613499 0))
             ($main_inv160 $n51313496 $x51413497 $y51513498 $z51613499))
        ($main_sum160 $n51313496 $x51413497 $y51513498 $z51613499))))

; forwards $main_inv160
(assert
  (forall (($n51313496 Int) ($x51413497 Int) ($y51513498 Int) ($z51613499 Int))
    (=> (and (> $z51613499 0)
             ($main_inv160 $n51313496 $x51413497 $y51513498 $z51613499))
        ($main_inv160 $n51313496 (+ $x51413497 1) $y51513498 (- $z51613499 1)))))

; loop entry $main_inv161
(assert
  (forall (($n51313500 Int) ($x51413501 Int) ($y51513502 Int) ($z51613503 Int))
    (=> (and ($main_sum160 $n51313500 $x51413501 $y51513502 $z51613503))
        ($main_inv161 $n51313500 $x51413501 $y51513502 $z51613503))))

; loop term $main_sum161
(assert
  (forall (($n51313504 Int) ($x51413505 Int) ($y51513506 Int) ($z51613507 Int))
    (=> (and (not (> $y51513506 0))
             ($main_inv161 $n51313504 $x51413505 $y51513506 $z51613507))
        ($main_sum161 $n51313504 $x51413505 $y51513506 $z51613507))))

; forwards $main_inv161
(assert
  (forall (($n51313504 Int) ($x51413505 Int) ($y51513506 Int) ($z51613507 Int))
    (=> (and (> $y51513506 0)
             ($main_inv161 $n51313504 $x51413505 $y51513506 $z51613507))
        ($main_inv161 $n51313504 $x51413505 (- $y51513506 1) (+ $z51613507 1)))))

; loop entry $main_inv162
(assert
  (forall (($n51313508 Int) ($x51413509 Int) ($y51513510 Int) ($z51613511 Int))
    (=> (and ($main_sum161 $n51313508 $x51413509 $y51513510 $z51613511))
        ($main_inv162 $n51313508 $x51413509 $y51513510 $z51613511))))

; loop term $main_sum162
(assert
  (forall (($n51313512 Int) ($x51413513 Int) ($y51513514 Int) ($z51613515 Int))
    (=> (and (not (> $x51413513 0))
             ($main_inv162 $n51313512 $x51413513 $y51513514 $z51613515))
        ($main_sum162 $n51313512 $x51413513 $y51513514 $z51613515))))

; forwards $main_inv162
(assert
  (forall (($n51313512 Int) ($x51413513 Int) ($y51513514 Int) ($z51613515 Int))
    (=> (and (> $x51413513 0)
             ($main_inv162 $n51313512 $x51413513 $y51513514 $z51613515))
        ($main_inv162 $n51313512 (- $x51413513 1) (+ $y51513514 1) $z51613515))))

; loop entry $main_inv163
(assert
  (forall (($n51313516 Int) ($x51413517 Int) ($y51513518 Int) ($z51613519 Int))
    (=> (and ($main_sum162 $n51313516 $x51413517 $y51513518 $z51613519))
        ($main_inv163 $n51313516 $x51413517 $y51513518 $z51613519))))

; loop term $main_sum163
(assert
  (forall (($n51313520 Int) ($x51413521 Int) ($y51513522 Int) ($z51613523 Int))
    (=> (and (not (> $z51613523 0))
             ($main_inv163 $n51313520 $x51413521 $y51513522 $z51613523))
        ($main_sum163 $n51313520 $x51413521 $y51513522 $z51613523))))

; forwards $main_inv163
(assert
  (forall (($n51313520 Int) ($x51413521 Int) ($y51513522 Int) ($z51613523 Int))
    (=> (and (> $z51613523 0)
             ($main_inv163 $n51313520 $x51413521 $y51513522 $z51613523))
        ($main_inv163 $n51313520 $x51413521 (- $y51513522 1) (- $z51613523 1)))))

; __VERIFIER_assert precondition
(assert
  (forall (($y51513526 Int) ($n51313524 Int) ($x51413525 Int) ($z51613527 Int))
    (=> (and ($main_sum163 $n51313524 $x51413525 $y51513526 $z51613527))
        ($__VERIFIER_assert_pre (ite (= $y51513526 0) 1 0)))))

(check-sat)
