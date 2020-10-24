(set-logic HORN)

(declare-fun __VERIFIER_nondet_ushort (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum114 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_if504 (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_nondet_ushort_pre () Bool)
(declare-fun $main_inv114 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13043 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13043))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if504 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13044 Int))
    (=> (and ($__VERIFIER_assert_if504 cond13044))
        (__VERIFIER_assert cond13044))))

; loop entry $main_inv114
(assert
  (forall (($x427 Int) ($N428 Int) ($ushort13045 Int))
    (=> (and (= $N428 $ushort13045)
             (<= 0 $ushort13045)
             (<= $ushort13045 65535)
             (= $x427 0))
        ($main_inv114 $x427 $N428))))

; loop term $main_sum114
(assert
  (forall (($x42713046 Int) ($N42813047 Int))
    (=> (and (not (< $x42713046 $N42813047))
             ($main_inv114 $x42713046 $N42813047))
        ($main_sum114 $x42713046 $N42813047))))

; forwards $main_inv114
(assert
  (forall (($x42713046 Int) ($N42813047 Int))
    (=> (and (< $x42713046 $N42813047)
             ($main_inv114 $x42713046 $N42813047))
        ($main_inv114 (+ $x42713046 2) $N42813047))))

; __VERIFIER_assert precondition
(assert
  (forall (($x42713048 Int) ($N42813049 Int))
    (=> (and ($main_sum114 $x42713048 $N42813049))
        ($__VERIFIER_assert_pre (mod $x42713048 2)))))

(check-sat)
