(set-logic HORN)

(declare-fun $main_if306 (Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum496 (Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_if302 (Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if303 (Int) Bool)
(declare-fun $main_if305 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv496 (Int Int Int Int) Bool)
(declare-fun $main_if304 (Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_if307 (Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if302 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond6753 Int))
    (=> (and ($assume_abort_if_not_if302 cond6753))
        (assume_abort_if_not cond6753))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond6754 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond6754))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if303 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6755 Int))
    (=> (and ($__VERIFIER_assert_if303 cond6755))
        (__VERIFIER_assert cond6755))))

; loop entry $main_inv496
(assert
        ($main_inv496 0 0 0 0))

; loop term $main_sum496
(assert
  (forall (($x6816756 Int) ($z6836758 Int) ($y6826757 Int) ($w6846759 Int) ($int6760 Int))
    (=> (and (not (and (not (= $int6760 0)) (< $y6826757 10000)))
             (<= (- 2147483648) $int6760)
             (<= $int6760 2147483647)
             ($main_inv496 $x6816756 $y6826757 $z6836758 $w6846759))
        ($main_sum496 $x6816756 $y6826757 $z6836758 $w6846759))))

; if then
(assert
  (forall (($int6761 Int) ($x6816756 Int) ($int6762 Int) ($z6836758 Int) ($y6826757 Int) ($w6846759 Int) ($int6760 Int))
    (=> (and (>= $x6816756 4)
             (not (= $int6762 0))
             (<= (- 2147483648) $int6762)
             (<= $int6762 2147483647)
             (= $int6761 0)
             (<= (- 2147483648) $int6761)
             (<= $int6761 2147483647)
             (not (= $int6760 0))
             (< $y6826757 10000)
             (<= (- 2147483648) $int6760)
             (<= $int6760 2147483647)
             ($main_inv496 $x6816756 $y6826757 $z6836758 $w6846759))
        ($main_if304 (+ $x6816756 1) (+ $y6826757 1) $z6836758 $w6846759))))

; if else
(assert
  (forall (($int6761 Int) ($x6816756 Int) ($int6762 Int) ($z6836758 Int) ($y6826757 Int) ($w6846759 Int) ($int6760 Int))
    (=> (and (not (>= $x6816756 4))
             (not (= $int6762 0))
             (<= (- 2147483648) $int6762)
             (<= $int6762 2147483647)
             (= $int6761 0)
             (<= (- 2147483648) $int6761)
             (<= $int6761 2147483647)
             (not (= $int6760 0))
             (< $y6826757 10000)
             (<= (- 2147483648) $int6760)
             (<= $int6760 2147483647)
             ($main_inv496 $x6816756 $y6826757 $z6836758 $w6846759))
        ($main_if304 $x6816756 $y6826757 $z6836758 $w6846759))))

; if then
(assert
  (forall (($int6761 Int) ($x6816756 Int) ($int6762 Int) ($z6836758 Int) ($y6826757 Int) ($w6846759 Int) ($int6760 Int))
    (=> (and (> $y6826757 (* 10 $w6846759))
             (>= $z6836758 (* 100 $x6816756))
             (= $int6762 0)
             (<= (- 2147483648) $int6762)
             (<= $int6762 2147483647)
             (= $int6761 0)
             (<= (- 2147483648) $int6761)
             (<= $int6761 2147483647)
             (not (= $int6760 0))
             (< $y6826757 10000)
             (<= (- 2147483648) $int6760)
             (<= $int6760 2147483647)
             ($main_inv496 $x6816756 $y6826757 $z6836758 $w6846759))
        ($main_if305 $x6816756 (- $y6826757) $z6836758 $w6846759))))

; if else
(assert
  (forall (($int6761 Int) ($x6816756 Int) ($int6762 Int) ($z6836758 Int) ($y6826757 Int) ($w6846759 Int) ($int6760 Int))
    (=> (and (not (and (> $y6826757 (* 10 $w6846759)) (>= $z6836758 (* 100 $x6816756))))
             (= $int6762 0)
             (<= (- 2147483648) $int6762)
             (<= $int6762 2147483647)
             (= $int6761 0)
             (<= (- 2147483648) $int6761)
             (<= $int6761 2147483647)
             (not (= $int6760 0))
             (< $y6826757 10000)
             (<= (- 2147483648) $int6760)
             (<= $int6760 2147483647)
             ($main_inv496 $x6816756 $y6826757 $z6836758 $w6846759))
        ($main_if305 $x6816756 $y6826757 $z6836758 $w6846759))))

; if then
(assert
  (forall (($x6816763 Int) ($y6826764 Int) ($z6836765 Int) ($w6846766 Int))
    (=> (and ($main_if304 $x6816763 $y6826764 $z6836765 $w6846766))
        ($main_if306 $x6816763 $y6826764 $z6836765 $w6846766))))

; if else
(assert
  (forall (($x6816767 Int) ($y6826768 Int) ($z6836769 Int) ($w6846770 Int))
    (=> (and ($main_if305 $x6816767 $y6826768 $z6836769 $w6846770))
        ($main_if306 $x6816767 $y6826768 $z6836769 $w6846770))))

; if then
(assert
  (forall (($int6761 Int) ($x6816756 Int) ($z6836758 Int) ($y6826757 Int) ($w6846759 Int) ($int6760 Int))
    (=> (and (not (= $int6761 0))
             (<= (- 2147483648) $int6761)
             (<= $int6761 2147483647)
             (not (= $int6760 0))
             (< $y6826757 10000)
             (<= (- 2147483648) $int6760)
             (<= $int6760 2147483647)
             ($main_inv496 $x6816756 $y6826757 $z6836758 $w6846759))
        ($main_if307 (+ $x6816756 1) (+ $y6826757 100) $z6836758 $w6846759))))

; if else
(assert
  (forall (($x6816771 Int) ($y6826772 Int) ($z6836773 Int) ($w6846774 Int))
    (=> (and ($main_if306 $x6816771 $y6826772 $z6836773 $w6846774))
        ($main_if307 $x6816771 $y6826772 $z6836773 $w6846774))))

; forwards $main_inv496
(assert
  (forall (($x6816775 Int) ($y6826776 Int) ($z6836777 Int) ($w6846778 Int))
    (=> (and ($main_if307 $x6816775 $y6826776 $z6836777 $w6846778))
        ($main_inv496 $x6816775 $y6826776 (+ $z6836777 10) (+ $w6846778 1)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x6816779 Int) ($y6826780 Int) ($z6836781 Int) ($w6846782 Int))
    (=> (and ($main_sum496 $x6816779 $y6826780 $z6836781 $w6846782))
        ($__VERIFIER_assert_pre (ite (and (>= $x6816779 4) (<= $y6826780 2)) 1 0)))))

(check-sat)
