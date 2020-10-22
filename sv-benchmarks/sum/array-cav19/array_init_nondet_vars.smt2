(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_inv3 (Int Int Int (Array Int Int) Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $assume_abort_if_not_if3 (Int Int) Bool)
(declare-fun $main_sum4 (Int Int Int (Array Int Int) Int Int Int Int (Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_inv4 (Int Int Int (Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_if4 (Int Int) Bool)
(declare-fun $main_sum3 (Int Int Int (Array Int Int) Int Int Int Int (Array Int Int) Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if3 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond22 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if3 cond cond22))
        (assume_abort_if_not cond22))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond23 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond23))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if4 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond24 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if4 cond cond24))
        (__VERIFIER_assert cond24))))

; assume_abort_if_not precondition
(assert
  (forall (($n6 Int) ($int26 Int) ($j5 Int) ($int25 Int))
    (=> (and (= $n6 $int26)
             (<= (- 2147483648) $int26)
             (<= $int26 2147483647)
             (= $j5 $int25)
             (<= (- 2147483648) $int25)
             (<= $int25 2147483647))
        ($assume_abort_if_not_pre (ite (< $n6 100000) 1 0)))))

; assume_abort_if_not precondition
(assert
  (forall (($j5 Int) ($n6 Int) ($int26 Int) ($int25 Int))
    (=> (and (assume_abort_if_not (ite (< $n6 100000) 1 0))
             (= $n6 $int26)
             (<= (- 2147483648) $int26)
             (<= $int26 2147483647)
             (= $j5 $int25)
             (<= (- 2147483648) $int25)
             (<= $int25 2147483647))
        ($assume_abort_if_not_pre (ite (and (> $j5 0) (< $j5 10000)) 1 0)))))

; loop entry $main_inv3
(assert
  (forall (($int26 Int) ($j5 Int) ($a7 (Array Int Int)) ($n6 Int) ($k8 Int) ($int25 Int))
    (=> (and (assume_abort_if_not (ite (and (> $j5 0) (< $j5 10000)) 1 0))
             (assume_abort_if_not (ite (< $n6 100000) 1 0))
             (= $n6 $int26)
             (<= (- 2147483648) $int26)
             (<= $int26 2147483647)
             (= $j5 $int25)
             (<= (- 2147483648) $int25)
             (<= $int25 2147483647))
        ($main_inv3 1 $j5 $n6 $a7 $k8))))

; loop term $main_sum3
(assert
  (forall (($a730 (Array Int Int)) ($i427 Int) ($j528 Int) ($n629 Int) ($k831 Int))
    (=> (and (not (< $i427 $n629)))
        ($main_sum3 $i427 $j528 $n629 $a730 $k831 $i427 $j528 $n629 $a730 $k831))))

; assume_abort_if_not precondition
(assert
  (forall (($a730 (Array Int Int)) ($i427 Int) ($int32 Int) ($j528 Int) ($n629 Int) ($k831 Int))
    (=> (and (= $k831 $int32)
             (<= (- 2147483648) $int32)
             (<= $int32 2147483647)
             (< $i427 $n629)
             ($main_inv3 $i427 $j528 $n629 $a730 $k831))
        ($assume_abort_if_not_pre (ite (and (> $k831 0) (< $k831 10000)) 1 0)))))

; forwards $main_inv3
(assert
  (forall (($a730 (Array Int Int)) ($i427 Int) ($int32 Int) ($j528 Int) ($n629 Int) ($k831 Int))
    (=> (and (assume_abort_if_not (ite (and (> $k831 0) (< $k831 10000)) 1 0))
             (= $k831 $int32)
             (<= (- 2147483648) $int32)
             (<= $int32 2147483647)
             (< $i427 $n629)
             ($main_inv3 $i427 $j528 $n629 $a730 $k831))
        ($main_inv3 (+ $i427 1) $j528 $n629 (store $a730 $i427 (+ (+ $i427 $j528) $k831)) $k831))))

; backwards $main_sum3
(assert
  (forall (($a730 (Array Int Int)) ($k837 Int) ($a736 (Array Int Int)) ($n629 Int) ($k831 Int) ($i427 Int) ($n635 Int) ($int32 Int) ($i433 Int) ($j528 Int) ($j534 Int))
    (=> (and ($main_sum3 (+ $i427 1) $j528 $n629 (store $a730 $i427 (+ (+ $i427 $j528) $k831)) $k831 $i433 $j534 $n635 $a736 $k837)
             (assume_abort_if_not (ite (and (> $k831 0) (< $k831 10000)) 1 0))
             (= $k831 $int32)
             (<= (- 2147483648) $int32)
             (<= $int32 2147483647)
             (< $i427 $n629))
        ($main_sum3 $i427 $j528 $n629 $a730 $k831 $i433 $j534 $n635 $a736 $k837))))

; loop entry $main_inv4
(assert
  (forall (($j5 Int) ($n6 Int) ($j539 Int) ($a741 (Array Int Int)) ($k842 Int) ($n640 Int) ($int26 Int) ($i438 Int) ($a7 (Array Int Int)) ($k8 Int) ($int25 Int))
    (=> (and ($main_sum3 1 $j5 $n6 $a7 $k8 $i438 $j539 $n640 $a741 $k842)
             (assume_abort_if_not (ite (and (> $j5 0) (< $j5 10000)) 1 0))
             (assume_abort_if_not (ite (< $n6 100000) 1 0))
             (= $n6 $int26)
             (<= (- 2147483648) $int26)
             (<= $int26 2147483647)
             (= $j5 $int25)
             (<= (- 2147483648) $int25)
             (<= $int25 2147483647))
        ($main_inv4 1 $j539 $n640 $a741 $k842))))

; loop term $main_sum4
(assert
  (forall (($a746 (Array Int Int)) ($n645 Int) ($j544 Int) ($k847 Int) ($i443 Int))
    (=> (and (not (< $i443 $n645)))
        ($main_sum4 $i443 $j544 $n645 $a746 $k847 $i443 $j544 $n645 $a746 $k847))))

; __VERIFIER_assert precondition
(assert
  (forall (($a746 (Array Int Int)) ($n645 Int) ($j544 Int) ($k847 Int) ($i443 Int))
    (=> (and (< $i443 $n645)
             ($main_inv4 $i443 $j544 $n645 $a746 $k847))
        ($__VERIFIER_assert_pre (ite (>= (select $a746 $i443) (+ $i443 2)) 1 0)))))

; forwards $main_inv4
(assert
  (forall (($a746 (Array Int Int)) ($n645 Int) ($j544 Int) ($k847 Int) ($i443 Int))
    (=> (and (__VERIFIER_assert (ite (>= (select $a746 $i443) (+ $i443 2)) 1 0))
             (< $i443 $n645)
             ($main_inv4 $i443 $j544 $n645 $a746 $k847))
        ($main_inv4 (+ $i443 1) $j544 $n645 $a746 $k847))))

; backwards $main_sum4
(assert
  (forall (($a746 (Array Int Int)) ($n645 Int) ($j544 Int) ($i443 Int) ($j549 Int) ($n650 Int) ($a751 (Array Int Int)) ($k852 Int) ($i448 Int) ($k847 Int))
    (=> (and ($main_sum4 (+ $i443 1) $j544 $n645 $a746 $k847 $i448 $j549 $n650 $a751 $k852)
             (__VERIFIER_assert (ite (>= (select $a746 $i443) (+ $i443 2)) 1 0))
             (< $i443 $n645))
        ($main_sum4 $i443 $j544 $n645 $a746 $k847 $i448 $j549 $n650 $a751 $k852))))

(check-sat)
