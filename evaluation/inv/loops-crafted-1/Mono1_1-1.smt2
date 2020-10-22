(set-logic HORN)

(declare-fun $main_if562 (Int) Bool)
(declare-fun $__VERIFIER_assert_if561 (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv179 (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum179 (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13673 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13673))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if561 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13674 Int))
    (=> (and ($__VERIFIER_assert_if561 cond13674))
        (__VERIFIER_assert cond13674))))

; loop entry $main_inv179
(assert
  (forall (($x532 Int))
    (=> (and (= $x532 0))
        ($main_inv179 $x532))))

; loop term $main_sum179
(assert
  (forall (($x53213675 Int))
    (=> (and (not (< $x53213675 100000000))
             ($main_inv179 $x53213675))
        ($main_sum179 $x53213675))))

; if then
(assert
  (forall (($x53213675 Int))
    (=> (and (< $x53213675 10000000)
             (< $x53213675 100000000)
             ($main_inv179 $x53213675))
        ($main_if562 (+ $x53213675 1)))))

; if else
(assert
  (forall (($x53213675 Int))
    (=> (and (not (< $x53213675 10000000))
             (< $x53213675 100000000)
             ($main_inv179 $x53213675))
        ($main_if562 (+ $x53213675 2)))))

; forwards $main_inv179
(assert
  (forall (($x53213676 Int))
    (=> (and ($main_if562 $x53213676))
        ($main_inv179 $x53213676))))

; __VERIFIER_assert precondition
(assert
  (forall (($x53213677 Int))
    (=> (and ($main_sum179 $x53213677))
        ($__VERIFIER_assert_pre (ite (= $x53213677 100000001) 1 0)))))

(check-sat)
