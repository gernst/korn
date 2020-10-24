(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $f_pre (Int) Bool)
(declare-fun $main_sum97 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv97 (Int) Bool)
(declare-fun f (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if481 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond13727 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond13727))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if481 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13728 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if481 cond cond13728))
        (__VERIFIER_assert cond13728))))

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
  (forall (($x40613729 Int))
    (=> (and (not (< $x40613729 268435455)))
        ($main_sum97 $x40613729 $x40613729))))

; f precondition
(assert
  (forall (($x40613729 Int))
    (=> (and (< $x40613729 268435455)
             ($main_inv97 $x40613729))
        ($f_pre $x40613729))))

; forwards $main_inv97
(assert
  (forall (($result13730 Int) ($x40613729 Int))
    (=> (and (f $x40613729 $result13730)
             (< $x40613729 268435455)
             ($main_inv97 $x40613729))
        ($main_inv97 $result13730))))

; backwards $main_sum97
(assert
  (forall (($x40613729 Int) ($x40613731 Int) ($result13730 Int))
    (=> (and ($main_sum97 $result13730 $x40613731)
             (f $x40613729 $result13730)
             (< $x40613729 268435455))
        ($main_sum97 $x40613729 $x40613731))))

; __VERIFIER_assert precondition
(assert
  (forall (($x40613732 Int) ($x406 Int))
    (=> (and ($main_sum97 $x406 $x40613732)
             (= $x406 0))
        ($__VERIFIER_assert_pre (ite (= (mod $x40613732 2) 0) 1 0)))))

(check-sat)
