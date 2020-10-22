(set-logic HORN)

(declare-fun $__VERIFIER_assert_if565 (Int Int) Bool)
(declare-fun $main_if566 (Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum181 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv181 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond14719 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond14719))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if565 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14720 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if565 cond cond14720))
        (__VERIFIER_assert cond14720))))

; loop entry $main_inv181
(assert
  (forall (($x534 Int) ($y535 Int))
    (=> (and (= $y535 0)
             (= $x534 0))
        ($main_inv181 $x534 $y535))))

; loop term $main_sum181
(assert
  (forall (($x53414721 Int) ($y53514722 Int))
    (=> (and (not (< $x53414721 1000000)))
        ($main_sum181 $x53414721 $y53514722 $x53414721 $y53514722))))

; if then
(assert
  (forall (($x53414721 Int) ($y53514722 Int))
    (=> (and (< $x53414721 500000)
             (< $x53414721 1000000)
             ($main_inv181 $x53414721 $y53514722))
        ($main_if566 $x53414721 $y53514722 $x53414721 (+ $y53514722 1)))))

; if else
(assert
  (forall (($x53414721 Int) ($y53514722 Int))
    (=> (and (not (< $x53414721 500000))
             (< $x53414721 1000000)
             ($main_inv181 $x53414721 $y53514722))
        ($main_if566 $x53414721 $y53514722 $x53414721 (- $y53514722 1)))))

; forwards $main_inv181
(assert
  (forall (($x53414723 Int) ($y53514724 Int) ($x53414721 Int) ($y53514722 Int))
    (=> (and ($main_if566 $x53414721 $y53514722 $x53414723 $y53514724))
        ($main_inv181 (+ $x53414723 1) $y53514724))))

; backwards $main_sum181
(assert
  (forall (($x53414721 Int) ($y53514724 Int) ($y53514726 Int) ($y53514722 Int) ($x53414725 Int) ($x53414723 Int))
    (=> (and ($main_sum181 (+ $x53414723 1) $y53514724 $x53414725 $y53514726)
             ($main_if566 $x53414721 $y53514722 $x53414723 $y53514724))
        ($main_sum181 $x53414721 $y53514722 $x53414725 $y53514726))))

; __VERIFIER_assert precondition
(assert
  (forall (($y53514728 Int) ($x534 Int) ($y535 Int) ($x53414727 Int))
    (=> (and ($main_sum181 $x534 $y535 $x53414727 $y53514728)
             (= $y535 0)
             (= $x534 0))
        ($__VERIFIER_assert_pre (ite (not (= $y53514728 0)) 1 0)))))

(check-sat)
