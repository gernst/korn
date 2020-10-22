(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv508 (Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum508 (Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_if345 (Int Int Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $assume_abort_if_not_if343 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if344 (Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if343 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond9687 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if343 cond cond9687))
        (assume_abort_if_not cond9687))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond9688 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond9688))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if344 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond9689 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if344 cond cond9689))
        (__VERIFIER_assert cond9689))))

; loop entry $main_inv508
(assert
  (forall (($i712 Int) ($k713 Int) ($j714 Int))
    (=> (and (= $k713 0)
             (= $i712 0))
        ($main_inv508 $i712 $k713 $j714))))

; loop term $main_sum508
(assert
  (forall (($i7129690 Int) ($k7139691 Int) ($j7149692 Int))
    (=> (and (not (< $i7129690 1000000)))
        ($main_sum508 $i7129690 $k7139691 $j7149692 $i7129690 $k7139691 $j7149692))))

; if else
(assert
  (forall (($i7129690 Int) ($k7139691 Int) ($j7149692 Int) ($int9693 Int))
    (=> (and (<= 1 $j7149692)
             (< $j7149692 1000000)
             (= $j7149692 $int9693)
             (<= (- 2147483648) $int9693)
             (<= $int9693 2147483647)
             (< $i7129690 1000000)
             ($main_inv508 $i7129690 $k7139691 $j7149692))
        ($main_if345 $i7129690 $k7139691 $j7149692 $i7129690 $k7139691 $j7149692))))

; forwards $main_inv508
(assert
  (forall (($i7129694 Int) ($j7149692 Int) ($j7149696 Int) ($i7129690 Int) ($k7139691 Int) ($k7139695 Int))
    (=> (and ($main_if345 $i7129690 $k7139691 $j7149692 $i7129694 $k7139695 $j7149696))
        ($main_inv508 (+ $i7129694 $j7149696) (+ $k7139695 1) $j7149696))))

; backwards $main_sum508
(assert
  (forall (($i7129697 Int) ($j7149692 Int) ($j7149696 Int) ($i7129690 Int) ($k7139691 Int) ($k7139698 Int) ($k7139695 Int) ($i7129694 Int) ($j7149699 Int))
    (=> (and ($main_sum508 (+ $i7129694 $j7149696) (+ $k7139695 1) $j7149696 $i7129697 $k7139698 $j7149699)
             ($main_if345 $i7129690 $k7139691 $j7149692 $i7129694 $k7139695 $j7149696))
        ($main_sum508 $i7129690 $k7139691 $j7149692 $i7129697 $k7139698 $j7149699))))

; __VERIFIER_assert precondition
(assert
  (forall (($j7149702 Int) ($i712 Int) ($j714 Int) ($k713 Int) ($i7129700 Int) ($k7139701 Int))
    (=> (and ($main_sum508 $i712 $k713 $j714 $i7129700 $k7139701 $j7149702)
             (= $k713 0)
             (= $i712 0))
        ($__VERIFIER_assert_pre (ite (<= $k7139701 1000000) 1 0)))))

(check-sat)
