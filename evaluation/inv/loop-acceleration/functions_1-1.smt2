(set-logic HORN)

(declare-fun $main_sum97 (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $f_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv97 (Int) Bool)
(declare-fun $__VERIFIER_assert_if481 (Int) Bool)
(declare-fun f (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond12943 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond12943))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if481 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond12944 Int))
    (=> (and ($__VERIFIER_assert_if481 cond12944))
        (__VERIFIER_assert cond12944))))

; post f
(assert
  (forall ((z Int))
    (=> (and ($f_pre z))
        (f z (+ z 2)))))

; loop entry $main_inv97
(assert
  (forall (($x406 Int))
    (=> (and (= $x406 0))
        ($main_inv97 $x406))))

; loop term $main_sum97
(assert
  (forall (($x40612945 Int))
    (=> (and (not (< $x40612945 268435455))
             ($main_inv97 $x40612945))
        ($main_sum97 $x40612945))))

; f precondition
(assert
  (forall (($x40612945 Int))
    (=> (and (< $x40612945 268435455)
             ($main_inv97 $x40612945))
        ($f_pre $x40612945))))

; forwards $main_inv97
(assert
  (forall (($result12946 Int) ($x40612945 Int))
    (=> (and (f $x40612945 $result12946)
             (< $x40612945 268435455)
             ($main_inv97 $x40612945))
        ($main_inv97 $result12946))))

; __VERIFIER_assert precondition
(assert
  (forall (($x40612947 Int))
    (=> (and ($main_sum97 $x40612947))
        ($__VERIFIER_assert_pre (ite (= (mod $x40612947 2) 0) 1 0)))))

(check-sat)
