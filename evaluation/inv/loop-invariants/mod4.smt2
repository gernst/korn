(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_if532 (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum131 (Int) Bool)
(declare-fun $main_inv131 (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13208 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13208))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if532 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13209 Int))
    (=> (and ($__VERIFIER_assert_if532 cond13209))
        (__VERIFIER_assert cond13209))))

; loop entry $main_inv131
(assert
  (forall (($x467 Int))
    (=> (and (= $x467 0))
        ($main_inv131 $x467))))

; loop term $main_sum131
(assert
  (forall (($x46713210 Int) ($int13211 Int))
    (=> (and (= $int13211 0)
             (<= (- 2147483648) $int13211)
             (<= $int13211 2147483647)
             ($main_inv131 $x46713210))
        ($main_sum131 $x46713210))))

; forwards $main_inv131
(assert
  (forall (($x46713210 Int) ($int13211 Int))
    (=> (and (not (= $int13211 0))
             (<= (- 2147483648) $int13211)
             (<= $int13211 2147483647)
             ($main_inv131 $x46713210))
        ($main_inv131 (+ $x46713210 4)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x46713212 Int))
    (=> (and ($main_sum131 $x46713212))
        ($__VERIFIER_assert_pre (ite (= (mod $x46713212 4) 0) 1 0)))))

(check-sat)
