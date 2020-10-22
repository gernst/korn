(set-logic HORN)

(declare-fun $main_inv98 (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $f_pre (Int) Bool)
(declare-fun $main_sum98 (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if482 (Int) Bool)
(declare-fun f (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond12948 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond12948))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if482 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond12949 Int))
    (=> (and ($__VERIFIER_assert_if482 cond12949))
        (__VERIFIER_assert cond12949))))

; post f
(assert
  (forall ((z Int))
    (=> (and ($f_pre z))
        (f z (+ z 2)))))

; loop entry $main_inv98
(assert
  (forall (($x407 Int))
    (=> (and (= $x407 0))
        ($main_inv98 $x407))))

; loop term $main_sum98
(assert
  (forall (($x40712950 Int))
    (=> (and (not (< $x40712950 268435455))
             ($main_inv98 $x40712950))
        ($main_sum98 $x40712950))))

; f precondition
(assert
  (forall (($x40712950 Int))
    (=> (and (< $x40712950 268435455)
             ($main_inv98 $x40712950))
        ($f_pre $x40712950))))

; forwards $main_inv98
(assert
  (forall (($result12951 Int) ($x40712950 Int))
    (=> (and (f $x40712950 $result12951)
             (< $x40712950 268435455)
             ($main_inv98 $x40712950))
        ($main_inv98 $result12951))))

; __VERIFIER_assert precondition
(assert
  (forall (($x40712952 Int))
    (=> (and ($main_sum98 $x40712952))
        ($__VERIFIER_assert_pre (mod $x40712952 2)))))

(check-sat)
