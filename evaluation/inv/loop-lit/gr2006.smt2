(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_sum499 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if315 (Int) Bool)
(declare-fun $main_if317 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_if316 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $assume_abort_if_not_if314 (Int) Bool)
(declare-fun $main_inv499 (Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if314 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond6806 Int))
    (=> (and ($assume_abort_if_not_if314 cond6806))
        (assume_abort_if_not cond6806))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond6807 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond6807))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if315 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6808 Int))
    (=> (and ($__VERIFIER_assert_if315 cond6808))
        (__VERIFIER_assert cond6808))))

; loop entry $main_inv499
(assert
        ($main_inv499 0 0))

; loop term $main_sum499
(assert
  (forall (($x6906809 Int) ($y6916810 Int))
    (=> (and (= 1 0)
             ($main_inv499 $x6906809 $y6916810))
        ($main_sum499 $x6906809 $y6916810))))

; if then
(assert
  (forall (($x6906809 Int) ($y6916810 Int))
    (=> (and (< $x6906809 50)
             (not (= 1 0))
             ($main_inv499 $x6906809 $y6916810))
        ($main_if316 $x6906809 (+ $y6916810 1)))))

; if else
(assert
  (forall (($x6906809 Int) ($y6916810 Int))
    (=> (and (not (< $x6906809 50))
             (not (= 1 0))
             ($main_inv499 $x6906809 $y6916810))
        ($main_if316 $x6906809 (- $y6916810 1)))))

; break $main_sum499
(assert
  (forall (($x6906811 Int) ($y6916812 Int))
    (=> (and (< $y6916812 0)
             ($main_if316 $x6906811 $y6916812))
        ($main_sum499 $x6906811 $y6916812))))

; if else
(assert
  (forall (($x6906811 Int) ($y6916812 Int))
    (=> (and (not (< $y6916812 0))
             ($main_if316 $x6906811 $y6916812))
        ($main_if317 $x6906811 $y6916812))))

; forwards $main_inv499
(assert
  (forall (($x6906813 Int) ($y6916814 Int))
    (=> (and ($main_if317 $x6906813 $y6916814))
        ($main_inv499 (+ $x6906813 1) $y6916814))))

; __VERIFIER_assert precondition
(assert
  (forall (($x6906815 Int) ($y6916816 Int))
    (=> (and ($main_sum499 $x6906815 $y6916816))
        ($__VERIFIER_assert_pre (ite (= $x6906815 100) 1 0)))))

(check-sat)
