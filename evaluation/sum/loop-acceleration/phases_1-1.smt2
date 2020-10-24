(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv106 (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum106 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if488 (Int Int) Bool)
(declare-fun $main_if489 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond13790 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond13790))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if488 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13791 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if488 cond cond13791))
        (__VERIFIER_assert cond13791))))

; loop entry $main_inv106
(assert
  (forall (($x417 Int))
    (=> (and (= $x417 0))
        ($main_inv106 $x417))))

; loop term $main_sum106
(assert
  (forall (($x41713792 Int))
    (=> (and (not (< $x41713792 268435455)))
        ($main_sum106 $x41713792 $x41713792))))

; if then
(assert
  (forall (($x41713792 Int))
    (=> (and (< $x41713792 65520)
             (< $x41713792 268435455)
             ($main_inv106 $x41713792))
        ($main_if489 $x41713792 (+ $x41713792 1)))))

; if else
(assert
  (forall (($x41713792 Int))
    (=> (and (not (< $x41713792 65520))
             (< $x41713792 268435455)
             ($main_inv106 $x41713792))
        ($main_if489 $x41713792 (+ $x41713792 2)))))

; forwards $main_inv106
(assert
  (forall (($x41713793 Int) ($x41713792 Int))
    (=> (and ($main_if489 $x41713792 $x41713793))
        ($main_inv106 $x41713793))))

; backwards $main_sum106
(assert
  (forall (($x41713792 Int) ($x41713794 Int) ($x41713793 Int))
    (=> (and ($main_sum106 $x41713793 $x41713794)
             ($main_if489 $x41713792 $x41713793))
        ($main_sum106 $x41713792 $x41713794))))

; __VERIFIER_assert precondition
(assert
  (forall (($x41713795 Int) ($x417 Int))
    (=> (and ($main_sum106 $x417 $x41713795)
             (= $x417 0))
        ($__VERIFIER_assert_pre (ite (= (mod $x41713795 2) 0) 1 0)))))

(check-sat)
