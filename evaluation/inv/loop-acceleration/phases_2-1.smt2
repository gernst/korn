(set-logic HORN)

(declare-fun $__VERIFIER_assert_if493 (Int) Bool)
(declare-fun $main_inv108 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_sum108 (Int Int) Bool)
(declare-fun $main_if495 (Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_if494 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $assume_abort_if_not_if492 (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if492 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond13001 Int))
    (=> (and ($assume_abort_if_not_if492 cond13001))
        (assume_abort_if_not cond13001))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13002 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13002))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if493 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13003 Int))
    (=> (and ($__VERIFIER_assert_if493 cond13003))
        (__VERIFIER_assert cond13003))))

; if else
(assert
  (forall (($x419 Int) ($y420 Int) ($uint13004 Int))
    (=> (and (> $y420 0)
             (= $y420 $uint13004)
             (<= 0 $uint13004)
             (<= $uint13004 4294967295)
             (= $x419 1))
        ($main_if494 $x419 $y420))))

; loop entry $main_inv108
(assert
  (forall (($x41913005 Int) ($y42013006 Int))
    (=> (and ($main_if494 $x41913005 $y42013006))
        ($main_inv108 $x41913005 $y42013006))))

; loop term $main_sum108
(assert
  (forall (($x41913007 Int) ($y42013008 Int))
    (=> (and (not (< $x41913007 $y42013008))
             ($main_inv108 $x41913007 $y42013008))
        ($main_sum108 $x41913007 $y42013008))))

; if then
(assert
  (forall (($x41913007 Int) ($y42013008 Int))
    (=> (and (< $x41913007 (div $y42013008 $x41913007))
             (< $x41913007 $y42013008)
             ($main_inv108 $x41913007 $y42013008))
        ($main_if495 (* $x41913007 $x41913007) $y42013008))))

; if else
(assert
  (forall (($x41913007 Int) ($y42013008 Int))
    (=> (and (not (< $x41913007 (div $y42013008 $x41913007)))
             (< $x41913007 $y42013008)
             ($main_inv108 $x41913007 $y42013008))
        ($main_if495 (+ $x41913007 1) $y42013008))))

; forwards $main_inv108
(assert
  (forall (($x41913009 Int) ($y42013010 Int))
    (=> (and ($main_if495 $x41913009 $y42013010))
        ($main_inv108 $x41913009 $y42013010))))

; __VERIFIER_assert precondition
(assert
  (forall (($x41913011 Int) ($y42013012 Int))
    (=> (and ($main_sum108 $x41913011 $y42013012))
        ($__VERIFIER_assert_pre (ite (not (= $x41913011 $y42013012)) 1 0)))))

(check-sat)
