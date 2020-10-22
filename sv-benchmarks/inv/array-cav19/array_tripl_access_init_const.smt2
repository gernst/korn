(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_if13 (Int) Bool)
(declare-fun $assume_abort_if_not_if12 (Int) Bool)
(declare-fun $main_sum13 (Int Int (Array Int Int)) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv14 (Int Int (Array Int Int)) Bool)
(declare-fun $main_inv13 (Int Int (Array Int Int)) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_sum14 (Int Int (Array Int Int)) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if12 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond142 Int))
    (=> (and ($assume_abort_if_not_if12 cond142))
        (assume_abort_if_not cond142))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond143 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond143))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if13 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond144 Int))
    (=> (and ($__VERIFIER_assert_if13 cond144))
        (__VERIFIER_assert cond144))))

; loop entry $main_inv13
(assert
  (forall (($N25 Int) ($a26 (Array Int Int)))
    (=> (and (= $N25 100000))
        ($main_inv13 0 $N25 $a26))))

; loop term $main_sum13
(assert
  (forall (($i24145 Int) ($N25146 Int) ($a26147 (Array Int Int)))
    (=> (and (not (<= $i24145 $N25146))
             ($main_inv13 $i24145 $N25146 $a26147))
        ($main_sum13 $i24145 $N25146 $a26147))))

; forwards $main_inv13
(assert
  (forall (($i24145 Int) ($N25146 Int) ($a26147 (Array Int Int)))
    (=> (and (<= $i24145 $N25146)
             ($main_inv13 $i24145 $N25146 $a26147))
        ($main_inv13 (+ $i24145 1) $N25146 (store (store (store $a26147 (* 3 $i24145) 0) (+ (* 3 $i24145) 1) 0) (+ (* 3 $i24145) 2) 0)))))

; loop entry $main_inv14
(assert
  (forall (($N25149 Int) ($a26150 (Array Int Int)) ($i24148 Int))
    (=> (and ($main_sum13 $i24148 $N25149 $a26150))
        ($main_inv14 0 $N25149 $a26150))))

; loop term $main_sum14
(assert
  (forall (($i24151 Int) ($N25152 Int) ($a26153 (Array Int Int)))
    (=> (and (not (<= $i24151 (* 3 $N25152)))
             ($main_inv14 $i24151 $N25152 $a26153))
        ($main_sum14 $i24151 $N25152 $a26153))))

; __VERIFIER_assert precondition
(assert
  (forall (($a26153 (Array Int Int)) ($i24151 Int) ($N25152 Int))
    (=> (and (<= $i24151 (* 3 $N25152))
             ($main_inv14 $i24151 $N25152 $a26153))
        ($__VERIFIER_assert_pre (ite (>= (select $a26153 $i24151) 0) 1 0)))))

; forwards $main_inv14
(assert
  (forall (($i24151 Int) ($N25152 Int) ($a26153 (Array Int Int)))
    (=> (and (__VERIFIER_assert (ite (>= (select $a26153 $i24151) 0) 1 0))
             (<= $i24151 (* 3 $N25152))
             ($main_inv14 $i24151 $N25152 $a26153))
        ($main_inv14 (+ $i24151 1) $N25152 $a26153))))

(check-sat)
