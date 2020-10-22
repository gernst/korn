(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv297 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if779 (Int Int) Bool)
(declare-fun $main_if780 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_if778 (Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_sum297 (Int Int Int Int Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if778 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond17537 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if778 cond cond17537))
        (assume_abort_if_not cond17537))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond17538 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond17538))
        false)))

; if then
(assert
  (forall ((cond Int) (cond17538 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond17538))
        ($__VERIFIER_assert_if779 cond cond17538))))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if779 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond17539 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if779 cond cond17539))
        (__VERIFIER_assert cond17539))))

; loop entry $main_inv297
(assert
  (forall (($int17540 Int))
    (=> (and (<= (- 2147483648) $int17540)
             (<= $int17540 2147483647))
        ($main_inv297 $int17540 0 0 0))))

; loop term $main_sum297
(assert
  (forall (($k86017541 Int) ($y86117542 Int) ($x86217543 Int) ($c86317544 Int))
    (=> (and (= 1 0))
        ($main_sum297 $k86017541 $y86117542 $x86217543 $c86317544 $k86017541 $y86117542 $x86217543 $c86317544))))

; __VERIFIER_assert precondition
(assert
  (forall (($x86217543 Int) ($y86117542 Int) ($k86017541 Int) ($c86317544 Int))
    (=> (and (not (= 1 0))
             ($main_inv297 $k86017541 $y86117542 $x86217543 $c86317544))
        ($__VERIFIER_assert_pre (ite (= (- (- (- (* 4 $x86217543) (* (* (* $y86117542 $y86117542) $y86117542) $y86117542)) (* (* (* 2 $y86117542) $y86117542) $y86117542)) (* $y86117542 $y86117542)) 0) 1 0)))))

; break $main_sum297
(assert
  (forall (($k86017541 Int) ($y86117542 Int) ($x86217543 Int) ($c86317544 Int))
    (=> (and (not (< $c86317544 $k86017541))
             (__VERIFIER_assert (ite (= (- (- (- (* 4 $x86217543) (* (* (* $y86117542 $y86117542) $y86117542) $y86117542)) (* (* (* 2 $y86117542) $y86117542) $y86117542)) (* $y86117542 $y86117542)) 0) 1 0))
             (not (= 1 0))
             ($main_inv297 $k86017541 $y86117542 $x86217543 $c86317544))
        ($main_sum297 $k86017541 $y86117542 $x86217543 $c86317544 $k86017541 $y86117542 $x86217543 $c86317544))))

; if else
(assert
  (forall (($k86017541 Int) ($y86117542 Int) ($x86217543 Int) ($c86317544 Int))
    (=> (and (< $c86317544 $k86017541)
             (__VERIFIER_assert (ite (= (- (- (- (* 4 $x86217543) (* (* (* $y86117542 $y86117542) $y86117542) $y86117542)) (* (* (* 2 $y86117542) $y86117542) $y86117542)) (* $y86117542 $y86117542)) 0) 1 0))
             (not (= 1 0))
             ($main_inv297 $k86017541 $y86117542 $x86217543 $c86317544))
        ($main_if780 $k86017541 $y86117542 $x86217543 $c86317544 $k86017541 $y86117542 $x86217543 $c86317544))))

; forwards $main_inv297
(assert
  (forall (($x86217547 Int) ($x86217543 Int) ($y86117542 Int) ($y86117546 Int) ($k86017545 Int) ($k86017541 Int) ($c86317544 Int) ($c86317548 Int))
    (=> (and ($main_if780 $k86017541 $y86117542 $x86217543 $c86317544 $k86017545 $y86117546 $x86217547 $c86317548))
        ($main_inv297 $k86017545 (+ $y86117546 1) (+ (* (* (+ $y86117546 1) (+ $y86117546 1)) (+ $y86117546 1)) $x86217547) (+ $c86317548 1)))))

; backwards $main_sum297
(assert
  (forall (($x86217547 Int) ($x86217543 Int) ($c86317552 Int) ($y86117542 Int) ($y86117550 Int) ($y86117546 Int) ($c86317544 Int) ($c86317548 Int) ($k86017545 Int) ($x86217551 Int) ($k86017541 Int) ($k86017549 Int))
    (=> (and ($main_sum297 $k86017545 (+ $y86117546 1) (+ (* (* (+ $y86117546 1) (+ $y86117546 1)) (+ $y86117546 1)) $x86217547) (+ $c86317548 1) $k86017549 $y86117550 $x86217551 $c86317552)
             ($main_if780 $k86017541 $y86117542 $x86217543 $c86317544 $k86017545 $y86117546 $x86217547 $c86317548))
        ($main_sum297 $k86017541 $y86117542 $x86217543 $c86317544 $k86017549 $y86117550 $x86217551 $c86317552))))

; __VERIFIER_assert precondition
(assert
  (forall (($k86017553 Int) ($y86117554 Int) ($int17540 Int) ($x86217555 Int) ($c86317556 Int))
    (=> (and ($main_sum297 $int17540 0 0 0 $k86017553 $y86117554 $x86217555 $c86317556)
             (<= (- 2147483648) $int17540)
             (<= $int17540 2147483647))
        ($__VERIFIER_assert_pre (ite (= (- (* $k86017553 $y86117554) (* $y86117554 $y86117554)) 0) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($k86017553 Int) ($y86117554 Int) ($int17540 Int) ($x86217555 Int) ($c86317556 Int))
    (=> (and (__VERIFIER_assert (ite (= (- (* $k86017553 $y86117554) (* $y86117554 $y86117554)) 0) 1 0))
             ($main_sum297 $int17540 0 0 0 $k86017553 $y86117554 $x86217555 $c86317556)
             (<= (- 2147483648) $int17540)
             (<= $int17540 2147483647))
        ($__VERIFIER_assert_pre (ite (= (- (- (- (* 4 $x86217555) (* (* (* $y86117554 $y86117554) $y86117554) $y86117554)) (* (* (* 2 $y86117554) $y86117554) $y86117554)) (* $y86117554 $y86117554)) 0) 1 0)))))

(check-sat)
