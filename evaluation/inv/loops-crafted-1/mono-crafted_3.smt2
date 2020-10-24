(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_if585 (Int) Bool)
(declare-fun $main_sum195 (Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv194 (Int Int Int) Bool)
(declare-fun $main_inv195 (Int Int Int) Bool)
(declare-fun $main_sum194 (Int Int Int) Bool)
(declare-fun $main_if586 (Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13799 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13799))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if585 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13800 Int))
    (=> (and ($__VERIFIER_assert_if585 cond13800))
        (__VERIFIER_assert cond13800))))

; loop entry $main_inv194
(assert
  (forall (($y561 Int) ($z562 Int) ($x560 Int))
    (=> (and (= $z562 0)
             (= $y561 500000)
             (= $x560 0))
        ($main_inv194 0 $y561 $z562))))

; loop term $main_sum194
(assert
  (forall (($x56013801 Int) ($y56113802 Int) ($z56213803 Int))
    (=> (and (not (< $x56013801 1000000))
             ($main_inv194 $x56013801 $y56113802 $z56213803))
        ($main_sum194 $x56013801 $y56113802 $z56213803))))

; if then
(assert
  (forall (($x56013801 Int) ($y56113802 Int) ($z56213803 Int))
    (=> (and (< $x56013801 500000)
             (< $x56013801 1000000)
             ($main_inv194 $x56013801 $y56113802 $z56213803))
        ($main_if586 (+ $x56013801 1) $y56113802 $z56213803))))

; if else
(assert
  (forall (($x56013801 Int) ($y56113802 Int) ($z56213803 Int))
    (=> (and (not (< $x56013801 500000))
             (< $x56013801 1000000)
             ($main_inv194 $x56013801 $y56113802 $z56213803))
        ($main_if586 (+ $x56013801 1) (+ $y56113802 1) $z56213803))))

; forwards $main_inv194
(assert
  (forall (($x56013804 Int) ($y56113805 Int) ($z56213806 Int))
    (=> (and ($main_if586 $x56013804 $y56113805 $z56213806))
        ($main_inv194 $x56013804 $y56113805 $z56213806))))

; loop entry $main_inv195
(assert
  (forall (($x56013807 Int) ($y56113808 Int) ($z56213809 Int))
    (=> (and ($main_sum194 $x56013807 $y56113808 $z56213809))
        ($main_inv195 $x56013807 $y56113808 $z56213809))))

; loop term $main_sum195
(assert
  (forall (($x56013810 Int) ($y56113811 Int) ($z56213812 Int))
    (=> (and (not (> $y56113811 0))
             ($main_inv195 $x56013810 $y56113811 $z56213812))
        ($main_sum195 $x56013810 $y56113811 $z56213812))))

; forwards $main_inv195
(assert
  (forall (($x56013810 Int) ($y56113811 Int) ($z56213812 Int))
    (=> (and (> $y56113811 0)
             ($main_inv195 $x56013810 $y56113811 $z56213812))
        ($main_inv195 (- $x56013810 1) (- $y56113811 2) (+ $z56213812 1)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x56013813 Int) ($z56213815 Int) ($y56113814 Int))
    (=> (and ($main_sum195 $x56013813 $y56113814 $z56213815))
        ($__VERIFIER_assert_pre (ite (= $x56013813 $z56213815) 1 0)))))

(check-sat)
