(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_inv135 (Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if538 (Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $main_sum135 (Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13256 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13256))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if538 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13257 Int))
    (=> (and ($__VERIFIER_assert_if538 cond13257))
        (__VERIFIER_assert cond13257))))

; loop entry $main_inv135
(assert
  (forall (($n479 Int) ($x480 Int) ($y481 Int) ($uint13258 Int))
    (=> (and (= $y481 0)
             (= $x480 $n479)
             (= $n479 $uint13258)
             (<= 0 $uint13258)
             (<= $uint13258 4294967295))
        ($main_inv135 $n479 $x480 $y481))))

; loop term $main_sum135
(assert
  (forall (($n47913259 Int) ($x48013260 Int) ($y48113261 Int))
    (=> (and (not (> $x48013260 0))
             ($main_inv135 $n47913259 $x48013260 $y48113261))
        ($main_sum135 $n47913259 $x48013260 $y48113261))))

; forwards $main_inv135
(assert
  (forall (($n47913259 Int) ($x48013260 Int) ($y48113261 Int))
    (=> (and (> $x48013260 0)
             ($main_inv135 $n47913259 $x48013260 $y48113261))
        ($main_inv135 $n47913259 (- $x48013260 1) (+ $y48113261 1)))))

; __VERIFIER_assert precondition
(assert
  (forall (($y48113264 Int) ($n47913262 Int) ($x48013263 Int))
    (=> (and ($main_sum135 $n47913262 $x48013263 $y48113264))
        ($__VERIFIER_assert_pre (ite (= $y48113264 $n47913262) 1 0)))))

(check-sat)
