(set-logic HORN)

(declare-fun $main_inv128 (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum128 (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if525 (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13159 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13159))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if525 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13160 Int))
    (=> (and ($__VERIFIER_assert_if525 cond13160))
        (__VERIFIER_assert cond13160))))

; loop entry $main_inv128
(assert
  (forall (($x458 Int))
    (=> (and (= $x458 0))
        ($main_inv128 $x458))))

; loop term $main_sum128
(assert
  (forall (($x45813161 Int) ($int13162 Int))
    (=> (and (= $int13162 0)
             (<= (- 2147483648) $int13162)
             (<= $int13162 2147483647)
             ($main_inv128 $x45813161))
        ($main_sum128 $x45813161))))

; forwards $main_inv128
(assert
  (forall (($x45813161 Int) ($int13162 Int))
    (=> (and (not (= $int13162 0))
             (<= (- 2147483648) $int13162)
             (<= $int13162 2147483647)
             ($main_inv128 $x45813161))
        ($main_inv128 (+ $x45813161 2)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x45813163 Int))
    (=> (and ($main_sum128 $x45813163))
        ($__VERIFIER_assert_pre (ite (= (mod $x45813163 2) 0) 1 0)))))

(check-sat)
