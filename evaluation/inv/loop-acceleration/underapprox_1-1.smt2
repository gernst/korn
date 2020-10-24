(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_inv118 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if508 (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum118 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13065 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13065))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if508 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13066 Int))
    (=> (and ($__VERIFIER_assert_if508 cond13066))
        (__VERIFIER_assert cond13066))))

; loop entry $main_inv118
(assert
  (forall (($x433 Int) ($y434 Int))
    (=> (and (= $y434 1)
             (= $x433 0))
        ($main_inv118 $x433 $y434))))

; loop term $main_sum118
(assert
  (forall (($x43313067 Int) ($y43413068 Int))
    (=> (and (not (< $x43313067 6))
             ($main_inv118 $x43313067 $y43413068))
        ($main_sum118 $x43313067 $y43413068))))

; forwards $main_inv118
(assert
  (forall (($x43313067 Int) ($y43413068 Int))
    (=> (and (< $x43313067 6)
             ($main_inv118 $x43313067 $y43413068))
        ($main_inv118 (+ $x43313067 1) (* $y43413068 2)))))

; __VERIFIER_assert precondition
(assert
  (forall (($y43413070 Int) ($x43313069 Int))
    (=> (and ($main_sum118 $x43313069 $y43413070))
        ($__VERIFIER_assert_pre (ite (not (= $y43413070 64)) 1 0)))))

(check-sat)
