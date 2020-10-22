(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum182 (Int Int Int Int) Bool)
(declare-fun $main_if568 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if567 (Int Int) Bool)
(declare-fun $main_inv182 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond14729 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond14729))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if567 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14730 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if567 cond cond14730))
        (__VERIFIER_assert cond14730))))

; loop entry $main_inv182
(assert
  (forall (($x536 Int) ($y537 Int))
    (=> (and (= $y537 500000)
             (= $x536 0))
        ($main_inv182 $x536 $y537))))

; loop term $main_sum182
(assert
  (forall (($x53614731 Int) ($y53714732 Int))
    (=> (and (not (< $x53614731 1000000)))
        ($main_sum182 $x53614731 $y53714732 $x53614731 $y53714732))))

; if then
(assert
  (forall (($x53614731 Int) ($y53714732 Int))
    (=> (and (< $x53614731 500000)
             (< $x53614731 1000000)
             ($main_inv182 $x53614731 $y53714732))
        ($main_if568 $x53614731 $y53714732 (+ $x53614731 1) $y53714732))))

; if else
(assert
  (forall (($x53614731 Int) ($y53714732 Int))
    (=> (and (not (< $x53614731 500000))
             (< $x53614731 1000000)
             ($main_inv182 $x53614731 $y53714732))
        ($main_if568 $x53614731 $y53714732 (+ $x53614731 1) (+ $y53714732 1)))))

; forwards $main_inv182
(assert
  (forall (($x53614733 Int) ($y53714734 Int) ($x53614731 Int) ($y53714732 Int))
    (=> (and ($main_if568 $x53614731 $y53714732 $x53614733 $y53714734))
        ($main_inv182 $x53614733 $y53714734))))

; backwards $main_sum182
(assert
  (forall (($x53614731 Int) ($x53614733 Int) ($y53714736 Int) ($y53714732 Int) ($x53614735 Int) ($y53714734 Int))
    (=> (and ($main_sum182 $x53614733 $y53714734 $x53614735 $y53714736)
             ($main_if568 $x53614731 $y53714732 $x53614733 $y53714734))
        ($main_sum182 $x53614731 $y53714732 $x53614735 $y53714736))))

; __VERIFIER_assert precondition
(assert
  (forall (($y53714738 Int) ($x53614737 Int) ($x536 Int) ($y537 Int))
    (=> (and ($main_sum182 $x536 $y537 $x53614737 $y53714738)
             (= $y537 500000)
             (= $x536 0))
        ($__VERIFIER_assert_pre (ite (not (= $y53714738 $x53614737)) 1 0)))))

(check-sat)
