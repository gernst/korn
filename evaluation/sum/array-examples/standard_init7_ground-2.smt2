(set-logic HORN)

(declare-fun $main_sum278 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_inv283 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv279 ((Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum283 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_sum282 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_sum281 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_sum284 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv282 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum280 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_inv281 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum279 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if78 (Int Int) Bool)
(declare-fun $main_inv280 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum285 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_inv284 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv278 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv285 ((Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond5791 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond5791))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if78 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5792 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if78 cond cond5792))
        (__VERIFIER_assert cond5792))))

; loop entry $main_inv278
(assert
  (forall (($a355 (Array Int Int)) ($i356 Int) ($x357 Int))
    (=> (and (= $i356 0))
        ($main_inv278 $a355 $i356 $x357))))

; loop term $main_sum278
(assert
  (forall (($a3555793 (Array Int Int)) ($i3565794 Int) ($x3575795 Int))
    (=> (and (not (< $i3565794 100000)))
        ($main_sum278 $a3555793 $i3565794 $x3575795 $a3555793 $i3565794 $x3575795))))

; forwards $main_inv278
(assert
  (forall (($a3555793 (Array Int Int)) ($i3565794 Int) ($x3575795 Int))
    (=> (and (< $i3565794 100000)
             ($main_inv278 $a3555793 $i3565794 $x3575795))
        ($main_inv278 (store $a3555793 $i3565794 42) (+ $i3565794 1) $x3575795))))

; backwards $main_sum278
(assert
  (forall (($a3555796 (Array Int Int)) ($i3565797 Int) ($x3575795 Int) ($a3555793 (Array Int Int)) ($i3565794 Int) ($x3575798 Int))
    (=> (and ($main_sum278 (store $a3555793 $i3565794 42) (+ $i3565794 1) $x3575795 $a3555796 $i3565797 $x3575798)
             (< $i3565794 100000))
        ($main_sum278 $a3555793 $i3565794 $x3575795 $a3555796 $i3565797 $x3575798))))

; loop entry $main_inv279
(assert
  (forall (($a355 (Array Int Int)) ($a3555799 (Array Int Int)) ($i3565800 Int) ($x357 Int) ($x3575801 Int) ($i356 Int))
    (=> (and ($main_sum278 $a355 $i356 $x357 $a3555799 $i3565800 $x3575801)
             (= $i356 0))
        ($main_inv279 $a3555799 0 $x3575801))))

; loop term $main_sum279
(assert
  (forall (($a3555802 (Array Int Int)) ($i3565803 Int) ($x3575804 Int))
    (=> (and (not (< $i3565803 100000)))
        ($main_sum279 $a3555802 $i3565803 $x3575804 $a3555802 $i3565803 $x3575804))))

; forwards $main_inv279
(assert
  (forall (($a3555802 (Array Int Int)) ($i3565803 Int) ($x3575804 Int))
    (=> (and (< $i3565803 100000)
             ($main_inv279 $a3555802 $i3565803 $x3575804))
        ($main_inv279 (store $a3555802 $i3565803 43) (+ $i3565803 1) $x3575804))))

; backwards $main_sum279
(assert
  (forall (($a3555802 (Array Int Int)) ($x3575807 Int) ($i3565806 Int) ($i3565803 Int) ($x3575804 Int) ($a3555805 (Array Int Int)))
    (=> (and ($main_sum279 (store $a3555802 $i3565803 43) (+ $i3565803 1) $x3575804 $a3555805 $i3565806 $x3575807)
             (< $i3565803 100000))
        ($main_sum279 $a3555802 $i3565803 $x3575804 $a3555805 $i3565806 $x3575807))))

; loop entry $main_inv280
(assert
  (forall (($a355 (Array Int Int)) ($a3555808 (Array Int Int)) ($i3565809 Int) ($a3555799 (Array Int Int)) ($i3565800 Int) ($x357 Int) ($x3575810 Int) ($x3575801 Int) ($i356 Int))
    (=> (and ($main_sum279 $a3555799 0 $x3575801 $a3555808 $i3565809 $x3575810)
             ($main_sum278 $a355 $i356 $x357 $a3555799 $i3565800 $x3575801)
             (= $i356 0))
        ($main_inv280 $a3555808 0 $x3575810))))

; loop term $main_sum280
(assert
  (forall (($a3555811 (Array Int Int)) ($i3565812 Int) ($x3575813 Int))
    (=> (and (not (< $i3565812 100000)))
        ($main_sum280 $a3555811 $i3565812 $x3575813 $a3555811 $i3565812 $x3575813))))

; forwards $main_inv280
(assert
  (forall (($a3555811 (Array Int Int)) ($i3565812 Int) ($x3575813 Int))
    (=> (and (< $i3565812 100000)
             ($main_inv280 $a3555811 $i3565812 $x3575813))
        ($main_inv280 (store $a3555811 $i3565812 44) (+ $i3565812 1) $x3575813))))

; backwards $main_sum280
(assert
  (forall (($a3555811 (Array Int Int)) ($a3555814 (Array Int Int)) ($i3565812 Int) ($x3575816 Int) ($x3575813 Int) ($i3565815 Int))
    (=> (and ($main_sum280 (store $a3555811 $i3565812 44) (+ $i3565812 1) $x3575813 $a3555814 $i3565815 $x3575816)
             (< $i3565812 100000))
        ($main_sum280 $a3555811 $i3565812 $x3575813 $a3555814 $i3565815 $x3575816))))

; loop entry $main_inv281
(assert
  (forall (($a355 (Array Int Int)) ($a3555808 (Array Int Int)) ($i3565809 Int) ($a3555799 (Array Int Int)) ($x3575819 Int) ($i3565800 Int) ($x357 Int) ($x3575810 Int) ($i3565818 Int) ($x3575801 Int) ($i356 Int) ($a3555817 (Array Int Int)))
    (=> (and ($main_sum280 $a3555808 0 $x3575810 $a3555817 $i3565818 $x3575819)
             ($main_sum279 $a3555799 0 $x3575801 $a3555808 $i3565809 $x3575810)
             ($main_sum278 $a355 $i356 $x357 $a3555799 $i3565800 $x3575801)
             (= $i356 0))
        ($main_inv281 $a3555817 0 $x3575819))))

; loop term $main_sum281
(assert
  (forall (($a3555820 (Array Int Int)) ($i3565821 Int) ($x3575822 Int))
    (=> (and (not (< $i3565821 100000)))
        ($main_sum281 $a3555820 $i3565821 $x3575822 $a3555820 $i3565821 $x3575822))))

; forwards $main_inv281
(assert
  (forall (($a3555820 (Array Int Int)) ($i3565821 Int) ($x3575822 Int))
    (=> (and (< $i3565821 100000)
             ($main_inv281 $a3555820 $i3565821 $x3575822))
        ($main_inv281 (store $a3555820 $i3565821 45) (+ $i3565821 1) $x3575822))))

; backwards $main_sum281
(assert
  (forall (($i3565821 Int) ($i3565824 Int) ($x3575825 Int) ($x3575822 Int) ($a3555823 (Array Int Int)) ($a3555820 (Array Int Int)))
    (=> (and ($main_sum281 (store $a3555820 $i3565821 45) (+ $i3565821 1) $x3575822 $a3555823 $i3565824 $x3575825)
             (< $i3565821 100000))
        ($main_sum281 $a3555820 $i3565821 $x3575822 $a3555823 $i3565824 $x3575825))))

; loop entry $main_inv282
(assert
  (forall (($a355 (Array Int Int)) ($a3555808 (Array Int Int)) ($i3565809 Int) ($i3565827 Int) ($a3555799 (Array Int Int)) ($x3575819 Int) ($i3565800 Int) ($x357 Int) ($x3575810 Int) ($i3565818 Int) ($x3575801 Int) ($a3555817 (Array Int Int)) ($a3555826 (Array Int Int)) ($x3575828 Int) ($i356 Int))
    (=> (and ($main_sum281 $a3555817 0 $x3575819 $a3555826 $i3565827 $x3575828)
             ($main_sum280 $a3555808 0 $x3575810 $a3555817 $i3565818 $x3575819)
             ($main_sum279 $a3555799 0 $x3575801 $a3555808 $i3565809 $x3575810)
             ($main_sum278 $a355 $i356 $x357 $a3555799 $i3565800 $x3575801)
             (= $i356 0))
        ($main_inv282 $a3555826 0 $x3575828))))

; loop term $main_sum282
(assert
  (forall (($a3555829 (Array Int Int)) ($i3565830 Int) ($x3575831 Int))
    (=> (and (not (< $i3565830 100000)))
        ($main_sum282 $a3555829 $i3565830 $x3575831 $a3555829 $i3565830 $x3575831))))

; forwards $main_inv282
(assert
  (forall (($a3555829 (Array Int Int)) ($i3565830 Int) ($x3575831 Int))
    (=> (and (< $i3565830 100000)
             ($main_inv282 $a3555829 $i3565830 $x3575831))
        ($main_inv282 (store $a3555829 $i3565830 46) (+ $i3565830 1) $x3575831))))

; backwards $main_sum282
(assert
  (forall (($a3555829 (Array Int Int)) ($i3565833 Int) ($a3555832 (Array Int Int)) ($i3565830 Int) ($x3575834 Int) ($x3575831 Int))
    (=> (and ($main_sum282 (store $a3555829 $i3565830 46) (+ $i3565830 1) $x3575831 $a3555832 $i3565833 $x3575834)
             (< $i3565830 100000))
        ($main_sum282 $a3555829 $i3565830 $x3575831 $a3555832 $i3565833 $x3575834))))

; loop entry $main_inv283
(assert
  (forall (($a355 (Array Int Int)) ($a3555808 (Array Int Int)) ($i3565809 Int) ($i3565827 Int) ($a3555799 (Array Int Int)) ($x3575819 Int) ($i3565800 Int) ($x357 Int) ($x3575810 Int) ($i3565818 Int) ($x3575801 Int) ($i3565836 Int) ($a3555826 (Array Int Int)) ($a3555835 (Array Int Int)) ($x3575828 Int) ($i356 Int) ($a3555817 (Array Int Int)) ($x3575837 Int))
    (=> (and ($main_sum282 $a3555826 0 $x3575828 $a3555835 $i3565836 $x3575837)
             ($main_sum281 $a3555817 0 $x3575819 $a3555826 $i3565827 $x3575828)
             ($main_sum280 $a3555808 0 $x3575810 $a3555817 $i3565818 $x3575819)
             ($main_sum279 $a3555799 0 $x3575801 $a3555808 $i3565809 $x3575810)
             ($main_sum278 $a355 $i356 $x357 $a3555799 $i3565800 $x3575801)
             (= $i356 0))
        ($main_inv283 $a3555835 0 $x3575837))))

; loop term $main_sum283
(assert
  (forall (($a3555838 (Array Int Int)) ($i3565839 Int) ($x3575840 Int))
    (=> (and (not (< $i3565839 100000)))
        ($main_sum283 $a3555838 $i3565839 $x3575840 $a3555838 $i3565839 $x3575840))))

; forwards $main_inv283
(assert
  (forall (($a3555838 (Array Int Int)) ($i3565839 Int) ($x3575840 Int))
    (=> (and (< $i3565839 100000)
             ($main_inv283 $a3555838 $i3565839 $x3575840))
        ($main_inv283 (store $a3555838 $i3565839 47) (+ $i3565839 1) $x3575840))))

; backwards $main_sum283
(assert
  (forall (($i3565839 Int) ($i3565842 Int) ($a3555841 (Array Int Int)) ($x3575840 Int) ($a3555838 (Array Int Int)) ($x3575843 Int))
    (=> (and ($main_sum283 (store $a3555838 $i3565839 47) (+ $i3565839 1) $x3575840 $a3555841 $i3565842 $x3575843)
             (< $i3565839 100000))
        ($main_sum283 $a3555838 $i3565839 $x3575840 $a3555841 $i3565842 $x3575843))))

; loop entry $main_inv284
(assert
  (forall (($a355 (Array Int Int)) ($a3555808 (Array Int Int)) ($i3565809 Int) ($i3565827 Int) ($a3555799 (Array Int Int)) ($x357 Int) ($x3575810 Int) ($i3565818 Int) ($x3575801 Int) ($i3565845 Int) ($i3565836 Int) ($a3555826 (Array Int Int)) ($a3555835 (Array Int Int)) ($a3555844 (Array Int Int)) ($x3575819 Int) ($i3565800 Int) ($x3575846 Int) ($x3575828 Int) ($i356 Int) ($a3555817 (Array Int Int)) ($x3575837 Int))
    (=> (and ($main_sum283 $a3555835 0 $x3575837 $a3555844 $i3565845 $x3575846)
             ($main_sum282 $a3555826 0 $x3575828 $a3555835 $i3565836 $x3575837)
             ($main_sum281 $a3555817 0 $x3575819 $a3555826 $i3565827 $x3575828)
             ($main_sum280 $a3555808 0 $x3575810 $a3555817 $i3565818 $x3575819)
             ($main_sum279 $a3555799 0 $x3575801 $a3555808 $i3565809 $x3575810)
             ($main_sum278 $a355 $i356 $x357 $a3555799 $i3565800 $x3575801)
             (= $i356 0))
        ($main_inv284 $a3555844 0 $x3575846))))

; loop term $main_sum284
(assert
  (forall (($a3555847 (Array Int Int)) ($i3565848 Int) ($x3575849 Int))
    (=> (and (not (< $i3565848 100000)))
        ($main_sum284 $a3555847 $i3565848 $x3575849 $a3555847 $i3565848 $x3575849))))

; forwards $main_inv284
(assert
  (forall (($a3555847 (Array Int Int)) ($i3565848 Int) ($x3575849 Int))
    (=> (and (< $i3565848 100000)
             ($main_inv284 $a3555847 $i3565848 $x3575849))
        ($main_inv284 (store $a3555847 $i3565848 48) (+ $i3565848 1) $x3575849))))

; backwards $main_sum284
(assert
  (forall (($i3565851 Int) ($x3575849 Int) ($x3575852 Int) ($a3555847 (Array Int Int)) ($a3555850 (Array Int Int)) ($i3565848 Int))
    (=> (and ($main_sum284 (store $a3555847 $i3565848 48) (+ $i3565848 1) $x3575849 $a3555850 $i3565851 $x3575852)
             (< $i3565848 100000))
        ($main_sum284 $a3555847 $i3565848 $x3575849 $a3555850 $i3565851 $x3575852))))

; loop entry $main_inv285
(assert
  (forall (($a355 (Array Int Int)) ($a3555808 (Array Int Int)) ($i3565809 Int) ($i3565827 Int) ($a3555799 (Array Int Int)) ($x3575855 Int) ($x357 Int) ($x3575810 Int) ($i3565818 Int) ($x3575801 Int) ($i3565845 Int) ($i3565836 Int) ($a3555826 (Array Int Int)) ($a3555844 (Array Int Int)) ($x3575819 Int) ($i3565800 Int) ($x3575846 Int) ($x3575828 Int) ($i356 Int) ($a3555853 (Array Int Int)) ($a3555817 (Array Int Int)) ($x3575837 Int) ($i3565854 Int) ($a3555835 (Array Int Int)))
    (=> (and ($main_sum284 $a3555844 0 $x3575846 $a3555853 $i3565854 $x3575855)
             ($main_sum283 $a3555835 0 $x3575837 $a3555844 $i3565845 $x3575846)
             ($main_sum282 $a3555826 0 $x3575828 $a3555835 $i3565836 $x3575837)
             ($main_sum281 $a3555817 0 $x3575819 $a3555826 $i3565827 $x3575828)
             ($main_sum280 $a3555808 0 $x3575810 $a3555817 $i3565818 $x3575819)
             ($main_sum279 $a3555799 0 $x3575801 $a3555808 $i3565809 $x3575810)
             ($main_sum278 $a355 $i356 $x357 $a3555799 $i3565800 $x3575801)
             (= $i356 0))
        ($main_inv285 $a3555853 $i3565854 0))))

; loop term $main_sum285
(assert
  (forall (($a3555856 (Array Int Int)) ($i3565857 Int) ($x3575858 Int))
    (=> (and (not (< $x3575858 100000)))
        ($main_sum285 $a3555856 $i3565857 $x3575858 $a3555856 $i3565857 $x3575858))))

; __VERIFIER_assert precondition
(assert
  (forall (($a3555856 (Array Int Int)) ($x3575858 Int) ($i3565857 Int))
    (=> (and (< $x3575858 100000)
             ($main_inv285 $a3555856 $i3565857 $x3575858))
        ($__VERIFIER_assert_pre (ite (= (select $a3555856 $x3575858) 48) 1 0)))))

; forwards $main_inv285
(assert
  (forall (($a3555856 (Array Int Int)) ($i3565857 Int) ($x3575858 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a3555856 $x3575858) 48) 1 0))
             (< $x3575858 100000)
             ($main_inv285 $a3555856 $i3565857 $x3575858))
        ($main_inv285 $a3555856 $i3565857 (+ $x3575858 1)))))

; backwards $main_sum285
(assert
  (forall (($x3575861 Int) ($x3575858 Int) ($a3555859 (Array Int Int)) ($i3565860 Int) ($i3565857 Int) ($a3555856 (Array Int Int)))
    (=> (and ($main_sum285 $a3555856 $i3565857 (+ $x3575858 1) $a3555859 $i3565860 $x3575861)
             (__VERIFIER_assert (ite (= (select $a3555856 $x3575858) 48) 1 0))
             (< $x3575858 100000))
        ($main_sum285 $a3555856 $i3565857 $x3575858 $a3555859 $i3565860 $x3575861))))

(check-sat)
