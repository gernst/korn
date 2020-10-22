(set-logic HORN)

(declare-fun $main_inv107 (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if490 (Int) Bool)
(declare-fun $main_if491 (Int) Bool)
(declare-fun $main_sum107 (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond12996 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond12996))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if490 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond12997 Int))
    (=> (and ($__VERIFIER_assert_if490 cond12997))
        (__VERIFIER_assert cond12997))))

; loop entry $main_inv107
(assert
  (forall (($x418 Int))
    (=> (and (= $x418 0))
        ($main_inv107 $x418))))

; loop term $main_sum107
(assert
  (forall (($x41812998 Int))
    (=> (and (not (< $x41812998 268435455))
             ($main_inv107 $x41812998))
        ($main_sum107 $x41812998))))

; if then
(assert
  (forall (($x41812998 Int))
    (=> (and (< $x41812998 65521)
             (< $x41812998 268435455)
             ($main_inv107 $x41812998))
        ($main_if491 (+ $x41812998 1)))))

; if else
(assert
  (forall (($x41812998 Int))
    (=> (and (not (< $x41812998 65521))
             (< $x41812998 268435455)
             ($main_inv107 $x41812998))
        ($main_if491 (+ $x41812998 2)))))

; forwards $main_inv107
(assert
  (forall (($x41812999 Int))
    (=> (and ($main_if491 $x41812999))
        ($main_inv107 $x41812999))))

; __VERIFIER_assert precondition
(assert
  (forall (($x41813000 Int))
    (=> (and ($main_sum107 $x41813000))
        ($__VERIFIER_assert_pre (ite (= (mod $x41813000 2) 0) 1 0)))))

(check-sat)
