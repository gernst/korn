(set-logic HORN)

(declare-fun $main_if147 ((Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv419 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum418 ((Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if146 (Int Int) Bool)
(declare-fun $main_inv420 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum420 ((Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_if148 ((Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv418 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum419 ((Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond7786 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond7786))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if146 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond7787 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if146 cond cond7787))
        (__VERIFIER_assert cond7787))))

; loop entry $main_inv418
(assert
  (forall (($a1516 (Array Int Int)) ($a2517 (Array Int Int)) ($x520 Int))
        ($main_inv418 $a1516 $a2517 0 150000 $x520)))

; loop term $main_sum418
(assert
  (forall (($x5207792 Int) ($z5197791 Int) ($a15167788 (Array Int Int)) ($i5187790 Int) ($a25177789 (Array Int Int)))
    (=> (and (not (< $i5187790 200000)))
        ($main_sum418 $a15167788 $a25177789 $i5187790 $z5197791 $x5207792 $a15167788 $a25177789 $i5187790 $z5197791 $x5207792))))

; forwards $main_inv418
(assert
  (forall (($int7793 Int) ($z5197791 Int) ($a15167788 (Array Int Int)) ($int7794 Int) ($x5207792 Int) ($i5187790 Int) ($a25177789 (Array Int Int)))
    (=> (and (<= (- 2147483648) $int7794)
             (<= $int7794 2147483647)
             (<= (- 2147483648) $int7793)
             (<= $int7793 2147483647)
             (< $i5187790 200000)
             ($main_inv418 $a15167788 $a25177789 $i5187790 $z5197791 $x5207792))
        ($main_inv418 (store $a15167788 $i5187790 $int7793) (store $a25177789 $i5187790 $int7794) (+ $i5187790 1) $z5197791 $x5207792))))

; backwards $main_sum418
(assert
  (forall (($z5197798 Int) ($int7793 Int) ($x5207799 Int) ($z5197791 Int) ($a15167795 (Array Int Int)) ($a15167788 (Array Int Int)) ($a25177796 (Array Int Int)) ($i5187797 Int) ($int7794 Int) ($x5207792 Int) ($i5187790 Int) ($a25177789 (Array Int Int)))
    (=> (and ($main_sum418 (store $a15167788 $i5187790 $int7793) (store $a25177789 $i5187790 $int7794) (+ $i5187790 1) $z5197791 $x5207792 $a15167795 $a25177796 $i5187797 $z5197798 $x5207799)
             (<= (- 2147483648) $int7794)
             (<= $int7794 2147483647)
             (<= (- 2147483648) $int7793)
             (<= $int7793 2147483647)
             (< $i5187790 200000))
        ($main_sum418 $a15167788 $a25177789 $i5187790 $z5197791 $x5207792 $a15167795 $a25177796 $i5187797 $z5197798 $x5207799))))

; loop entry $main_inv419
(assert
  (forall (($a1516 (Array Int Int)) ($x520 Int) ($z5197803 Int) ($x5207804 Int) ($a25177801 (Array Int Int)) ($a2517 (Array Int Int)) ($a15167800 (Array Int Int)) ($i5187802 Int))
    (=> (and ($main_sum418 $a1516 $a2517 0 150000 $x520 $a15167800 $a25177801 $i5187802 $z5197803 $x5207804))
        ($main_inv419 $a15167800 $a25177801 0 $z5197803 $x5207804))))

; loop term $main_sum419
(assert
  (forall (($x5207809 Int) ($i5187807 Int) ($z5197808 Int) ($a25177806 (Array Int Int)) ($a15167805 (Array Int Int)))
    (=> (and (not (< $i5187807 200000)))
        ($main_sum419 $a15167805 $a25177806 $i5187807 $z5197808 $x5207809 $a15167805 $a25177806 $i5187807 $z5197808 $x5207809))))

; if then
(assert
  (forall (($x5207809 Int) ($i5187807 Int) ($z5197808 Int) ($a25177806 (Array Int Int)) ($a15167805 (Array Int Int)))
    (=> (and (not (= $i5187807 $z5197808))
             (< $i5187807 200000)
             ($main_inv419 $a15167805 $a25177806 $i5187807 $z5197808 $x5207809))
        ($main_if147 $a15167805 $a25177806 $i5187807 $z5197808 $x5207809 $a15167805 (store $a25177806 $i5187807 (select $a15167805 $i5187807)) $i5187807 $z5197808 $x5207809))))

; if else
(assert
  (forall (($x5207809 Int) ($i5187807 Int) ($z5197808 Int) ($a25177806 (Array Int Int)) ($a15167805 (Array Int Int)))
    (=> (and (= $i5187807 $z5197808)
             (< $i5187807 200000)
             ($main_inv419 $a15167805 $a25177806 $i5187807 $z5197808 $x5207809))
        ($main_if147 $a15167805 $a25177806 $i5187807 $z5197808 $x5207809 $a15167805 $a25177806 $i5187807 $z5197808 $x5207809))))

; forwards $main_inv419
(assert
  (forall (($a15167810 (Array Int Int)) ($x5207809 Int) ($i5187807 Int) ($z5197808 Int) ($i5187812 Int) ($a15167805 (Array Int Int)) ($a25177806 (Array Int Int)) ($a25177811 (Array Int Int)) ($x5207814 Int) ($z5197813 Int))
    (=> (and ($main_if147 $a15167805 $a25177806 $i5187807 $z5197808 $x5207809 $a15167810 $a25177811 $i5187812 $z5197813 $x5207814))
        ($main_inv419 $a15167810 $a25177811 (+ $i5187812 1) $z5197813 $x5207814))))

; backwards $main_sum419
(assert
  (forall (($a15167815 (Array Int Int)) ($a15167810 (Array Int Int)) ($x5207809 Int) ($i5187807 Int) ($z5197808 Int) ($i5187812 Int) ($a15167805 (Array Int Int)) ($z5197818 Int) ($x5207819 Int) ($a25177806 (Array Int Int)) ($a25177811 (Array Int Int)) ($x5207814 Int) ($z5197813 Int) ($a25177816 (Array Int Int)) ($i5187817 Int))
    (=> (and ($main_sum419 $a15167810 $a25177811 (+ $i5187812 1) $z5197813 $x5207814 $a15167815 $a25177816 $i5187817 $z5197818 $x5207819)
             ($main_if147 $a15167805 $a25177806 $i5187807 $z5197808 $x5207809 $a15167810 $a25177811 $i5187812 $z5197813 $x5207814))
        ($main_sum419 $a15167805 $a25177806 $i5187807 $z5197808 $x5207809 $a15167815 $a25177816 $i5187817 $z5197818 $x5207819))))

; loop entry $main_inv420
(assert
  (forall (($i5187822 Int) ($z5197823 Int) ($x5207824 Int) ($a15167820 (Array Int Int)) ($a1516 (Array Int Int)) ($x520 Int) ($z5197803 Int) ($a25177821 (Array Int Int)) ($x5207804 Int) ($a25177801 (Array Int Int)) ($a2517 (Array Int Int)) ($a15167800 (Array Int Int)) ($i5187802 Int))
    (=> (and ($main_sum419 $a15167800 $a25177801 0 $z5197803 $x5207804 $a15167820 $a25177821 $i5187822 $z5197823 $x5207824)
             ($main_sum418 $a1516 $a2517 0 150000 $x520 $a15167800 $a25177801 $i5187802 $z5197803 $x5207804))
        ($main_inv420 $a15167820 $a25177821 $i5187822 $z5197823 0))))

; loop term $main_sum420
(assert
  (forall (($a15167825 (Array Int Int)) ($a25177826 (Array Int Int)) ($i5187827 Int) ($x5207829 Int) ($z5197828 Int))
    (=> (and (not (< $x5207829 200000)))
        ($main_sum420 $a15167825 $a25177826 $i5187827 $z5197828 $x5207829 $a15167825 $a25177826 $i5187827 $z5197828 $x5207829))))

; __VERIFIER_assert precondition
(assert
  (forall (($a15167825 (Array Int Int)) ($a25177826 (Array Int Int)) ($i5187827 Int) ($x5207829 Int) ($z5197828 Int))
    (=> (and (not (= $x5207829 $z5197828))
             (< $x5207829 200000)
             ($main_inv420 $a15167825 $a25177826 $i5187827 $z5197828 $x5207829))
        ($__VERIFIER_assert_pre (ite (= (select $a15167825 $x5207829) (select $a25177826 $x5207829)) 1 0)))))

; if then
(assert
  (forall (($a15167825 (Array Int Int)) ($a25177826 (Array Int Int)) ($i5187827 Int) ($x5207829 Int) ($z5197828 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a15167825 $x5207829) (select $a25177826 $x5207829)) 1 0))
             (not (= $x5207829 $z5197828))
             (< $x5207829 200000)
             ($main_inv420 $a15167825 $a25177826 $i5187827 $z5197828 $x5207829))
        ($main_if148 $a15167825 $a25177826 $i5187827 $z5197828 $x5207829 $a15167825 $a25177826 $i5187827 $z5197828 $x5207829))))

; if else
(assert
  (forall (($a15167825 (Array Int Int)) ($a25177826 (Array Int Int)) ($i5187827 Int) ($x5207829 Int) ($z5197828 Int))
    (=> (and (= $x5207829 $z5197828)
             (< $x5207829 200000)
             ($main_inv420 $a15167825 $a25177826 $i5187827 $z5197828 $x5207829))
        ($main_if148 $a15167825 $a25177826 $i5187827 $z5197828 $x5207829 $a15167825 $a25177826 $i5187827 $z5197828 $x5207829))))

; forwards $main_inv420
(assert
  (forall (($i5187832 Int) ($z5197833 Int) ($a15167825 (Array Int Int)) ($a25177826 (Array Int Int)) ($i5187827 Int) ($x5207834 Int) ($a25177831 (Array Int Int)) ($a15167830 (Array Int Int)) ($x5207829 Int) ($z5197828 Int))
    (=> (and ($main_if148 $a15167825 $a25177826 $i5187827 $z5197828 $x5207829 $a15167830 $a25177831 $i5187832 $z5197833 $x5207834))
        ($main_inv420 $a15167830 $a25177831 $i5187832 $z5197833 (+ $x5207834 1)))))

; backwards $main_sum420
(assert
  (forall (($i5187832 Int) ($z5197833 Int) ($i5187837 Int) ($a25177826 (Array Int Int)) ($i5187827 Int) ($x5207834 Int) ($a15167825 (Array Int Int)) ($z5197838 Int) ($a25177836 (Array Int Int)) ($a15167835 (Array Int Int)) ($a25177831 (Array Int Int)) ($a15167830 (Array Int Int)) ($x5207829 Int) ($z5197828 Int) ($x5207839 Int))
    (=> (and ($main_sum420 $a15167830 $a25177831 $i5187832 $z5197833 (+ $x5207834 1) $a15167835 $a25177836 $i5187837 $z5197838 $x5207839)
             ($main_if148 $a15167825 $a25177826 $i5187827 $z5197828 $x5207829 $a15167830 $a25177831 $i5187832 $z5197833 $x5207834))
        ($main_sum420 $a15167825 $a25177826 $i5187827 $z5197828 $x5207829 $a15167835 $a25177836 $i5187837 $z5197838 $x5207839))))

(check-sat)
