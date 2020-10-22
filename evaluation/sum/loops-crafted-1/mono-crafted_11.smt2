(set-logic HORN)

(declare-fun $__VERIFIER_assert_if575 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_if576 (Int Int) Bool)
(declare-fun $main_inv186 (Int) Bool)
(declare-fun $main_sum186 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond14781 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond14781))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if575 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14782 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if575 cond cond14782))
        (__VERIFIER_assert cond14782))))

; loop entry $main_inv186
(assert
  (forall (($x547 Int))
    (=> (and (= $x547 0))
        ($main_inv186 $x547))))

; loop term $main_sum186
(assert
  (forall (($x54714783 Int))
    (=> (and (not (< $x54714783 100000000)))
        ($main_sum186 $x54714783 $x54714783))))

; if then
(assert
  (forall (($x54714783 Int))
    (=> (and (< $x54714783 10000000)
             (< $x54714783 100000000)
             ($main_inv186 $x54714783))
        ($main_if576 $x54714783 (+ $x54714783 1)))))

; if else
(assert
  (forall (($x54714783 Int))
    (=> (and (not (< $x54714783 10000000))
             (< $x54714783 100000000)
             ($main_inv186 $x54714783))
        ($main_if576 $x54714783 (+ $x54714783 2)))))

; forwards $main_inv186
(assert
  (forall (($x54714784 Int) ($x54714783 Int))
    (=> (and ($main_if576 $x54714783 $x54714784))
        ($main_inv186 $x54714784))))

; backwards $main_sum186
(assert
  (forall (($x54714783 Int) ($x54714785 Int) ($x54714784 Int))
    (=> (and ($main_sum186 $x54714784 $x54714785)
             ($main_if576 $x54714783 $x54714784))
        ($main_sum186 $x54714783 $x54714785))))

; __VERIFIER_assert precondition
(assert
  (forall (($x54714786 Int) ($x547 Int))
    (=> (and ($main_sum186 $x547 $x54714786)
             (= $x547 0))
        ($__VERIFIER_assert_pre (ite (= (mod $x54714786 2) 0) 1 0)))))

(check-sat)
