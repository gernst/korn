(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_inv106 (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_if489 (Int) Bool)
(declare-fun $main_sum106 (Int) Bool)
(declare-fun $__VERIFIER_assert_if488 (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond12991 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond12991))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if488 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond12992 Int))
    (=> (and ($__VERIFIER_assert_if488 cond12992))
        (__VERIFIER_assert cond12992))))

; loop entry $main_inv106
(assert
  (forall (($x417 Int))
    (=> (and (= $x417 0))
        ($main_inv106 $x417))))

; loop term $main_sum106
(assert
  (forall (($x41712993 Int))
    (=> (and (not (< $x41712993 268435455))
             ($main_inv106 $x41712993))
        ($main_sum106 $x41712993))))

; if then
(assert
  (forall (($x41712993 Int))
    (=> (and (< $x41712993 65520)
             (< $x41712993 268435455)
             ($main_inv106 $x41712993))
        ($main_if489 (+ $x41712993 1)))))

; if else
(assert
  (forall (($x41712993 Int))
    (=> (and (not (< $x41712993 65520))
             (< $x41712993 268435455)
             ($main_inv106 $x41712993))
        ($main_if489 (+ $x41712993 2)))))

; forwards $main_inv106
(assert
  (forall (($x41712994 Int))
    (=> (and ($main_if489 $x41712994))
        ($main_inv106 $x41712994))))

; __VERIFIER_assert precondition
(assert
  (forall (($x41712995 Int))
    (=> (and ($main_sum106 $x41712995))
        ($__VERIFIER_assert_pre (ite (= (mod $x41712995 2) 0) 1 0)))))

(check-sat)
