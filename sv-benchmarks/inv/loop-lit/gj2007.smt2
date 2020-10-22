(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if312 (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $assume_abort_if_not_if311 (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_if313 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv498 (Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_sum498 (Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if311 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond6797 Int))
    (=> (and ($assume_abort_if_not_if311 cond6797))
        (assume_abort_if_not cond6797))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond6798 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond6798))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if312 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6799 Int))
    (=> (and ($__VERIFIER_assert_if312 cond6799))
        (__VERIFIER_assert cond6799))))

; loop entry $main_inv498
(assert
  (forall (($x688 Int) ($y689 Int))
    (=> (and (= $y689 50)
             (= $x688 0))
        ($main_inv498 $x688 $y689))))

; loop term $main_sum498
(assert
  (forall (($x6886800 Int) ($y6896801 Int))
    (=> (and (not (< $x6886800 100))
             ($main_inv498 $x6886800 $y6896801))
        ($main_sum498 $x6886800 $y6896801))))

; if then
(assert
  (forall (($x6886800 Int) ($y6896801 Int))
    (=> (and (< $x6886800 50)
             (< $x6886800 100)
             ($main_inv498 $x6886800 $y6896801))
        ($main_if313 (+ $x6886800 1) $y6896801))))

; if else
(assert
  (forall (($x6886800 Int) ($y6896801 Int))
    (=> (and (not (< $x6886800 50))
             (< $x6886800 100)
             ($main_inv498 $x6886800 $y6896801))
        ($main_if313 (+ $x6886800 1) (+ $y6896801 1)))))

; forwards $main_inv498
(assert
  (forall (($x6886802 Int) ($y6896803 Int))
    (=> (and ($main_if313 $x6886802 $y6896803))
        ($main_inv498 $x6886802 $y6896803))))

; __VERIFIER_assert precondition
(assert
  (forall (($y6896805 Int) ($x6886804 Int))
    (=> (and ($main_sum498 $x6886804 $y6896805))
        ($__VERIFIER_assert_pre (ite (= $y6896805 100) 1 0)))))

(check-sat)
