(set-logic HORN)

(declare-fun $main_sum131 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if532 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv131 (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond14057 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond14057))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if532 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14058 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if532 cond cond14058))
        (__VERIFIER_assert cond14058))))

; loop entry $main_inv131
(assert
  (forall (($x467 Int))
    (=> (and (= $x467 0))
        ($main_inv131 $x467))))

; loop term $main_sum131
(assert
  (forall (($x46714059 Int) ($int14060 Int))
    (=> (and (= $int14060 0)
             (<= (- 2147483648) $int14060)
             (<= $int14060 2147483647))
        ($main_sum131 $x46714059 $x46714059))))

; forwards $main_inv131
(assert
  (forall (($x46714059 Int) ($int14060 Int))
    (=> (and (not (= $int14060 0))
             (<= (- 2147483648) $int14060)
             (<= $int14060 2147483647)
             ($main_inv131 $x46714059))
        ($main_inv131 (+ $x46714059 4)))))

; backwards $main_sum131
(assert
  (forall (($x46714059 Int) ($x46714061 Int) ($int14060 Int))
    (=> (and ($main_sum131 (+ $x46714059 4) $x46714061)
             (not (= $int14060 0))
             (<= (- 2147483648) $int14060)
             (<= $int14060 2147483647))
        ($main_sum131 $x46714059 $x46714061))))

; __VERIFIER_assert precondition
(assert
  (forall (($x46714062 Int) ($x467 Int))
    (=> (and ($main_sum131 $x467 $x46714062)
             (= $x467 0))
        ($__VERIFIER_assert_pre (ite (= (mod $x46714062 4) 0) 1 0)))))

(check-sat)
