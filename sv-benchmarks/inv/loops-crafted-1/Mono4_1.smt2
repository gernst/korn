(set-logic HORN)

(declare-fun $__VERIFIER_assert_if567 (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum182 (Int Int) Bool)
(declare-fun $main_if568 (Int Int) Bool)
(declare-fun $main_inv182 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13691 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13691))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if567 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13692 Int))
    (=> (and ($__VERIFIER_assert_if567 cond13692))
        (__VERIFIER_assert cond13692))))

; loop entry $main_inv182
(assert
  (forall (($x536 Int) ($y537 Int))
    (=> (and (= $y537 500000)
             (= $x536 0))
        ($main_inv182 $x536 $y537))))

; loop term $main_sum182
(assert
  (forall (($x53613693 Int) ($y53713694 Int))
    (=> (and (not (< $x53613693 1000000))
             ($main_inv182 $x53613693 $y53713694))
        ($main_sum182 $x53613693 $y53713694))))

; if then
(assert
  (forall (($x53613693 Int) ($y53713694 Int))
    (=> (and (< $x53613693 500000)
             (< $x53613693 1000000)
             ($main_inv182 $x53613693 $y53713694))
        ($main_if568 (+ $x53613693 1) $y53713694))))

; if else
(assert
  (forall (($x53613693 Int) ($y53713694 Int))
    (=> (and (not (< $x53613693 500000))
             (< $x53613693 1000000)
             ($main_inv182 $x53613693 $y53713694))
        ($main_if568 (+ $x53613693 1) (+ $y53713694 1)))))

; forwards $main_inv182
(assert
  (forall (($x53613695 Int) ($y53713696 Int))
    (=> (and ($main_if568 $x53613695 $y53713696))
        ($main_inv182 $x53613695 $y53713696))))

; __VERIFIER_assert precondition
(assert
  (forall (($y53713698 Int) ($x53613697 Int))
    (=> (and ($main_sum182 $x53613697 $y53713698))
        ($__VERIFIER_assert_pre (ite (not (= $y53713698 $x53613697)) 1 0)))))

(check-sat)
