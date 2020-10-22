(set-logic HORN)

(declare-fun $__VERIFIER_assert_if513 (Int) Bool)
(declare-fun $main_sum123 (Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv123 (Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13097 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13097))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if513 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13098 Int))
    (=> (and ($__VERIFIER_assert_if513 cond13098))
        (__VERIFIER_assert cond13098))))

; loop entry $main_inv123
(assert
  (forall (($i444 Int) ($j445 Int) ($k446 Int))
    (=> (and (= $k446 0)
             (= $j445 0)
             (= $i444 0))
        ($main_inv123 $i444 $j445 $k446))))

; loop term $main_sum123
(assert
  (forall (($i44413099 Int) ($j44513100 Int) ($k44613101 Int))
    (=> (and (not (< $k44613101 268435455))
             ($main_inv123 $i44413099 $j44513100 $k44613101))
        ($main_sum123 $i44413099 $j44513100 $k44613101))))

; __VERIFIER_assert precondition
(assert
  (forall (($k44613101 Int) ($i44413099 Int) ($j44513100 Int))
    (=> (and (< $k44613101 268435455)
             ($main_inv123 $i44413099 $j44513100 $k44613101))
        ($__VERIFIER_assert_pre (ite (and (= (+ $k44613101 3) (* 3 (+ $i44413099 1))) (= (+ $j44513100 2) (* 2 (+ $i44413099 1)))) 1 0)))))

; forwards $main_inv123
(assert
  (forall (($i44413099 Int) ($j44513100 Int) ($k44613101 Int))
    (=> (and (__VERIFIER_assert (ite (and (= (+ $k44613101 3) (* 3 (+ $i44413099 1))) (= (+ $j44513100 2) (* 2 (+ $i44413099 1)))) 1 0))
             (< $k44613101 268435455)
             ($main_inv123 $i44413099 $j44513100 $k44613101))
        ($main_inv123 (+ $i44413099 1) (+ $j44513100 2) (+ $k44613101 3)))))

(check-sat)
