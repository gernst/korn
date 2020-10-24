(set-logic HORN)

(declare-fun $main_inv108 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $__VERIFIER_assert_if493 (Int Int) Bool)
(declare-fun $assume_abort_if_not_if492 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum108 (Int Int Int Int) Bool)
(declare-fun $main_if495 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_if494 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if492 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond13802 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if492 cond cond13802))
        (assume_abort_if_not cond13802))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond13803 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond13803))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if493 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13804 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if493 cond cond13804))
        (__VERIFIER_assert cond13804))))

; if else
(assert
  (forall (($x419 Int) ($y420 Int) ($uint13805 Int))
    (=> (and (> $y420 0)
             (= $y420 $uint13805)
             (<= 0 $uint13805)
             (<= $uint13805 4294967295)
             (= $x419 1))
        ($main_if494 $x419 $y420 $x419 $y420))))

; loop entry $main_inv108
(assert
  (forall (($x41913806 Int) ($y42013807 Int) ($x419 Int) ($y420 Int))
    (=> (and ($main_if494 $x419 $y420 $x41913806 $y42013807))
        ($main_inv108 $x41913806 $y42013807))))

; loop term $main_sum108
(assert
  (forall (($x41913808 Int) ($y42013809 Int))
    (=> (and (not (< $x41913808 $y42013809)))
        ($main_sum108 $x41913808 $y42013809 $x41913808 $y42013809))))

; if then
(assert
  (forall (($x41913808 Int) ($y42013809 Int))
    (=> (and (< $x41913808 (div $y42013809 $x41913808))
             (< $x41913808 $y42013809)
             ($main_inv108 $x41913808 $y42013809))
        ($main_if495 $x41913808 $y42013809 (* $x41913808 $x41913808) $y42013809))))

; if else
(assert
  (forall (($x41913808 Int) ($y42013809 Int))
    (=> (and (not (< $x41913808 (div $y42013809 $x41913808)))
             (< $x41913808 $y42013809)
             ($main_inv108 $x41913808 $y42013809))
        ($main_if495 $x41913808 $y42013809 (+ $x41913808 1) $y42013809))))

; forwards $main_inv108
(assert
  (forall (($x41913810 Int) ($y42013811 Int) ($x41913808 Int) ($y42013809 Int))
    (=> (and ($main_if495 $x41913808 $y42013809 $x41913810 $y42013811))
        ($main_inv108 $x41913810 $y42013811))))

; backwards $main_sum108
(assert
  (forall (($y42013811 Int) ($x41913808 Int) ($x41913812 Int) ($y42013813 Int) ($y42013809 Int) ($x41913810 Int))
    (=> (and ($main_sum108 $x41913810 $y42013811 $x41913812 $y42013813)
             ($main_if495 $x41913808 $y42013809 $x41913810 $y42013811))
        ($main_sum108 $x41913808 $y42013809 $x41913812 $y42013813))))

; __VERIFIER_assert precondition
(assert
  (forall (($y42013815 Int) ($x41913806 Int) ($x41913814 Int) ($y42013807 Int) ($y420 Int) ($x419 Int))
    (=> (and ($main_sum108 $x41913806 $y42013807 $x41913814 $y42013815)
             ($main_if494 $x419 $y420 $x41913806 $y42013807))
        ($__VERIFIER_assert_pre (ite (not (= $x41913814 $y42013815)) 1 0)))))

(check-sat)
