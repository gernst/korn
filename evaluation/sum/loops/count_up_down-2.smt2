(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $__VERIFIER_assert_if539 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum136 (Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv136 (Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond14129 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond14129))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if539 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14130 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if539 cond cond14130))
        (__VERIFIER_assert cond14130))))

; loop entry $main_inv136
(assert
  (forall (($n482 Int) ($x483 Int) ($y484 Int) ($uint14131 Int))
    (=> (and (= $y484 0)
             (= $x483 $n482)
             (= $n482 $uint14131)
             (<= 0 $uint14131)
             (<= $uint14131 4294967295))
        ($main_inv136 $n482 $x483 $y484))))

; loop term $main_sum136
(assert
  (forall (($n48214132 Int) ($x48314133 Int) ($y48414134 Int))
    (=> (and (not (> $x48314133 0)))
        ($main_sum136 $n48214132 $x48314133 $y48414134 $n48214132 $x48314133 $y48414134))))

; forwards $main_inv136
(assert
  (forall (($n48214132 Int) ($x48314133 Int) ($y48414134 Int))
    (=> (and (> $x48314133 0)
             ($main_inv136 $n48214132 $x48314133 $y48414134))
        ($main_inv136 $n48214132 (- $x48314133 1) (+ $y48414134 1)))))

; backwards $main_sum136
(assert
  (forall (($x48314136 Int) ($n48214132 Int) ($y48414134 Int) ($y48414137 Int) ($x48314133 Int) ($n48214135 Int))
    (=> (and ($main_sum136 $n48214132 (- $x48314133 1) (+ $y48414134 1) $n48214135 $x48314136 $y48414137)
             (> $x48314133 0))
        ($main_sum136 $n48214132 $x48314133 $y48414134 $n48214135 $x48314136 $y48414137))))

; __VERIFIER_assert precondition
(assert
  (forall (($y484 Int) ($n482 Int) ($x48314139 Int) ($y48414140 Int) ($x483 Int) ($n48214138 Int) ($uint14131 Int))
    (=> (and ($main_sum136 $n482 $x483 $y484 $n48214138 $x48314139 $y48414140)
             (= $y484 0)
             (= $x483 $n482)
             (= $n482 $uint14131)
             (<= 0 $uint14131)
             (<= $uint14131 4294967295))
        ($__VERIFIER_assert_pre (ite (not (= $y48414140 $n48214138)) 1 0)))))

(check-sat)
