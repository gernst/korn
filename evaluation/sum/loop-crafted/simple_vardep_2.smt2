(set-logic HORN)

(declare-fun $main_sum123 (Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if513 (Int Int) Bool)
(declare-fun $main_inv123 (Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond13923 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond13923))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if513 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13924 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if513 cond cond13924))
        (__VERIFIER_assert cond13924))))

; loop entry $main_inv123
(assert
  (forall (($i444 Int) ($j445 Int) ($k446 Int))
    (=> (and (= $k446 0)
             (= $j445 0)
             (= $i444 0))
        ($main_inv123 $i444 $j445 $k446))))

; loop term $main_sum123
(assert
  (forall (($i44413925 Int) ($j44513926 Int) ($k44613927 Int))
    (=> (and (not (< $k44613927 268435455)))
        ($main_sum123 $i44413925 $j44513926 $k44613927 $i44413925 $j44513926 $k44613927))))

; __VERIFIER_assert precondition
(assert
  (forall (($k44613927 Int) ($i44413925 Int) ($j44513926 Int))
    (=> (and (< $k44613927 268435455)
             ($main_inv123 $i44413925 $j44513926 $k44613927))
        ($__VERIFIER_assert_pre (ite (and (= (+ $k44613927 3) (* 3 (+ $i44413925 1))) (= (+ $j44513926 2) (* 2 (+ $i44413925 1)))) 1 0)))))

; forwards $main_inv123
(assert
  (forall (($i44413925 Int) ($j44513926 Int) ($k44613927 Int))
    (=> (and (__VERIFIER_assert (ite (and (= (+ $k44613927 3) (* 3 (+ $i44413925 1))) (= (+ $j44513926 2) (* 2 (+ $i44413925 1)))) 1 0))
             (< $k44613927 268435455)
             ($main_inv123 $i44413925 $j44513926 $k44613927))
        ($main_inv123 (+ $i44413925 1) (+ $j44513926 2) (+ $k44613927 3)))))

; backwards $main_sum123
(assert
  (forall (($k44613927 Int) ($i44413925 Int) ($k44613930 Int) ($i44413928 Int) ($j44513926 Int) ($j44513929 Int))
    (=> (and ($main_sum123 (+ $i44413925 1) (+ $j44513926 2) (+ $k44613927 3) $i44413928 $j44513929 $k44613930)
             (__VERIFIER_assert (ite (and (= (+ $k44613927 3) (* 3 (+ $i44413925 1))) (= (+ $j44513926 2) (* 2 (+ $i44413925 1)))) 1 0))
             (< $k44613927 268435455))
        ($main_sum123 $i44413925 $j44513926 $k44613927 $i44413928 $j44513929 $k44613930))))

(check-sat)
