(set-logic HORN)

(declare-fun $main_if572 (Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_if571 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv184 (Int Int Int) Bool)
(declare-fun $main_sum184 (Int Int Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond14753 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond14753))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if571 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14754 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if571 cond cond14754))
        (__VERIFIER_assert cond14754))))

; loop entry $main_inv184
(assert
  (forall (($x541 Int) ($y542 Int) ($z543 Int))
    (=> (and (= $z543 5000000)
             (= $y542 10000000)
             (= $x541 0))
        ($main_inv184 $x541 $y542 $z543))))

; loop term $main_sum184
(assert
  (forall (($x54114755 Int) ($y54214756 Int) ($z54314757 Int))
    (=> (and (not (< $x54114755 $y54214756)))
        ($main_sum184 $x54114755 $y54214756 $z54314757 $x54114755 $y54214756 $z54314757))))

; if then
(assert
  (forall (($x54114755 Int) ($y54214756 Int) ($z54314757 Int))
    (=> (and (>= $x54114755 5000000)
             (< $x54114755 $y54214756)
             ($main_inv184 $x54114755 $y54214756 $z54314757))
        ($main_if572 $x54114755 $y54214756 $z54314757 $x54114755 $y54214756 (+ $z54314757 1)))))

; if else
(assert
  (forall (($x54114755 Int) ($y54214756 Int) ($z54314757 Int))
    (=> (and (not (>= $x54114755 5000000))
             (< $x54114755 $y54214756)
             ($main_inv184 $x54114755 $y54214756 $z54314757))
        ($main_if572 $x54114755 $y54214756 $z54314757 $x54114755 $y54214756 $z54314757))))

; forwards $main_inv184
(assert
  (forall (($z54314760 Int) ($x54114755 Int) ($z54314757 Int) ($x54114758 Int) ($y54214756 Int) ($y54214759 Int))
    (=> (and ($main_if572 $x54114755 $y54214756 $z54314757 $x54114758 $y54214759 $z54314760))
        ($main_inv184 (+ $x54114758 1) $y54214759 $z54314760))))

; backwards $main_sum184
(assert
  (forall (($z54314763 Int) ($z54314760 Int) ($y54214762 Int) ($x54114755 Int) ($z54314757 Int) ($x54114758 Int) ($y54214756 Int) ($y54214759 Int) ($x54114761 Int))
    (=> (and ($main_sum184 (+ $x54114758 1) $y54214759 $z54314760 $x54114761 $y54214762 $z54314763)
             ($main_if572 $x54114755 $y54214756 $z54314757 $x54114758 $y54214759 $z54314760))
        ($main_sum184 $x54114755 $y54214756 $z54314757 $x54114761 $y54214762 $z54314763))))

; __VERIFIER_assert precondition
(assert
  (forall (($z54314766 Int) ($y54214765 Int) ($y542 Int) ($z543 Int) ($x541 Int) ($x54114764 Int))
    (=> (and ($main_sum184 $x541 $y542 $z543 $x54114764 $y54214765 $z54314766)
             (= $z543 5000000)
             (= $y542 10000000)
             (= $x541 0))
        ($__VERIFIER_assert_pre (ite (not (= $z54314766 $x54114764)) 1 0)))))

(check-sat)
