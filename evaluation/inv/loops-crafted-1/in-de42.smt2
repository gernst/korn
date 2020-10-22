(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_inv152 (Int Int Int Int) Bool)
(declare-fun $main_sum153 (Int Int Int Int) Bool)
(declare-fun $main_sum152 (Int Int Int Int) Bool)
(declare-fun $main_inv151 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $__VERIFIER_assert_if549 (Int) Bool)
(declare-fun $main_sum151 (Int Int Int Int) Bool)
(declare-fun $main_inv153 (Int Int Int Int) Bool)
(declare-fun $main_sum150 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv150 (Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13407 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13407))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if549 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13408 Int))
    (=> (and ($__VERIFIER_assert_if549 cond13408))
        (__VERIFIER_assert cond13408))))

; loop entry $main_inv150
(assert
  (forall (($uint13409 Int) ($x506 Int) ($z508 Int) ($y507 Int) ($n505 Int))
    (=> (and (= $y507 0)
             (= $x506 $n505)
             (= $n505 $uint13409)
             (<= 0 $uint13409)
             (<= $uint13409 4294967295))
        ($main_inv150 $n505 $x506 $y507 $z508))))

; loop term $main_sum150
(assert
  (forall (($n50513410 Int) ($x50613411 Int) ($y50713412 Int) ($z50813413 Int))
    (=> (and (not (> $x50613411 0))
             ($main_inv150 $n50513410 $x50613411 $y50713412 $z50813413))
        ($main_sum150 $n50513410 $x50613411 $y50713412 $z50813413))))

; forwards $main_inv150
(assert
  (forall (($n50513410 Int) ($x50613411 Int) ($y50713412 Int) ($z50813413 Int))
    (=> (and (> $x50613411 0)
             ($main_inv150 $n50513410 $x50613411 $y50713412 $z50813413))
        ($main_inv150 $n50513410 (- $x50613411 1) (+ $y50713412 1) $z50813413))))

; loop entry $main_inv151
(assert
  (forall (($n50513414 Int) ($x50613415 Int) ($y50713416 Int) ($z50813417 Int))
    (=> (and ($main_sum150 $n50513414 $x50613415 $y50713416 $z50813417))
        ($main_inv151 $n50513414 $x50613415 $y50713416 $y50713416))))

; loop term $main_sum151
(assert
  (forall (($n50513418 Int) ($x50613419 Int) ($y50713420 Int) ($z50813421 Int))
    (=> (and (not (> $z50813421 0))
             ($main_inv151 $n50513418 $x50613419 $y50713420 $z50813421))
        ($main_sum151 $n50513418 $x50613419 $y50713420 $z50813421))))

; forwards $main_inv151
(assert
  (forall (($n50513418 Int) ($x50613419 Int) ($y50713420 Int) ($z50813421 Int))
    (=> (and (> $z50813421 0)
             ($main_inv151 $n50513418 $x50613419 $y50713420 $z50813421))
        ($main_inv151 $n50513418 (+ $x50613419 1) $y50713420 (- $z50813421 1)))))

; loop entry $main_inv152
(assert
  (forall (($n50513422 Int) ($x50613423 Int) ($y50713424 Int) ($z50813425 Int))
    (=> (and ($main_sum151 $n50513422 $x50613423 $y50713424 $z50813425))
        ($main_inv152 $n50513422 $x50613423 $y50713424 $z50813425))))

; loop term $main_sum152
(assert
  (forall (($n50513426 Int) ($x50613427 Int) ($y50713428 Int) ($z50813429 Int))
    (=> (and (not (> $y50713428 0))
             ($main_inv152 $n50513426 $x50613427 $y50713428 $z50813429))
        ($main_sum152 $n50513426 $x50613427 $y50713428 $z50813429))))

; forwards $main_inv152
(assert
  (forall (($n50513426 Int) ($x50613427 Int) ($y50713428 Int) ($z50813429 Int))
    (=> (and (> $y50713428 0)
             ($main_inv152 $n50513426 $x50613427 $y50713428 $z50813429))
        ($main_inv152 $n50513426 $x50613427 (- $y50713428 1) (+ $z50813429 1)))))

; loop entry $main_inv153
(assert
  (forall (($n50513430 Int) ($x50613431 Int) ($y50713432 Int) ($z50813433 Int))
    (=> (and ($main_sum152 $n50513430 $x50613431 $y50713432 $z50813433))
        ($main_inv153 $n50513430 $x50613431 $y50713432 $z50813433))))

; loop term $main_sum153
(assert
  (forall (($n50513434 Int) ($x50613435 Int) ($y50713436 Int) ($z50813437 Int))
    (=> (and (not (> $x50613435 0))
             ($main_inv153 $n50513434 $x50613435 $y50713436 $z50813437))
        ($main_sum153 $n50513434 $x50613435 $y50713436 $z50813437))))

; forwards $main_inv153
(assert
  (forall (($n50513434 Int) ($x50613435 Int) ($y50713436 Int) ($z50813437 Int))
    (=> (and (> $x50613435 0)
             ($main_inv153 $n50513434 $x50613435 $y50713436 $z50813437))
        ($main_inv153 $n50513434 (- $x50613435 1) $y50713436 (+ $z50813437 1)))))

; __VERIFIER_assert precondition
(assert
  (forall (($z50813441 Int) ($n50513438 Int) ($x50613439 Int) ($y50713440 Int))
    (=> (and ($main_sum153 $n50513438 $x50613439 $y50713440 $z50813441))
        ($__VERIFIER_assert_pre (ite (= $z50813441 (* 2 $n50513438)) 1 0)))))

(check-sat)
