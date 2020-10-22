(set-logic HORN)

(declare-fun $main_sum92 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv93 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_inv94 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv92 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum93 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum94 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if44 (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond1411 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond1411))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if44 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond1412 Int))
    (=> (and ($__VERIFIER_assert_if44 cond1412))
        (__VERIFIER_assert cond1412))))

; loop entry $main_inv92
(assert
  (forall (($a1159 (Array Int Int)) ($a2160 (Array Int Int)) ($i162 Int) ($x163 Int))
        ($main_inv92 $a1159 $a2160 0 $i162 $x163)))

; loop term $main_sum92
(assert
  (forall (($i1621416 Int) ($a21601414 (Array Int Int)) ($a1611415 Int) ($a11591413 (Array Int Int)) ($x1631417 Int))
    (=> (and (not (< $a1611415 100000))
             ($main_inv92 $a11591413 $a21601414 $a1611415 $i1621416 $x1631417))
        ($main_sum92 $a11591413 $a21601414 $a1611415 $i1621416 $x1631417))))

; forwards $main_inv92
(assert
  (forall (($i1621416 Int) ($int1418 Int) ($int1419 Int) ($a21601414 (Array Int Int)) ($a1611415 Int) ($a11591413 (Array Int Int)) ($x1631417 Int))
    (=> (and (<= (- 2147483648) $int1419)
             (<= $int1419 2147483647)
             (<= (- 2147483648) $int1418)
             (<= $int1418 2147483647)
             (< $a1611415 100000)
             ($main_inv92 $a11591413 $a21601414 $a1611415 $i1621416 $x1631417))
        ($main_inv92 (store $a11591413 $a1611415 $int1418) (store $a21601414 $a1611415 $int1419) (+ $a1611415 1) $i1621416 $x1631417))))

; loop entry $main_inv93
(assert
  (forall (($x1631424 Int) ($a21601421 (Array Int Int)) ($i1621423 Int) ($a1611422 Int) ($a11591420 (Array Int Int)))
    (=> (and ($main_sum92 $a11591420 $a21601421 $a1611422 $i1621423 $x1631424))
        ($main_inv93 $a11591420 $a21601421 $a1611422 0 $x1631424))))

; loop term $main_sum93
(assert
  (forall (($a21601426 (Array Int Int)) ($i1621428 Int) ($a1611427 Int) ($a11591425 (Array Int Int)) ($x1631429 Int))
    (=> (and (not (< $i1621428 100000))
             ($main_inv93 $a11591425 $a21601426 $a1611427 $i1621428 $x1631429))
        ($main_sum93 $a11591425 $a21601426 $a1611427 $i1621428 $x1631429))))

; forwards $main_inv93
(assert
  (forall (($a21601426 (Array Int Int)) ($i1621428 Int) ($a1611427 Int) ($a11591425 (Array Int Int)) ($x1631429 Int))
    (=> (and (< $i1621428 100000)
             ($main_inv93 $a11591425 $a21601426 $a1611427 $i1621428 $x1631429))
        ($main_inv93 (store $a11591425 $i1621428 (select $a11591425 $i1621428)) $a21601426 $a1611427 (+ $i1621428 1) $x1631429))))

; loop entry $main_inv94
(assert
  (forall (($i1621433 Int) ($a11591430 (Array Int Int)) ($a1611432 Int) ($a21601431 (Array Int Int)) ($x1631434 Int))
    (=> (and ($main_sum93 $a11591430 $a21601431 $a1611432 $i1621433 $x1631434))
        ($main_inv94 $a11591430 $a21601431 $a1611432 $i1621433 0))))

; loop term $main_sum94
(assert
  (forall (($i1621438 Int) ($a21601436 (Array Int Int)) ($a11591435 (Array Int Int)) ($a1611437 Int) ($x1631439 Int))
    (=> (and (not (< $x1631439 100000))
             ($main_inv94 $a11591435 $a21601436 $a1611437 $i1621438 $x1631439))
        ($main_sum94 $a11591435 $a21601436 $a1611437 $i1621438 $x1631439))))

; __VERIFIER_assert precondition
(assert
  (forall (($i1621438 Int) ($a21601436 (Array Int Int)) ($a11591435 (Array Int Int)) ($a1611437 Int) ($x1631439 Int))
    (=> (and (< $x1631439 100000)
             ($main_inv94 $a11591435 $a21601436 $a1611437 $i1621438 $x1631439))
        ($__VERIFIER_assert_pre (ite (= (select $a11591435 $x1631439) (select $a21601436 $x1631439)) 1 0)))))

; forwards $main_inv94
(assert
  (forall (($i1621438 Int) ($a21601436 (Array Int Int)) ($a11591435 (Array Int Int)) ($a1611437 Int) ($x1631439 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a11591435 $x1631439) (select $a21601436 $x1631439)) 1 0))
             (< $x1631439 100000)
             ($main_inv94 $a11591435 $a21601436 $a1611437 $i1621438 $x1631439))
        ($main_inv94 $a11591435 $a21601436 $a1611437 $i1621438 (+ $x1631439 1)))))

(check-sat)
