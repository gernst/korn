(set-logic HORN)

(declare-fun $main_sum236 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum238 ((Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum237 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum234 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv236 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum235 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv235 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv238 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv234 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if71 (Int) Bool)
(declare-fun $main_inv237 ((Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond3703 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond3703))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if71 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond3704 Int))
    (=> (and ($__VERIFIER_assert_if71 cond3704))
        (__VERIFIER_assert cond3704))))

; loop entry $main_inv234
(assert
  (forall (($a334 (Array Int Int)) ($i335 Int) ($x336 Int))
    (=> (and (= $i335 0))
        ($main_inv234 $a334 $i335 $x336))))

; loop term $main_sum234
(assert
  (forall (($a3343705 (Array Int Int)) ($i3353706 Int) ($x3363707 Int))
    (=> (and (not (< $i3353706 100000))
             ($main_inv234 $a3343705 $i3353706 $x3363707))
        ($main_sum234 $a3343705 $i3353706 $x3363707))))

; forwards $main_inv234
(assert
  (forall (($a3343705 (Array Int Int)) ($i3353706 Int) ($x3363707 Int))
    (=> (and (< $i3353706 100000)
             ($main_inv234 $a3343705 $i3353706 $x3363707))
        ($main_inv234 (store $a3343705 $i3353706 42) (+ $i3353706 1) $x3363707))))

; loop entry $main_inv235
(assert
  (forall (($a3343708 (Array Int Int)) ($x3363710 Int) ($i3353709 Int))
    (=> (and ($main_sum234 $a3343708 $i3353709 $x3363710))
        ($main_inv235 $a3343708 0 $x3363710))))

; loop term $main_sum235
(assert
  (forall (($a3343711 (Array Int Int)) ($i3353712 Int) ($x3363713 Int))
    (=> (and (not (< $i3353712 100000))
             ($main_inv235 $a3343711 $i3353712 $x3363713))
        ($main_sum235 $a3343711 $i3353712 $x3363713))))

; forwards $main_inv235
(assert
  (forall (($a3343711 (Array Int Int)) ($i3353712 Int) ($x3363713 Int))
    (=> (and (< $i3353712 100000)
             ($main_inv235 $a3343711 $i3353712 $x3363713))
        ($main_inv235 (store $a3343711 $i3353712 43) (+ $i3353712 1) $x3363713))))

; loop entry $main_inv236
(assert
  (forall (($a3343714 (Array Int Int)) ($x3363716 Int) ($i3353715 Int))
    (=> (and ($main_sum235 $a3343714 $i3353715 $x3363716))
        ($main_inv236 $a3343714 0 $x3363716))))

; loop term $main_sum236
(assert
  (forall (($a3343717 (Array Int Int)) ($i3353718 Int) ($x3363719 Int))
    (=> (and (not (< $i3353718 100000))
             ($main_inv236 $a3343717 $i3353718 $x3363719))
        ($main_sum236 $a3343717 $i3353718 $x3363719))))

; forwards $main_inv236
(assert
  (forall (($a3343717 (Array Int Int)) ($i3353718 Int) ($x3363719 Int))
    (=> (and (< $i3353718 100000)
             ($main_inv236 $a3343717 $i3353718 $x3363719))
        ($main_inv236 (store $a3343717 $i3353718 44) (+ $i3353718 1) $x3363719))))

; loop entry $main_inv237
(assert
  (forall (($a3343720 (Array Int Int)) ($x3363722 Int) ($i3353721 Int))
    (=> (and ($main_sum236 $a3343720 $i3353721 $x3363722))
        ($main_inv237 $a3343720 0 $x3363722))))

; loop term $main_sum237
(assert
  (forall (($a3343723 (Array Int Int)) ($i3353724 Int) ($x3363725 Int))
    (=> (and (not (< $i3353724 100000))
             ($main_inv237 $a3343723 $i3353724 $x3363725))
        ($main_sum237 $a3343723 $i3353724 $x3363725))))

; forwards $main_inv237
(assert
  (forall (($a3343723 (Array Int Int)) ($i3353724 Int) ($x3363725 Int))
    (=> (and (< $i3353724 100000)
             ($main_inv237 $a3343723 $i3353724 $x3363725))
        ($main_inv237 (store $a3343723 $i3353724 45) (+ $i3353724 1) $x3363725))))

; loop entry $main_inv238
(assert
  (forall (($a3343726 (Array Int Int)) ($i3353727 Int) ($x3363728 Int))
    (=> (and ($main_sum237 $a3343726 $i3353727 $x3363728))
        ($main_inv238 $a3343726 $i3353727 0))))

; loop term $main_sum238
(assert
  (forall (($a3343729 (Array Int Int)) ($i3353730 Int) ($x3363731 Int))
    (=> (and (not (< $x3363731 100000))
             ($main_inv238 $a3343729 $i3353730 $x3363731))
        ($main_sum238 $a3343729 $i3353730 $x3363731))))

; __VERIFIER_assert precondition
(assert
  (forall (($a3343729 (Array Int Int)) ($x3363731 Int) ($i3353730 Int))
    (=> (and (< $x3363731 100000)
             ($main_inv238 $a3343729 $i3353730 $x3363731))
        ($__VERIFIER_assert_pre (ite (= (select $a3343729 $x3363731) 46) 1 0)))))

; forwards $main_inv238
(assert
  (forall (($a3343729 (Array Int Int)) ($i3353730 Int) ($x3363731 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a3343729 $x3363731) 46) 1 0))
             (< $x3363731 100000)
             ($main_inv238 $a3343729 $i3353730 $x3363731))
        ($main_inv238 $a3343729 $i3353730 (+ $x3363731 1)))))

(check-sat)
