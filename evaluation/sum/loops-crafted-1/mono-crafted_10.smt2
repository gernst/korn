(set-logic HORN)

(declare-fun $main_sum185 (Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_if574 (Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if573 (Int Int) Bool)
(declare-fun $main_inv185 (Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond14767 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond14767))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if573 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14768 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if573 cond cond14768))
        (__VERIFIER_assert cond14768))))

; loop entry $main_inv185
(assert
  (forall (($x544 Int) ($y545 Int) ($z546 Int))
    (=> (and (= $z546 5000000)
             (= $y545 10000000)
             (= $x544 0))
        ($main_inv185 $x544 $y545 $z546))))

; loop term $main_sum185
(assert
  (forall (($x54414769 Int) ($y54514770 Int) ($z54614771 Int))
    (=> (and (not (< $x54414769 $y54514770)))
        ($main_sum185 $x54414769 $y54514770 $z54614771 $x54414769 $y54514770 $z54614771))))

; if then
(assert
  (forall (($x54414769 Int) ($y54514770 Int) ($z54614771 Int))
    (=> (and (>= $x54414769 5000000)
             (< $x54414769 $y54514770)
             ($main_inv185 $x54414769 $y54514770 $z54614771))
        ($main_if574 $x54414769 $y54514770 $z54614771 $x54414769 $y54514770 (+ $z54614771 1)))))

; if else
(assert
  (forall (($x54414769 Int) ($y54514770 Int) ($z54614771 Int))
    (=> (and (not (>= $x54414769 5000000))
             (< $x54414769 $y54514770)
             ($main_inv185 $x54414769 $y54514770 $z54614771))
        ($main_if574 $x54414769 $y54514770 $z54614771 $x54414769 $y54514770 $z54614771))))

; forwards $main_inv185
(assert
  (forall (($x54414769 Int) ($y54514773 Int) ($x54414772 Int) ($z54614774 Int) ($y54514770 Int) ($z54614771 Int))
    (=> (and ($main_if574 $x54414769 $y54514770 $z54614771 $x54414772 $y54514773 $z54614774))
        ($main_inv185 (+ $x54414772 1) $y54514773 $z54614774))))

; backwards $main_sum185
(assert
  (forall (($y54514773 Int) ($x54414772 Int) ($z54614774 Int) ($z54614777 Int) ($x54414775 Int) ($y54514770 Int) ($z54614771 Int) ($y54514776 Int) ($x54414769 Int))
    (=> (and ($main_sum185 (+ $x54414772 1) $y54514773 $z54614774 $x54414775 $y54514776 $z54614777)
             ($main_if574 $x54414769 $y54514770 $z54614771 $x54414772 $y54514773 $z54614774))
        ($main_sum185 $x54414769 $y54514770 $z54614771 $x54414775 $y54514776 $z54614777))))

; __VERIFIER_assert precondition
(assert
  (forall (($z54614780 Int) ($x54414778 Int) ($y545 Int) ($x544 Int) ($z546 Int) ($y54514779 Int))
    (=> (and ($main_sum185 $x544 $y545 $z546 $x54414778 $y54514779 $z54614780)
             (= $z546 5000000)
             (= $y545 10000000)
             (= $x544 0))
        ($__VERIFIER_assert_pre (ite (= $z54614780 $x54414778) 1 0)))))

(check-sat)
