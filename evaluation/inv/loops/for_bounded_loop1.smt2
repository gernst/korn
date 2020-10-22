(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_inv233 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if666 (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_if668 (Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_if665 (Int) Bool)
(declare-fun $main_sum233 (Int Int Int Int) Bool)
(declare-fun $main_if667 (Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if665 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond14700 Int))
    (=> (and ($assume_abort_if_not_if665 cond14700))
        (assume_abort_if_not cond14700))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond14701 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond14701))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if666 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14702 Int))
    (=> (and ($__VERIFIER_assert_if666 cond14702))
        (__VERIFIER_assert cond14702))))

; if else
(assert
  (forall (($i673 Int) ($y675 Int) ($int14703 Int) ($n676 Int) ($x674 Int))
    (=> (and (> $n676 0)
             (= $n676 $int14703)
             (<= (- 2147483648) $int14703)
             (<= $int14703 2147483647)
             (= $y675 0)
             (= $x674 0)
             (= $i673 0))
        ($main_if667 $i673 $x674 $y675 $n676))))

; loop entry $main_inv233
(assert
  (forall (($x67414705 Int) ($y67514706 Int) ($n67614707 Int) ($i67314704 Int))
    (=> (and ($main_if667 $i67314704 $x67414705 $y67514706 $n67614707))
        ($main_inv233 0 $x67414705 $y67514706 $n67614707))))

; loop term $main_sum233
(assert
  (forall (($i67314708 Int) ($x67414709 Int) ($y67514710 Int) ($n67614711 Int))
    (=> (and (not (< $i67314708 $n67614711))
             ($main_inv233 $i67314708 $x67414709 $y67514710 $n67614711))
        ($main_sum233 $i67314708 $x67414709 $y67514710 $n67614711))))

; __VERIFIER_assert precondition
(assert
  (forall (($x67414709 Int) ($y67514710 Int) ($i67314708 Int) ($n67614711 Int))
    (=> (and (< $i67314708 $n67614711)
             ($main_inv233 $i67314708 $x67414709 $y67514710 $n67614711))
        ($__VERIFIER_assert_pre (ite (= (- $x67414709 $y67514710) 0) 1 0)))))

; if else
(assert
  (forall (($i67314708 Int) ($y67514710 Int) ($x67414709 Int) ($n67614711 Int) ($int14712 Int))
    (=> (and (not (= $int14712 0))
             (<= (- 2147483648) $int14712)
             (<= $int14712 2147483647)
             (__VERIFIER_assert (ite (= (- $x67414709 $y67514710) 0) 1 0))
             (< $i67314708 $n67614711)
             ($main_inv233 $i67314708 $x67414709 $y67514710 $n67614711))
        ($main_if668 $i67314708 (- $x67414709 $y67514710) $int14712 $n67614711))))

; __VERIFIER_assert precondition
(assert
  (forall (($x67414714 Int) ($y67514715 Int) ($i67314713 Int) ($n67614716 Int))
    (=> (and ($main_if668 $i67314713 $x67414714 $y67514715 $n67614716))
        ($__VERIFIER_assert_pre (ite (not (= (+ $x67414714 $y67514715) 0)) 1 0)))))

; forwards $main_inv233
(assert
  (forall (($i67314713 Int) ($x67414714 Int) ($y67514715 Int) ($n67614716 Int))
    (=> (and (__VERIFIER_assert (ite (not (= (+ $x67414714 $y67514715) 0)) 1 0))
             ($main_if668 $i67314713 $x67414714 $y67514715 $n67614716))
        ($main_inv233 (+ $i67314713 1) (+ $x67414714 $y67514715) $y67514715 $n67614716))))

; __VERIFIER_assert precondition
(assert
  (forall (($x67414718 Int) ($i67314717 Int) ($y67514719 Int) ($n67614720 Int))
    (=> (and ($main_sum233 $i67314717 $x67414718 $y67514719 $n67614720))
        ($__VERIFIER_assert_pre (ite (= $x67414718 0) 1 0)))))

(check-sat)
