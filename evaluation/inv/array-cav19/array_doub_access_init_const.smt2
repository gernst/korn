(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_inv2 (Int Int (Array Int Int)) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum2 (Int Int (Array Int Int)) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $assume_abort_if_not_if1 (Int) Bool)
(declare-fun $main_sum1 (Int Int (Array Int Int)) Bool)
(declare-fun $main_inv1 (Int Int (Array Int Int)) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $__VERIFIER_assert_if2 (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if1 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond1 Int))
    (=> (and ($assume_abort_if_not_if1 cond1))
        (assume_abort_if_not cond1))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond2 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond2))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if2 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond3 Int))
    (=> (and ($__VERIFIER_assert_if2 cond3))
        (__VERIFIER_assert cond3))))

; loop entry $main_inv1
(assert
  (forall (($N2 Int) ($a3 (Array Int Int)))
    (=> (and (= $N2 100000))
        ($main_inv1 0 $N2 $a3))))

; loop term $main_sum1
(assert
  (forall (($i14 Int) ($N25 Int) ($a36 (Array Int Int)))
    (=> (and (not (<= $i14 $N25))
             ($main_inv1 $i14 $N25 $a36))
        ($main_sum1 $i14 $N25 $a36))))

; forwards $main_inv1
(assert
  (forall (($i14 Int) ($N25 Int) ($a36 (Array Int Int)))
    (=> (and (<= $i14 $N25)
             ($main_inv1 $i14 $N25 $a36))
        ($main_inv1 (+ $i14 1) $N25 (store (store $a36 (* 2 $i14) 0) (+ (* 2 $i14) 1) 0)))))

; loop entry $main_inv2
(assert
  (forall (($N28 Int) ($a39 (Array Int Int)) ($i17 Int))
    (=> (and ($main_sum1 $i17 $N28 $a39))
        ($main_inv2 0 $N28 $a39))))

; loop term $main_sum2
(assert
  (forall (($i110 Int) ($N211 Int) ($a312 (Array Int Int)))
    (=> (and (not (<= $i110 (* 2 $N211)))
             ($main_inv2 $i110 $N211 $a312))
        ($main_sum2 $i110 $N211 $a312))))

; __VERIFIER_assert precondition
(assert
  (forall (($a312 (Array Int Int)) ($i110 Int) ($N211 Int))
    (=> (and (<= $i110 (* 2 $N211))
             ($main_inv2 $i110 $N211 $a312))
        ($__VERIFIER_assert_pre (ite (>= (select $a312 $i110) 0) 1 0)))))

; forwards $main_inv2
(assert
  (forall (($i110 Int) ($N211 Int) ($a312 (Array Int Int)))
    (=> (and (__VERIFIER_assert (ite (>= (select $a312 $i110) 0) 1 0))
             (<= $i110 (* 2 $N211))
             ($main_inv2 $i110 $N211 $a312))
        ($main_inv2 (+ $i110 1) $N211 $a312))))

(check-sat)
