(set-logic HORN)

(declare-fun $main_inv272 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $__VERIFIER_nondet_bool_pre () Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun __VERIFIER_nondet_bool (Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $main_sum272 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if708 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if706 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_if707 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond16786 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond16786))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if706 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond16787 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if706 cond cond16787))
        (__VERIFIER_assert cond16787))))

; loop entry $main_inv272
(assert
  (forall (($bool16792 Int) ($uint16789 Int) ($c1759 Int) ($d1756 Int) ($uint16788 Int) ($c2760 Int) ($bool16791 Int) ($uint16790 Int) ($x1753 Int) ($x3755 Int) ($d3758 Int) ($d2757 Int) ($x2754 Int))
    (=> (and (= $c2760 $bool16792)
             (or (= $bool16792 0) (= $bool16792 1))
             (= $c1759 $bool16791)
             (or (= $bool16791 0) (= $bool16791 1))
             (= $d3758 1)
             (= $d2757 1)
             (= $d1756 1)
             (= $x3755 $uint16790)
             (<= 0 $uint16790)
             (<= $uint16790 4294967295)
             (= $x2754 $uint16789)
             (<= 0 $uint16789)
             (<= $uint16789 4294967295)
             (= $x1753 $uint16788)
             (<= 0 $uint16788)
             (<= $uint16788 4294967295))
        ($main_inv272 $x1753 $x2754 $x3755 $d1756 $d2757 $d3758 $c1759 $c2760))))

; loop term $main_sum272
(assert
  (forall (($x175316793 Int) ($x375516795 Int) ($d375816798 Int) ($d175616796 Int) ($x275416794 Int) ($c175916799 Int) ($c276016800 Int) ($d275716797 Int))
    (=> (and (not (and (and (> $x175316793 0) (> $x275416794 0)) (> $x375516795 0))))
        ($main_sum272 $x175316793 $x275416794 $x375516795 $d175616796 $d275716797 $d375816798 $c175916799 $c276016800 $x175316793 $x275416794 $x375516795 $d175616796 $d275716797 $d375816798 $c175916799 $c276016800))))

; if then
(assert
  (forall (($x175316793 Int) ($x375516795 Int) ($d375816798 Int) ($d175616796 Int) ($x275416794 Int) ($c175916799 Int) ($c276016800 Int) ($d275716797 Int))
    (=> (and (not (= $c276016800 0))
             (= $c175916799 0)
             (> $x175316793 0)
             (> $x275416794 0)
             (> $x375516795 0)
             ($main_inv272 $x175316793 $x275416794 $x375516795 $d175616796 $d275716797 $d375816798 $c175916799 $c276016800))
        ($main_if707 $x175316793 $x275416794 $x375516795 $d175616796 $d275716797 $d375816798 $c175916799 $c276016800 $x175316793 (- $x275416794 $d275716797) $x375516795 $d175616796 $d275716797 $d375816798 $c175916799 $c276016800))))

; if else
(assert
  (forall (($x175316793 Int) ($x375516795 Int) ($d375816798 Int) ($d175616796 Int) ($x275416794 Int) ($c175916799 Int) ($c276016800 Int) ($d275716797 Int))
    (=> (and (= $c276016800 0)
             (= $c175916799 0)
             (> $x175316793 0)
             (> $x275416794 0)
             (> $x375516795 0)
             ($main_inv272 $x175316793 $x275416794 $x375516795 $d175616796 $d275716797 $d375816798 $c175916799 $c276016800))
        ($main_if707 $x175316793 $x275416794 $x375516795 $d175616796 $d275716797 $d375816798 $c175916799 $c276016800 $x175316793 $x275416794 (- $x375516795 $d375816798) $d175616796 $d275716797 $d375816798 $c175916799 $c276016800))))

; if then
(assert
  (forall (($x175316793 Int) ($x375516795 Int) ($d375816798 Int) ($d175616796 Int) ($x275416794 Int) ($c175916799 Int) ($c276016800 Int) ($d275716797 Int))
    (=> (and (not (= $c175916799 0))
             (> $x175316793 0)
             (> $x275416794 0)
             (> $x375516795 0)
             ($main_inv272 $x175316793 $x275416794 $x375516795 $d175616796 $d275716797 $d375816798 $c175916799 $c276016800))
        ($main_if708 $x175316793 $x275416794 $x375516795 $d175616796 $d275716797 $d375816798 $c175916799 $c276016800 (- $x175316793 $d175616796) $x275416794 $x375516795 $d175616796 $d275716797 $d375816798 $c175916799 $c276016800))))

; if else
(assert
  (forall (($x175316793 Int) ($d375816806 Int) ($c276016808 Int) ($x375516795 Int) ($d175616804 Int) ($c175916807 Int) ($d375816798 Int) ($x275416802 Int) ($x375516803 Int) ($x275416794 Int) ($c175916799 Int) ($d275716805 Int) ($d175616796 Int) ($x175316801 Int) ($c276016800 Int) ($d275716797 Int))
    (=> (and ($main_if707 $x175316793 $x275416794 $x375516795 $d175616796 $d275716797 $d375816798 $c175916799 $c276016800 $x175316801 $x275416802 $x375516803 $d175616804 $d275716805 $d375816806 $c175916807 $c276016808))
        ($main_if708 $x175316793 $x275416794 $x375516795 $d175616796 $d275716797 $d375816798 $c175916799 $c276016800 $x175316801 $x275416802 $x375516803 $d175616804 $d275716805 $d375816806 $c175916807 $c276016808))))

; forwards $main_inv272
(assert
  (forall (($x175316793 Int) ($x275416810 Int) ($x375516795 Int) ($c175916815 Int) ($d175616812 Int) ($d175616796 Int) ($d275716813 Int) ($x275416794 Int) ($bool16818 Int) ($x375516811 Int) ($d375816798 Int) ($c276016816 Int) ($bool16817 Int) ($d375816814 Int) ($c175916799 Int) ($x175316809 Int) ($c276016800 Int) ($d275716797 Int))
    (=> (and (or (= $bool16818 0) (= $bool16818 1))
             (or (= $bool16817 0) (= $bool16817 1))
             ($main_if708 $x175316793 $x275416794 $x375516795 $d175616796 $d275716797 $d375816798 $c175916799 $c276016800 $x175316809 $x275416810 $x375516811 $d175616812 $d275716813 $d375816814 $c175916815 $c276016816))
        ($main_inv272 $x175316809 $x275416810 $x375516811 $d175616812 $d275716813 $d375816814 $bool16817 $bool16818))))

; backwards $main_sum272
(assert
  (forall (($x275416810 Int) ($x175316819 Int) ($d275716823 Int) ($d175616812 Int) ($d175616796 Int) ($d275716813 Int) ($d375816824 Int) ($bool16818 Int) ($x375516811 Int) ($x375516821 Int) ($x175316793 Int) ($x375516795 Int) ($c276016826 Int) ($c175916825 Int) ($c175916815 Int) ($d175616822 Int) ($d375816798 Int) ($c276016816 Int) ($bool16817 Int) ($d375816814 Int) ($x275416794 Int) ($x275416820 Int) ($c175916799 Int) ($x175316809 Int) ($c276016800 Int) ($d275716797 Int))
    (=> (and ($main_sum272 $x175316809 $x275416810 $x375516811 $d175616812 $d275716813 $d375816814 $bool16817 $bool16818 $x175316819 $x275416820 $x375516821 $d175616822 $d275716823 $d375816824 $c175916825 $c276016826)
             (or (= $bool16818 0) (= $bool16818 1))
             (or (= $bool16817 0) (= $bool16817 1))
             ($main_if708 $x175316793 $x275416794 $x375516795 $d175616796 $d275716797 $d375816798 $c175916799 $c276016800 $x175316809 $x275416810 $x375516811 $d175616812 $d275716813 $d375816814 $c175916815 $c276016816))
        ($main_sum272 $x175316793 $x275416794 $x375516795 $d175616796 $d275716797 $d375816798 $c175916799 $c276016800 $x175316819 $x275416820 $x375516821 $d175616822 $d275716823 $d375816824 $c175916825 $c276016826))))

; __VERIFIER_assert precondition
(assert
  (forall (($c175916833 Int) ($bool16792 Int) ($c1759 Int) ($d1756 Int) ($uint16788 Int) ($x375516829 Int) ($c2760 Int) ($c276016834 Int) ($uint16790 Int) ($x1753 Int) ($x175316827 Int) ($uint16789 Int) ($x3755 Int) ($d3758 Int) ($d2757 Int) ($x2754 Int) ($d275716831 Int) ($x275416828 Int) ($d175616830 Int) ($bool16791 Int) ($d375816832 Int))
    (=> (and ($main_sum272 $x1753 $x2754 $x3755 $d1756 $d2757 $d3758 $c1759 $c2760 $x175316827 $x275416828 $x375516829 $d175616830 $d275716831 $d375816832 $c175916833 $c276016834)
             (= $c2760 $bool16792)
             (or (= $bool16792 0) (= $bool16792 1))
             (= $c1759 $bool16791)
             (or (= $bool16791 0) (= $bool16791 1))
             (= $d3758 1)
             (= $d2757 1)
             (= $d1756 1)
             (= $x3755 $uint16790)
             (<= 0 $uint16790)
             (<= $uint16790 4294967295)
             (= $x2754 $uint16789)
             (<= 0 $uint16789)
             (<= $uint16789 4294967295)
             (= $x1753 $uint16788)
             (<= 0 $uint16788)
             (<= $uint16788 4294967295))
        ($__VERIFIER_assert_pre (ite (and (and (= $x175316827 0) (= $x275416828 0)) (= $x375516829 0)) 1 0)))))

(check-sat)
