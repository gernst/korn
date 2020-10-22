(set-logic HORN)

(declare-fun $main_inv122 (Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum122 (Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if512 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond13912 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond13912))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if512 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13913 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if512 cond cond13913))
        (__VERIFIER_assert cond13913))))

; loop entry $main_inv122
(assert
  (forall (($i441 Int) ($j442 Int) ($k443 Int))
    (=> (and (= $k443 0)
             (= $j442 0)
             (= $i441 0))
        ($main_inv122 $i441 $j442 $k443))))

; loop term $main_sum122
(assert
  (forall (($i44113914 Int) ($j44213915 Int) ($k44313916 Int))
    (=> (and (not (< $k44313916 268435455)))
        ($main_sum122 $i44113914 $j44213915 $k44313916 $i44113914 $j44213915 $k44313916))))

; __VERIFIER_assert precondition
(assert
  (forall (($k44313916 Int) ($i44113914 Int) ($j44213915 Int))
    (=> (and (< $k44313916 268435455)
             ($main_inv122 $i44113914 $j44213915 $k44313916))
        ($__VERIFIER_assert_pre (ite (= (+ $k44313916 3) (+ (+ $i44113914 1) (+ $j44213915 2))) 1 0)))))

; forwards $main_inv122
(assert
  (forall (($i44113914 Int) ($j44213915 Int) ($k44313916 Int))
    (=> (and (__VERIFIER_assert (ite (= (+ $k44313916 3) (+ (+ $i44113914 1) (+ $j44213915 2))) 1 0))
             (< $k44313916 268435455)
             ($main_inv122 $i44113914 $j44213915 $k44313916))
        ($main_inv122 (+ $i44113914 1) (+ $j44213915 2) (+ $k44313916 3)))))

; backwards $main_sum122
(assert
  (forall (($i44113914 Int) ($k44313916 Int) ($k44313919 Int) ($j44213915 Int) ($i44113917 Int) ($j44213918 Int))
    (=> (and ($main_sum122 (+ $i44113914 1) (+ $j44213915 2) (+ $k44313916 3) $i44113917 $j44213918 $k44313919)
             (__VERIFIER_assert (ite (= (+ $k44313916 3) (+ (+ $i44113914 1) (+ $j44213915 2))) 1 0))
             (< $k44313916 268435455))
        ($main_sum122 $i44113914 $j44213915 $k44313916 $i44113917 $j44213918 $k44313919))))

(check-sat)
