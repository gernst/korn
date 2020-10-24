(set-logic HORN)

(declare-fun $main_if473 (Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_inv96 (Int Int) Bool)
(declare-fun $main_if478 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if470 (Int Int) Bool)
(declare-fun $main_if477 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_if480 (Int Int Int Int) Bool)
(declare-fun $main_if472 (Int Int Int Int) Bool)
(declare-fun $main_if479 (Int Int Int Int) Bool)
(declare-fun $main_sum96 (Int Int Int Int) Bool)
(declare-fun $main_if476 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $main_if474 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_if471 (Int Int Int Int) Bool)
(declare-fun $main_if475 (Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond13698 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond13698))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if470 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13699 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if470 cond cond13699))
        (__VERIFIER_assert cond13699))))

; loop entry $main_inv96
(assert
  (forall (($x404 Int) ($y405 Int) ($uint13700 Int))
    (=> (and (= $y405 $uint13700)
             (<= 0 $uint13700)
             (<= $uint13700 4294967295)
             (= $x404 0))
        ($main_inv96 $x404 $y405))))

; loop term $main_sum96
(assert
  (forall (($x40413701 Int) ($y40513702 Int))
    (=> (and (not (< $x40413701 99)))
        ($main_sum96 $x40413701 $y40513702 $x40413701 $y40513702))))

; if then
(assert
  (forall (($x40413701 Int) ($y40513702 Int))
    (=> (and (= (mod $y40513702 2) 0)
             (< $x40413701 99)
             ($main_inv96 $x40413701 $y40513702))
        ($main_if471 $x40413701 $y40513702 (+ $x40413701 2) $y40513702))))

; if else
(assert
  (forall (($x40413701 Int) ($y40513702 Int))
    (=> (and (not (= (mod $y40513702 2) 0))
             (< $x40413701 99)
             ($main_inv96 $x40413701 $y40513702))
        ($main_if471 $x40413701 $y40513702 (+ $x40413701 1) $y40513702))))

; if then
(assert
  (forall (($x40413701 Int) ($y40513702 Int) ($x40413703 Int) ($y40513704 Int))
    (=> (and (= (mod $y40513704 2) 0)
             ($main_if471 $x40413701 $y40513702 $x40413703 $y40513704))
        ($main_if472 $x40413701 $y40513702 (+ $x40413703 2) $y40513704))))

; if else
(assert
  (forall (($x40413701 Int) ($y40513702 Int) ($x40413703 Int) ($y40513704 Int))
    (=> (and (not (= (mod $y40513704 2) 0))
             ($main_if471 $x40413701 $y40513702 $x40413703 $y40513704))
        ($main_if472 $x40413701 $y40513702 (- $x40413703 2) $y40513704))))

; if then
(assert
  (forall (($x40413701 Int) ($y40513702 Int) ($x40413705 Int) ($y40513706 Int))
    (=> (and (= (mod $y40513706 2) 0)
             ($main_if472 $x40413701 $y40513702 $x40413705 $y40513706))
        ($main_if473 $x40413701 $y40513702 (+ $x40413705 2) $y40513706))))

; if else
(assert
  (forall (($x40413701 Int) ($y40513702 Int) ($x40413705 Int) ($y40513706 Int))
    (=> (and (not (= (mod $y40513706 2) 0))
             ($main_if472 $x40413701 $y40513702 $x40413705 $y40513706))
        ($main_if473 $x40413701 $y40513702 (+ $x40413705 2) $y40513706))))

; if then
(assert
  (forall (($x40413701 Int) ($y40513702 Int) ($x40413707 Int) ($y40513708 Int))
    (=> (and (= (mod $y40513708 2) 0)
             ($main_if473 $x40413701 $y40513702 $x40413707 $y40513708))
        ($main_if474 $x40413701 $y40513702 (+ $x40413707 2) $y40513708))))

; if else
(assert
  (forall (($x40413701 Int) ($y40513702 Int) ($x40413707 Int) ($y40513708 Int))
    (=> (and (not (= (mod $y40513708 2) 0))
             ($main_if473 $x40413701 $y40513702 $x40413707 $y40513708))
        ($main_if474 $x40413701 $y40513702 (- $x40413707 2) $y40513708))))

; if then
(assert
  (forall (($x40413701 Int) ($y40513702 Int) ($x40413709 Int) ($y40513710 Int))
    (=> (and (= (mod $y40513710 2) 0)
             ($main_if474 $x40413701 $y40513702 $x40413709 $y40513710))
        ($main_if475 $x40413701 $y40513702 (+ $x40413709 2) $y40513710))))

; if else
(assert
  (forall (($x40413701 Int) ($y40513702 Int) ($x40413709 Int) ($y40513710 Int))
    (=> (and (not (= (mod $y40513710 2) 0))
             ($main_if474 $x40413701 $y40513702 $x40413709 $y40513710))
        ($main_if475 $x40413701 $y40513702 (+ $x40413709 2) $y40513710))))

; if then
(assert
  (forall (($x40413701 Int) ($y40513702 Int) ($x40413711 Int) ($y40513712 Int))
    (=> (and (= (mod $y40513712 2) 0)
             ($main_if475 $x40413701 $y40513702 $x40413711 $y40513712))
        ($main_if476 $x40413701 $y40513702 (+ $x40413711 2) $y40513712))))

; if else
(assert
  (forall (($x40413701 Int) ($y40513702 Int) ($x40413711 Int) ($y40513712 Int))
    (=> (and (not (= (mod $y40513712 2) 0))
             ($main_if475 $x40413701 $y40513702 $x40413711 $y40513712))
        ($main_if476 $x40413701 $y40513702 (- $x40413711 4) $y40513712))))

; if then
(assert
  (forall (($x40413701 Int) ($y40513702 Int) ($x40413713 Int) ($y40513714 Int))
    (=> (and (= (mod $y40513714 2) 0)
             ($main_if476 $x40413701 $y40513702 $x40413713 $y40513714))
        ($main_if477 $x40413701 $y40513702 (+ $x40413713 2) $y40513714))))

; if else
(assert
  (forall (($x40413701 Int) ($y40513702 Int) ($x40413713 Int) ($y40513714 Int))
    (=> (and (not (= (mod $y40513714 2) 0))
             ($main_if476 $x40413701 $y40513702 $x40413713 $y40513714))
        ($main_if477 $x40413701 $y40513702 (+ $x40413713 4) $y40513714))))

; if then
(assert
  (forall (($x40413701 Int) ($y40513702 Int) ($x40413715 Int) ($y40513716 Int))
    (=> (and (= (mod $y40513716 2) 0)
             ($main_if477 $x40413701 $y40513702 $x40413715 $y40513716))
        ($main_if478 $x40413701 $y40513702 (+ $x40413715 2) $y40513716))))

; if else
(assert
  (forall (($x40413701 Int) ($y40513702 Int) ($x40413715 Int) ($y40513716 Int))
    (=> (and (not (= (mod $y40513716 2) 0))
             ($main_if477 $x40413701 $y40513702 $x40413715 $y40513716))
        ($main_if478 $x40413701 $y40513702 (+ $x40413715 2) $y40513716))))

; if then
(assert
  (forall (($x40413701 Int) ($y40513702 Int) ($x40413717 Int) ($y40513718 Int))
    (=> (and (= (mod $y40513718 2) 0)
             ($main_if478 $x40413701 $y40513702 $x40413717 $y40513718))
        ($main_if479 $x40413701 $y40513702 (+ $x40413717 2) $y40513718))))

; if else
(assert
  (forall (($x40413701 Int) ($y40513702 Int) ($x40413717 Int) ($y40513718 Int))
    (=> (and (not (= (mod $y40513718 2) 0))
             ($main_if478 $x40413701 $y40513702 $x40413717 $y40513718))
        ($main_if479 $x40413701 $y40513702 (- $x40413717 4) $y40513718))))

; if then
(assert
  (forall (($x40413701 Int) ($y40513702 Int) ($x40413719 Int) ($y40513720 Int))
    (=> (and (= (mod $y40513720 2) 0)
             ($main_if479 $x40413701 $y40513702 $x40413719 $y40513720))
        ($main_if480 $x40413701 $y40513702 (+ $x40413719 2) $y40513720))))

; if else
(assert
  (forall (($x40413701 Int) ($y40513702 Int) ($x40413719 Int) ($y40513720 Int))
    (=> (and (not (= (mod $y40513720 2) 0))
             ($main_if479 $x40413701 $y40513702 $x40413719 $y40513720))
        ($main_if480 $x40413701 $y40513702 (- $x40413719 4) $y40513720))))

; forwards $main_inv96
(assert
  (forall (($x40413721 Int) ($y40513722 Int) ($x40413701 Int) ($y40513702 Int))
    (=> (and ($main_if480 $x40413701 $y40513702 $x40413721 $y40513722))
        ($main_inv96 $x40413721 $y40513722))))

; backwards $main_sum96
(assert
  (forall (($y40513724 Int) ($y40513702 Int) ($x40413701 Int) ($y40513722 Int) ($x40413723 Int) ($x40413721 Int))
    (=> (and ($main_sum96 $x40413721 $y40513722 $x40413723 $y40513724)
             ($main_if480 $x40413701 $y40513702 $x40413721 $y40513722))
        ($main_sum96 $x40413701 $y40513702 $x40413723 $y40513724))))

; __VERIFIER_assert precondition
(assert
  (forall (($y405 Int) ($x40413725 Int) ($x404 Int) ($y40513726 Int) ($uint13700 Int))
    (=> (and ($main_sum96 $x404 $y405 $x40413725 $y40513726)
             (= $y405 $uint13700)
             (<= 0 $uint13700)
             (<= $uint13700 4294967295)
             (= $x404 0))
        ($__VERIFIER_assert_pre (ite (= (mod $x40413725 2) (mod $y40513726 2)) 1 0)))))

(check-sat)
