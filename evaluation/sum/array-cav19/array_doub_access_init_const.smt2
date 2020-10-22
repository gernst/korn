(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_inv2 (Int Int (Array Int Int)) Bool)
(declare-fun $assume_abort_if_not_if1 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum2 (Int Int (Array Int Int) Int Int (Array Int Int)) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum1 (Int Int (Array Int Int) Int Int (Array Int Int)) Bool)
(declare-fun $__VERIFIER_assert_if2 (Int Int) Bool)
(declare-fun $main_inv1 (Int Int (Array Int Int)) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if1 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond1 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if1 cond cond1))
        (assume_abort_if_not cond1))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond2 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond2))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if2 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond3 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if2 cond cond3))
        (__VERIFIER_assert cond3))))

; loop entry $main_inv1
(assert
  (forall (($N2 Int) ($a3 (Array Int Int)))
    (=> (and (= $N2 100000))
        ($main_inv1 0 $N2 $a3))))

; loop term $main_sum1
(assert
  (forall (($i14 Int) ($N25 Int) ($a36 (Array Int Int)))
    (=> (and (not (<= $i14 $N25)))
        ($main_sum1 $i14 $N25 $a36 $i14 $N25 $a36))))

; forwards $main_inv1
(assert
  (forall (($i14 Int) ($N25 Int) ($a36 (Array Int Int)))
    (=> (and (<= $i14 $N25)
             ($main_inv1 $i14 $N25 $a36))
        ($main_inv1 (+ $i14 1) $N25 (store (store $a36 (* 2 $i14) 0) (+ (* 2 $i14) 1) 0)))))

; backwards $main_sum1
(assert
  (forall (($i17 Int) ($a39 (Array Int Int)) ($N28 Int) ($i14 Int) ($N25 Int) ($a36 (Array Int Int)))
    (=> (and ($main_sum1 (+ $i14 1) $N25 (store (store $a36 (* 2 $i14) 0) (+ (* 2 $i14) 1) 0) $i17 $N28 $a39)
             (<= $i14 $N25))
        ($main_sum1 $i14 $N25 $a36 $i17 $N28 $a39))))

; loop entry $main_inv2
(assert
  (forall (($N2 Int) ($a312 (Array Int Int)) ($a3 (Array Int Int)) ($N211 Int) ($i110 Int))
    (=> (and ($main_sum1 0 $N2 $a3 $i110 $N211 $a312)
             (= $N2 100000))
        ($main_inv2 0 $N211 $a312))))

; loop term $main_sum2
(assert
  (forall (($i113 Int) ($N214 Int) ($a315 (Array Int Int)))
    (=> (and (not (<= $i113 (* 2 $N214))))
        ($main_sum2 $i113 $N214 $a315 $i113 $N214 $a315))))

; __VERIFIER_assert precondition
(assert
  (forall (($a315 (Array Int Int)) ($i113 Int) ($N214 Int))
    (=> (and (<= $i113 (* 2 $N214))
             ($main_inv2 $i113 $N214 $a315))
        ($__VERIFIER_assert_pre (ite (>= (select $a315 $i113) 0) 1 0)))))

; forwards $main_inv2
(assert
  (forall (($i113 Int) ($N214 Int) ($a315 (Array Int Int)))
    (=> (and (__VERIFIER_assert (ite (>= (select $a315 $i113) 0) 1 0))
             (<= $i113 (* 2 $N214))
             ($main_inv2 $i113 $N214 $a315))
        ($main_inv2 (+ $i113 1) $N214 $a315))))

; backwards $main_sum2
(assert
  (forall (($a318 (Array Int Int)) ($i113 Int) ($N214 Int) ($a315 (Array Int Int)) ($N217 Int) ($i116 Int))
    (=> (and ($main_sum2 (+ $i113 1) $N214 $a315 $i116 $N217 $a318)
             (__VERIFIER_assert (ite (>= (select $a315 $i113) 0) 1 0))
             (<= $i113 (* 2 $N214)))
        ($main_sum2 $i113 $N214 $a315 $i116 $N217 $a318))))

(check-sat)
