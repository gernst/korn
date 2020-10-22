(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_sum295 (Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_if772 (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_if774 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if773 (Int) Bool)
(declare-fun $main_inv295 (Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if772 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond15867 Int))
    (=> (and ($assume_abort_if_not_if772 cond15867))
        (assume_abort_if_not cond15867))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond15868 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15868))
        false)))

; if then
(assert
  (forall ((cond15868 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15868))
        ($__VERIFIER_assert_if773 cond15868))))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if773 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond15869 Int))
    (=> (and ($__VERIFIER_assert_if773 cond15869))
        (__VERIFIER_assert cond15869))))

; loop entry $main_inv295
(assert
  (forall (($int15870 Int))
    (=> (and (<= (- 2147483648) $int15870)
             (<= $int15870 2147483647))
        ($main_inv295 $int15870 0 0 0))))

; loop term $main_sum295
(assert
  (forall (($k85215871 Int) ($y85315872 Int) ($x85415873 Int) ($c85515874 Int))
    (=> (and (= 1 0)
             ($main_inv295 $k85215871 $y85315872 $x85415873 $c85515874))
        ($main_sum295 $k85215871 $y85315872 $x85415873 $c85515874))))

; __VERIFIER_assert precondition
(assert
  (forall (($y85315872 Int) ($x85415873 Int) ($k85215871 Int) ($c85515874 Int))
    (=> (and (not (= 1 0))
             ($main_inv295 $k85215871 $y85315872 $x85415873 $c85515874))
        ($__VERIFIER_assert_pre (ite (= (+ (- (* $y85315872 $y85315872) (* 2 $x85415873)) $y85315872) 0) 1 0)))))

; break $main_sum295
(assert
  (forall (($k85215871 Int) ($y85315872 Int) ($x85415873 Int) ($c85515874 Int))
    (=> (and (not (< $c85515874 $k85215871))
             (__VERIFIER_assert (ite (= (+ (- (* $y85315872 $y85315872) (* 2 $x85415873)) $y85315872) 0) 1 0))
             (not (= 1 0))
             ($main_inv295 $k85215871 $y85315872 $x85415873 $c85515874))
        ($main_sum295 $k85215871 $y85315872 $x85415873 $c85515874))))

; if else
(assert
  (forall (($k85215871 Int) ($y85315872 Int) ($x85415873 Int) ($c85515874 Int))
    (=> (and (< $c85515874 $k85215871)
             (__VERIFIER_assert (ite (= (+ (- (* $y85315872 $y85315872) (* 2 $x85415873)) $y85315872) 0) 1 0))
             (not (= 1 0))
             ($main_inv295 $k85215871 $y85315872 $x85415873 $c85515874))
        ($main_if774 $k85215871 $y85315872 $x85415873 $c85515874))))

; forwards $main_inv295
(assert
  (forall (($k85215875 Int) ($y85315876 Int) ($x85415877 Int) ($c85515878 Int))
    (=> (and ($main_if774 $k85215875 $y85315876 $x85415877 $c85515878))
        ($main_inv295 $k85215875 (+ $y85315876 1) (+ (+ $y85315876 1) $x85415877) (+ $c85515878 1)))))

; __VERIFIER_assert precondition
(assert
  (forall (($y85315880 Int) ($x85415881 Int) ($k85215879 Int) ($c85515882 Int))
    (=> (and ($main_sum295 $k85215879 $y85315880 $x85415881 $c85515882))
        ($__VERIFIER_assert_pre (ite (= (+ (- (* $y85315880 $y85315880) (* 2 $x85415881)) $y85315880) 0) 1 0)))))

(check-sat)
