(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv406 ((Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum406 ((Array Int Int) Int Int Int (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if129 (Int Int) Bool)
(declare-fun $main_inv404 ((Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum404 ((Array Int Int) Int Int Int (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv405 ((Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum405 ((Array Int Int) Int Int Int (Array Int Int) Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond7549 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond7549))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if129 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond7550 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if129 cond cond7550))
        (__VERIFIER_assert cond7550))))

; loop entry $main_inv404
(assert
  (forall (($aa492 (Array Int Int)) ($a493 Int) ($i494 Int) ($x495 Int))
    (=> (and (= $i494 0)
             (= $a493 0))
        ($main_inv404 $aa492 $a493 $i494 $x495))))

; loop term $main_sum404
(assert
  (forall (($aa4927551 (Array Int Int)) ($a4937552 Int) ($i4947553 Int) ($x4957554 Int))
    (=> (and (not (< $i4947553 100000)))
        ($main_sum404 $aa4927551 $a4937552 $i4947553 $x4957554 $aa4927551 $a4937552 $i4947553 $x4957554))))

; forwards $main_inv404
(assert
  (forall (($i4947553 Int) ($aa4927551 (Array Int Int)) ($int7555 Int) ($x4957554 Int) ($a4937552 Int))
    (=> (and (<= (- 2147483648) $int7555)
             (<= $int7555 2147483647)
             (< $i4947553 100000)
             ($main_inv404 $aa4927551 $a4937552 $i4947553 $x4957554))
        ($main_inv404 (store $aa4927551 $i4947553 $int7555) $a4937552 (+ $i4947553 1) $x4957554))))

; backwards $main_sum404
(assert
  (forall (($x4957559 Int) ($aa4927556 (Array Int Int)) ($a4937557 Int) ($i4947553 Int) ($i4947558 Int) ($aa4927551 (Array Int Int)) ($int7555 Int) ($x4957554 Int) ($a4937552 Int))
    (=> (and ($main_sum404 (store $aa4927551 $i4947553 $int7555) $a4937552 (+ $i4947553 1) $x4957554 $aa4927556 $a4937557 $i4947558 $x4957559)
             (<= (- 2147483648) $int7555)
             (<= $int7555 2147483647)
             (< $i4947553 100000))
        ($main_sum404 $aa4927551 $a4937552 $i4947553 $x4957554 $aa4927556 $a4937557 $i4947558 $x4957559))))

; loop entry $main_inv405
(assert
  (forall (($a4937561 Int) ($i494 Int) ($x4957563 Int) ($i4947562 Int) ($aa492 (Array Int Int)) ($x495 Int) ($a493 Int) ($aa4927560 (Array Int Int)))
    (=> (and ($main_sum404 $aa492 $a493 $i494 $x495 $aa4927560 $a4937561 $i4947562 $x4957563)
             (= $i494 0)
             (= $a493 0))
        ($main_inv405 $aa4927560 $a4937561 $i4947562 $x4957563))))

; loop term $main_sum405
(assert
  (forall (($aa4927564 (Array Int Int)) ($a4937565 Int) ($i4947566 Int) ($x4957567 Int))
    (=> (and (not (>= (select $aa4927564 $a4937565) 0)))
        ($main_sum405 $aa4927564 $a4937565 $i4947566 $x4957567 $aa4927564 $a4937565 $i4947566 $x4957567))))

; forwards $main_inv405
(assert
  (forall (($aa4927564 (Array Int Int)) ($a4937565 Int) ($i4947566 Int) ($x4957567 Int))
    (=> (and (>= (select $aa4927564 $a4937565) 0)
             ($main_inv405 $aa4927564 $a4937565 $i4947566 $x4957567))
        ($main_inv405 $aa4927564 (+ $a4937565 1) $i4947566 $x4957567))))

; backwards $main_sum405
(assert
  (forall (($aa4927568 (Array Int Int)) ($aa4927564 (Array Int Int)) ($x4957571 Int) ($a4937565 Int) ($i4947566 Int) ($a4937569 Int) ($i4947570 Int) ($x4957567 Int))
    (=> (and ($main_sum405 $aa4927564 (+ $a4937565 1) $i4947566 $x4957567 $aa4927568 $a4937569 $i4947570 $x4957571)
             (>= (select $aa4927564 $a4937565) 0))
        ($main_sum405 $aa4927564 $a4937565 $i4947566 $x4957567 $aa4927568 $a4937569 $i4947570 $x4957571))))

; loop entry $main_inv406
(assert
  (forall (($a4937561 Int) ($i494 Int) ($i4947574 Int) ($x4957563 Int) ($i4947562 Int) ($aa4927572 (Array Int Int)) ($aa492 (Array Int Int)) ($x4957575 Int) ($a493 Int) ($aa4927560 (Array Int Int)) ($a4937573 Int) ($x495 Int))
    (=> (and ($main_sum405 $aa4927560 $a4937561 $i4947562 $x4957563 $aa4927572 $a4937573 $i4947574 $x4957575)
             ($main_sum404 $aa492 $a493 $i494 $x495 $aa4927560 $a4937561 $i4947562 $x4957563)
             (= $i494 0)
             (= $a493 0))
        ($main_inv406 $aa4927572 $a4937573 $i4947574 0))))

; loop term $main_sum406
(assert
  (forall (($aa4927576 (Array Int Int)) ($a4937577 Int) ($i4947578 Int) ($x4957579 Int))
    (=> (and (not (< $x4957579 $a4937577)))
        ($main_sum406 $aa4927576 $a4937577 $i4947578 $x4957579 $aa4927576 $a4937577 $i4947578 $x4957579))))

; __VERIFIER_assert precondition
(assert
  (forall (($aa4927576 (Array Int Int)) ($x4957579 Int) ($a4937577 Int) ($i4947578 Int))
    (=> (and (< $x4957579 $a4937577)
             ($main_inv406 $aa4927576 $a4937577 $i4947578 $x4957579))
        ($__VERIFIER_assert_pre (ite (>= (select $aa4927576 $x4957579) 0) 1 0)))))

; forwards $main_inv406
(assert
  (forall (($aa4927576 (Array Int Int)) ($a4937577 Int) ($i4947578 Int) ($x4957579 Int))
    (=> (and (__VERIFIER_assert (ite (>= (select $aa4927576 $x4957579) 0) 1 0))
             (< $x4957579 $a4937577)
             ($main_inv406 $aa4927576 $a4937577 $i4947578 $x4957579))
        ($main_inv406 $aa4927576 $a4937577 $i4947578 (+ $x4957579 1)))))

; backwards $main_sum406
(assert
  (forall (($i4947582 Int) ($aa4927580 (Array Int Int)) ($i4947578 Int) ($a4937581 Int) ($aa4927576 (Array Int Int)) ($x4957579 Int) ($x4957583 Int) ($a4937577 Int))
    (=> (and ($main_sum406 $aa4927576 $a4937577 $i4947578 (+ $x4957579 1) $aa4927580 $a4937581 $i4947582 $x4957583)
             (__VERIFIER_assert (ite (>= (select $aa4927576 $x4957579) 0) 1 0))
             (< $x4957579 $a4937577))
        ($main_sum406 $aa4927576 $a4937577 $i4947578 $x4957579 $aa4927580 $a4937581 $i4947582 $x4957583))))

(check-sat)
