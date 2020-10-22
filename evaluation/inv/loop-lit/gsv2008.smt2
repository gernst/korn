(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_sum500 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_if320 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if319 (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $assume_abort_if_not_if318 (Int) Bool)
(declare-fun $main_inv500 (Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if318 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond6817 Int))
    (=> (and ($assume_abort_if_not_if318 cond6817))
        (assume_abort_if_not cond6817))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond6818 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond6818))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if319 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6819 Int))
    (=> (and ($__VERIFIER_assert_if319 cond6819))
        (__VERIFIER_assert cond6819))))

; if else
(assert
  (forall (($int6820 Int))
    (=> (and (< (- 1000) $int6820)
             (< $int6820 1000000)
             (<= (- 2147483648) $int6820)
             (<= $int6820 2147483647))
        ($main_if320 (- 50) $int6820))))

; loop entry $main_inv500
(assert
  (forall (($x6926821 Int) ($y6936822 Int))
    (=> (and ($main_if320 $x6926821 $y6936822))
        ($main_inv500 $x6926821 $y6936822))))

; loop term $main_sum500
(assert
  (forall (($x6926823 Int) ($y6936824 Int))
    (=> (and (not (< $x6926823 0))
             ($main_inv500 $x6926823 $y6936824))
        ($main_sum500 $x6926823 $y6936824))))

; forwards $main_inv500
(assert
  (forall (($x6926823 Int) ($y6936824 Int))
    (=> (and (< $x6926823 0)
             ($main_inv500 $x6926823 $y6936824))
        ($main_inv500 (+ $x6926823 $y6936824) (+ $y6936824 1)))))

; __VERIFIER_assert precondition
(assert
  (forall (($y6936826 Int) ($x6926825 Int))
    (=> (and ($main_sum500 $x6926825 $y6936826))
        ($__VERIFIER_assert_pre (ite (> $y6936826 0) 1 0)))))

(check-sat)
