(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv501 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $assume_abort_if_not_if321 (Int Int) Bool)
(declare-fun $main_if323 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $__VERIFIER_assert_if322 (Int Int) Bool)
(declare-fun $main_sum501 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if324 (Int Int Int Int Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if321 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond9572 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if321 cond cond9572))
        (assume_abort_if_not cond9572))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond9573 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond9573))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if322 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond9574 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if322 cond cond9574))
        (__VERIFIER_assert cond9574))))

; if else
(assert
  (forall (($a694 Int) ($int9576 Int) ($cnt697 Int) ($res696 Int) ($b695 Int) ($int9575 Int))
    (=> (and (<= $a694 1000000)
             (= $b695 $int9576)
             (<= (- 2147483648) $int9576)
             (<= $int9576 2147483647)
             (= $a694 $int9575)
             (<= (- 2147483648) $int9575)
             (<= $int9575 2147483647))
        ($main_if323 $a694 $b695 $res696 $cnt697 $a694 $b695 $res696 $cnt697))))

; if else
(assert
  (forall (($a694 Int) ($b6959578 Int) ($a6949577 Int) ($cnt697 Int) ($res6969579 Int) ($b695 Int) ($cnt6979580 Int) ($res696 Int))
    (=> (and (<= 0 $b6959578)
             (<= $b6959578 1000000)
             ($main_if323 $a694 $b695 $res696 $cnt697 $a6949577 $b6959578 $res6969579 $cnt6979580))
        ($main_if324 $a694 $b695 $res696 $cnt697 $a6949577 $b6959578 $res6969579 $cnt6979580))))

; loop entry $main_inv501
(assert
  (forall (($cnt6979584 Int) ($a6949581 Int) ($cnt697 Int) ($res6969583 Int) ($b695 Int) ($res696 Int) ($a694 Int) ($b6959582 Int))
    (=> (and ($main_if324 $a694 $b695 $res696 $cnt697 $a6949581 $b6959582 $res6969583 $cnt6979584))
        ($main_inv501 $a6949581 $b6959582 $a6949581 $b6959582))))

; loop term $main_sum501
(assert
  (forall (($a6949585 Int) ($b6959586 Int) ($res6969587 Int) ($cnt6979588 Int))
    (=> (and (not (> $cnt6979588 0)))
        ($main_sum501 $a6949585 $b6959586 $res6969587 $cnt6979588 $a6949585 $b6959586 $res6969587 $cnt6979588))))

; forwards $main_inv501
(assert
  (forall (($a6949585 Int) ($b6959586 Int) ($res6969587 Int) ($cnt6979588 Int))
    (=> (and (> $cnt6979588 0)
             ($main_inv501 $a6949585 $b6959586 $res6969587 $cnt6979588))
        ($main_inv501 $a6949585 $b6959586 (+ $res6969587 1) (- $cnt6979588 1)))))

; backwards $main_sum501
(assert
  (forall (($res6969591 Int) ($a6949585 Int) ($a6949589 Int) ($b6959586 Int) ($b6959590 Int) ($cnt6979592 Int) ($res6969587 Int) ($cnt6979588 Int))
    (=> (and ($main_sum501 $a6949585 $b6959586 (+ $res6969587 1) (- $cnt6979588 1) $a6949589 $b6959590 $res6969591 $cnt6979592)
             (> $cnt6979588 0))
        ($main_sum501 $a6949585 $b6959586 $res6969587 $cnt6979588 $a6949589 $b6959590 $res6969591 $cnt6979592))))

; __VERIFIER_assert precondition
(assert
  (forall (($a6949593 Int) ($cnt6979584 Int) ($a6949581 Int) ($b6959594 Int) ($cnt697 Int) ($res6969583 Int) ($res6969595 Int) ($res696 Int) ($a694 Int) ($b6959582 Int) ($b695 Int) ($cnt6979596 Int))
    (=> (and ($main_sum501 $a6949581 $b6959582 $a6949581 $b6959582 $a6949593 $b6959594 $res6969595 $cnt6979596)
             ($main_if324 $a694 $b695 $res696 $cnt697 $a6949581 $b6959582 $res6969583 $cnt6979584))
        ($__VERIFIER_assert_pre (ite (= $res6969595 (+ $a6949593 $b6959594)) 1 0)))))

(check-sat)
