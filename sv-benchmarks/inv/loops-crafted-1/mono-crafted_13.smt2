(set-logic HORN)

(declare-fun $__VERIFIER_assert_if579 (Int) Bool)
(declare-fun $main_inv188 (Int Int Int) Bool)
(declare-fun $main_sum189 (Int Int Int) Bool)
(declare-fun $main_sum188 (Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv189 (Int Int Int) Bool)
(declare-fun $main_if580 (Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13748 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13748))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if579 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13749 Int))
    (=> (and ($__VERIFIER_assert_if579 cond13749))
        (__VERIFIER_assert cond13749))))

; loop entry $main_inv188
(assert
  (forall (($y552 Int) ($z553 Int) ($x551 Int))
    (=> (and (= $z553 0)
             (= $y552 50000)
             (= $x551 0))
        ($main_inv188 0 $y552 $z553))))

; loop term $main_sum188
(assert
  (forall (($x55113750 Int) ($y55213751 Int) ($z55313752 Int))
    (=> (and (not (< $x55113750 1000000))
             ($main_inv188 $x55113750 $y55213751 $z55313752))
        ($main_sum188 $x55113750 $y55213751 $z55313752))))

; if then
(assert
  (forall (($x55113750 Int) ($y55213751 Int) ($z55313752 Int))
    (=> (and (< $x55113750 50000)
             (< $x55113750 1000000)
             ($main_inv188 $x55113750 $y55213751 $z55313752))
        ($main_if580 (+ $x55113750 1) $y55213751 $z55313752))))

; if else
(assert
  (forall (($x55113750 Int) ($y55213751 Int) ($z55313752 Int))
    (=> (and (not (< $x55113750 50000))
             (< $x55113750 1000000)
             ($main_inv188 $x55113750 $y55213751 $z55313752))
        ($main_if580 (+ $x55113750 2) (+ $y55213751 2) $z55313752))))

; forwards $main_inv188
(assert
  (forall (($x55113753 Int) ($y55213754 Int) ($z55313755 Int))
    (=> (and ($main_if580 $x55113753 $y55213754 $z55313755))
        ($main_inv188 $x55113753 $y55213754 $z55313755))))

; loop entry $main_inv189
(assert
  (forall (($x55113756 Int) ($y55213757 Int) ($z55313758 Int))
    (=> (and ($main_sum188 $x55113756 $y55213757 $z55313758))
        ($main_inv189 $x55113756 $y55213757 $z55313758))))

; loop term $main_sum189
(assert
  (forall (($x55113759 Int) ($y55213760 Int) ($z55313761 Int))
    (=> (and (not (> $y55213760 $z55313761))
             ($main_inv189 $x55113759 $y55213760 $z55313761))
        ($main_sum189 $x55113759 $y55213760 $z55313761))))

; forwards $main_inv189
(assert
  (forall (($x55113759 Int) ($y55213760 Int) ($z55313761 Int))
    (=> (and (> $y55213760 $z55313761)
             ($main_inv189 $x55113759 $y55213760 $z55313761))
        ($main_inv189 (- $x55113759 1) (- $y55213760 1) $z55313761))))

; __VERIFIER_assert precondition
(assert
  (forall (($x55113762 Int) ($y55213763 Int) ($z55313764 Int))
    (=> (and ($main_sum189 $x55113762 $y55213763 $z55313764))
        ($__VERIFIER_assert_pre (ite (= (mod $x55113762 2) 0) 1 0)))))

(check-sat)
