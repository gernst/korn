(set-logic HORN)

(declare-fun $__VERIFIER_assert_if485 (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv102 (Int Int) Bool)
(declare-fun $main_sum101 (Int Int) Bool)
(declare-fun $main_inv101 (Int Int) Bool)
(declare-fun $main_sum102 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond12967 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond12967))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if485 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond12968 Int))
    (=> (and ($__VERIFIER_assert_if485 cond12968))
        (__VERIFIER_assert cond12968))))

; loop entry $main_inv101
(assert
  (forall (($x412 Int) ($y413 Int))
    (=> (and (= $y413 0)
             (= $x412 0))
        ($main_inv101 $x412 $y413))))

; loop term $main_sum101
(assert
  (forall (($x41212969 Int) ($y41312970 Int))
    (=> (and (not (< $x41212969 268435455))
             ($main_inv101 $x41212969 $y41312970))
        ($main_sum101 $x41212969 $y41312970))))

; loop entry $main_inv102
(assert
  (forall (($x41212969 Int) ($y41312970 Int))
    (=> (and (< $x41212969 268435455)
             ($main_inv101 $x41212969 $y41312970))
        ($main_inv102 $x41212969 0))))

; loop term $main_sum102
(assert
  (forall (($x41212971 Int) ($y41312972 Int))
    (=> (and (not (< $y41312972 10))
             ($main_inv102 $x41212971 $y41312972))
        ($main_sum102 $x41212971 $y41312972))))

; forwards $main_inv102
(assert
  (forall (($x41212971 Int) ($y41312972 Int))
    (=> (and (< $y41312972 10)
             ($main_inv102 $x41212971 $y41312972))
        ($main_inv102 $x41212971 (+ $y41312972 1)))))

; forwards $main_inv101
(assert
  (forall (($x41212973 Int) ($y41312974 Int))
    (=> (and ($main_sum102 $x41212973 $y41312974))
        ($main_inv101 (+ $x41212973 1) $y41312974))))

; __VERIFIER_assert precondition
(assert
  (forall (($x41212975 Int) ($y41312976 Int))
    (=> (and ($main_sum101 $x41212975 $y41312976))
        ($__VERIFIER_assert_pre (mod $x41212975 2)))))

(check-sat)
