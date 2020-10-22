(set-logic HORN)

(declare-fun $main_if595 (Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv200 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum200 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if594 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond14947 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond14947))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if594 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14948 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if594 cond cond14948))
        (__VERIFIER_assert cond14948))))

; loop entry $main_inv200
(assert
  (forall (($x572 Int) ($y573 Int))
    (=> (and (= $y573 500000)
             (= $x572 0))
        ($main_inv200 $x572 $y573))))

; loop term $main_sum200
(assert
  (forall (($x57214949 Int) ($y57314950 Int))
    (=> (and (not (< $x57214949 1000000)))
        ($main_sum200 $x57214949 $y57314950 $x57214949 $y57314950))))

; if then
(assert
  (forall (($x57214949 Int) ($y57314950 Int))
    (=> (and (< $x57214949 500000)
             (< $x57214949 1000000)
             ($main_inv200 $x57214949 $y57314950))
        ($main_if595 $x57214949 $y57314950 (+ $x57214949 1) $y57314950))))

; if else
(assert
  (forall (($x57214949 Int) ($y57314950 Int))
    (=> (and (not (< $x57214949 500000))
             (< $x57214949 1000000)
             ($main_inv200 $x57214949 $y57314950))
        ($main_if595 $x57214949 $y57314950 (+ $x57214949 1) (+ $y57314950 1)))))

; forwards $main_inv200
(assert
  (forall (($x57214951 Int) ($y57314952 Int) ($x57214949 Int) ($y57314950 Int))
    (=> (and ($main_if595 $x57214949 $y57314950 $x57214951 $y57314952))
        ($main_inv200 $x57214951 $y57314952))))

; backwards $main_sum200
(assert
  (forall (($x57214953 Int) ($y57314952 Int) ($x57214951 Int) ($y57314954 Int) ($x57214949 Int) ($y57314950 Int))
    (=> (and ($main_sum200 $x57214951 $y57314952 $x57214953 $y57314954)
             ($main_if595 $x57214949 $y57314950 $x57214951 $y57314952))
        ($main_sum200 $x57214949 $y57314950 $x57214953 $y57314954))))

; __VERIFIER_assert precondition
(assert
  (forall (($y57314956 Int) ($x57214955 Int) ($x572 Int) ($y573 Int))
    (=> (and ($main_sum200 $x572 $y573 $x57214955 $y57314956)
             (= $y573 500000)
             (= $x572 0))
        ($__VERIFIER_assert_pre (ite (= $y57314956 $x57214955) 1 0)))))

(check-sat)
