(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_inv135 (Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if538 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $main_sum135 (Int Int Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond14117 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond14117))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if538 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14118 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if538 cond cond14118))
        (__VERIFIER_assert cond14118))))

; loop entry $main_inv135
(assert
  (forall (($n479 Int) ($x480 Int) ($y481 Int) ($uint14119 Int))
    (=> (and (= $y481 0)
             (= $x480 $n479)
             (= $n479 $uint14119)
             (<= 0 $uint14119)
             (<= $uint14119 4294967295))
        ($main_inv135 $n479 $x480 $y481))))

; loop term $main_sum135
(assert
  (forall (($n47914120 Int) ($x48014121 Int) ($y48114122 Int))
    (=> (and (not (> $x48014121 0)))
        ($main_sum135 $n47914120 $x48014121 $y48114122 $n47914120 $x48014121 $y48114122))))

; forwards $main_inv135
(assert
  (forall (($n47914120 Int) ($x48014121 Int) ($y48114122 Int))
    (=> (and (> $x48014121 0)
             ($main_inv135 $n47914120 $x48014121 $y48114122))
        ($main_inv135 $n47914120 (- $x48014121 1) (+ $y48114122 1)))))

; backwards $main_sum135
(assert
  (forall (($n47914123 Int) ($x48014121 Int) ($y48114122 Int) ($y48114125 Int) ($n47914120 Int) ($x48014124 Int))
    (=> (and ($main_sum135 $n47914120 (- $x48014121 1) (+ $y48114122 1) $n47914123 $x48014124 $y48114125)
             (> $x48014121 0))
        ($main_sum135 $n47914120 $x48014121 $y48114122 $n47914123 $x48014124 $y48114125))))

; __VERIFIER_assert precondition
(assert
  (forall (($uint14119 Int) ($n47914126 Int) ($y48114128 Int) ($x48014127 Int) ($y481 Int) ($x480 Int) ($n479 Int))
    (=> (and ($main_sum135 $n479 $x480 $y481 $n47914126 $x48014127 $y48114128)
             (= $y481 0)
             (= $x480 $n479)
             (= $n479 $uint14119)
             (<= 0 $uint14119)
             (<= $uint14119 4294967295))
        ($__VERIFIER_assert_pre (ite (= $y48114128 $n47914126) 1 0)))))

(check-sat)
