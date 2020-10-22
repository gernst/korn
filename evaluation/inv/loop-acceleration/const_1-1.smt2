(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv92 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if464 (Int) Bool)
(declare-fun $main_sum92 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond12886 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond12886))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if464 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond12887 Int))
    (=> (and ($__VERIFIER_assert_if464 cond12887))
        (__VERIFIER_assert cond12887))))

; loop entry $main_inv92
(assert
  (forall (($x396 Int) ($y397 Int))
    (=> (and (= $y397 0)
             (= $x396 1))
        ($main_inv92 $x396 $y397))))

; loop term $main_sum92
(assert
  (forall (($x39612888 Int) ($y39712889 Int))
    (=> (and (not (< $y39712889 1024))
             ($main_inv92 $x39612888 $y39712889))
        ($main_sum92 $x39612888 $y39712889))))

; forwards $main_inv92
(assert
  (forall (($y39712889 Int) ($x39612888 Int))
    (=> (and (< $y39712889 1024)
             ($main_inv92 $x39612888 $y39712889))
        ($main_inv92 0 (+ $y39712889 1)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x39612890 Int) ($y39712891 Int))
    (=> (and ($main_sum92 $x39612890 $y39712891))
        ($__VERIFIER_assert_pre (ite (= $x39612890 0) 1 0)))))

(check-sat)
