(set-logic HORN)

(declare-fun $main_inv244 ((Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum247 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum249 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv248 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv249 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum244 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum245 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv245 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_if73 (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv247 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum248 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv246 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum246 ((Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond3767 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond3767))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if73 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond3768 Int))
    (=> (and ($__VERIFIER_assert_if73 cond3768))
        (__VERIFIER_assert cond3768))))

; loop entry $main_inv244
(assert
  (forall (($a340 (Array Int Int)) ($i341 Int) ($x342 Int))
    (=> (and (= $i341 0))
        ($main_inv244 $a340 $i341 $x342))))

; loop term $main_sum244
(assert
  (forall (($a3403769 (Array Int Int)) ($i3413770 Int) ($x3423771 Int))
    (=> (and (not (< $i3413770 100000))
             ($main_inv244 $a3403769 $i3413770 $x3423771))
        ($main_sum244 $a3403769 $i3413770 $x3423771))))

; forwards $main_inv244
(assert
  (forall (($a3403769 (Array Int Int)) ($i3413770 Int) ($x3423771 Int))
    (=> (and (< $i3413770 100000)
             ($main_inv244 $a3403769 $i3413770 $x3423771))
        ($main_inv244 (store $a3403769 $i3413770 42) (+ $i3413770 1) $x3423771))))

; loop entry $main_inv245
(assert
  (forall (($a3403772 (Array Int Int)) ($x3423774 Int) ($i3413773 Int))
    (=> (and ($main_sum244 $a3403772 $i3413773 $x3423774))
        ($main_inv245 $a3403772 0 $x3423774))))

; loop term $main_sum245
(assert
  (forall (($a3403775 (Array Int Int)) ($i3413776 Int) ($x3423777 Int))
    (=> (and (not (< $i3413776 100000))
             ($main_inv245 $a3403775 $i3413776 $x3423777))
        ($main_sum245 $a3403775 $i3413776 $x3423777))))

; forwards $main_inv245
(assert
  (forall (($a3403775 (Array Int Int)) ($i3413776 Int) ($x3423777 Int))
    (=> (and (< $i3413776 100000)
             ($main_inv245 $a3403775 $i3413776 $x3423777))
        ($main_inv245 (store $a3403775 $i3413776 43) (+ $i3413776 1) $x3423777))))

; loop entry $main_inv246
(assert
  (forall (($a3403778 (Array Int Int)) ($x3423780 Int) ($i3413779 Int))
    (=> (and ($main_sum245 $a3403778 $i3413779 $x3423780))
        ($main_inv246 $a3403778 0 $x3423780))))

; loop term $main_sum246
(assert
  (forall (($a3403781 (Array Int Int)) ($i3413782 Int) ($x3423783 Int))
    (=> (and (not (< $i3413782 100000))
             ($main_inv246 $a3403781 $i3413782 $x3423783))
        ($main_sum246 $a3403781 $i3413782 $x3423783))))

; forwards $main_inv246
(assert
  (forall (($a3403781 (Array Int Int)) ($i3413782 Int) ($x3423783 Int))
    (=> (and (< $i3413782 100000)
             ($main_inv246 $a3403781 $i3413782 $x3423783))
        ($main_inv246 (store $a3403781 $i3413782 44) (+ $i3413782 1) $x3423783))))

; loop entry $main_inv247
(assert
  (forall (($a3403784 (Array Int Int)) ($x3423786 Int) ($i3413785 Int))
    (=> (and ($main_sum246 $a3403784 $i3413785 $x3423786))
        ($main_inv247 $a3403784 0 $x3423786))))

; loop term $main_sum247
(assert
  (forall (($a3403787 (Array Int Int)) ($i3413788 Int) ($x3423789 Int))
    (=> (and (not (< $i3413788 100000))
             ($main_inv247 $a3403787 $i3413788 $x3423789))
        ($main_sum247 $a3403787 $i3413788 $x3423789))))

; forwards $main_inv247
(assert
  (forall (($a3403787 (Array Int Int)) ($i3413788 Int) ($x3423789 Int))
    (=> (and (< $i3413788 100000)
             ($main_inv247 $a3403787 $i3413788 $x3423789))
        ($main_inv247 (store $a3403787 $i3413788 45) (+ $i3413788 1) $x3423789))))

; loop entry $main_inv248
(assert
  (forall (($a3403790 (Array Int Int)) ($x3423792 Int) ($i3413791 Int))
    (=> (and ($main_sum247 $a3403790 $i3413791 $x3423792))
        ($main_inv248 $a3403790 0 $x3423792))))

; loop term $main_sum248
(assert
  (forall (($a3403793 (Array Int Int)) ($i3413794 Int) ($x3423795 Int))
    (=> (and (not (< $i3413794 100000))
             ($main_inv248 $a3403793 $i3413794 $x3423795))
        ($main_sum248 $a3403793 $i3413794 $x3423795))))

; forwards $main_inv248
(assert
  (forall (($a3403793 (Array Int Int)) ($i3413794 Int) ($x3423795 Int))
    (=> (and (< $i3413794 100000)
             ($main_inv248 $a3403793 $i3413794 $x3423795))
        ($main_inv248 (store $a3403793 $i3413794 46) (+ $i3413794 1) $x3423795))))

; loop entry $main_inv249
(assert
  (forall (($a3403796 (Array Int Int)) ($i3413797 Int) ($x3423798 Int))
    (=> (and ($main_sum248 $a3403796 $i3413797 $x3423798))
        ($main_inv249 $a3403796 $i3413797 0))))

; loop term $main_sum249
(assert
  (forall (($a3403799 (Array Int Int)) ($i3413800 Int) ($x3423801 Int))
    (=> (and (not (< $x3423801 100000))
             ($main_inv249 $a3403799 $i3413800 $x3423801))
        ($main_sum249 $a3403799 $i3413800 $x3423801))))

; __VERIFIER_assert precondition
(assert
  (forall (($a3403799 (Array Int Int)) ($x3423801 Int) ($i3413800 Int))
    (=> (and (< $x3423801 100000)
             ($main_inv249 $a3403799 $i3413800 $x3423801))
        ($__VERIFIER_assert_pre (ite (= (select $a3403799 $x3423801) 46) 1 0)))))

; forwards $main_inv249
(assert
  (forall (($a3403799 (Array Int Int)) ($i3413800 Int) ($x3423801 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a3403799 $x3423801) 46) 1 0))
             (< $x3423801 100000)
             ($main_inv249 $a3403799 $i3413800 $x3423801))
        ($main_inv249 $a3403799 $i3413800 (+ $x3423801 1)))))

(check-sat)
