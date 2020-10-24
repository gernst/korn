(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_sum492 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $assume_abort_if_not_if289 (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if290 (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_inv492 (Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if289 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond6690 Int))
    (=> (and ($assume_abort_if_not_if289 cond6690))
        (assume_abort_if_not cond6690))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond6691 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond6691))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if290 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6692 Int))
    (=> (and ($__VERIFIER_assert_if290 cond6692))
        (__VERIFIER_assert cond6692))))

; loop entry $main_inv492
(assert
        ($main_inv492 1 10))

; loop term $main_sum492
(assert
  (forall (($i6686693 Int) ($j6696694 Int))
    (=> (and (not (>= $j6696694 $i6686693))
             ($main_inv492 $i6686693 $j6696694))
        ($main_sum492 $i6686693 $j6696694))))

; forwards $main_inv492
(assert
  (forall (($i6686693 Int) ($j6696694 Int))
    (=> (and (>= $j6696694 $i6686693)
             ($main_inv492 $i6686693 $j6696694))
        ($main_inv492 (+ $i6686693 2) (+ (- 1) $j6696694)))))

; __VERIFIER_assert precondition
(assert
  (forall (($j6696696 Int) ($i6686695 Int))
    (=> (and ($main_sum492 $i6686695 $j6696696))
        ($__VERIFIER_assert_pre (ite (= $j6696696 6) 1 0)))))

(check-sat)
