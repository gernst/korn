(set-logic HORN)

(declare-fun $__VERIFIER_assert_if571 (Int) Bool)
(declare-fun $main_if572 (Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv184 (Int Int Int) Bool)
(declare-fun $main_sum184 (Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13710 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13710))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if571 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13711 Int))
    (=> (and ($__VERIFIER_assert_if571 cond13711))
        (__VERIFIER_assert cond13711))))

; loop entry $main_inv184
(assert
  (forall (($x541 Int) ($y542 Int) ($z543 Int))
    (=> (and (= $z543 5000000)
             (= $y542 10000000)
             (= $x541 0))
        ($main_inv184 $x541 $y542 $z543))))

; loop term $main_sum184
(assert
  (forall (($x54113712 Int) ($y54213713 Int) ($z54313714 Int))
    (=> (and (not (< $x54113712 $y54213713))
             ($main_inv184 $x54113712 $y54213713 $z54313714))
        ($main_sum184 $x54113712 $y54213713 $z54313714))))

; if then
(assert
  (forall (($x54113712 Int) ($y54213713 Int) ($z54313714 Int))
    (=> (and (>= $x54113712 5000000)
             (< $x54113712 $y54213713)
             ($main_inv184 $x54113712 $y54213713 $z54313714))
        ($main_if572 $x54113712 $y54213713 (+ $z54313714 1)))))

; if else
(assert
  (forall (($x54113712 Int) ($y54213713 Int) ($z54313714 Int))
    (=> (and (not (>= $x54113712 5000000))
             (< $x54113712 $y54213713)
             ($main_inv184 $x54113712 $y54213713 $z54313714))
        ($main_if572 $x54113712 $y54213713 $z54313714))))

; forwards $main_inv184
(assert
  (forall (($x54113715 Int) ($y54213716 Int) ($z54313717 Int))
    (=> (and ($main_if572 $x54113715 $y54213716 $z54313717))
        ($main_inv184 (+ $x54113715 1) $y54213716 $z54313717))))

; __VERIFIER_assert precondition
(assert
  (forall (($z54313720 Int) ($x54113718 Int) ($y54213719 Int))
    (=> (and ($main_sum184 $x54113718 $y54213719 $z54313720))
        ($__VERIFIER_assert_pre (ite (not (= $z54313720 $x54113718)) 1 0)))))

(check-sat)
