(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_sum295 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_if774 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $assume_abort_if_not_if772 (Int Int) Bool)
(declare-fun $main_inv295 (Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $__VERIFIER_assert_if773 (Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if772 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond17497 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if772 cond cond17497))
        (assume_abort_if_not cond17497))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond17498 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond17498))
        false)))

; if then
(assert
  (forall ((cond Int) (cond17498 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond17498))
        ($__VERIFIER_assert_if773 cond cond17498))))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if773 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond17499 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if773 cond cond17499))
        (__VERIFIER_assert cond17499))))

; loop entry $main_inv295
(assert
  (forall (($int17500 Int))
    (=> (and (<= (- 2147483648) $int17500)
             (<= $int17500 2147483647))
        ($main_inv295 $int17500 0 0 0))))

; loop term $main_sum295
(assert
  (forall (($k85217501 Int) ($y85317502 Int) ($x85417503 Int) ($c85517504 Int))
    (=> (and (= 1 0))
        ($main_sum295 $k85217501 $y85317502 $x85417503 $c85517504 $k85217501 $y85317502 $x85417503 $c85517504))))

; __VERIFIER_assert precondition
(assert
  (forall (($y85317502 Int) ($x85417503 Int) ($k85217501 Int) ($c85517504 Int))
    (=> (and (not (= 1 0))
             ($main_inv295 $k85217501 $y85317502 $x85417503 $c85517504))
        ($__VERIFIER_assert_pre (ite (= (+ (- (* $y85317502 $y85317502) (* 2 $x85417503)) $y85317502) 0) 1 0)))))

; break $main_sum295
(assert
  (forall (($k85217501 Int) ($y85317502 Int) ($x85417503 Int) ($c85517504 Int))
    (=> (and (not (< $c85517504 $k85217501))
             (__VERIFIER_assert (ite (= (+ (- (* $y85317502 $y85317502) (* 2 $x85417503)) $y85317502) 0) 1 0))
             (not (= 1 0))
             ($main_inv295 $k85217501 $y85317502 $x85417503 $c85517504))
        ($main_sum295 $k85217501 $y85317502 $x85417503 $c85517504 $k85217501 $y85317502 $x85417503 $c85517504))))

; if else
(assert
  (forall (($k85217501 Int) ($y85317502 Int) ($x85417503 Int) ($c85517504 Int))
    (=> (and (< $c85517504 $k85217501)
             (__VERIFIER_assert (ite (= (+ (- (* $y85317502 $y85317502) (* 2 $x85417503)) $y85317502) 0) 1 0))
             (not (= 1 0))
             ($main_inv295 $k85217501 $y85317502 $x85417503 $c85517504))
        ($main_if774 $k85217501 $y85317502 $x85417503 $c85517504 $k85217501 $y85317502 $x85417503 $c85517504))))

; forwards $main_inv295
(assert
  (forall (($c85517508 Int) ($y85317502 Int) ($y85317506 Int) ($k85217501 Int) ($k85217505 Int) ($c85517504 Int) ($x85417507 Int) ($x85417503 Int))
    (=> (and ($main_if774 $k85217501 $y85317502 $x85417503 $c85517504 $k85217505 $y85317506 $x85417507 $c85517508))
        ($main_inv295 $k85217505 (+ $y85317506 1) (+ (+ $y85317506 1) $x85417507) (+ $c85517508 1)))))

; backwards $main_sum295
(assert
  (forall (($c85517508 Int) ($y85317502 Int) ($x85417511 Int) ($y85317506 Int) ($k85217501 Int) ($k85217505 Int) ($k85217509 Int) ($c85517512 Int) ($y85317510 Int) ($c85517504 Int) ($x85417507 Int) ($x85417503 Int))
    (=> (and ($main_sum295 $k85217505 (+ $y85317506 1) (+ (+ $y85317506 1) $x85417507) (+ $c85517508 1) $k85217509 $y85317510 $x85417511 $c85517512)
             ($main_if774 $k85217501 $y85317502 $x85417503 $c85517504 $k85217505 $y85317506 $x85417507 $c85517508))
        ($main_sum295 $k85217501 $y85317502 $x85417503 $c85517504 $k85217509 $y85317510 $x85417511 $c85517512))))

; __VERIFIER_assert precondition
(assert
  (forall (($k85217513 Int) ($y85317514 Int) ($x85417515 Int) ($int17500 Int) ($c85517516 Int))
    (=> (and ($main_sum295 $int17500 0 0 0 $k85217513 $y85317514 $x85417515 $c85517516)
             (<= (- 2147483648) $int17500)
             (<= $int17500 2147483647))
        ($__VERIFIER_assert_pre (ite (= (+ (- (* $y85317514 $y85317514) (* 2 $x85417515)) $y85317514) 0) 1 0)))))

(check-sat)
