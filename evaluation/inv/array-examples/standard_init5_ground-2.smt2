(set-logic HORN)

(declare-fun $main_inv254 ((Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv252 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv255 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum250 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum252 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if74 (Int) Bool)
(declare-fun $main_inv250 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum254 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum253 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum255 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_inv253 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum251 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv251 ((Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond3805 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond3805))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if74 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond3806 Int))
    (=> (and ($__VERIFIER_assert_if74 cond3806))
        (__VERIFIER_assert cond3806))))

; loop entry $main_inv250
(assert
  (forall (($a343 (Array Int Int)) ($i344 Int) ($x345 Int))
    (=> (and (= $i344 0))
        ($main_inv250 $a343 $i344 $x345))))

; loop term $main_sum250
(assert
  (forall (($a3433807 (Array Int Int)) ($i3443808 Int) ($x3453809 Int))
    (=> (and (not (< $i3443808 100000))
             ($main_inv250 $a3433807 $i3443808 $x3453809))
        ($main_sum250 $a3433807 $i3443808 $x3453809))))

; forwards $main_inv250
(assert
  (forall (($a3433807 (Array Int Int)) ($i3443808 Int) ($x3453809 Int))
    (=> (and (< $i3443808 100000)
             ($main_inv250 $a3433807 $i3443808 $x3453809))
        ($main_inv250 (store $a3433807 $i3443808 42) (+ $i3443808 1) $x3453809))))

; loop entry $main_inv251
(assert
  (forall (($a3433810 (Array Int Int)) ($x3453812 Int) ($i3443811 Int))
    (=> (and ($main_sum250 $a3433810 $i3443811 $x3453812))
        ($main_inv251 $a3433810 0 $x3453812))))

; loop term $main_sum251
(assert
  (forall (($a3433813 (Array Int Int)) ($i3443814 Int) ($x3453815 Int))
    (=> (and (not (< $i3443814 100000))
             ($main_inv251 $a3433813 $i3443814 $x3453815))
        ($main_sum251 $a3433813 $i3443814 $x3453815))))

; forwards $main_inv251
(assert
  (forall (($a3433813 (Array Int Int)) ($i3443814 Int) ($x3453815 Int))
    (=> (and (< $i3443814 100000)
             ($main_inv251 $a3433813 $i3443814 $x3453815))
        ($main_inv251 (store $a3433813 $i3443814 43) (+ $i3443814 1) $x3453815))))

; loop entry $main_inv252
(assert
  (forall (($a3433816 (Array Int Int)) ($x3453818 Int) ($i3443817 Int))
    (=> (and ($main_sum251 $a3433816 $i3443817 $x3453818))
        ($main_inv252 $a3433816 0 $x3453818))))

; loop term $main_sum252
(assert
  (forall (($a3433819 (Array Int Int)) ($i3443820 Int) ($x3453821 Int))
    (=> (and (not (< $i3443820 100000))
             ($main_inv252 $a3433819 $i3443820 $x3453821))
        ($main_sum252 $a3433819 $i3443820 $x3453821))))

; forwards $main_inv252
(assert
  (forall (($a3433819 (Array Int Int)) ($i3443820 Int) ($x3453821 Int))
    (=> (and (< $i3443820 100000)
             ($main_inv252 $a3433819 $i3443820 $x3453821))
        ($main_inv252 (store $a3433819 $i3443820 44) (+ $i3443820 1) $x3453821))))

; loop entry $main_inv253
(assert
  (forall (($a3433822 (Array Int Int)) ($x3453824 Int) ($i3443823 Int))
    (=> (and ($main_sum252 $a3433822 $i3443823 $x3453824))
        ($main_inv253 $a3433822 0 $x3453824))))

; loop term $main_sum253
(assert
  (forall (($a3433825 (Array Int Int)) ($i3443826 Int) ($x3453827 Int))
    (=> (and (not (< $i3443826 100000))
             ($main_inv253 $a3433825 $i3443826 $x3453827))
        ($main_sum253 $a3433825 $i3443826 $x3453827))))

; forwards $main_inv253
(assert
  (forall (($a3433825 (Array Int Int)) ($i3443826 Int) ($x3453827 Int))
    (=> (and (< $i3443826 100000)
             ($main_inv253 $a3433825 $i3443826 $x3453827))
        ($main_inv253 (store $a3433825 $i3443826 45) (+ $i3443826 1) $x3453827))))

; loop entry $main_inv254
(assert
  (forall (($a3433828 (Array Int Int)) ($x3453830 Int) ($i3443829 Int))
    (=> (and ($main_sum253 $a3433828 $i3443829 $x3453830))
        ($main_inv254 $a3433828 0 $x3453830))))

; loop term $main_sum254
(assert
  (forall (($a3433831 (Array Int Int)) ($i3443832 Int) ($x3453833 Int))
    (=> (and (not (< $i3443832 100000))
             ($main_inv254 $a3433831 $i3443832 $x3453833))
        ($main_sum254 $a3433831 $i3443832 $x3453833))))

; forwards $main_inv254
(assert
  (forall (($a3433831 (Array Int Int)) ($i3443832 Int) ($x3453833 Int))
    (=> (and (< $i3443832 100000)
             ($main_inv254 $a3433831 $i3443832 $x3453833))
        ($main_inv254 (store $a3433831 $i3443832 46) (+ $i3443832 1) $x3453833))))

; loop entry $main_inv255
(assert
  (forall (($a3433834 (Array Int Int)) ($i3443835 Int) ($x3453836 Int))
    (=> (and ($main_sum254 $a3433834 $i3443835 $x3453836))
        ($main_inv255 $a3433834 $i3443835 0))))

; loop term $main_sum255
(assert
  (forall (($a3433837 (Array Int Int)) ($i3443838 Int) ($x3453839 Int))
    (=> (and (not (< $x3453839 100000))
             ($main_inv255 $a3433837 $i3443838 $x3453839))
        ($main_sum255 $a3433837 $i3443838 $x3453839))))

; __VERIFIER_assert precondition
(assert
  (forall (($a3433837 (Array Int Int)) ($x3453839 Int) ($i3443838 Int))
    (=> (and (< $x3453839 100000)
             ($main_inv255 $a3433837 $i3443838 $x3453839))
        ($__VERIFIER_assert_pre (ite (= (select $a3433837 $x3453839) 45) 1 0)))))

; forwards $main_inv255
(assert
  (forall (($a3433837 (Array Int Int)) ($i3443838 Int) ($x3453839 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a3433837 $x3453839) 45) 1 0))
             (< $x3453839 100000)
             ($main_inv255 $a3433837 $i3443838 $x3453839))
        ($main_inv255 $a3433837 $i3443838 (+ $x3453839 1)))))

(check-sat)
