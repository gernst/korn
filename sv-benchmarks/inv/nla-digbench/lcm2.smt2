(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv293 (Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_nondet_unsigned_int (Int) Bool)
(declare-fun $__VERIFIER_assert_if765 (Int) Bool)
(declare-fun $assume_abort_if_not_if764 (Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_if767 (Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_if766 (Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_unsigned_int_pre () Bool)
(declare-fun $main_sum293 (Int Int Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if764 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond15813 Int))
    (=> (and ($assume_abort_if_not_if764 cond15813))
        (assume_abort_if_not cond15813))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond15814 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15814))
        false)))

; if then
(assert
  (forall ((cond15814 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15814))
        ($__VERIFIER_assert_if765 cond15814))))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if765 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond15815 Int))
    (=> (and ($__VERIFIER_assert_if765 cond15815))
        (__VERIFIER_assert cond15815))))

; assume_abort_if_not precondition
(assert
  (forall (($int15816 Int) ($int15817 Int))
    (=> (and (<= 0 $int15817)
             (<= $int15817 4294967295)
             (<= 0 $int15816)
             (<= $int15816 4294967295))
        ($assume_abort_if_not_pre (ite (>= $int15816 1) 1 0)))))

; assume_abort_if_not precondition
(assert
  (forall (($int15817 Int) ($int15816 Int))
    (=> (and (assume_abort_if_not (ite (>= $int15816 1) 1 0))
             (<= 0 $int15817)
             (<= $int15817 4294967295)
             (<= 0 $int15816)
             (<= $int15816 4294967295))
        ($assume_abort_if_not_pre (ite (>= $int15817 1) 1 0)))))

; assume_abort_if_not precondition
(assert
  (forall (($int15816 Int) ($int15817 Int))
    (=> (and (assume_abort_if_not (ite (>= $int15817 1) 1 0))
             (assume_abort_if_not (ite (>= $int15816 1) 1 0))
             (<= 0 $int15817)
             (<= $int15817 4294967295)
             (<= 0 $int15816)
             (<= $int15816 4294967295))
        ($assume_abort_if_not_pre (ite (<= $int15816 65535) 1 0)))))

; assume_abort_if_not precondition
(assert
  (forall (($int15817 Int) ($int15816 Int))
    (=> (and (assume_abort_if_not (ite (<= $int15816 65535) 1 0))
             (assume_abort_if_not (ite (>= $int15817 1) 1 0))
             (assume_abort_if_not (ite (>= $int15816 1) 1 0))
             (<= 0 $int15817)
             (<= $int15817 4294967295)
             (<= 0 $int15816)
             (<= $int15816 4294967295))
        ($assume_abort_if_not_pre (ite (<= $int15817 65535) 1 0)))))

; loop entry $main_inv293
(assert
  (forall (($int15816 Int) ($int15817 Int))
    (=> (and (assume_abort_if_not (ite (<= $int15817 65535) 1 0))
             (assume_abort_if_not (ite (<= $int15816 65535) 1 0))
             (assume_abort_if_not (ite (>= $int15817 1) 1 0))
             (assume_abort_if_not (ite (>= $int15816 1) 1 0))
             (<= 0 $int15817)
             (<= $int15817 4294967295)
             (<= 0 $int15816)
             (<= $int15816 4294967295))
        ($main_inv293 $int15816 $int15817 $int15816 $int15817 $int15817 $int15816))))

; loop term $main_sum293
(assert
  (forall (($u84515822 Int) ($a84115818 Int) ($b84215819 Int) ($v84615823 Int) ($x84315820 Int) ($y84415821 Int))
    (=> (and (= 1 0)
             ($main_inv293 $a84115818 $b84215819 $x84315820 $y84415821 $u84515822 $v84615823))
        ($main_sum293 $a84115818 $b84215819 $x84315820 $y84415821 $u84515822 $v84615823))))

; __VERIFIER_assert precondition
(assert
  (forall (($u84515822 Int) ($a84115818 Int) ($b84215819 Int) ($v84615823 Int) ($x84315820 Int) ($y84415821 Int))
    (=> (and (not (= 1 0))
             ($main_inv293 $a84115818 $b84215819 $x84315820 $y84415821 $u84515822 $v84615823))
        ($__VERIFIER_assert_pre (ite (= (+ (* $x84315820 $u84515822) (* $y84415821 $v84615823)) (* (* 2 $a84115818) $b84215819)) 1 0)))))

; break $main_sum293
(assert
  (forall (($u84515822 Int) ($a84115818 Int) ($b84215819 Int) ($v84615823 Int) ($x84315820 Int) ($y84415821 Int))
    (=> (and (= $x84315820 $y84415821)
             (__VERIFIER_assert (ite (= (+ (* $x84315820 $u84515822) (* $y84415821 $v84615823)) (* (* 2 $a84115818) $b84215819)) 1 0))
             (not (= 1 0))
             ($main_inv293 $a84115818 $b84215819 $x84315820 $y84415821 $u84515822 $v84615823))
        ($main_sum293 $a84115818 $b84215819 $x84315820 $y84415821 $u84515822 $v84615823))))

; if else
(assert
  (forall (($u84515822 Int) ($a84115818 Int) ($b84215819 Int) ($v84615823 Int) ($x84315820 Int) ($y84415821 Int))
    (=> (and (not (= $x84315820 $y84415821))
             (__VERIFIER_assert (ite (= (+ (* $x84315820 $u84515822) (* $y84415821 $v84615823)) (* (* 2 $a84115818) $b84215819)) 1 0))
             (not (= 1 0))
             ($main_inv293 $a84115818 $b84215819 $x84315820 $y84415821 $u84515822 $v84615823))
        ($main_if766 $a84115818 $b84215819 $x84315820 $y84415821 $u84515822 $v84615823))))

; if then
(assert
  (forall (($y84415827 Int) ($b84215825 Int) ($v84615829 Int) ($u84515828 Int) ($a84115824 Int) ($x84315826 Int))
    (=> (and (> $x84315826 $y84415827)
             ($main_if766 $a84115824 $b84215825 $x84315826 $y84415827 $u84515828 $v84615829))
        ($main_if767 $a84115824 $b84215825 (- $x84315826 $y84415827) $y84415827 $u84515828 (+ $v84615829 $u84515828)))))

; if else
(assert
  (forall (($y84415827 Int) ($b84215825 Int) ($v84615829 Int) ($u84515828 Int) ($a84115824 Int) ($x84315826 Int))
    (=> (and (not (> $x84315826 $y84415827))
             ($main_if766 $a84115824 $b84215825 $x84315826 $y84415827 $u84515828 $v84615829))
        ($main_if767 $a84115824 $b84215825 $x84315826 (- $y84415827 $x84315826) (+ $u84515828 $v84615829) $v84615829))))

; forwards $main_inv293
(assert
  (forall (($x84315832 Int) ($b84215831 Int) ($y84415833 Int) ($u84515834 Int) ($v84615835 Int) ($a84115830 Int))
    (=> (and ($main_if767 $a84115830 $b84215831 $x84315832 $y84415833 $u84515834 $v84615835))
        ($main_inv293 $a84115830 $b84215831 $x84315832 $y84415833 $u84515834 $v84615835))))

; __VERIFIER_assert precondition
(assert
  (forall (($y84415839 Int) ($a84115836 Int) ($v84615841 Int) ($x84315838 Int) ($u84515840 Int) ($b84215837 Int))
    (=> (and ($main_sum293 $a84115836 $b84215837 $x84315838 $y84415839 $u84515840 $v84615841))
        ($__VERIFIER_assert_pre (ite (= (+ (* $x84315838 $u84515840) (* $y84415839 $v84615841)) (* (* 2 $a84115836) $b84215837)) 1 0)))))

(check-sat)
