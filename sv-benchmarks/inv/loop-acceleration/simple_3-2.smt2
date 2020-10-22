(set-logic HORN)

(declare-fun $main_sum115 (Int Int) Bool)
(declare-fun $main_inv115 (Int Int) Bool)
(declare-fun __VERIFIER_nondet_ushort (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_nondet_ushort_pre () Bool)
(declare-fun $__VERIFIER_assert_if505 (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13050 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13050))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if505 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13051 Int))
    (=> (and ($__VERIFIER_assert_if505 cond13051))
        (__VERIFIER_assert cond13051))))

; loop entry $main_inv115
(assert
  (forall (($x429 Int) ($N430 Int) ($ushort13052 Int))
    (=> (and (= $N430 $ushort13052)
             (<= 0 $ushort13052)
             (<= $ushort13052 65535)
             (= $x429 0))
        ($main_inv115 $x429 $N430))))

; loop term $main_sum115
(assert
  (forall (($x42913053 Int) ($N43013054 Int))
    (=> (and (not (< $x42913053 $N43013054))
             ($main_inv115 $x42913053 $N43013054))
        ($main_sum115 $x42913053 $N43013054))))

; forwards $main_inv115
(assert
  (forall (($x42913053 Int) ($N43013054 Int))
    (=> (and (< $x42913053 $N43013054)
             ($main_inv115 $x42913053 $N43013054))
        ($main_inv115 (+ $x42913053 2) $N43013054))))

; __VERIFIER_assert precondition
(assert
  (forall (($x42913055 Int) ($N43013056 Int))
    (=> (and ($main_sum115 $x42913055 $N43013056))
        ($__VERIFIER_assert_pre (ite (= (mod $x42913055 2) 0) 1 0)))))

(check-sat)
