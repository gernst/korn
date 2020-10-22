(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum14 (Int Int (Array Int Int) Int Int (Array Int Int)) Bool)
(declare-fun $__VERIFIER_assert_if13 (Int Int) Bool)
(declare-fun $main_sum13 (Int Int (Array Int Int) Int Int (Array Int Int)) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv14 (Int Int (Array Int Int)) Bool)
(declare-fun $main_inv13 (Int Int (Array Int Int)) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $assume_abort_if_not_if12 (Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if12 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond199 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if12 cond cond199))
        (assume_abort_if_not cond199))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond200 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond200))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if13 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond201 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if13 cond cond201))
        (__VERIFIER_assert cond201))))

; loop entry $main_inv13
(assert
  (forall (($N25 Int) ($a26 (Array Int Int)))
    (=> (and (= $N25 100000))
        ($main_inv13 0 $N25 $a26))))

; loop term $main_sum13
(assert
  (forall (($i24202 Int) ($N25203 Int) ($a26204 (Array Int Int)))
    (=> (and (not (<= $i24202 $N25203)))
        ($main_sum13 $i24202 $N25203 $a26204 $i24202 $N25203 $a26204))))

; forwards $main_inv13
(assert
  (forall (($i24202 Int) ($N25203 Int) ($a26204 (Array Int Int)))
    (=> (and (<= $i24202 $N25203)
             ($main_inv13 $i24202 $N25203 $a26204))
        ($main_inv13 (+ $i24202 1) $N25203 (store (store (store $a26204 (* 3 $i24202) 0) (+ (* 3 $i24202) 1) 0) (+ (* 3 $i24202) 2) 0)))))

; backwards $main_sum13
(assert
  (forall (($i24202 Int) ($a26204 (Array Int Int)) ($i24205 Int) ($N25203 Int) ($N25206 Int) ($a26207 (Array Int Int)))
    (=> (and ($main_sum13 (+ $i24202 1) $N25203 (store (store (store $a26204 (* 3 $i24202) 0) (+ (* 3 $i24202) 1) 0) (+ (* 3 $i24202) 2) 0) $i24205 $N25206 $a26207)
             (<= $i24202 $N25203))
        ($main_sum13 $i24202 $N25203 $a26204 $i24205 $N25206 $a26207))))

; loop entry $main_inv14
(assert
  (forall (($N25209 Int) ($a26 (Array Int Int)) ($i24208 Int) ($N25 Int) ($a26210 (Array Int Int)))
    (=> (and ($main_sum13 0 $N25 $a26 $i24208 $N25209 $a26210)
             (= $N25 100000))
        ($main_inv14 0 $N25209 $a26210))))

; loop term $main_sum14
(assert
  (forall (($i24211 Int) ($N25212 Int) ($a26213 (Array Int Int)))
    (=> (and (not (<= $i24211 (* 3 $N25212))))
        ($main_sum14 $i24211 $N25212 $a26213 $i24211 $N25212 $a26213))))

; __VERIFIER_assert precondition
(assert
  (forall (($a26213 (Array Int Int)) ($i24211 Int) ($N25212 Int))
    (=> (and (<= $i24211 (* 3 $N25212))
             ($main_inv14 $i24211 $N25212 $a26213))
        ($__VERIFIER_assert_pre (ite (>= (select $a26213 $i24211) 0) 1 0)))))

; forwards $main_inv14
(assert
  (forall (($i24211 Int) ($N25212 Int) ($a26213 (Array Int Int)))
    (=> (and (__VERIFIER_assert (ite (>= (select $a26213 $i24211) 0) 1 0))
             (<= $i24211 (* 3 $N25212))
             ($main_inv14 $i24211 $N25212 $a26213))
        ($main_inv14 (+ $i24211 1) $N25212 $a26213))))

; backwards $main_sum14
(assert
  (forall (($a26213 (Array Int Int)) ($a26216 (Array Int Int)) ($i24214 Int) ($N25215 Int) ($i24211 Int) ($N25212 Int))
    (=> (and ($main_sum14 (+ $i24211 1) $N25212 $a26213 $i24214 $N25215 $a26216)
             (__VERIFIER_assert (ite (>= (select $a26213 $i24211) 0) 1 0))
             (<= $i24211 (* 3 $N25212)))
        ($main_sum14 $i24211 $N25212 $a26213 $i24214 $N25215 $a26216))))

(check-sat)
