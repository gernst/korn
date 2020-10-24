(set-logic HORN)

(declare-fun $main_inv254 ((Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum250 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_inv252 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv255 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv250 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum254 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_inv253 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum251 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if74 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum252 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_sum255 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_inv251 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum253 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond5531 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond5531))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if74 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5532 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if74 cond cond5532))
        (__VERIFIER_assert cond5532))))

; loop entry $main_inv250
(assert
  (forall (($a343 (Array Int Int)) ($i344 Int) ($x345 Int))
    (=> (and (= $i344 0))
        ($main_inv250 $a343 $i344 $x345))))

; loop term $main_sum250
(assert
  (forall (($a3435533 (Array Int Int)) ($i3445534 Int) ($x3455535 Int))
    (=> (and (not (< $i3445534 100000)))
        ($main_sum250 $a3435533 $i3445534 $x3455535 $a3435533 $i3445534 $x3455535))))

; forwards $main_inv250
(assert
  (forall (($a3435533 (Array Int Int)) ($i3445534 Int) ($x3455535 Int))
    (=> (and (< $i3445534 100000)
             ($main_inv250 $a3435533 $i3445534 $x3455535))
        ($main_inv250 (store $a3435533 $i3445534 42) (+ $i3445534 1) $x3455535))))

; backwards $main_sum250
(assert
  (forall (($i3445534 Int) ($a3435536 (Array Int Int)) ($x3455535 Int) ($x3455538 Int) ($a3435533 (Array Int Int)) ($i3445537 Int))
    (=> (and ($main_sum250 (store $a3435533 $i3445534 42) (+ $i3445534 1) $x3455535 $a3435536 $i3445537 $x3455538)
             (< $i3445534 100000))
        ($main_sum250 $a3435533 $i3445534 $x3455535 $a3435536 $i3445537 $x3455538))))

; loop entry $main_inv251
(assert
  (forall (($i3445540 Int) ($x345 Int) ($x3455541 Int) ($a343 (Array Int Int)) ($i344 Int) ($a3435539 (Array Int Int)))
    (=> (and ($main_sum250 $a343 $i344 $x345 $a3435539 $i3445540 $x3455541)
             (= $i344 0))
        ($main_inv251 $a3435539 0 $x3455541))))

; loop term $main_sum251
(assert
  (forall (($a3435542 (Array Int Int)) ($i3445543 Int) ($x3455544 Int))
    (=> (and (not (< $i3445543 100000)))
        ($main_sum251 $a3435542 $i3445543 $x3455544 $a3435542 $i3445543 $x3455544))))

; forwards $main_inv251
(assert
  (forall (($a3435542 (Array Int Int)) ($i3445543 Int) ($x3455544 Int))
    (=> (and (< $i3445543 100000)
             ($main_inv251 $a3435542 $i3445543 $x3455544))
        ($main_inv251 (store $a3435542 $i3445543 43) (+ $i3445543 1) $x3455544))))

; backwards $main_sum251
(assert
  (forall (($i3445543 Int) ($a3435542 (Array Int Int)) ($x3455547 Int) ($x3455544 Int) ($a3435545 (Array Int Int)) ($i3445546 Int))
    (=> (and ($main_sum251 (store $a3435542 $i3445543 43) (+ $i3445543 1) $x3455544 $a3435545 $i3445546 $x3455547)
             (< $i3445543 100000))
        ($main_sum251 $a3435542 $i3445543 $x3455544 $a3435545 $i3445546 $x3455547))))

; loop entry $main_inv252
(assert
  (forall (($i3445540 Int) ($x345 Int) ($x3455541 Int) ($a3435548 (Array Int Int)) ($a343 (Array Int Int)) ($i344 Int) ($a3435539 (Array Int Int)) ($i3445549 Int) ($x3455550 Int))
    (=> (and ($main_sum251 $a3435539 0 $x3455541 $a3435548 $i3445549 $x3455550)
             ($main_sum250 $a343 $i344 $x345 $a3435539 $i3445540 $x3455541)
             (= $i344 0))
        ($main_inv252 $a3435548 0 $x3455550))))

; loop term $main_sum252
(assert
  (forall (($a3435551 (Array Int Int)) ($i3445552 Int) ($x3455553 Int))
    (=> (and (not (< $i3445552 100000)))
        ($main_sum252 $a3435551 $i3445552 $x3455553 $a3435551 $i3445552 $x3455553))))

; forwards $main_inv252
(assert
  (forall (($a3435551 (Array Int Int)) ($i3445552 Int) ($x3455553 Int))
    (=> (and (< $i3445552 100000)
             ($main_inv252 $a3435551 $i3445552 $x3455553))
        ($main_inv252 (store $a3435551 $i3445552 44) (+ $i3445552 1) $x3455553))))

; backwards $main_sum252
(assert
  (forall (($x3455556 Int) ($i3445555 Int) ($x3455553 Int) ($a3435554 (Array Int Int)) ($a3435551 (Array Int Int)) ($i3445552 Int))
    (=> (and ($main_sum252 (store $a3435551 $i3445552 44) (+ $i3445552 1) $x3455553 $a3435554 $i3445555 $x3455556)
             (< $i3445552 100000))
        ($main_sum252 $a3435551 $i3445552 $x3455553 $a3435554 $i3445555 $x3455556))))

; loop entry $main_inv253
(assert
  (forall (($i3445540 Int) ($x345 Int) ($x3455541 Int) ($x3455559 Int) ($a3435548 (Array Int Int)) ($a343 (Array Int Int)) ($i344 Int) ($a3435539 (Array Int Int)) ($i3445558 Int) ($x3455550 Int) ($a3435557 (Array Int Int)) ($i3445549 Int))
    (=> (and ($main_sum252 $a3435548 0 $x3455550 $a3435557 $i3445558 $x3455559)
             ($main_sum251 $a3435539 0 $x3455541 $a3435548 $i3445549 $x3455550)
             ($main_sum250 $a343 $i344 $x345 $a3435539 $i3445540 $x3455541)
             (= $i344 0))
        ($main_inv253 $a3435557 0 $x3455559))))

; loop term $main_sum253
(assert
  (forall (($a3435560 (Array Int Int)) ($i3445561 Int) ($x3455562 Int))
    (=> (and (not (< $i3445561 100000)))
        ($main_sum253 $a3435560 $i3445561 $x3455562 $a3435560 $i3445561 $x3455562))))

; forwards $main_inv253
(assert
  (forall (($a3435560 (Array Int Int)) ($i3445561 Int) ($x3455562 Int))
    (=> (and (< $i3445561 100000)
             ($main_inv253 $a3435560 $i3445561 $x3455562))
        ($main_inv253 (store $a3435560 $i3445561 45) (+ $i3445561 1) $x3455562))))

; backwards $main_sum253
(assert
  (forall (($x3455562 Int) ($x3455565 Int) ($a3435560 (Array Int Int)) ($a3435563 (Array Int Int)) ($i3445564 Int) ($i3445561 Int))
    (=> (and ($main_sum253 (store $a3435560 $i3445561 45) (+ $i3445561 1) $x3455562 $a3435563 $i3445564 $x3455565)
             (< $i3445561 100000))
        ($main_sum253 $a3435560 $i3445561 $x3455562 $a3435563 $i3445564 $x3455565))))

; loop entry $main_inv254
(assert
  (forall (($i3445540 Int) ($x345 Int) ($x3455541 Int) ($x3455559 Int) ($a3435548 (Array Int Int)) ($a343 (Array Int Int)) ($i344 Int) ($x3455568 Int) ($i3445558 Int) ($x3455550 Int) ($a3435566 (Array Int Int)) ($a3435539 (Array Int Int)) ($a3435557 (Array Int Int)) ($i3445567 Int) ($i3445549 Int))
    (=> (and ($main_sum253 $a3435557 0 $x3455559 $a3435566 $i3445567 $x3455568)
             ($main_sum252 $a3435548 0 $x3455550 $a3435557 $i3445558 $x3455559)
             ($main_sum251 $a3435539 0 $x3455541 $a3435548 $i3445549 $x3455550)
             ($main_sum250 $a343 $i344 $x345 $a3435539 $i3445540 $x3455541)
             (= $i344 0))
        ($main_inv254 $a3435566 0 $x3455568))))

; loop term $main_sum254
(assert
  (forall (($a3435569 (Array Int Int)) ($i3445570 Int) ($x3455571 Int))
    (=> (and (not (< $i3445570 100000)))
        ($main_sum254 $a3435569 $i3445570 $x3455571 $a3435569 $i3445570 $x3455571))))

; forwards $main_inv254
(assert
  (forall (($a3435569 (Array Int Int)) ($i3445570 Int) ($x3455571 Int))
    (=> (and (< $i3445570 100000)
             ($main_inv254 $a3435569 $i3445570 $x3455571))
        ($main_inv254 (store $a3435569 $i3445570 46) (+ $i3445570 1) $x3455571))))

; backwards $main_sum254
(assert
  (forall (($i3445573 Int) ($x3455574 Int) ($a3435572 (Array Int Int)) ($x3455571 Int) ($a3435569 (Array Int Int)) ($i3445570 Int))
    (=> (and ($main_sum254 (store $a3435569 $i3445570 46) (+ $i3445570 1) $x3455571 $a3435572 $i3445573 $x3455574)
             (< $i3445570 100000))
        ($main_sum254 $a3435569 $i3445570 $x3455571 $a3435572 $i3445573 $x3455574))))

; loop entry $main_inv255
(assert
  (forall (($i3445540 Int) ($x345 Int) ($x3455541 Int) ($a3435548 (Array Int Int)) ($i344 Int) ($x3455577 Int) ($x3455568 Int) ($i3445558 Int) ($x3455550 Int) ($i3445576 Int) ($x3455559 Int) ($a343 (Array Int Int)) ($a3435575 (Array Int Int)) ($a3435566 (Array Int Int)) ($a3435539 (Array Int Int)) ($a3435557 (Array Int Int)) ($i3445567 Int) ($i3445549 Int))
    (=> (and ($main_sum254 $a3435566 0 $x3455568 $a3435575 $i3445576 $x3455577)
             ($main_sum253 $a3435557 0 $x3455559 $a3435566 $i3445567 $x3455568)
             ($main_sum252 $a3435548 0 $x3455550 $a3435557 $i3445558 $x3455559)
             ($main_sum251 $a3435539 0 $x3455541 $a3435548 $i3445549 $x3455550)
             ($main_sum250 $a343 $i344 $x345 $a3435539 $i3445540 $x3455541)
             (= $i344 0))
        ($main_inv255 $a3435575 $i3445576 0))))

; loop term $main_sum255
(assert
  (forall (($a3435578 (Array Int Int)) ($i3445579 Int) ($x3455580 Int))
    (=> (and (not (< $x3455580 100000)))
        ($main_sum255 $a3435578 $i3445579 $x3455580 $a3435578 $i3445579 $x3455580))))

; __VERIFIER_assert precondition
(assert
  (forall (($a3435578 (Array Int Int)) ($x3455580 Int) ($i3445579 Int))
    (=> (and (< $x3455580 100000)
             ($main_inv255 $a3435578 $i3445579 $x3455580))
        ($__VERIFIER_assert_pre (ite (= (select $a3435578 $x3455580) 45) 1 0)))))

; forwards $main_inv255
(assert
  (forall (($a3435578 (Array Int Int)) ($i3445579 Int) ($x3455580 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a3435578 $x3455580) 45) 1 0))
             (< $x3455580 100000)
             ($main_inv255 $a3435578 $i3445579 $x3455580))
        ($main_inv255 $a3435578 $i3445579 (+ $x3455580 1)))))

; backwards $main_sum255
(assert
  (forall (($i3445579 Int) ($a3435578 (Array Int Int)) ($i3445582 Int) ($a3435581 (Array Int Int)) ($x3455583 Int) ($x3455580 Int))
    (=> (and ($main_sum255 $a3435578 $i3445579 (+ $x3455580 1) $a3435581 $i3445582 $x3455583)
             (__VERIFIER_assert (ite (= (select $a3435578 $x3455580) 45) 1 0))
             (< $x3455580 100000))
        ($main_sum255 $a3435578 $i3445579 $x3455580 $a3435581 $i3445582 $x3455583))))

(check-sat)
