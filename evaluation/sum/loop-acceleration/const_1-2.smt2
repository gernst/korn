(set-logic HORN)

(declare-fun $main_inv93 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum93 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if465 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond13668 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond13668))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if465 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13669 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if465 cond cond13669))
        (__VERIFIER_assert cond13669))))

; loop entry $main_inv93
(assert
  (forall (($x398 Int) ($y399 Int))
    (=> (and (= $y399 0)
             (= $x398 1))
        ($main_inv93 $x398 $y399))))

; loop term $main_sum93
(assert
  (forall (($x39813670 Int) ($y39913671 Int))
    (=> (and (not (< $y39913671 1024)))
        ($main_sum93 $x39813670 $y39913671 $x39813670 $y39913671))))

; forwards $main_inv93
(assert
  (forall (($y39913671 Int) ($x39813670 Int))
    (=> (and (< $y39913671 1024)
             ($main_inv93 $x39813670 $y39913671))
        ($main_inv93 0 (+ $y39913671 1)))))

; backwards $main_sum93
(assert
  (forall (($x39813670 Int) ($y39913671 Int) ($x39813672 Int) ($y39913673 Int))
    (=> (and ($main_sum93 0 (+ $y39913671 1) $x39813672 $y39913673)
             (< $y39913671 1024))
        ($main_sum93 $x39813670 $y39913671 $x39813672 $y39913673))))

; __VERIFIER_assert precondition
(assert
  (forall (($x39813674 Int) ($x398 Int) ($y399 Int) ($y39913675 Int))
    (=> (and ($main_sum93 $x398 $y399 $x39813674 $y39913675)
             (= $y399 0)
             (= $x398 1))
        ($__VERIFIER_assert_pre (ite (= $x39813674 1) 1 0)))))

(check-sat)
