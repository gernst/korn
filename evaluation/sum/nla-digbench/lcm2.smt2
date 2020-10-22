(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv293 (Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun __VERIFIER_nondet_unsigned_int (Int) Bool)
(declare-fun $__VERIFIER_assert_if765 (Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $assume_abort_if_not_if764 (Int Int) Bool)
(declare-fun $main_if767 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_if766 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_unsigned_int_pre () Bool)
(declare-fun $main_sum293 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if764 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond17432 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if764 cond cond17432))
        (assume_abort_if_not cond17432))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond17433 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond17433))
        false)))

; if then
(assert
  (forall ((cond Int) (cond17433 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond17433))
        ($__VERIFIER_assert_if765 cond cond17433))))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if765 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond17434 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if765 cond cond17434))
        (__VERIFIER_assert cond17434))))

; assume_abort_if_not precondition
(assert
  (forall (($int17435 Int) ($int17436 Int))
    (=> (and (<= 0 $int17436)
             (<= $int17436 4294967295)
             (<= 0 $int17435)
             (<= $int17435 4294967295))
        ($assume_abort_if_not_pre (ite (>= $int17435 1) 1 0)))))

; assume_abort_if_not precondition
(assert
  (forall (($int17436 Int) ($int17435 Int))
    (=> (and (assume_abort_if_not (ite (>= $int17435 1) 1 0))
             (<= 0 $int17436)
             (<= $int17436 4294967295)
             (<= 0 $int17435)
             (<= $int17435 4294967295))
        ($assume_abort_if_not_pre (ite (>= $int17436 1) 1 0)))))

; assume_abort_if_not precondition
(assert
  (forall (($int17435 Int) ($int17436 Int))
    (=> (and (assume_abort_if_not (ite (>= $int17436 1) 1 0))
             (assume_abort_if_not (ite (>= $int17435 1) 1 0))
             (<= 0 $int17436)
             (<= $int17436 4294967295)
             (<= 0 $int17435)
             (<= $int17435 4294967295))
        ($assume_abort_if_not_pre (ite (<= $int17435 65535) 1 0)))))

; assume_abort_if_not precondition
(assert
  (forall (($int17436 Int) ($int17435 Int))
    (=> (and (assume_abort_if_not (ite (<= $int17435 65535) 1 0))
             (assume_abort_if_not (ite (>= $int17436 1) 1 0))
             (assume_abort_if_not (ite (>= $int17435 1) 1 0))
             (<= 0 $int17436)
             (<= $int17436 4294967295)
             (<= 0 $int17435)
             (<= $int17435 4294967295))
        ($assume_abort_if_not_pre (ite (<= $int17436 65535) 1 0)))))

; loop entry $main_inv293
(assert
  (forall (($int17435 Int) ($int17436 Int))
    (=> (and (assume_abort_if_not (ite (<= $int17436 65535) 1 0))
             (assume_abort_if_not (ite (<= $int17435 65535) 1 0))
             (assume_abort_if_not (ite (>= $int17436 1) 1 0))
             (assume_abort_if_not (ite (>= $int17435 1) 1 0))
             (<= 0 $int17436)
             (<= $int17436 4294967295)
             (<= 0 $int17435)
             (<= $int17435 4294967295))
        ($main_inv293 $int17435 $int17436 $int17435 $int17436 $int17436 $int17435))))

; loop term $main_sum293
(assert
  (forall (($y84417440 Int) ($u84517441 Int) ($b84217438 Int) ($x84317439 Int) ($a84117437 Int) ($v84617442 Int))
    (=> (and (= 1 0))
        ($main_sum293 $a84117437 $b84217438 $x84317439 $y84417440 $u84517441 $v84617442 $a84117437 $b84217438 $x84317439 $y84417440 $u84517441 $v84617442))))

; __VERIFIER_assert precondition
(assert
  (forall (($y84417440 Int) ($u84517441 Int) ($b84217438 Int) ($x84317439 Int) ($a84117437 Int) ($v84617442 Int))
    (=> (and (not (= 1 0))
             ($main_inv293 $a84117437 $b84217438 $x84317439 $y84417440 $u84517441 $v84617442))
        ($__VERIFIER_assert_pre (ite (= (+ (* $x84317439 $u84517441) (* $y84417440 $v84617442)) (* (* 2 $a84117437) $b84217438)) 1 0)))))

; break $main_sum293
(assert
  (forall (($y84417440 Int) ($u84517441 Int) ($b84217438 Int) ($x84317439 Int) ($a84117437 Int) ($v84617442 Int))
    (=> (and (= $x84317439 $y84417440)
             (__VERIFIER_assert (ite (= (+ (* $x84317439 $u84517441) (* $y84417440 $v84617442)) (* (* 2 $a84117437) $b84217438)) 1 0))
             (not (= 1 0))
             ($main_inv293 $a84117437 $b84217438 $x84317439 $y84417440 $u84517441 $v84617442))
        ($main_sum293 $a84117437 $b84217438 $x84317439 $y84417440 $u84517441 $v84617442 $a84117437 $b84217438 $x84317439 $y84417440 $u84517441 $v84617442))))

; if else
(assert
  (forall (($y84417440 Int) ($u84517441 Int) ($b84217438 Int) ($x84317439 Int) ($a84117437 Int) ($v84617442 Int))
    (=> (and (not (= $x84317439 $y84417440))
             (__VERIFIER_assert (ite (= (+ (* $x84317439 $u84517441) (* $y84417440 $v84617442)) (* (* 2 $a84117437) $b84217438)) 1 0))
             (not (= 1 0))
             ($main_inv293 $a84117437 $b84217438 $x84317439 $y84417440 $u84517441 $v84617442))
        ($main_if766 $a84117437 $b84217438 $x84317439 $y84417440 $u84517441 $v84617442 $a84117437 $b84217438 $x84317439 $y84417440 $u84517441 $v84617442))))

; if then
(assert
  (forall (($x84317445 Int) ($y84417440 Int) ($u84517447 Int) ($u84517441 Int) ($a84117443 Int) ($v84617448 Int) ($y84417446 Int) ($b84217438 Int) ($x84317439 Int) ($b84217444 Int) ($a84117437 Int) ($v84617442 Int))
    (=> (and (> $x84317445 $y84417446)
             ($main_if766 $a84117437 $b84217438 $x84317439 $y84417440 $u84517441 $v84617442 $a84117443 $b84217444 $x84317445 $y84417446 $u84517447 $v84617448))
        ($main_if767 $a84117437 $b84217438 $x84317439 $y84417440 $u84517441 $v84617442 $a84117443 $b84217444 (- $x84317445 $y84417446) $y84417446 $u84517447 (+ $v84617448 $u84517447)))))

; if else
(assert
  (forall (($x84317445 Int) ($y84417440 Int) ($u84517447 Int) ($u84517441 Int) ($a84117443 Int) ($v84617448 Int) ($y84417446 Int) ($b84217438 Int) ($x84317439 Int) ($b84217444 Int) ($a84117437 Int) ($v84617442 Int))
    (=> (and (not (> $x84317445 $y84417446))
             ($main_if766 $a84117437 $b84217438 $x84317439 $y84417440 $u84517441 $v84617442 $a84117443 $b84217444 $x84317445 $y84417446 $u84517447 $v84617448))
        ($main_if767 $a84117437 $b84217438 $x84317439 $y84417440 $u84517441 $v84617442 $a84117443 $b84217444 $x84317445 (- $y84417446 $x84317445) (+ $u84517447 $v84617448) $v84617448))))

; forwards $main_inv293
(assert
  (forall (($b84217450 Int) ($y84417440 Int) ($y84417452 Int) ($u84517453 Int) ($v84617454 Int) ($x84317451 Int) ($b84217438 Int) ($x84317439 Int) ($a84117437 Int) ($v84617442 Int) ($a84117449 Int) ($u84517441 Int))
    (=> (and ($main_if767 $a84117437 $b84217438 $x84317439 $y84417440 $u84517441 $v84617442 $a84117449 $b84217450 $x84317451 $y84417452 $u84517453 $v84617454))
        ($main_inv293 $a84117449 $b84217450 $x84317451 $y84417452 $u84517453 $v84617454))))

; backwards $main_sum293
(assert
  (forall (($v84617460 Int) ($b84217450 Int) ($y84417440 Int) ($y84417452 Int) ($x84317457 Int) ($a84117455 Int) ($u84517453 Int) ($v84617454 Int) ($x84317451 Int) ($x84317439 Int) ($a84117437 Int) ($v84617442 Int) ($b84217456 Int) ($u84517459 Int) ($a84117449 Int) ($u84517441 Int) ($b84217438 Int) ($y84417458 Int))
    (=> (and ($main_sum293 $a84117449 $b84217450 $x84317451 $y84417452 $u84517453 $v84617454 $a84117455 $b84217456 $x84317457 $y84417458 $u84517459 $v84617460)
             ($main_if767 $a84117437 $b84217438 $x84317439 $y84417440 $u84517441 $v84617442 $a84117449 $b84217450 $x84317451 $y84417452 $u84517453 $v84617454))
        ($main_sum293 $a84117437 $b84217438 $x84317439 $y84417440 $u84517441 $v84617442 $a84117455 $b84217456 $x84317457 $y84417458 $u84517459 $v84617460))))

; __VERIFIER_assert precondition
(assert
  (forall (($u84517465 Int) ($x84317463 Int) ($b84217462 Int) ($int17436 Int) ($v84617466 Int) ($a84117461 Int) ($y84417464 Int) ($int17435 Int))
    (=> (and ($main_sum293 $int17435 $int17436 $int17435 $int17436 $int17436 $int17435 $a84117461 $b84217462 $x84317463 $y84417464 $u84517465 $v84617466)
             (assume_abort_if_not (ite (<= $int17436 65535) 1 0))
             (assume_abort_if_not (ite (<= $int17435 65535) 1 0))
             (assume_abort_if_not (ite (>= $int17436 1) 1 0))
             (assume_abort_if_not (ite (>= $int17435 1) 1 0))
             (<= 0 $int17436)
             (<= $int17436 4294967295)
             (<= 0 $int17435)
             (<= $int17435 4294967295))
        ($__VERIFIER_assert_pre (ite (= (+ (* $x84317463 $u84517465) (* $y84417464 $v84617466)) (* (* 2 $a84117461) $b84217462)) 1 0)))))

(check-sat)
