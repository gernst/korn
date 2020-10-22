(set-logic HORN)

(declare-fun $main_sum95 (Int Int) Bool)
(declare-fun $main_inv95 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_if469 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if468 (Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond12907 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond12907))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if468 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond12908 Int))
    (=> (and ($__VERIFIER_assert_if468 cond12908))
        (__VERIFIER_assert cond12908))))

; loop entry $main_inv95
(assert
  (forall (($x402 Int) ($y403 Int) ($uint12909 Int))
    (=> (and (= $y403 $uint12909)
             (<= 0 $uint12909)
             (<= $uint12909 4294967295)
             (= $x402 0))
        ($main_inv95 $x402 $y403))))

; loop term $main_sum95
(assert
  (forall (($x40212910 Int) ($y40312911 Int))
    (=> (and (not (< $x40212910 99))
             ($main_inv95 $x40212910 $y40312911))
        ($main_sum95 $x40212910 $y40312911))))

; if then
(assert
  (forall (($x40212910 Int) ($y40312911 Int))
    (=> (and (= (mod $y40312911 2) 0)
             (< $x40212910 99)
             ($main_inv95 $x40212910 $y40312911))
        ($main_if469 (+ $x40212910 1) $y40312911))))

; if else
(assert
  (forall (($x40212910 Int) ($y40312911 Int))
    (=> (and (not (= (mod $y40312911 2) 0))
             (< $x40212910 99)
             ($main_inv95 $x40212910 $y40312911))
        ($main_if469 (+ $x40212910 2) $y40312911))))

; forwards $main_inv95
(assert
  (forall (($x40212912 Int) ($y40312913 Int))
    (=> (and ($main_if469 $x40212912 $y40312913))
        ($main_inv95 $x40212912 $y40312913))))

; __VERIFIER_assert precondition
(assert
  (forall (($x40212914 Int) ($y40312915 Int))
    (=> (and ($main_sum95 $x40212914 $y40312915))
        ($__VERIFIER_assert_pre (ite (= (mod $x40212914 2) (mod $y40312915 2)) 1 0)))))

(check-sat)
