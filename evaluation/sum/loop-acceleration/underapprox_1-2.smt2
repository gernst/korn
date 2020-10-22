(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum119 (Int Int Int Int) Bool)
(declare-fun $main_inv119 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if509 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond13888 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond13888))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if509 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13889 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if509 cond cond13889))
        (__VERIFIER_assert cond13889))))

; loop entry $main_inv119
(assert
  (forall (($x435 Int) ($y436 Int))
    (=> (and (= $y436 1)
             (= $x435 0))
        ($main_inv119 $x435 $y436))))

; loop term $main_sum119
(assert
  (forall (($x43513890 Int) ($y43613891 Int))
    (=> (and (not (< $x43513890 6)))
        ($main_sum119 $x43513890 $y43613891 $x43513890 $y43613891))))

; forwards $main_inv119
(assert
  (forall (($x43513890 Int) ($y43613891 Int))
    (=> (and (< $x43513890 6)
             ($main_inv119 $x43513890 $y43613891))
        ($main_inv119 (+ $x43513890 1) (* $y43613891 2)))))

; backwards $main_sum119
(assert
  (forall (($x43513890 Int) ($y43613891 Int) ($x43513892 Int) ($y43613893 Int))
    (=> (and ($main_sum119 (+ $x43513890 1) (* $y43613891 2) $x43513892 $y43613893)
             (< $x43513890 6))
        ($main_sum119 $x43513890 $y43613891 $x43513892 $y43613893))))

; __VERIFIER_assert precondition
(assert
  (forall (($y43613895 Int) ($x435 Int) ($y436 Int) ($x43513894 Int))
    (=> (and ($main_sum119 $x435 $y436 $x43513894 $y43613895)
             (= $y436 1)
             (= $x435 0))
        ($__VERIFIER_assert_pre (mod $y43613895 3)))))

(check-sat)
