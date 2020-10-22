(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_inv501 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if322 (Int) Bool)
(declare-fun $assume_abort_if_not_if321 (Int) Bool)
(declare-fun $main_if323 (Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_sum501 (Int Int Int Int) Bool)
(declare-fun $main_if324 (Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if321 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond6827 Int))
    (=> (and ($assume_abort_if_not_if321 cond6827))
        (assume_abort_if_not cond6827))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond6828 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond6828))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if322 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6829 Int))
    (=> (and ($__VERIFIER_assert_if322 cond6829))
        (__VERIFIER_assert cond6829))))

; if else
(assert
  (forall (($a694 Int) ($int6831 Int) ($int6830 Int) ($cnt697 Int) ($b695 Int) ($res696 Int))
    (=> (and (<= $a694 1000000)
             (= $b695 $int6831)
             (<= (- 2147483648) $int6831)
             (<= $int6831 2147483647)
             (= $a694 $int6830)
             (<= (- 2147483648) $int6830)
             (<= $int6830 2147483647))
        ($main_if323 $a694 $b695 $res696 $cnt697))))

; if else
(assert
  (forall (($a6946832 Int) ($b6956833 Int) ($res6966834 Int) ($cnt6976835 Int))
    (=> (and (<= 0 $b6956833)
             (<= $b6956833 1000000)
             ($main_if323 $a6946832 $b6956833 $res6966834 $cnt6976835))
        ($main_if324 $a6946832 $b6956833 $res6966834 $cnt6976835))))

; loop entry $main_inv501
(assert
  (forall (($a6946836 Int) ($b6956837 Int) ($res6966838 Int) ($cnt6976839 Int))
    (=> (and ($main_if324 $a6946836 $b6956837 $res6966838 $cnt6976839))
        ($main_inv501 $a6946836 $b6956837 $a6946836 $b6956837))))

; loop term $main_sum501
(assert
  (forall (($a6946840 Int) ($b6956841 Int) ($res6966842 Int) ($cnt6976843 Int))
    (=> (and (not (> $cnt6976843 0))
             ($main_inv501 $a6946840 $b6956841 $res6966842 $cnt6976843))
        ($main_sum501 $a6946840 $b6956841 $res6966842 $cnt6976843))))

; forwards $main_inv501
(assert
  (forall (($a6946840 Int) ($b6956841 Int) ($res6966842 Int) ($cnt6976843 Int))
    (=> (and (> $cnt6976843 0)
             ($main_inv501 $a6946840 $b6956841 $res6966842 $cnt6976843))
        ($main_inv501 $a6946840 $b6956841 (+ $res6966842 1) (- $cnt6976843 1)))))

; __VERIFIER_assert precondition
(assert
  (forall (($res6966846 Int) ($a6946844 Int) ($b6956845 Int) ($cnt6976847 Int))
    (=> (and ($main_sum501 $a6946844 $b6956845 $res6966846 $cnt6976847))
        ($__VERIFIER_assert_pre (ite (= $res6966846 (+ $a6946844 $b6956845)) 1 0)))))

(check-sat)
