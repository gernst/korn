(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_if310 (Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $assume_abort_if_not_if308 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if309 (Int Int) Bool)
(declare-fun $main_sum497 (Int Int Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_inv497 (Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if308 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond9519 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if308 cond cond9519))
        (assume_abort_if_not cond9519))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond9520 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond9520))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if309 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond9521 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if309 cond cond9521))
        (__VERIFIER_assert cond9521))))

; loop entry $main_inv497
(assert
  (forall (($x685 Int) ($m686 Int) ($n687 Int) ($int9522 Int))
    (=> (and (= $n687 $int9522)
             (<= (- 2147483648) $int9522)
             (<= $int9522 2147483647)
             (= $m686 0)
             (= $x685 0))
        ($main_inv497 $x685 $m686 $n687))))

; loop term $main_sum497
(assert
  (forall (($x6859523 Int) ($m6869524 Int) ($n6879525 Int))
    (=> (and (not (< $x6859523 $n6879525)))
        ($main_sum497 $x6859523 $m6869524 $n6879525 $x6859523 $m6869524 $n6879525))))

; if then
(assert
  (forall (($x6859523 Int) ($m6869524 Int) ($n6879525 Int) ($int9526 Int))
    (=> (and (not (= $int9526 0))
             (<= (- 2147483648) $int9526)
             (<= $int9526 2147483647)
             (< $x6859523 $n6879525)
             ($main_inv497 $x6859523 $m6869524 $n6879525))
        ($main_if310 $x6859523 $m6869524 $n6879525 $x6859523 $x6859523 $n6879525))))

; if else
(assert
  (forall (($x6859523 Int) ($m6869524 Int) ($n6879525 Int) ($int9526 Int))
    (=> (and (= $int9526 0)
             (<= (- 2147483648) $int9526)
             (<= $int9526 2147483647)
             (< $x6859523 $n6879525)
             ($main_inv497 $x6859523 $m6869524 $n6879525))
        ($main_if310 $x6859523 $m6869524 $n6879525 $x6859523 $m6869524 $n6879525))))

; forwards $main_inv497
(assert
  (forall (($x6859523 Int) ($x6859527 Int) ($m6869528 Int) ($n6879529 Int) ($m6869524 Int) ($n6879525 Int))
    (=> (and ($main_if310 $x6859523 $m6869524 $n6879525 $x6859527 $m6869528 $n6879529))
        ($main_inv497 (+ $x6859527 1) $m6869528 $n6879529))))

; backwards $main_sum497
(assert
  (forall (($n6879532 Int) ($m6869531 Int) ($x6859523 Int) ($x6859527 Int) ($m6869528 Int) ($n6879529 Int) ($n6879525 Int) ($x6859530 Int) ($m6869524 Int))
    (=> (and ($main_sum497 (+ $x6859527 1) $m6869528 $n6879529 $x6859530 $m6869531 $n6879532)
             ($main_if310 $x6859523 $m6869524 $n6879525 $x6859527 $m6869528 $n6879529))
        ($main_sum497 $x6859523 $m6869524 $n6879525 $x6859530 $m6869531 $n6879532))))

; __VERIFIER_assert precondition
(assert
  (forall (($x6859533 Int) ($m686 Int) ($n6879535 Int) ($m6869534 Int) ($x685 Int) ($int9522 Int) ($n687 Int))
    (=> (and ($main_sum497 $x685 $m686 $n687 $x6859533 $m6869534 $n6879535)
             (= $n687 $int9522)
             (<= (- 2147483648) $int9522)
             (<= $int9522 2147483647)
             (= $m686 0)
             (= $x685 0))
        ($__VERIFIER_assert_pre (ite (or (>= $m6869534 0) (<= $n6879535 0)) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x6859533 Int) ($m686 Int) ($n6879535 Int) ($m6869534 Int) ($x685 Int) ($int9522 Int) ($n687 Int))
    (=> (and (__VERIFIER_assert (ite (or (>= $m6869534 0) (<= $n6879535 0)) 1 0))
             ($main_sum497 $x685 $m686 $n687 $x6859533 $m6869534 $n6879535)
             (= $n687 $int9522)
             (<= (- 2147483648) $int9522)
             (<= $int9522 2147483647)
             (= $m686 0)
             (= $x685 0))
        ($__VERIFIER_assert_pre (ite (or (< $m6869534 $n6879535) (<= $n6879535 0)) 1 0)))))

(check-sat)
