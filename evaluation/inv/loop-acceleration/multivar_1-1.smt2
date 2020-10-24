(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_sum99 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv99 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if483 (Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond12953 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond12953))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if483 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond12954 Int))
    (=> (and ($__VERIFIER_assert_if483 cond12954))
        (__VERIFIER_assert cond12954))))

; loop entry $main_inv99
(assert
  (forall (($x408 Int) ($y409 Int) ($uint12955 Int))
    (=> (and (= $y409 $x408)
             (= $x408 $uint12955)
             (<= 0 $uint12955)
             (<= $uint12955 4294967295))
        ($main_inv99 $x408 $y409))))

; loop term $main_sum99
(assert
  (forall (($x40812956 Int) ($y40912957 Int))
    (=> (and (not (< $x40812956 1024))
             ($main_inv99 $x40812956 $y40912957))
        ($main_sum99 $x40812956 $y40912957))))

; forwards $main_inv99
(assert
  (forall (($x40812956 Int) ($y40912957 Int))
    (=> (and (< $x40812956 1024)
             ($main_inv99 $x40812956 $y40912957))
        ($main_inv99 (+ $x40812956 1) (+ $y40912957 1)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x40812958 Int) ($y40912959 Int))
    (=> (and ($main_sum99 $x40812958 $y40912959))
        ($__VERIFIER_assert_pre (ite (= $x40812958 $y40912959) 1 0)))))

(check-sat)
