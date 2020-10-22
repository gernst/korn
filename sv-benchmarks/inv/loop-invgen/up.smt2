(set-logic HORN)

(declare-fun $main_sum486 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if279 (Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv486 (Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_sum485 (Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_if278 (Int) Bool)
(declare-fun $main_inv485 (Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if278 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond6618 Int))
    (=> (and ($assume_abort_if_not_if278 cond6618))
        (assume_abort_if_not cond6618))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond6619 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond6619))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if279 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6620 Int))
    (=> (and ($__VERIFIER_assert_if279 cond6620))
        (__VERIFIER_assert cond6620))))

; loop entry $main_inv485
(assert
  (forall (($int6621 Int) ($i656 Int) ($k657 Int) ($j658 Int))
    (=> (and (<= (- 2147483648) $int6621)
             (<= $int6621 2147483647)
             (= $k657 0)
             (= $i656 0))
        ($main_inv485 $int6621 $i656 $k657 $j658))))

; loop term $main_sum485
(assert
  (forall (($n6556622 Int) ($i6566623 Int) ($k6576624 Int) ($j6586625 Int))
    (=> (and (not (< $i6566623 $n6556622))
             ($main_inv485 $n6556622 $i6566623 $k6576624 $j6586625))
        ($main_sum485 $n6556622 $i6566623 $k6576624 $j6586625))))

; forwards $main_inv485
(assert
  (forall (($n6556622 Int) ($i6566623 Int) ($k6576624 Int) ($j6586625 Int))
    (=> (and (< $i6566623 $n6556622)
             ($main_inv485 $n6556622 $i6566623 $k6576624 $j6586625))
        ($main_inv485 $n6556622 (+ $i6566623 1) (+ $k6576624 1) $j6586625))))

; loop entry $main_inv486
(assert
  (forall (($n6556626 Int) ($i6566627 Int) ($k6576628 Int) ($j6586629 Int))
    (=> (and (= $j6586629 0)
             ($main_sum485 $n6556626 $i6566627 $k6576628 $j6586629))
        ($main_inv486 $n6556626 $i6566627 $k6576628 $j6586629))))

; loop term $main_sum486
(assert
  (forall (($n6556630 Int) ($i6566631 Int) ($k6576632 Int) ($j6586633 Int))
    (=> (and (not (< $j6586633 $n6556630))
             ($main_inv486 $n6556630 $i6566631 $k6576632 $j6586633))
        ($main_sum486 $n6556630 $i6566631 $k6576632 $j6586633))))

; __VERIFIER_assert precondition
(assert
  (forall (($k6576632 Int) ($j6586633 Int) ($n6556630 Int) ($i6566631 Int))
    (=> (and (< $j6586633 $n6556630)
             ($main_inv486 $n6556630 $i6566631 $k6576632 $j6586633))
        ($__VERIFIER_assert_pre (ite (> $k6576632 0) 1 0)))))

; forwards $main_inv486
(assert
  (forall (($n6556630 Int) ($i6566631 Int) ($k6576632 Int) ($j6586633 Int))
    (=> (and (__VERIFIER_assert (ite (> $k6576632 0) 1 0))
             (< $j6586633 $n6556630)
             ($main_inv486 $n6556630 $i6566631 $k6576632 $j6586633))
        ($main_inv486 $n6556630 $i6566631 (- $k6576632 1) (+ $j6586633 1)))))

(check-sat)
