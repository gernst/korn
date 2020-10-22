(set-logic HORN)

(declare-fun $main_sum3 (Int Int Int (Array Int Int) Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_inv3 (Int Int Int (Array Int Int) Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_if4 (Int) Bool)
(declare-fun $main_sum4 (Int Int Int (Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $assume_abort_if_not_if3 (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_inv4 (Int Int Int (Array Int Int) Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if3 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond16 Int))
    (=> (and ($assume_abort_if_not_if3 cond16))
        (assume_abort_if_not cond16))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond17 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond17))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if4 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond18 Int))
    (=> (and ($__VERIFIER_assert_if4 cond18))
        (__VERIFIER_assert cond18))))

; assume_abort_if_not precondition
(assert
  (forall (($n6 Int) ($int20 Int) ($j5 Int) ($int19 Int))
    (=> (and (= $n6 $int20)
             (<= (- 2147483648) $int20)
             (<= $int20 2147483647)
             (= $j5 $int19)
             (<= (- 2147483648) $int19)
             (<= $int19 2147483647))
        ($assume_abort_if_not_pre (ite (< $n6 100000) 1 0)))))

; assume_abort_if_not precondition
(assert
  (forall (($j5 Int) ($n6 Int) ($int20 Int) ($int19 Int))
    (=> (and (assume_abort_if_not (ite (< $n6 100000) 1 0))
             (= $n6 $int20)
             (<= (- 2147483648) $int20)
             (<= $int20 2147483647)
             (= $j5 $int19)
             (<= (- 2147483648) $int19)
             (<= $int19 2147483647))
        ($assume_abort_if_not_pre (ite (and (> $j5 0) (< $j5 10000)) 1 0)))))

; loop entry $main_inv3
(assert
  (forall (($int20 Int) ($j5 Int) ($k8 Int) ($n6 Int) ($int19 Int) ($a7 (Array Int Int)))
    (=> (and (assume_abort_if_not (ite (and (> $j5 0) (< $j5 10000)) 1 0))
             (assume_abort_if_not (ite (< $n6 100000) 1 0))
             (= $n6 $int20)
             (<= (- 2147483648) $int20)
             (<= $int20 2147483647)
             (= $j5 $int19)
             (<= (- 2147483648) $int19)
             (<= $int19 2147483647))
        ($main_inv3 1 $j5 $n6 $a7 $k8))))

; loop term $main_sum3
(assert
  (forall (($j522 Int) ($n623 Int) ($a724 (Array Int Int)) ($k825 Int) ($i421 Int))
    (=> (and (not (< $i421 $n623))
             ($main_inv3 $i421 $j522 $n623 $a724 $k825))
        ($main_sum3 $i421 $j522 $n623 $a724 $k825))))

; assume_abort_if_not precondition
(assert
  (forall (($int26 Int) ($j522 Int) ($n623 Int) ($a724 (Array Int Int)) ($k825 Int) ($i421 Int))
    (=> (and (= $k825 $int26)
             (<= (- 2147483648) $int26)
             (<= $int26 2147483647)
             (< $i421 $n623)
             ($main_inv3 $i421 $j522 $n623 $a724 $k825))
        ($assume_abort_if_not_pre (ite (and (> $k825 0) (< $k825 10000)) 1 0)))))

; forwards $main_inv3
(assert
  (forall (($int26 Int) ($j522 Int) ($n623 Int) ($a724 (Array Int Int)) ($k825 Int) ($i421 Int))
    (=> (and (assume_abort_if_not (ite (and (> $k825 0) (< $k825 10000)) 1 0))
             (= $k825 $int26)
             (<= (- 2147483648) $int26)
             (<= $int26 2147483647)
             (< $i421 $n623)
             ($main_inv3 $i421 $j522 $n623 $a724 $k825))
        ($main_inv3 (+ $i421 1) $j522 $n623 (store $a724 $i421 (+ (+ $i421 $j522) $k825)) $k825))))

; loop entry $main_inv4
(assert
  (forall (($a730 (Array Int Int)) ($i427 Int) ($j528 Int) ($n629 Int) ($k831 Int))
    (=> (and ($main_sum3 $i427 $j528 $n629 $a730 $k831))
        ($main_inv4 1 $j528 $n629 $a730 $k831))))

; loop term $main_sum4
(assert
  (forall (($k836 Int) ($i432 Int) ($j533 Int) ($a735 (Array Int Int)) ($n634 Int))
    (=> (and (not (< $i432 $n634))
             ($main_inv4 $i432 $j533 $n634 $a735 $k836))
        ($main_sum4 $i432 $j533 $n634 $a735 $k836))))

; __VERIFIER_assert precondition
(assert
  (forall (($k836 Int) ($i432 Int) ($j533 Int) ($a735 (Array Int Int)) ($n634 Int))
    (=> (and (< $i432 $n634)
             ($main_inv4 $i432 $j533 $n634 $a735 $k836))
        ($__VERIFIER_assert_pre (ite (>= (select $a735 $i432) (+ $i432 2)) 1 0)))))

; forwards $main_inv4
(assert
  (forall (($k836 Int) ($i432 Int) ($j533 Int) ($a735 (Array Int Int)) ($n634 Int))
    (=> (and (__VERIFIER_assert (ite (>= (select $a735 $i432) (+ $i432 2)) 1 0))
             (< $i432 $n634)
             ($main_inv4 $i432 $j533 $n634 $a735 $k836))
        ($main_inv4 (+ $i432 1) $j533 $n634 $a735 $k836))))

(check-sat)
