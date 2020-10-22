(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_if509 (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum119 (Int Int) Bool)
(declare-fun $main_inv119 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13071 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13071))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if509 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13072 Int))
    (=> (and ($__VERIFIER_assert_if509 cond13072))
        (__VERIFIER_assert cond13072))))

; loop entry $main_inv119
(assert
  (forall (($x435 Int) ($y436 Int))
    (=> (and (= $y436 1)
             (= $x435 0))
        ($main_inv119 $x435 $y436))))

; loop term $main_sum119
(assert
  (forall (($x43513073 Int) ($y43613074 Int))
    (=> (and (not (< $x43513073 6))
             ($main_inv119 $x43513073 $y43613074))
        ($main_sum119 $x43513073 $y43613074))))

; forwards $main_inv119
(assert
  (forall (($x43513073 Int) ($y43613074 Int))
    (=> (and (< $x43513073 6)
             ($main_inv119 $x43513073 $y43613074))
        ($main_inv119 (+ $x43513073 1) (* $y43613074 2)))))

; __VERIFIER_assert precondition
(assert
  (forall (($y43613076 Int) ($x43513075 Int))
    (=> (and ($main_sum119 $x43513075 $y43613076))
        ($__VERIFIER_assert_pre (mod $y43613076 3)))))

(check-sat)
