(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum199 (Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_if593 (Int Int Int) Bool)
(declare-fun $main_inv199 (Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if592 (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13847 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13847))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if592 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13848 Int))
    (=> (and ($__VERIFIER_assert_if592 cond13848))
        (__VERIFIER_assert cond13848))))

; loop entry $main_inv199
(assert
  (forall (($x569 Int) ($y570 Int) ($z571 Int))
    (=> (and (= $z571 5000000)
             (= $y570 10000000)
             (= $x569 0))
        ($main_inv199 $x569 $y570 $z571))))

; loop term $main_sum199
(assert
  (forall (($x56913849 Int) ($y57013850 Int) ($z57113851 Int))
    (=> (and (not (< $x56913849 $y57013850))
             ($main_inv199 $x56913849 $y57013850 $z57113851))
        ($main_sum199 $x56913849 $y57013850 $z57113851))))

; if then
(assert
  (forall (($x56913849 Int) ($y57013850 Int) ($z57113851 Int))
    (=> (and (>= $x56913849 5000000)
             (< $x56913849 $y57013850)
             ($main_inv199 $x56913849 $y57013850 $z57113851))
        ($main_if593 $x56913849 $y57013850 (- $z57113851 1)))))

; if else
(assert
  (forall (($x56913849 Int) ($y57013850 Int) ($z57113851 Int))
    (=> (and (not (>= $x56913849 5000000))
             (< $x56913849 $y57013850)
             ($main_inv199 $x56913849 $y57013850 $z57113851))
        ($main_if593 $x56913849 $y57013850 $z57113851))))

; forwards $main_inv199
(assert
  (forall (($x56913852 Int) ($y57013853 Int) ($z57113854 Int))
    (=> (and ($main_if593 $x56913852 $y57013853 $z57113854))
        ($main_inv199 (+ $x56913852 1) $y57013853 $z57113854))))

; __VERIFIER_assert precondition
(assert
  (forall (($z57113857 Int) ($x56913855 Int) ($y57013856 Int))
    (=> (and ($main_sum199 $x56913855 $y57013856 $z57113857))
        ($__VERIFIER_assert_pre (ite (= $z57113857 0) 1 0)))))

(check-sat)
