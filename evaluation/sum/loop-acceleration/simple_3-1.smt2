(set-logic HORN)

(declare-fun __VERIFIER_nondet_ushort (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum114 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_nondet_ushort_pre () Bool)
(declare-fun $main_inv114 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if504 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond13852 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond13852))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if504 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13853 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if504 cond cond13853))
        (__VERIFIER_assert cond13853))))

; loop entry $main_inv114
(assert
  (forall (($x427 Int) ($N428 Int) ($ushort13854 Int))
    (=> (and (= $N428 $ushort13854)
             (<= 0 $ushort13854)
             (<= $ushort13854 65535)
             (= $x427 0))
        ($main_inv114 $x427 $N428))))

; loop term $main_sum114
(assert
  (forall (($x42713855 Int) ($N42813856 Int))
    (=> (and (not (< $x42713855 $N42813856)))
        ($main_sum114 $x42713855 $N42813856 $x42713855 $N42813856))))

; forwards $main_inv114
(assert
  (forall (($x42713855 Int) ($N42813856 Int))
    (=> (and (< $x42713855 $N42813856)
             ($main_inv114 $x42713855 $N42813856))
        ($main_inv114 (+ $x42713855 2) $N42813856))))

; backwards $main_sum114
(assert
  (forall (($x42713855 Int) ($N42813856 Int) ($x42713857 Int) ($N42813858 Int))
    (=> (and ($main_sum114 (+ $x42713855 2) $N42813856 $x42713857 $N42813858)
             (< $x42713855 $N42813856))
        ($main_sum114 $x42713855 $N42813856 $x42713857 $N42813858))))

; __VERIFIER_assert precondition
(assert
  (forall (($x427 Int) ($ushort13854 Int) ($x42713859 Int) ($N42813860 Int) ($N428 Int))
    (=> (and ($main_sum114 $x427 $N428 $x42713859 $N42813860)
             (= $N428 $ushort13854)
             (<= 0 $ushort13854)
             (<= $ushort13854 65535)
             (= $x427 0))
        ($__VERIFIER_assert_pre (mod $x42713859 2)))))

(check-sat)
