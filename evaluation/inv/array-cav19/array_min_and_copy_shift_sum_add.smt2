(set-logic HORN)

(declare-fun $__VERIFIER_assert_if8 (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum8 (Int Int Int Int (Array Int Int) (Array Int Int)) Bool)
(declare-fun $main_sum10 (Int Int Int Int (Array Int Int) (Array Int Int)) Bool)
(declare-fun $assume_abort_if_not_if7 (Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_inv8 (Int Int Int Int (Array Int Int) (Array Int Int)) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv9 (Int Int Int Int (Array Int Int) (Array Int Int)) Bool)
(declare-fun $main_inv10 (Int Int Int Int (Array Int Int) (Array Int Int)) Bool)
(declare-fun $main_if9 (Int Int Int Int (Array Int Int) (Array Int Int)) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_sum9 (Int Int Int Int (Array Int Int) (Array Int Int)) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if7 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond75 Int))
    (=> (and ($assume_abort_if_not_if7 cond75))
        (assume_abort_if_not cond75))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond76 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond76))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if8 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond77 Int))
    (=> (and ($__VERIFIER_assert_if8 cond77))
        (__VERIFIER_assert cond77))))

; assume_abort_if_not precondition
(assert
  (forall (($j15 Int) ($int78 Int))
    (=> (and (= $j15 $int78)
             (<= (- 2147483648) $int78)
             (<= $int78 2147483647))
        ($assume_abort_if_not_pre (ite (and (< $j15 10000) (> $j15 (- 10000))) 1 0)))))

; assume_abort_if_not precondition
(assert
  (forall (($int79 Int) ($k16 Int) ($int78 Int) ($N17 Int) ($j15 Int))
    (=> (and (= $N17 $int79)
             (<= (- 2147483648) $int79)
             (<= $int79 2147483647)
             (= $k16 0)
             (assume_abort_if_not (ite (and (< $j15 10000) (> $j15 (- 10000))) 1 0))
             (= $j15 $int78)
             (<= (- 2147483648) $int78)
             (<= $int78 2147483647))
        ($assume_abort_if_not_pre (ite (and (< $N17 10000) (> $N17 (- 10000))) 1 0)))))

; loop entry $main_inv8
(assert
  (forall (($int79 Int) ($a18 (Array Int Int)) ($k16 Int) ($int78 Int) ($N17 Int) ($b19 (Array Int Int)) ($j15 Int))
    (=> (and (assume_abort_if_not (ite (and (< $N17 10000) (> $N17 (- 10000))) 1 0))
             (= $N17 $int79)
             (<= (- 2147483648) $int79)
             (<= $int79 2147483647)
             (= $k16 0)
             (assume_abort_if_not (ite (and (< $j15 10000) (> $j15 (- 10000))) 1 0))
             (= $j15 $int78)
             (<= (- 2147483648) $int78)
             (<= $int78 2147483647))
        ($main_inv8 0 $j15 $k16 $N17 $a18 $b19))))

; loop term $main_sum8
(assert
  (forall (($b1985 (Array Int Int)) ($a1884 (Array Int Int)) ($j1581 Int) ($N1783 Int) ($i1480 Int) ($k1682 Int))
    (=> (and (not (< $i1480 $N1783))
             ($main_inv8 $i1480 $j1581 $k1682 $N1783 $a1884 $b1985))
        ($main_sum8 $i1480 $j1581 $k1682 $N1783 $a1884 $b1985))))

; assume_abort_if_not precondition
(assert
  (forall (($b1985 (Array Int Int)) ($a1884 (Array Int Int)) ($j1581 Int) ($N1783 Int) ($i1480 Int) ($k1682 Int))
    (=> (and (< $i1480 $N1783)
             ($main_inv8 $i1480 $j1581 $k1682 $N1783 $a1884 $b1985))
        ($assume_abort_if_not_pre (ite (and (< (select $a1884 $i1480) 10000) (> (select $a1884 $i1480) (- 10000))) 1 0)))))

; if then
(assert
  (forall (($b1985 (Array Int Int)) ($a1884 (Array Int Int)) ($j1581 Int) ($N1783 Int) ($i1480 Int) ($k1682 Int))
    (=> (and (> $j1581 (select $a1884 $i1480))
             (assume_abort_if_not (ite (and (< (select $a1884 $i1480) 10000) (> (select $a1884 $i1480) (- 10000))) 1 0))
             (< $i1480 $N1783)
             ($main_inv8 $i1480 $j1581 $k1682 $N1783 $a1884 $b1985))
        ($main_if9 $i1480 (select $a1884 $i1480) $k1682 $N1783 $a1884 $b1985))))

; if else
(assert
  (forall (($b1985 (Array Int Int)) ($a1884 (Array Int Int)) ($j1581 Int) ($N1783 Int) ($i1480 Int) ($k1682 Int))
    (=> (and (not (> $j1581 (select $a1884 $i1480)))
             (assume_abort_if_not (ite (and (< (select $a1884 $i1480) 10000) (> (select $a1884 $i1480) (- 10000))) 1 0))
             (< $i1480 $N1783)
             ($main_inv8 $i1480 $j1581 $k1682 $N1783 $a1884 $b1985))
        ($main_if9 $i1480 $j1581 $k1682 $N1783 $a1884 $b1985))))

; forwards $main_inv8
(assert
  (forall (($b1991 (Array Int Int)) ($a1890 (Array Int Int)) ($i1486 Int) ($j1587 Int) ($N1789 Int) ($k1688 Int))
    (=> (and ($main_if9 $i1486 $j1587 $k1688 $N1789 $a1890 $b1991))
        ($main_inv8 (+ $i1486 1) $j1587 $k1688 $N1789 $a1890 $b1991))))

; loop entry $main_inv9
(assert
  (forall (($N1795 Int) ($a1896 (Array Int Int)) ($b1997 (Array Int Int)) ($i1492 Int) ($j1593 Int) ($k1694 Int))
    (=> (and ($main_sum8 $i1492 $j1593 $k1694 $N1795 $a1896 $b1997))
        ($main_inv9 0 $j1593 $k1694 $N1795 $a1896 $b1997))))

; loop term $main_sum9
(assert
  (forall (($j1599 Int) ($N17101 Int) ($i1498 Int) ($a18102 (Array Int Int)) ($k16100 Int) ($b19103 (Array Int Int)))
    (=> (and (not (< $i1498 $N17101))
             ($main_inv9 $i1498 $j1599 $k16100 $N17101 $a18102 $b19103))
        ($main_sum9 $i1498 $j1599 $k16100 $N17101 $a18102 $b19103))))

; forwards $main_inv9
(assert
  (forall (($j1599 Int) ($N17101 Int) ($i1498 Int) ($a18102 (Array Int Int)) ($k16100 Int) ($b19103 (Array Int Int)))
    (=> (and (< $i1498 $N17101)
             ($main_inv9 $i1498 $j1599 $k16100 $N17101 $a18102 $b19103))
        ($main_inv9 (+ $i1498 1) $j1599 $k16100 $N17101 $a18102 (store $b19103 $i1498 (- (select $a18102 $i1498) $j1599))))))

; loop entry $main_inv10
(assert
  (forall (($b19109 (Array Int Int)) ($k16106 Int) ($N17107 Int) ($a18108 (Array Int Int)) ($i14104 Int) ($j15105 Int))
    (=> (and ($main_sum9 $i14104 $j15105 $k16106 $N17107 $a18108 $b19109))
        ($main_inv10 0 $j15105 $k16106 $N17107 $a18108 $b19109))))

; loop term $main_sum10
(assert
  (forall (($j15111 Int) ($N17113 Int) ($k16112 Int) ($i14110 Int) ($b19115 (Array Int Int)) ($a18114 (Array Int Int)))
    (=> (and (not (< $i14110 $N17113))
             ($main_inv10 $i14110 $j15111 $k16112 $N17113 $a18114 $b19115))
        ($main_sum10 $i14110 $j15111 $k16112 $N17113 $a18114 $b19115))))

; forwards $main_inv10
(assert
  (forall (($j15111 Int) ($N17113 Int) ($k16112 Int) ($i14110 Int) ($b19115 (Array Int Int)) ($a18114 (Array Int Int)))
    (=> (and (< $i14110 $N17113)
             ($main_inv10 $i14110 $j15111 $k16112 $N17113 $a18114 $b19115))
        ($main_inv10 (+ $i14110 1) $j15111 (+ (+ $k16112 (select $b19115 $i14110)) $i14110) $N17113 $a18114 $b19115))))

; __VERIFIER_assert precondition
(assert
  (forall (($j15117 Int) ($i14116 Int) ($a18120 (Array Int Int)) ($b19121 (Array Int Int)) ($k16118 Int) ($N17119 Int))
    (=> (and ($main_sum10 $i14116 $j15117 $k16118 $N17119 $a18120 $b19121))
        ($__VERIFIER_assert_pre (ite (>= $k16118 0) 1 0)))))

(check-sat)
