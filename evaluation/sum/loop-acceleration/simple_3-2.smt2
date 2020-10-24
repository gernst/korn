(set-logic HORN)

(declare-fun $main_sum115 (Int Int Int Int) Bool)
(declare-fun $main_inv115 (Int Int) Bool)
(declare-fun __VERIFIER_nondet_ushort (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_nondet_ushort_pre () Bool)
(declare-fun $__VERIFIER_assert_if505 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond13861 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond13861))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if505 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13862 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if505 cond cond13862))
        (__VERIFIER_assert cond13862))))

; loop entry $main_inv115
(assert
  (forall (($x429 Int) ($N430 Int) ($ushort13863 Int))
    (=> (and (= $N430 $ushort13863)
             (<= 0 $ushort13863)
             (<= $ushort13863 65535)
             (= $x429 0))
        ($main_inv115 $x429 $N430))))

; loop term $main_sum115
(assert
  (forall (($x42913864 Int) ($N43013865 Int))
    (=> (and (not (< $x42913864 $N43013865)))
        ($main_sum115 $x42913864 $N43013865 $x42913864 $N43013865))))

; forwards $main_inv115
(assert
  (forall (($x42913864 Int) ($N43013865 Int))
    (=> (and (< $x42913864 $N43013865)
             ($main_inv115 $x42913864 $N43013865))
        ($main_inv115 (+ $x42913864 2) $N43013865))))

; backwards $main_sum115
(assert
  (forall (($x42913864 Int) ($N43013865 Int) ($x42913866 Int) ($N43013867 Int))
    (=> (and ($main_sum115 (+ $x42913864 2) $N43013865 $x42913866 $N43013867)
             (< $x42913864 $N43013865))
        ($main_sum115 $x42913864 $N43013865 $x42913866 $N43013867))))

; __VERIFIER_assert precondition
(assert
  (forall (($ushort13863 Int) ($N430 Int) ($N43013869 Int) ($x42913868 Int) ($x429 Int))
    (=> (and ($main_sum115 $x429 $N430 $x42913868 $N43013869)
             (= $N430 $ushort13863)
             (<= 0 $ushort13863)
             (<= $ushort13863 65535)
             (= $x429 0))
        ($__VERIFIER_assert_pre (ite (= (mod $x42913868 2) 0) 1 0)))))

(check-sat)
