(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_inv277 (Int Int Int Int Int) Bool)
(declare-fun $main_if726 (Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum277 (Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_if724 (Int) Bool)
(declare-fun $assume_abort_if_not_if723 (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_if725 (Int Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if723 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond15426 Int))
    (=> (and ($assume_abort_if_not_if723 cond15426))
        (assume_abort_if_not cond15426))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond15427 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15427))
        false)))

; if then
(assert
  (forall ((cond15427 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15427))
        ($__VERIFIER_assert_if724 cond15427))))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if724 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond15428 Int))
    (=> (and ($__VERIFIER_assert_if724 cond15428))
        (__VERIFIER_assert cond15428))))

; loop entry $main_inv277
(assert
  (forall (($int15429 Int) ($int15430 Int))
    (=> (and (<= (- 2147483648) $int15430)
             (<= $int15430 2147483647)
             (<= (- 2147483648) $int15429)
             (<= $int15429 2147483647))
        ($main_inv277 $int15429 $int15430 (- (* 2 $int15430) $int15429) 0 0))))

; loop term $main_sum277
(assert
  (forall (($X77815431 Int) ($v78015433 Int) ($x78115434 Int) ($y78215435 Int) ($Y77915432 Int))
    (=> (and (= 1 0)
             ($main_inv277 $X77815431 $Y77915432 $v78015433 $x78115434 $y78215435))
        ($main_sum277 $X77815431 $Y77915432 $v78015433 $x78115434 $y78215435))))

; __VERIFIER_assert precondition
(assert
  (forall (($X77815431 Int) ($v78015433 Int) ($x78115434 Int) ($y78215435 Int) ($Y77915432 Int))
    (=> (and (not (= 1 0))
             ($main_inv277 $X77815431 $Y77915432 $v78015433 $x78115434 $y78215435))
        ($__VERIFIER_assert_pre (ite (= (- (+ (- (- (* (* 2 $Y77915432) $x78115434) (* (* 2 $X77815431) $y78215435)) $X77815431) (* 2 $Y77915432)) $v78015433) 0) 1 0)))))

; break $main_sum277
(assert
  (forall (($X77815431 Int) ($v78015433 Int) ($x78115434 Int) ($y78215435 Int) ($Y77915432 Int))
    (=> (and (not (<= $x78115434 $X77815431))
             (__VERIFIER_assert (ite (= (- (+ (- (- (* (* 2 $Y77915432) $x78115434) (* (* 2 $X77815431) $y78215435)) $X77815431) (* 2 $Y77915432)) $v78015433) 0) 1 0))
             (not (= 1 0))
             ($main_inv277 $X77815431 $Y77915432 $v78015433 $x78115434 $y78215435))
        ($main_sum277 $X77815431 $Y77915432 $v78015433 $x78115434 $y78215435))))

; if else
(assert
  (forall (($X77815431 Int) ($v78015433 Int) ($x78115434 Int) ($y78215435 Int) ($Y77915432 Int))
    (=> (and (<= $x78115434 $X77815431)
             (__VERIFIER_assert (ite (= (- (+ (- (- (* (* 2 $Y77915432) $x78115434) (* (* 2 $X77815431) $y78215435)) $X77815431) (* 2 $Y77915432)) $v78015433) 0) 1 0))
             (not (= 1 0))
             ($main_inv277 $X77815431 $Y77915432 $v78015433 $x78115434 $y78215435))
        ($main_if725 $X77815431 $Y77915432 $v78015433 $x78115434 $y78215435))))

; if then
(assert
  (forall (($v78015438 Int) ($X77815436 Int) ($y78215440 Int) ($Y77915437 Int) ($x78115439 Int))
    (=> (and (< $v78015438 0)
             ($main_if725 $X77815436 $Y77915437 $v78015438 $x78115439 $y78215440))
        ($main_if726 $X77815436 $Y77915437 (+ $v78015438 (* 2 $Y77915437)) $x78115439 $y78215440))))

; if else
(assert
  (forall (($v78015438 Int) ($X77815436 Int) ($y78215440 Int) ($Y77915437 Int) ($x78115439 Int))
    (=> (and (not (< $v78015438 0))
             ($main_if725 $X77815436 $Y77915437 $v78015438 $x78115439 $y78215440))
        ($main_if726 $X77815436 $Y77915437 (+ $v78015438 (* 2 (- $Y77915437 $X77815436))) $x78115439 (+ $y78215440 1)))))

; forwards $main_inv277
(assert
  (forall (($x78115444 Int) ($y78215445 Int) ($v78015443 Int) ($Y77915442 Int) ($X77815441 Int))
    (=> (and ($main_if726 $X77815441 $Y77915442 $v78015443 $x78115444 $y78215445))
        ($main_inv277 $X77815441 $Y77915442 $v78015443 (+ $x78115444 1) $y78215445))))

; __VERIFIER_assert precondition
(assert
  (forall (($x78115449 Int) ($Y77915447 Int) ($y78215450 Int) ($X77815446 Int) ($v78015448 Int))
    (=> (and ($main_sum277 $X77815446 $Y77915447 $v78015448 $x78115449 $y78215450))
        ($__VERIFIER_assert_pre (ite (= (+ (- (+ (- (- (* (* 2 $Y77915447) $x78115449) (* (* 2 $x78115449) $y78215450)) $X77815446) (* 2 $Y77915447)) $v78015448) (* 2 $y78215450)) 0) 1 0)))))

(check-sat)
