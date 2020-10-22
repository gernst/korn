(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_if563 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum180 (Int Int) Bool)
(declare-fun $main_if564 (Int Int) Bool)
(declare-fun $main_inv180 (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond14713 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond14713))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if563 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14714 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if563 cond cond14714))
        (__VERIFIER_assert cond14714))))

; loop entry $main_inv180
(assert
  (forall (($x533 Int))
    (=> (and (= $x533 0))
        ($main_inv180 $x533))))

; loop term $main_sum180
(assert
  (forall (($x53314715 Int))
    (=> (and (not (< $x53314715 100000000)))
        ($main_sum180 $x53314715 $x53314715))))

; if then
(assert
  (forall (($x53314715 Int))
    (=> (and (< $x53314715 10000000)
             (< $x53314715 100000000)
             ($main_inv180 $x53314715))
        ($main_if564 $x53314715 (+ $x53314715 1)))))

; if else
(assert
  (forall (($x53314715 Int))
    (=> (and (not (< $x53314715 10000000))
             (< $x53314715 100000000)
             ($main_inv180 $x53314715))
        ($main_if564 $x53314715 (+ $x53314715 2)))))

; forwards $main_inv180
(assert
  (forall (($x53314716 Int) ($x53314715 Int))
    (=> (and ($main_if564 $x53314715 $x53314716))
        ($main_inv180 $x53314716))))

; backwards $main_sum180
(assert
  (forall (($x53314715 Int) ($x53314717 Int) ($x53314716 Int))
    (=> (and ($main_sum180 $x53314716 $x53314717)
             ($main_if564 $x53314715 $x53314716))
        ($main_sum180 $x53314715 $x53314717))))

; __VERIFIER_assert precondition
(assert
  (forall (($x53314718 Int) ($x533 Int))
    (=> (and ($main_sum180 $x533 $x53314718)
             (= $x533 0))
        ($__VERIFIER_assert_pre (ite (= $x53314718 100000000) 1 0)))))

(check-sat)
