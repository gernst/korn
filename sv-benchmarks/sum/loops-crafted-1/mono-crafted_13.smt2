(set-logic HORN)

(declare-fun $main_inv188 (Int Int Int) Bool)
(declare-fun $main_sum189 (Int Int Int Int Int Int) Bool)
(declare-fun $main_sum188 (Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_if579 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv189 (Int Int Int) Bool)
(declare-fun $main_if580 (Int Int Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond14801 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond14801))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if579 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14802 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if579 cond cond14802))
        (__VERIFIER_assert cond14802))))

; loop entry $main_inv188
(assert
  (forall (($y552 Int) ($z553 Int) ($x551 Int))
    (=> (and (= $z553 0)
             (= $y552 50000)
             (= $x551 0))
        ($main_inv188 0 $y552 $z553))))

; loop term $main_sum188
(assert
  (forall (($x55114803 Int) ($y55214804 Int) ($z55314805 Int))
    (=> (and (not (< $x55114803 1000000)))
        ($main_sum188 $x55114803 $y55214804 $z55314805 $x55114803 $y55214804 $z55314805))))

; if then
(assert
  (forall (($x55114803 Int) ($y55214804 Int) ($z55314805 Int))
    (=> (and (< $x55114803 50000)
             (< $x55114803 1000000)
             ($main_inv188 $x55114803 $y55214804 $z55314805))
        ($main_if580 $x55114803 $y55214804 $z55314805 (+ $x55114803 1) $y55214804 $z55314805))))

; if else
(assert
  (forall (($x55114803 Int) ($y55214804 Int) ($z55314805 Int))
    (=> (and (not (< $x55114803 50000))
             (< $x55114803 1000000)
             ($main_inv188 $x55114803 $y55214804 $z55314805))
        ($main_if580 $x55114803 $y55214804 $z55314805 (+ $x55114803 2) (+ $y55214804 2) $z55314805))))

; forwards $main_inv188
(assert
  (forall (($x55114803 Int) ($z55314805 Int) ($x55114806 Int) ($y55214804 Int) ($y55214807 Int) ($z55314808 Int))
    (=> (and ($main_if580 $x55114803 $y55214804 $z55314805 $x55114806 $y55214807 $z55314808))
        ($main_inv188 $x55114806 $y55214807 $z55314808))))

; backwards $main_sum188
(assert
  (forall (($x55114803 Int) ($z55314805 Int) ($y55214810 Int) ($x55114806 Int) ($y55214804 Int) ($y55214807 Int) ($z55314808 Int) ($x55114809 Int) ($z55314811 Int))
    (=> (and ($main_sum188 $x55114806 $y55214807 $z55314808 $x55114809 $y55214810 $z55314811)
             ($main_if580 $x55114803 $y55214804 $z55314805 $x55114806 $y55214807 $z55314808))
        ($main_sum188 $x55114803 $y55214804 $z55314805 $x55114809 $y55214810 $z55314811))))

; loop entry $main_inv189
(assert
  (forall (($x55114812 Int) ($z55314814 Int) ($x551 Int) ($y55214813 Int) ($y552 Int) ($z553 Int))
    (=> (and ($main_sum188 0 $y552 $z553 $x55114812 $y55214813 $z55314814)
             (= $z553 0)
             (= $y552 50000)
             (= $x551 0))
        ($main_inv189 $x55114812 $y55214813 $z55314814))))

; loop term $main_sum189
(assert
  (forall (($x55114815 Int) ($y55214816 Int) ($z55314817 Int))
    (=> (and (not (> $y55214816 $z55314817)))
        ($main_sum189 $x55114815 $y55214816 $z55314817 $x55114815 $y55214816 $z55314817))))

; forwards $main_inv189
(assert
  (forall (($x55114815 Int) ($y55214816 Int) ($z55314817 Int))
    (=> (and (> $y55214816 $z55314817)
             ($main_inv189 $x55114815 $y55214816 $z55314817))
        ($main_inv189 (- $x55114815 1) (- $y55214816 1) $z55314817))))

; backwards $main_sum189
(assert
  (forall (($y55214816 Int) ($x55114818 Int) ($y55214819 Int) ($z55314817 Int) ($z55314820 Int) ($x55114815 Int))
    (=> (and ($main_sum189 (- $x55114815 1) (- $y55214816 1) $z55314817 $x55114818 $y55214819 $z55314820)
             (> $y55214816 $z55314817))
        ($main_sum189 $x55114815 $y55214816 $z55314817 $x55114818 $y55214819 $z55314820))))

; __VERIFIER_assert precondition
(assert
  (forall (($x55114812 Int) ($z55314823 Int) ($z55314814 Int) ($x551 Int) ($y55214813 Int) ($y552 Int) ($y55214822 Int) ($z553 Int) ($x55114821 Int))
    (=> (and ($main_sum189 $x55114812 $y55214813 $z55314814 $x55114821 $y55214822 $z55314823)
             ($main_sum188 0 $y552 $z553 $x55114812 $y55214813 $z55314814)
             (= $z553 0)
             (= $y552 50000)
             (= $x551 0))
        ($__VERIFIER_assert_pre (ite (= (mod $x55114821 2) 0) 1 0)))))

(check-sat)
