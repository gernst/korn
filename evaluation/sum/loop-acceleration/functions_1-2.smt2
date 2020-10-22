(set-logic HORN)

(declare-fun $main_inv98 (Int) Bool)
(declare-fun $main_sum98 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $f_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if482 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun f (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond13733 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond13733))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if482 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13734 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if482 cond cond13734))
        (__VERIFIER_assert cond13734))))

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
  (forall (($x40713735 Int))
    (=> (and (not (< $x40713735 268435455)))
        ($main_sum98 $x40713735 $x40713735))))

; f precondition
(assert
  (forall (($x40713735 Int))
    (=> (and (< $x40713735 268435455)
             ($main_inv98 $x40713735))
        ($f_pre $x40713735))))

; forwards $main_inv98
(assert
  (forall (($result13736 Int) ($x40713735 Int))
    (=> (and (f $x40713735 $result13736)
             (< $x40713735 268435455)
             ($main_inv98 $x40713735))
        ($main_inv98 $result13736))))

; backwards $main_sum98
(assert
  (forall (($x40713735 Int) ($x40713737 Int) ($result13736 Int))
    (=> (and ($main_sum98 $result13736 $x40713737)
             (f $x40713735 $result13736)
             (< $x40713735 268435455))
        ($main_sum98 $x40713735 $x40713737))))

; __VERIFIER_assert precondition
(assert
  (forall (($x40713738 Int) ($x407 Int))
    (=> (and ($main_sum98 $x407 $x40713738)
             (= $x407 0))
        ($__VERIFIER_assert_pre (mod $x40713738 2)))))

(check-sat)
