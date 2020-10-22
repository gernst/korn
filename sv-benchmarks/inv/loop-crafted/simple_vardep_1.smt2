(set-logic HORN)

(declare-fun $main_inv122 (Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum122 (Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if512 (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13089 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13089))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if512 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13090 Int))
    (=> (and ($__VERIFIER_assert_if512 cond13090))
        (__VERIFIER_assert cond13090))))

; loop entry $main_inv122
(assert
  (forall (($i441 Int) ($j442 Int) ($k443 Int))
    (=> (and (= $k443 0)
             (= $j442 0)
             (= $i441 0))
        ($main_inv122 $i441 $j442 $k443))))

; loop term $main_sum122
(assert
  (forall (($i44113091 Int) ($j44213092 Int) ($k44313093 Int))
    (=> (and (not (< $k44313093 268435455))
             ($main_inv122 $i44113091 $j44213092 $k44313093))
        ($main_sum122 $i44113091 $j44213092 $k44313093))))

; __VERIFIER_assert precondition
(assert
  (forall (($k44313093 Int) ($i44113091 Int) ($j44213092 Int))
    (=> (and (< $k44313093 268435455)
             ($main_inv122 $i44113091 $j44213092 $k44313093))
        ($__VERIFIER_assert_pre (ite (= (+ $k44313093 3) (+ (+ $i44113091 1) (+ $j44213092 2))) 1 0)))))

; forwards $main_inv122
(assert
  (forall (($i44113091 Int) ($j44213092 Int) ($k44313093 Int))
    (=> (and (__VERIFIER_assert (ite (= (+ $k44313093 3) (+ (+ $i44113091 1) (+ $j44213092 2))) 1 0))
             (< $k44313093 268435455)
             ($main_inv122 $i44113091 $j44213092 $k44313093))
        ($main_inv122 (+ $i44113091 1) (+ $j44213092 2) (+ $k44313093 3)))))

(check-sat)
