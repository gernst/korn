(set-logic HORN)

(declare-fun $main_if372 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_sum522 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv522 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if371 (Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond9985 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond9985))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if371 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond9986 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if371 cond cond9986))
        (__VERIFIER_assert cond9986))))

; loop entry $main_inv522
(assert
  (forall (($uint9988 Int) ($x749 Int) ($n1748 Int) ($sn746 Int) ($uint9987 Int) ($loop1747 Int))
    (=> (and (= $x749 0)
             (= $n1748 $uint9988)
             (<= 0 $uint9988)
             (<= $uint9988 4294967295)
             (= $loop1747 $uint9987)
             (<= 0 $uint9987)
             (<= $uint9987 4294967295)
             (= $sn746 0))
        ($main_inv522 $sn746 $loop1747 $n1748 $x749))))

; loop term $main_sum522
(assert
  (forall (($sn7469989 Int) ($loop17479990 Int) ($n17489991 Int) ($x7499992 Int))
    (=> (and (= 1 0))
        ($main_sum522 $sn7469989 $loop17479990 $n17489991 $x7499992 $sn7469989 $loop17479990 $n17489991 $x7499992))))

; if then
(assert
  (forall (($sn7469989 Int) ($loop17479990 Int) ($n17489991 Int) ($x7499992 Int))
    (=> (and (< $x7499992 10)
             (not (= 1 0))
             ($main_inv522 $sn7469989 $loop17479990 $n17489991 $x7499992))
        ($main_if372 $sn7469989 $loop17479990 $n17489991 $x7499992 (+ $sn7469989 2) $loop17479990 $n17489991 $x7499992))))

; if else
(assert
  (forall (($sn7469989 Int) ($loop17479990 Int) ($n17489991 Int) ($x7499992 Int))
    (=> (and (not (< $x7499992 10))
             (not (= 1 0))
             ($main_inv522 $sn7469989 $loop17479990 $n17489991 $x7499992))
        ($main_if372 $sn7469989 $loop17479990 $n17489991 $x7499992 $sn7469989 $loop17479990 $n17489991 $x7499992))))

; __VERIFIER_assert precondition
(assert
  (forall (($x7499992 Int) ($sn7469993 Int) ($loop17479990 Int) ($n17489995 Int) ($n17489991 Int) ($sn7469989 Int) ($x7499996 Int) ($loop17479994 Int))
    (=> (and ($main_if372 $sn7469989 $loop17479990 $n17489991 $x7499992 $sn7469993 $loop17479994 $n17489995 $x7499996))
        ($__VERIFIER_assert_pre (ite (or (= $sn7469993 (* (+ $x7499996 1) 2)) (= $sn7469993 0)) 1 0)))))

; forwards $main_inv522
(assert
  (forall (($x7499992 Int) ($sn7469993 Int) ($loop17479990 Int) ($n17489995 Int) ($n17489991 Int) ($sn7469989 Int) ($x7499996 Int) ($loop17479994 Int))
    (=> (and (__VERIFIER_assert (ite (or (= $sn7469993 (* (+ $x7499996 1) 2)) (= $sn7469993 0)) 1 0))
             ($main_if372 $sn7469989 $loop17479990 $n17489991 $x7499992 $sn7469993 $loop17479994 $n17489995 $x7499996))
        ($main_inv522 $sn7469993 $loop17479994 $n17489995 (+ $x7499996 1)))))

; backwards $main_sum522
(assert
  (forall (($sn7469993 Int) ($loop17479998 Int) ($n17489995 Int) ($sn7469997 Int) ($n17489991 Int) ($x7499992 Int) ($n17489999 Int) ($sn7469989 Int) ($x7499996 Int) ($loop17479994 Int) ($loop17479990 Int) ($x74910000 Int))
    (=> (and ($main_sum522 $sn7469993 $loop17479994 $n17489995 (+ $x7499996 1) $sn7469997 $loop17479998 $n17489999 $x74910000)
             (__VERIFIER_assert (ite (or (= $sn7469993 (* (+ $x7499996 1) 2)) (= $sn7469993 0)) 1 0))
             ($main_if372 $sn7469989 $loop17479990 $n17489991 $x7499992 $sn7469993 $loop17479994 $n17489995 $x7499996))
        ($main_sum522 $sn7469989 $loop17479990 $n17489991 $x7499992 $sn7469997 $loop17479998 $n17489999 $x74910000))))

(check-sat)
