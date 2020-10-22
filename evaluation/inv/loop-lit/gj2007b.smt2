(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_if310 (Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if309 (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $assume_abort_if_not_if308 (Int) Bool)
(declare-fun $main_sum497 (Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_inv497 (Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if308 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond6783 Int))
    (=> (and ($assume_abort_if_not_if308 cond6783))
        (assume_abort_if_not cond6783))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond6784 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond6784))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if309 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6785 Int))
    (=> (and ($__VERIFIER_assert_if309 cond6785))
        (__VERIFIER_assert cond6785))))

; loop entry $main_inv497
(assert
  (forall (($x685 Int) ($m686 Int) ($n687 Int) ($int6786 Int))
    (=> (and (= $n687 $int6786)
             (<= (- 2147483648) $int6786)
             (<= $int6786 2147483647)
             (= $m686 0)
             (= $x685 0))
        ($main_inv497 $x685 $m686 $n687))))

; loop term $main_sum497
(assert
  (forall (($x6856787 Int) ($m6866788 Int) ($n6876789 Int))
    (=> (and (not (< $x6856787 $n6876789))
             ($main_inv497 $x6856787 $m6866788 $n6876789))
        ($main_sum497 $x6856787 $m6866788 $n6876789))))

; if then
(assert
  (forall (($x6856787 Int) ($n6876789 Int) ($int6790 Int) ($m6866788 Int))
    (=> (and (not (= $int6790 0))
             (<= (- 2147483648) $int6790)
             (<= $int6790 2147483647)
             (< $x6856787 $n6876789)
             ($main_inv497 $x6856787 $m6866788 $n6876789))
        ($main_if310 $x6856787 $x6856787 $n6876789))))

; if else
(assert
  (forall (($x6856787 Int) ($m6866788 Int) ($n6876789 Int) ($int6790 Int))
    (=> (and (= $int6790 0)
             (<= (- 2147483648) $int6790)
             (<= $int6790 2147483647)
             (< $x6856787 $n6876789)
             ($main_inv497 $x6856787 $m6866788 $n6876789))
        ($main_if310 $x6856787 $m6866788 $n6876789))))

; forwards $main_inv497
(assert
  (forall (($x6856791 Int) ($m6866792 Int) ($n6876793 Int))
    (=> (and ($main_if310 $x6856791 $m6866792 $n6876793))
        ($main_inv497 (+ $x6856791 1) $m6866792 $n6876793))))

; __VERIFIER_assert precondition
(assert
  (forall (($m6866795 Int) ($n6876796 Int) ($x6856794 Int))
    (=> (and ($main_sum497 $x6856794 $m6866795 $n6876796))
        ($__VERIFIER_assert_pre (ite (or (>= $m6866795 0) (<= $n6876796 0)) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($m6866795 Int) ($n6876796 Int) ($x6856794 Int))
    (=> (and (__VERIFIER_assert (ite (or (>= $m6866795 0) (<= $n6876796 0)) 1 0))
             ($main_sum497 $x6856794 $m6866795 $n6876796))
        ($__VERIFIER_assert_pre (ite (or (< $m6866795 $n6876796) (<= $n6876796 0)) 1 0)))))

(check-sat)
