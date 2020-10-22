(set-logic HORN)

(declare-fun $assume_abort_if_not_if496 (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_if499 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if497 (Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $main_if498 (Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_inv109 (Int Int) Bool)
(declare-fun $main_sum109 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if496 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond13013 Int))
    (=> (and ($assume_abort_if_not_if496 cond13013))
        (assume_abort_if_not cond13013))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13014 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13014))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if497 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13015 Int))
    (=> (and ($__VERIFIER_assert_if497 cond13015))
        (__VERIFIER_assert cond13015))))

; if else
(assert
  (forall (($x421 Int) ($y422 Int) ($uint13016 Int))
    (=> (and (> $y422 0)
             (= $y422 $uint13016)
             (<= 0 $uint13016)
             (<= $uint13016 4294967295)
             (= $x421 1))
        ($main_if498 $x421 $y422))))

; loop entry $main_inv109
(assert
  (forall (($x42113017 Int) ($y42213018 Int))
    (=> (and ($main_if498 $x42113017 $y42213018))
        ($main_inv109 $x42113017 $y42213018))))

; loop term $main_sum109
(assert
  (forall (($x42113019 Int) ($y42213020 Int))
    (=> (and (not (< $x42113019 $y42213020))
             ($main_inv109 $x42113019 $y42213020))
        ($main_sum109 $x42113019 $y42213020))))

; if then
(assert
  (forall (($x42113019 Int) ($y42213020 Int))
    (=> (and (< $x42113019 (div $y42213020 $x42113019))
             (< $x42113019 $y42213020)
             ($main_inv109 $x42113019 $y42213020))
        ($main_if499 (* $x42113019 $x42113019) $y42213020))))

; if else
(assert
  (forall (($x42113019 Int) ($y42213020 Int))
    (=> (and (not (< $x42113019 (div $y42213020 $x42113019)))
             (< $x42113019 $y42213020)
             ($main_inv109 $x42113019 $y42213020))
        ($main_if499 (+ $x42113019 1) $y42213020))))

; forwards $main_inv109
(assert
  (forall (($x42113021 Int) ($y42213022 Int))
    (=> (and ($main_if499 $x42113021 $y42213022))
        ($main_inv109 $x42113021 $y42213022))))

; __VERIFIER_assert precondition
(assert
  (forall (($x42113023 Int) ($y42213024 Int))
    (=> (and ($main_sum109 $x42113023 $y42213024))
        ($__VERIFIER_assert_pre (ite (= $x42113023 $y42213024) 1 0)))))

(check-sat)
