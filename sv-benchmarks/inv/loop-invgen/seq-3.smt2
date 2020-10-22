(set-logic HORN)

(declare-fun $main_if268 (Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if266 (Int) Bool)
(declare-fun $main_sum478 (Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv480 (Int Int Int Int Int Int) Bool)
(declare-fun $main_inv478 (Int Int Int Int Int Int) Bool)
(declare-fun $main_sum479 (Int Int Int Int Int Int) Bool)
(declare-fun $main_if267 (Int Int Int Int Int Int) Bool)
(declare-fun $main_inv479 (Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $assume_abort_if_not_if265 (Int) Bool)
(declare-fun $main_sum480 (Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if265 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond6494 Int))
    (=> (and ($assume_abort_if_not_if265 cond6494))
        (assume_abort_if_not cond6494))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond6495 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond6495))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if266 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6496 Int))
    (=> (and ($__VERIFIER_assert_if266 cond6496))
        (__VERIFIER_assert cond6496))))

; if else
(assert
  (forall (($int6497 Int) ($j1647 Int) ($k645 Int) ($i1646 Int) ($i0644 Int) ($int6498 Int))
    (=> (and (<= (- 1000000) $int6497)
             (< $int6497 1000000)
             (<= (- 2147483648) $int6498)
             (<= $int6498 2147483647)
             (<= (- 2147483648) $int6497)
             (<= $int6497 2147483647)
             (= $k645 0)
             (= $i0644 0))
        ($main_if267 $int6497 $int6498 $i0644 $k645 $i1646 $j1647))))

; if else
(assert
  (forall (($k6456502 Int) ($i16466503 Int) ($n06426499 Int) ($n16436500 Int) ($j16476504 Int) ($i06446501 Int))
    (=> (and (<= (- 1000000) $n16436500)
             (< $n16436500 1000000)
             ($main_if267 $n06426499 $n16436500 $i06446501 $k6456502 $i16466503 $j16476504))
        ($main_if268 $n06426499 $n16436500 $i06446501 $k6456502 $i16466503 $j16476504))))

; loop entry $main_inv478
(assert
  (forall (($n16436506 Int) ($k6456508 Int) ($i16466509 Int) ($j16476510 Int) ($i06446507 Int) ($n06426505 Int))
    (=> (and ($main_if268 $n06426505 $n16436506 $i06446507 $k6456508 $i16466509 $j16476510))
        ($main_inv478 $n06426505 $n16436506 $i06446507 $k6456508 $i16466509 $j16476510))))

; loop term $main_sum478
(assert
  (forall (($n06426511 Int) ($i16466515 Int) ($j16476516 Int) ($i06446513 Int) ($n16436512 Int) ($k6456514 Int))
    (=> (and (not (< $i06446513 $n06426511))
             ($main_inv478 $n06426511 $n16436512 $i06446513 $k6456514 $i16466515 $j16476516))
        ($main_sum478 $n06426511 $n16436512 $i06446513 $k6456514 $i16466515 $j16476516))))

; forwards $main_inv478
(assert
  (forall (($n06426511 Int) ($i16466515 Int) ($j16476516 Int) ($i06446513 Int) ($n16436512 Int) ($k6456514 Int))
    (=> (and (< $i06446513 $n06426511)
             ($main_inv478 $n06426511 $n16436512 $i06446513 $k6456514 $i16466515 $j16476516))
        ($main_inv478 $n06426511 $n16436512 (+ $i06446513 1) (+ $k6456514 1) $i16466515 $j16476516))))

; loop entry $main_inv479
(assert
  (forall (($i06446519 Int) ($k6456520 Int) ($j16476522 Int) ($n16436518 Int) ($n06426517 Int) ($i16466521 Int))
    (=> (and (= $i16466521 0)
             ($main_sum478 $n06426517 $n16436518 $i06446519 $k6456520 $i16466521 $j16476522))
        ($main_inv479 $n06426517 $n16436518 $i06446519 $k6456520 $i16466521 $j16476522))))

; loop term $main_sum479
(assert
  (forall (($n06426523 Int) ($j16476528 Int) ($i06446525 Int) ($k6456526 Int) ($i16466527 Int) ($n16436524 Int))
    (=> (and (not (< $i16466527 $n16436524))
             ($main_inv479 $n06426523 $n16436524 $i06446525 $k6456526 $i16466527 $j16476528))
        ($main_sum479 $n06426523 $n16436524 $i06446525 $k6456526 $i16466527 $j16476528))))

; forwards $main_inv479
(assert
  (forall (($n06426523 Int) ($j16476528 Int) ($i06446525 Int) ($k6456526 Int) ($i16466527 Int) ($n16436524 Int))
    (=> (and (< $i16466527 $n16436524)
             ($main_inv479 $n06426523 $n16436524 $i06446525 $k6456526 $i16466527 $j16476528))
        ($main_inv479 $n06426523 $n16436524 $i06446525 (+ $k6456526 1) (+ $i16466527 1) $j16476528))))

; loop entry $main_inv480
(assert
  (forall (($i16466533 Int) ($i06446531 Int) ($n16436530 Int) ($n06426529 Int) ($j16476534 Int) ($k6456532 Int))
    (=> (and (= $j16476534 0)
             ($main_sum479 $n06426529 $n16436530 $i06446531 $k6456532 $i16466533 $j16476534))
        ($main_inv480 $n06426529 $n16436530 $i06446531 $k6456532 $i16466533 $j16476534))))

; loop term $main_sum480
(assert
  (forall (($j16476540 Int) ($k6456538 Int) ($i16466539 Int) ($n16436536 Int) ($n06426535 Int) ($i06446537 Int))
    (=> (and (not (< $j16476540 (+ $n06426535 $n16436536)))
             ($main_inv480 $n06426535 $n16436536 $i06446537 $k6456538 $i16466539 $j16476540))
        ($main_sum480 $n06426535 $n16436536 $i06446537 $k6456538 $i16466539 $j16476540))))

; __VERIFIER_assert precondition
(assert
  (forall (($j16476540 Int) ($k6456538 Int) ($i16466539 Int) ($n16436536 Int) ($n06426535 Int) ($i06446537 Int))
    (=> (and (< $j16476540 (+ $n06426535 $n16436536))
             ($main_inv480 $n06426535 $n16436536 $i06446537 $k6456538 $i16466539 $j16476540))
        ($__VERIFIER_assert_pre (ite (> $k6456538 0) 1 0)))))

; forwards $main_inv480
(assert
  (forall (($j16476540 Int) ($k6456538 Int) ($i16466539 Int) ($n16436536 Int) ($n06426535 Int) ($i06446537 Int))
    (=> (and (__VERIFIER_assert (ite (> $k6456538 0) 1 0))
             (< $j16476540 (+ $n06426535 $n16436536))
             ($main_inv480 $n06426535 $n16436536 $i06446537 $k6456538 $i16466539 $j16476540))
        ($main_inv480 $n06426535 $n16436536 $i06446537 (- $k6456538 1) $i16466539 (+ $j16476540 1)))))

(check-sat)
