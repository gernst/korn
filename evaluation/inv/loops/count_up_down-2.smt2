(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum136 (Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if539 (Int) Bool)
(declare-fun $main_inv136 (Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13265 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13265))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if539 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13266 Int))
    (=> (and ($__VERIFIER_assert_if539 cond13266))
        (__VERIFIER_assert cond13266))))

; loop entry $main_inv136
(assert
  (forall (($n482 Int) ($x483 Int) ($y484 Int) ($uint13267 Int))
    (=> (and (= $y484 0)
             (= $x483 $n482)
             (= $n482 $uint13267)
             (<= 0 $uint13267)
             (<= $uint13267 4294967295))
        ($main_inv136 $n482 $x483 $y484))))

; loop term $main_sum136
(assert
  (forall (($n48213268 Int) ($x48313269 Int) ($y48413270 Int))
    (=> (and (not (> $x48313269 0))
             ($main_inv136 $n48213268 $x48313269 $y48413270))
        ($main_sum136 $n48213268 $x48313269 $y48413270))))

; forwards $main_inv136
(assert
  (forall (($n48213268 Int) ($x48313269 Int) ($y48413270 Int))
    (=> (and (> $x48313269 0)
             ($main_inv136 $n48213268 $x48313269 $y48413270))
        ($main_inv136 $n48213268 (- $x48313269 1) (+ $y48413270 1)))))

; __VERIFIER_assert precondition
(assert
  (forall (($y48413273 Int) ($n48213271 Int) ($x48313272 Int))
    (=> (and ($main_sum136 $n48213271 $x48313272 $y48413273))
        ($__VERIFIER_assert_pre (ite (not (= $y48413273 $n48213271)) 1 0)))))

(check-sat)
