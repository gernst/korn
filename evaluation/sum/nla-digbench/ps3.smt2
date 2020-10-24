(set-logic HORN)

(declare-fun $main_sum296 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if776 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $assume_abort_if_not_if775 (Int Int) Bool)
(declare-fun $main_inv296 (Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_if777 (Int Int Int Int Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if775 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond17517 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if775 cond cond17517))
        (assume_abort_if_not cond17517))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond17518 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond17518))
        false)))

; if then
(assert
  (forall ((cond Int) (cond17518 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond17518))
        ($__VERIFIER_assert_if776 cond cond17518))))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if776 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond17519 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if776 cond cond17519))
        (__VERIFIER_assert cond17519))))

; loop entry $main_inv296
(assert
  (forall (($int17520 Int))
    (=> (and (<= (- 2147483648) $int17520)
             (<= $int17520 2147483647))
        ($main_inv296 $int17520 0 0 0))))

; loop term $main_sum296
(assert
  (forall (($k85617521 Int) ($y85717522 Int) ($x85817523 Int) ($c85917524 Int))
    (=> (and (= 1 0))
        ($main_sum296 $k85617521 $y85717522 $x85817523 $c85917524 $k85617521 $y85717522 $x85817523 $c85917524))))

; __VERIFIER_assert precondition
(assert
  (forall (($x85817523 Int) ($y85717522 Int) ($k85617521 Int) ($c85917524 Int))
    (=> (and (not (= 1 0))
             ($main_inv296 $k85617521 $y85717522 $x85817523 $c85917524))
        ($__VERIFIER_assert_pre (ite (= (- (- (- (* 6 $x85817523) (* (* (* 2 $y85717522) $y85717522) $y85717522)) (* (* 3 $y85717522) $y85717522)) $y85717522) 0) 1 0)))))

; break $main_sum296
(assert
  (forall (($k85617521 Int) ($y85717522 Int) ($x85817523 Int) ($c85917524 Int))
    (=> (and (not (< $c85917524 $k85617521))
             (__VERIFIER_assert (ite (= (- (- (- (* 6 $x85817523) (* (* (* 2 $y85717522) $y85717522) $y85717522)) (* (* 3 $y85717522) $y85717522)) $y85717522) 0) 1 0))
             (not (= 1 0))
             ($main_inv296 $k85617521 $y85717522 $x85817523 $c85917524))
        ($main_sum296 $k85617521 $y85717522 $x85817523 $c85917524 $k85617521 $y85717522 $x85817523 $c85917524))))

; if else
(assert
  (forall (($k85617521 Int) ($y85717522 Int) ($x85817523 Int) ($c85917524 Int))
    (=> (and (< $c85917524 $k85617521)
             (__VERIFIER_assert (ite (= (- (- (- (* 6 $x85817523) (* (* (* 2 $y85717522) $y85717522) $y85717522)) (* (* 3 $y85717522) $y85717522)) $y85717522) 0) 1 0))
             (not (= 1 0))
             ($main_inv296 $k85617521 $y85717522 $x85817523 $c85917524))
        ($main_if777 $k85617521 $y85717522 $x85817523 $c85917524 $k85617521 $y85717522 $x85817523 $c85917524))))

; forwards $main_inv296
(assert
  (forall (($k85617525 Int) ($x85817527 Int) ($y85717522 Int) ($c85917528 Int) ($k85617521 Int) ($c85917524 Int) ($y85717526 Int) ($x85817523 Int))
    (=> (and ($main_if777 $k85617521 $y85717522 $x85817523 $c85917524 $k85617525 $y85717526 $x85817527 $c85917528))
        ($main_inv296 $k85617525 (+ $y85717526 1) (+ (* (+ $y85717526 1) (+ $y85717526 1)) $x85817527) (+ $c85917528 1)))))

; backwards $main_sum296
(assert
  (forall (($k85617525 Int) ($x85817527 Int) ($y85717522 Int) ($c85917532 Int) ($y85717530 Int) ($x85817531 Int) ($c85917528 Int) ($k85617529 Int) ($k85617521 Int) ($c85917524 Int) ($y85717526 Int) ($x85817523 Int))
    (=> (and ($main_sum296 $k85617525 (+ $y85717526 1) (+ (* (+ $y85717526 1) (+ $y85717526 1)) $x85817527) (+ $c85917528 1) $k85617529 $y85717530 $x85817531 $c85917532)
             ($main_if777 $k85617521 $y85717522 $x85817523 $c85917524 $k85617525 $y85717526 $x85817527 $c85917528))
        ($main_sum296 $k85617521 $y85717522 $x85817523 $c85917524 $k85617529 $y85717530 $x85817531 $c85917532))))

; __VERIFIER_assert precondition
(assert
  (forall (($c85917536 Int) ($int17520 Int) ($x85817535 Int) ($y85717534 Int) ($k85617533 Int))
    (=> (and ($main_sum296 $int17520 0 0 0 $k85617533 $y85717534 $x85817535 $c85917536)
             (<= (- 2147483648) $int17520)
             (<= $int17520 2147483647))
        ($__VERIFIER_assert_pre (ite (= (- (- (- (* 6 $x85817535) (* (* (* 2 $y85717534) $y85717534) $y85717534)) (* (* 3 $y85717534) $y85717534)) $y85717534) 0) 1 0)))))

(check-sat)
