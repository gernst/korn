(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $assume_abort_if_not_if280 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if281 (Int Int) Bool)
(declare-fun $main_inv487 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_if282 (Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_sum487 (Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if280 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond9342 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if280 cond cond9342))
        (assume_abort_if_not cond9342))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond9343 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond9343))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if281 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond9344 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if281 cond cond9344))
        (__VERIFIER_assert cond9344))))

; loop entry $main_inv487
(assert
  (forall (($x659 Int) ($y660 Int))
    (=> (and (= $y660 0)
             (= $x659 1))
        ($main_inv487 $x659 $y660))))

; and left
(assert
  (forall (($x6599345 Int) ($y6609346 Int))
    (=> (and ($main_inv487 $x6599345 $y6609346))
        ($main_if282 $x6599345 $y6609346 $x6599345 $y6609346))))

; and right
(assert
  (forall (($x6599345 Int) ($y6609346 Int) ($int9347 Int))
    (=> (and (<= (- 2147483648) $int9347)
             (<= $int9347 2147483647)
             (< $y6609346 1000)
             ($main_inv487 $x6599345 $y6609346))
        ($main_if282 $x6599345 $y6609346 $x6599345 $y6609346))))

; loop term $main_sum487
(assert
  (forall (($x6599348 Int) ($y6609349 Int) ($y6609346 Int) ($x6599345 Int) ($int9347 Int))
    (=> (and (not (and (< $y6609346 1000) (not (= $int9347 0))))
             ($main_if282 $x6599345 $y6609346 $x6599348 $y6609349))
        ($main_sum487 $x6599348 $y6609349 $x6599348 $y6609349))))

; forwards $main_inv487
(assert
  (forall (($x6599348 Int) ($y6609349 Int) ($y6609346 Int) ($x6599345 Int) ($int9347 Int))
    (=> (and (< $y6609346 1000)
             (not (= $int9347 0))
             ($main_if282 $x6599345 $y6609346 $x6599348 $y6609349))
        ($main_inv487 (+ $x6599348 $y6609349) (+ $y6609349 1)))))

; backwards $main_sum487
(assert
  (forall (($x6599348 Int) ($x6599350 Int) ($y6609349 Int) ($y6609346 Int) ($x6599345 Int) ($y6609351 Int) ($int9347 Int))
    (=> (and ($main_sum487 (+ $x6599348 $y6609349) (+ $y6609349 1) $x6599350 $y6609351)
             (< $y6609346 1000)
             (not (= $int9347 0))
             ($main_if282 $x6599345 $y6609346 $x6599348 $y6609349))
        ($main_sum487 $x6599348 $y6609349 $x6599350 $y6609351))))

; __VERIFIER_assert precondition
(assert
  (forall (($x6599352 Int) ($y6609353 Int) ($x659 Int) ($y660 Int))
    (=> (and ($main_sum487 $x659 $y660 $x6599352 $y6609353)
             (= $y660 0)
             (= $x659 1))
        ($__VERIFIER_assert_pre (ite (>= $x6599352 $y6609353) 1 0)))))

(check-sat)
