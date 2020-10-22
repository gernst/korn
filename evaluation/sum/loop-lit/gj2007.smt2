(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_if312 (Int Int) Bool)
(declare-fun $main_if313 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv498 (Int Int) Bool)
(declare-fun $assume_abort_if_not_if311 (Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_sum498 (Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if311 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond9536 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if311 cond cond9536))
        (assume_abort_if_not cond9536))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond9537 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond9537))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if312 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond9538 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if312 cond cond9538))
        (__VERIFIER_assert cond9538))))

; loop entry $main_inv498
(assert
  (forall (($x688 Int) ($y689 Int))
    (=> (and (= $y689 50)
             (= $x688 0))
        ($main_inv498 $x688 $y689))))

; loop term $main_sum498
(assert
  (forall (($x6889539 Int) ($y6899540 Int))
    (=> (and (not (< $x6889539 100)))
        ($main_sum498 $x6889539 $y6899540 $x6889539 $y6899540))))

; if then
(assert
  (forall (($x6889539 Int) ($y6899540 Int))
    (=> (and (< $x6889539 50)
             (< $x6889539 100)
             ($main_inv498 $x6889539 $y6899540))
        ($main_if313 $x6889539 $y6899540 (+ $x6889539 1) $y6899540))))

; if else
(assert
  (forall (($x6889539 Int) ($y6899540 Int))
    (=> (and (not (< $x6889539 50))
             (< $x6889539 100)
             ($main_inv498 $x6889539 $y6899540))
        ($main_if313 $x6889539 $y6899540 (+ $x6889539 1) (+ $y6899540 1)))))

; forwards $main_inv498
(assert
  (forall (($x6889541 Int) ($y6899542 Int) ($x6889539 Int) ($y6899540 Int))
    (=> (and ($main_if313 $x6889539 $y6899540 $x6889541 $y6899542))
        ($main_inv498 $x6889541 $y6899542))))

; backwards $main_sum498
(assert
  (forall (($x6889541 Int) ($x6889543 Int) ($y6899542 Int) ($x6889539 Int) ($y6899540 Int) ($y6899544 Int))
    (=> (and ($main_sum498 $x6889541 $y6899542 $x6889543 $y6899544)
             ($main_if313 $x6889539 $y6899540 $x6889541 $y6899542))
        ($main_sum498 $x6889539 $y6899540 $x6889543 $y6899544))))

; __VERIFIER_assert precondition
(assert
  (forall (($y6899546 Int) ($x688 Int) ($y689 Int) ($x6889545 Int))
    (=> (and ($main_sum498 $x688 $y689 $x6889545 $y6899546)
             (= $y689 50)
             (= $x688 0))
        ($__VERIFIER_assert_pre (ite (= $y6899546 100) 1 0)))))

(check-sat)
