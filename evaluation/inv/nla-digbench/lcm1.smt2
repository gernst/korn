(set-logic HORN)

(declare-fun $main_sum292 (Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_if761 (Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_nondet_unsigned_int (Int) Bool)
(declare-fun $main_sum290 (Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_inv292 (Int Int Int Int Int Int) Bool)
(declare-fun $main_inv290 (Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if760 (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum291 (Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv291 (Int Int Int Int Int Int) Bool)
(declare-fun $main_if763 (Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_unsigned_int_pre () Bool)
(declare-fun $assume_abort_if_not_if759 (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_if762 (Int Int Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if759 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond15754 Int))
    (=> (and ($assume_abort_if_not_if759 cond15754))
        (assume_abort_if_not cond15754))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond15755 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15755))
        false)))

; if then
(assert
  (forall ((cond15755 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15755))
        ($__VERIFIER_assert_if760 cond15755))))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if760 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond15756 Int))
    (=> (and ($__VERIFIER_assert_if760 cond15756))
        (__VERIFIER_assert cond15756))))

; assume_abort_if_not precondition
(assert
  (forall (($int15757 Int) ($int15758 Int))
    (=> (and (<= 0 $int15758)
             (<= $int15758 4294967295)
             (<= 0 $int15757)
             (<= $int15757 4294967295))
        ($assume_abort_if_not_pre (ite (>= $int15757 1) 1 0)))))

; assume_abort_if_not precondition
(assert
  (forall (($int15758 Int) ($int15757 Int))
    (=> (and (assume_abort_if_not (ite (>= $int15757 1) 1 0))
             (<= 0 $int15758)
             (<= $int15758 4294967295)
             (<= 0 $int15757)
             (<= $int15757 4294967295))
        ($assume_abort_if_not_pre (ite (>= $int15758 1) 1 0)))))

; assume_abort_if_not precondition
(assert
  (forall (($int15757 Int) ($int15758 Int))
    (=> (and (assume_abort_if_not (ite (>= $int15758 1) 1 0))
             (assume_abort_if_not (ite (>= $int15757 1) 1 0))
             (<= 0 $int15758)
             (<= $int15758 4294967295)
             (<= 0 $int15757)
             (<= $int15757 4294967295))
        ($assume_abort_if_not_pre (ite (<= $int15757 65535) 1 0)))))

; assume_abort_if_not precondition
(assert
  (forall (($int15758 Int) ($int15757 Int))
    (=> (and (assume_abort_if_not (ite (<= $int15757 65535) 1 0))
             (assume_abort_if_not (ite (>= $int15758 1) 1 0))
             (assume_abort_if_not (ite (>= $int15757 1) 1 0))
             (<= 0 $int15758)
             (<= $int15758 4294967295)
             (<= 0 $int15757)
             (<= $int15757 4294967295))
        ($assume_abort_if_not_pre (ite (<= $int15758 65535) 1 0)))))

; loop entry $main_inv290
(assert
  (forall (($int15757 Int) ($int15758 Int))
    (=> (and (assume_abort_if_not (ite (<= $int15758 65535) 1 0))
             (assume_abort_if_not (ite (<= $int15757 65535) 1 0))
             (assume_abort_if_not (ite (>= $int15758 1) 1 0))
             (assume_abort_if_not (ite (>= $int15757 1) 1 0))
             (<= 0 $int15758)
             (<= $int15758 4294967295)
             (<= 0 $int15757)
             (<= $int15757 4294967295))
        ($main_inv290 $int15757 $int15758 $int15757 $int15758 $int15758 0))))

; loop term $main_sum290
(assert
  (forall (($v84015764 Int) ($b83615760 Int) ($a83515759 Int) ($y83815762 Int) ($u83915763 Int) ($x83715761 Int))
    (=> (and (= 1 0)
             ($main_inv290 $a83515759 $b83615760 $x83715761 $y83815762 $u83915763 $v84015764))
        ($main_sum290 $a83515759 $b83615760 $x83715761 $y83815762 $u83915763 $v84015764))))

; __VERIFIER_assert precondition
(assert
  (forall (($v84015764 Int) ($b83615760 Int) ($a83515759 Int) ($y83815762 Int) ($u83915763 Int) ($x83715761 Int))
    (=> (and (not (= 1 0))
             ($main_inv290 $a83515759 $b83615760 $x83715761 $y83815762 $u83915763 $v84015764))
        ($__VERIFIER_assert_pre (ite (= (+ (* $x83715761 $u83915763) (* $y83815762 $v84015764)) (* $a83515759 $b83615760)) 1 0)))))

; break $main_sum290
(assert
  (forall (($v84015764 Int) ($b83615760 Int) ($a83515759 Int) ($y83815762 Int) ($u83915763 Int) ($x83715761 Int))
    (=> (and (= $x83715761 $y83815762)
             (__VERIFIER_assert (ite (= (+ (* $x83715761 $u83915763) (* $y83815762 $v84015764)) (* $a83515759 $b83615760)) 1 0))
             (not (= 1 0))
             ($main_inv290 $a83515759 $b83615760 $x83715761 $y83815762 $u83915763 $v84015764))
        ($main_sum290 $a83515759 $b83615760 $x83715761 $y83815762 $u83915763 $v84015764))))

; if else
(assert
  (forall (($v84015764 Int) ($b83615760 Int) ($a83515759 Int) ($y83815762 Int) ($u83915763 Int) ($x83715761 Int))
    (=> (and (not (= $x83715761 $y83815762))
             (__VERIFIER_assert (ite (= (+ (* $x83715761 $u83915763) (* $y83815762 $v84015764)) (* $a83515759 $b83615760)) 1 0))
             (not (= 1 0))
             ($main_inv290 $a83515759 $b83615760 $x83715761 $y83815762 $u83915763 $v84015764))
        ($main_if761 $a83515759 $b83615760 $x83715761 $y83815762 $u83915763 $v84015764))))

; loop entry $main_inv291
(assert
  (forall (($v84015770 Int) ($y83815768 Int) ($x83715767 Int) ($a83515765 Int) ($b83615766 Int) ($u83915769 Int))
    (=> (and ($main_if761 $a83515765 $b83615766 $x83715767 $y83815768 $u83915769 $v84015770))
        ($main_inv291 $a83515765 $b83615766 $x83715767 $y83815768 $u83915769 $v84015770))))

; loop term $main_sum291
(assert
  (forall (($a83515771 Int) ($x83715773 Int) ($v84015776 Int) ($u83915775 Int) ($y83815774 Int) ($b83615772 Int))
    (=> (and (= 1 0)
             ($main_inv291 $a83515771 $b83615772 $x83715773 $y83815774 $u83915775 $v84015776))
        ($main_sum291 $a83515771 $b83615772 $x83715773 $y83815774 $u83915775 $v84015776))))

; __VERIFIER_assert precondition
(assert
  (forall (($a83515771 Int) ($x83715773 Int) ($v84015776 Int) ($u83915775 Int) ($y83815774 Int) ($b83615772 Int))
    (=> (and (not (= 1 0))
             ($main_inv291 $a83515771 $b83615772 $x83715773 $y83815774 $u83915775 $v84015776))
        ($__VERIFIER_assert_pre (ite (= (+ (* $x83715773 $u83915775) (* $y83815774 $v84015776)) (* $a83515771 $b83615772)) 1 0)))))

; break $main_sum291
(assert
  (forall (($a83515771 Int) ($x83715773 Int) ($v84015776 Int) ($u83915775 Int) ($y83815774 Int) ($b83615772 Int))
    (=> (and (not (> $x83715773 $y83815774))
             (__VERIFIER_assert (ite (= (+ (* $x83715773 $u83915775) (* $y83815774 $v84015776)) (* $a83515771 $b83615772)) 1 0))
             (not (= 1 0))
             ($main_inv291 $a83515771 $b83615772 $x83715773 $y83815774 $u83915775 $v84015776))
        ($main_sum291 $a83515771 $b83615772 $x83715773 $y83815774 $u83915775 $v84015776))))

; if else
(assert
  (forall (($a83515771 Int) ($x83715773 Int) ($v84015776 Int) ($u83915775 Int) ($y83815774 Int) ($b83615772 Int))
    (=> (and (> $x83715773 $y83815774)
             (__VERIFIER_assert (ite (= (+ (* $x83715773 $u83915775) (* $y83815774 $v84015776)) (* $a83515771 $b83615772)) 1 0))
             (not (= 1 0))
             ($main_inv291 $a83515771 $b83615772 $x83715773 $y83815774 $u83915775 $v84015776))
        ($main_if762 $a83515771 $b83615772 $x83715773 $y83815774 $u83915775 $v84015776))))

; forwards $main_inv291
(assert
  (forall (($y83815780 Int) ($b83615778 Int) ($a83515777 Int) ($v84015782 Int) ($x83715779 Int) ($u83915781 Int))
    (=> (and ($main_if762 $a83515777 $b83615778 $x83715779 $y83815780 $u83915781 $v84015782))
        ($main_inv291 $a83515777 $b83615778 (- $x83715779 $y83815780) $y83815780 $u83915781 (+ $v84015782 $u83915781)))))

; loop entry $main_inv292
(assert
  (forall (($x83715785 Int) ($y83815786 Int) ($u83915787 Int) ($a83515783 Int) ($v84015788 Int) ($b83615784 Int))
    (=> (and ($main_sum291 $a83515783 $b83615784 $x83715785 $y83815786 $u83915787 $v84015788))
        ($main_inv292 $a83515783 $b83615784 $x83715785 $y83815786 $u83915787 $v84015788))))

; loop term $main_sum292
(assert
  (forall (($y83815792 Int) ($a83515789 Int) ($b83615790 Int) ($x83715791 Int) ($u83915793 Int) ($v84015794 Int))
    (=> (and (= 1 0)
             ($main_inv292 $a83515789 $b83615790 $x83715791 $y83815792 $u83915793 $v84015794))
        ($main_sum292 $a83515789 $b83615790 $x83715791 $y83815792 $u83915793 $v84015794))))

; __VERIFIER_assert precondition
(assert
  (forall (($y83815792 Int) ($a83515789 Int) ($b83615790 Int) ($x83715791 Int) ($u83915793 Int) ($v84015794 Int))
    (=> (and (not (= 1 0))
             ($main_inv292 $a83515789 $b83615790 $x83715791 $y83815792 $u83915793 $v84015794))
        ($__VERIFIER_assert_pre (ite (= (+ (* $x83715791 $u83915793) (* $y83815792 $v84015794)) (* $a83515789 $b83615790)) 1 0)))))

; break $main_sum292
(assert
  (forall (($y83815792 Int) ($a83515789 Int) ($b83615790 Int) ($x83715791 Int) ($u83915793 Int) ($v84015794 Int))
    (=> (and (not (< $x83715791 $y83815792))
             (__VERIFIER_assert (ite (= (+ (* $x83715791 $u83915793) (* $y83815792 $v84015794)) (* $a83515789 $b83615790)) 1 0))
             (not (= 1 0))
             ($main_inv292 $a83515789 $b83615790 $x83715791 $y83815792 $u83915793 $v84015794))
        ($main_sum292 $a83515789 $b83615790 $x83715791 $y83815792 $u83915793 $v84015794))))

; if else
(assert
  (forall (($y83815792 Int) ($a83515789 Int) ($b83615790 Int) ($x83715791 Int) ($u83915793 Int) ($v84015794 Int))
    (=> (and (< $x83715791 $y83815792)
             (__VERIFIER_assert (ite (= (+ (* $x83715791 $u83915793) (* $y83815792 $v84015794)) (* $a83515789 $b83615790)) 1 0))
             (not (= 1 0))
             ($main_inv292 $a83515789 $b83615790 $x83715791 $y83815792 $u83915793 $v84015794))
        ($main_if763 $a83515789 $b83615790 $x83715791 $y83815792 $u83915793 $v84015794))))

; forwards $main_inv292
(assert
  (forall (($u83915799 Int) ($a83515795 Int) ($v84015800 Int) ($y83815798 Int) ($b83615796 Int) ($x83715797 Int))
    (=> (and ($main_if763 $a83515795 $b83615796 $x83715797 $y83815798 $u83915799 $v84015800))
        ($main_inv292 $a83515795 $b83615796 $x83715797 (- $y83815798 $x83715797) (+ $u83915799 $v84015800) $v84015800))))

; forwards $main_inv290
(assert
  (forall (($a83515801 Int) ($b83615802 Int) ($v84015806 Int) ($u83915805 Int) ($x83715803 Int) ($y83815804 Int))
    (=> (and ($main_sum292 $a83515801 $b83615802 $x83715803 $y83815804 $u83915805 $v84015806))
        ($main_inv290 $a83515801 $b83615802 $x83715803 $y83815804 $u83915805 $v84015806))))

; __VERIFIER_assert precondition
(assert
  (forall (($b83615808 Int) ($v84015812 Int) ($y83815810 Int) ($u83915811 Int) ($a83515807 Int) ($x83715809 Int))
    (=> (and ($main_sum290 $a83515807 $b83615808 $x83715809 $y83815810 $u83915811 $v84015812))
        ($__VERIFIER_assert_pre (ite (= (+ (* $u83915811 $y83815810) (* $v84015812 $y83815810)) (* $a83515807 $b83615808)) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($b83615808 Int) ($v84015812 Int) ($y83815810 Int) ($u83915811 Int) ($a83515807 Int) ($x83715809 Int))
    (=> (and (__VERIFIER_assert (ite (= (+ (* $u83915811 $y83815810) (* $v84015812 $y83815810)) (* $a83515807 $b83615808)) 1 0))
             ($main_sum290 $a83515807 $b83615808 $x83715809 $y83815810 $u83915811 $v84015812))
        ($__VERIFIER_assert_pre (ite (= $x83715809 $y83815810) 1 0)))))

(check-sat)
