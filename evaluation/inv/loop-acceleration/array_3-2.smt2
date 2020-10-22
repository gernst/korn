(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum436 ((Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv436 ((Array Int Int) Int) Bool)
(declare-fun $main_sum437 ((Array Int Int) Int) Bool)
(declare-fun $main_inv437 ((Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_if162 (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond5650 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond5650))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if162 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5651 Int))
    (=> (and ($__VERIFIER_assert_if162 cond5651))
        (__VERIFIER_assert cond5651))))

; loop entry $main_inv436
(assert
  (forall (($A548 (Array Int Int)))
        ($main_inv436 $A548 0)))

; loop term $main_sum436
(assert
  (forall (($A5485652 (Array Int Int)) ($i5495653 Int))
    (=> (and (not (< $i5495653 1024))
             ($main_inv436 $A5485652 $i5495653))
        ($main_sum436 $A5485652 $i5495653))))

; forwards $main_inv436
(assert
  (forall (($A5485652 (Array Int Int)) ($i5495653 Int) ($int5654 Int))
    (=> (and (<= (- 2147483648) $int5654)
             (<= $int5654 2147483647)
             (< $i5495653 1024)
             ($main_inv436 $A5485652 $i5495653))
        ($main_inv436 (store $A5485652 $i5495653 $int5654) (+ $i5495653 1)))))

; loop entry $main_inv437
(assert
  (forall (($A5485655 (Array Int Int)) ($i5495656 Int))
    (=> (and ($main_sum436 $A5485655 $i5495656))
        ($main_inv437 $A5485655 0))))

; loop term $main_sum437
(assert
  (forall (($A5485657 (Array Int Int)) ($i5495658 Int))
    (=> (and (not (and (< $i5495658 1024) (not (= (select $A5485657 $i5495658) 0))))
             ($main_inv437 $A5485657 $i5495658))
        ($main_sum437 $A5485657 $i5495658))))

; forwards $main_inv437
(assert
  (forall (($A5485657 (Array Int Int)) ($i5495658 Int))
    (=> (and (< $i5495658 1024)
             (not (= (select $A5485657 $i5495658) 0))
             ($main_inv437 $A5485657 $i5495658))
        ($main_inv437 $A5485657 (+ $i5495658 1)))))

; __VERIFIER_assert precondition
(assert
  (forall (($i5495660 Int) ($A5485659 (Array Int Int)))
    (=> (and ($main_sum437 $A5485659 $i5495660))
        ($__VERIFIER_assert_pre (ite (<= $i5495660 (div 1024 2)) 1 0)))))

(check-sat)
