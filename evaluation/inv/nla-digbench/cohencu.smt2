(set-logic HORN)

(declare-fun $__VERIFIER_assert_if728 (Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_if729 (Int Int Int Int Int) Bool)
(declare-fun $main_inv278 (Int Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_sum278 (Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_if727 (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if727 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond15451 Int))
    (=> (and ($assume_abort_if_not_if727 cond15451))
        (assume_abort_if_not cond15451))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond15452 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15452))
        false)))

; if then
(assert
  (forall ((cond15452 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15452))
        ($__VERIFIER_assert_if728 cond15452))))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if728 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond15453 Int))
    (=> (and ($__VERIFIER_assert_if728 cond15453))
        (__VERIFIER_assert cond15453))))

; loop entry $main_inv278
(assert
  (forall (($int15454 Int))
    (=> (and (<= (- 2147483648) $int15454)
             (<= $int15454 2147483647))
        ($main_inv278 $int15454 0 0 1 6))))

; loop term $main_sum278
(assert
  (forall (($x78515457 Int) ($y78615458 Int) ($z78715459 Int) ($a78315455 Int) ($n78415456 Int))
    (=> (and (= 1 0)
             ($main_inv278 $a78315455 $n78415456 $x78515457 $y78615458 $z78715459))
        ($main_sum278 $a78315455 $n78415456 $x78515457 $y78615458 $z78715459))))

; __VERIFIER_assert precondition
(assert
  (forall (($x78515457 Int) ($y78615458 Int) ($z78715459 Int) ($a78315455 Int) ($n78415456 Int))
    (=> (and (not (= 1 0))
             ($main_inv278 $a78315455 $n78415456 $x78515457 $y78615458 $z78715459))
        ($__VERIFIER_assert_pre (ite (= $z78715459 (+ (* 6 $n78415456) 6)) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x78515457 Int) ($y78615458 Int) ($z78715459 Int) ($a78315455 Int) ($n78415456 Int))
    (=> (and (__VERIFIER_assert (ite (= $z78715459 (+ (* 6 $n78415456) 6)) 1 0))
             (not (= 1 0))
             ($main_inv278 $a78315455 $n78415456 $x78515457 $y78615458 $z78715459))
        ($__VERIFIER_assert_pre (ite (= $y78615458 (+ (+ (* (* 3 $n78415456) $n78415456) (* 3 $n78415456)) 1)) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x78515457 Int) ($y78615458 Int) ($z78715459 Int) ($a78315455 Int) ($n78415456 Int))
    (=> (and (__VERIFIER_assert (ite (= $y78615458 (+ (+ (* (* 3 $n78415456) $n78415456) (* 3 $n78415456)) 1)) 1 0))
             (__VERIFIER_assert (ite (= $z78715459 (+ (* 6 $n78415456) 6)) 1 0))
             (not (= 1 0))
             ($main_inv278 $a78315455 $n78415456 $x78515457 $y78615458 $z78715459))
        ($__VERIFIER_assert_pre (ite (= $x78515457 (* (* $n78415456 $n78415456) $n78415456)) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x78515457 Int) ($y78615458 Int) ($z78715459 Int) ($a78315455 Int) ($n78415456 Int))
    (=> (and (__VERIFIER_assert (ite (= $x78515457 (* (* $n78415456 $n78415456) $n78415456)) 1 0))
             (__VERIFIER_assert (ite (= $y78615458 (+ (+ (* (* 3 $n78415456) $n78415456) (* 3 $n78415456)) 1)) 1 0))
             (__VERIFIER_assert (ite (= $z78715459 (+ (* 6 $n78415456) 6)) 1 0))
             (not (= 1 0))
             ($main_inv278 $a78315455 $n78415456 $x78515457 $y78615458 $z78715459))
        ($__VERIFIER_assert_pre (ite (= (- (+ (- (- (* $y78615458 $z78715459) (* 18 $x78515457)) (* 12 $y78615458)) (* 2 $z78715459)) 6) 0) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x78515457 Int) ($y78615458 Int) ($z78715459 Int) ($a78315455 Int) ($n78415456 Int))
    (=> (and (__VERIFIER_assert (ite (= (- (+ (- (- (* $y78615458 $z78715459) (* 18 $x78515457)) (* 12 $y78615458)) (* 2 $z78715459)) 6) 0) 1 0))
             (__VERIFIER_assert (ite (= $x78515457 (* (* $n78415456 $n78415456) $n78415456)) 1 0))
             (__VERIFIER_assert (ite (= $y78615458 (+ (+ (* (* 3 $n78415456) $n78415456) (* 3 $n78415456)) 1)) 1 0))
             (__VERIFIER_assert (ite (= $z78715459 (+ (* 6 $n78415456) 6)) 1 0))
             (not (= 1 0))
             ($main_inv278 $a78315455 $n78415456 $x78515457 $y78615458 $z78715459))
        ($__VERIFIER_assert_pre (ite (= (+ (- (- (* $z78715459 $z78715459) (* 12 $y78615458)) (* 6 $z78715459)) 12) 0) 1 0)))))

; break $main_sum278
(assert
  (forall (($x78515457 Int) ($y78615458 Int) ($z78715459 Int) ($a78315455 Int) ($n78415456 Int))
    (=> (and (not (<= $n78415456 $a78315455))
             (__VERIFIER_assert (ite (= (+ (- (- (* $z78715459 $z78715459) (* 12 $y78615458)) (* 6 $z78715459)) 12) 0) 1 0))
             (__VERIFIER_assert (ite (= (- (+ (- (- (* $y78615458 $z78715459) (* 18 $x78515457)) (* 12 $y78615458)) (* 2 $z78715459)) 6) 0) 1 0))
             (__VERIFIER_assert (ite (= $x78515457 (* (* $n78415456 $n78415456) $n78415456)) 1 0))
             (__VERIFIER_assert (ite (= $y78615458 (+ (+ (* (* 3 $n78415456) $n78415456) (* 3 $n78415456)) 1)) 1 0))
             (__VERIFIER_assert (ite (= $z78715459 (+ (* 6 $n78415456) 6)) 1 0))
             (not (= 1 0))
             ($main_inv278 $a78315455 $n78415456 $x78515457 $y78615458 $z78715459))
        ($main_sum278 $a78315455 $n78415456 $x78515457 $y78615458 $z78715459))))

; if else
(assert
  (forall (($x78515457 Int) ($y78615458 Int) ($z78715459 Int) ($a78315455 Int) ($n78415456 Int))
    (=> (and (<= $n78415456 $a78315455)
             (__VERIFIER_assert (ite (= (+ (- (- (* $z78715459 $z78715459) (* 12 $y78615458)) (* 6 $z78715459)) 12) 0) 1 0))
             (__VERIFIER_assert (ite (= (- (+ (- (- (* $y78615458 $z78715459) (* 18 $x78515457)) (* 12 $y78615458)) (* 2 $z78715459)) 6) 0) 1 0))
             (__VERIFIER_assert (ite (= $x78515457 (* (* $n78415456 $n78415456) $n78415456)) 1 0))
             (__VERIFIER_assert (ite (= $y78615458 (+ (+ (* (* 3 $n78415456) $n78415456) (* 3 $n78415456)) 1)) 1 0))
             (__VERIFIER_assert (ite (= $z78715459 (+ (* 6 $n78415456) 6)) 1 0))
             (not (= 1 0))
             ($main_inv278 $a78315455 $n78415456 $x78515457 $y78615458 $z78715459))
        ($main_if729 $a78315455 $n78415456 $x78515457 $y78615458 $z78715459))))

; forwards $main_inv278
(assert
  (forall (($y78615463 Int) ($n78415461 Int) ($a78315460 Int) ($z78715464 Int) ($x78515462 Int))
    (=> (and ($main_if729 $a78315460 $n78415461 $x78515462 $y78615463 $z78715464))
        ($main_inv278 $a78315460 (+ $n78415461 1) (+ $x78515462 $y78615463) (+ $y78615463 $z78715464) (+ $z78715464 6)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x78515467 Int) ($n78415466 Int) ($z78715469 Int) ($y78615468 Int) ($a78315465 Int))
    (=> (and ($main_sum278 $a78315465 $n78415466 $x78515467 $y78615468 $z78715469))
        ($__VERIFIER_assert_pre (ite (= $z78715469 (+ (* 6 $n78415466) 6)) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x78515467 Int) ($n78415466 Int) ($z78715469 Int) ($y78615468 Int) ($a78315465 Int))
    (=> (and (__VERIFIER_assert (ite (= $z78715469 (+ (* 6 $n78415466) 6)) 1 0))
             ($main_sum278 $a78315465 $n78415466 $x78515467 $y78615468 $z78715469))
        ($__VERIFIER_assert_pre (ite (= (+ (- (* (* 6 $a78315465) $x78515467) (* $x78515467 $z78715469)) (* 12 $x78515467)) 0) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x78515467 Int) ($n78415466 Int) ($z78715469 Int) ($y78615468 Int) ($a78315465 Int))
    (=> (and (__VERIFIER_assert (ite (= (+ (- (* (* 6 $a78315465) $x78515467) (* $x78515467 $z78715469)) (* 12 $x78515467)) 0) 1 0))
             (__VERIFIER_assert (ite (= $z78715469 (+ (* 6 $n78415466) 6)) 1 0))
             ($main_sum278 $a78315465 $n78415466 $x78515467 $y78615468 $z78715469))
        ($__VERIFIER_assert_pre (ite (= (- (+ (- (- (* $a78315465 $z78715469) (* 6 $a78315465)) (* 2 $y78615468)) (* 2 $z78715469)) 10) 0) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x78515467 Int) ($n78415466 Int) ($z78715469 Int) ($y78615468 Int) ($a78315465 Int))
    (=> (and (__VERIFIER_assert (ite (= (- (+ (- (- (* $a78315465 $z78715469) (* 6 $a78315465)) (* 2 $y78615468)) (* 2 $z78715469)) 10) 0) 1 0))
             (__VERIFIER_assert (ite (= (+ (- (* (* 6 $a78315465) $x78515467) (* $x78515467 $z78715469)) (* 12 $x78515467)) 0) 1 0))
             (__VERIFIER_assert (ite (= $z78715469 (+ (* 6 $n78415466) 6)) 1 0))
             ($main_sum278 $a78315465 $n78415466 $x78515467 $y78615468 $z78715469))
        ($__VERIFIER_assert_pre (ite (= (- (+ (- (- (- (* (* 2 $y78615468) $y78615468) (* (* 3 $x78515467) $z78715469)) (* 18 $x78515467)) (* 10 $y78615468)) (* 3 $z78715469)) 10) 0) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x78515467 Int) ($n78415466 Int) ($z78715469 Int) ($y78615468 Int) ($a78315465 Int))
    (=> (and (__VERIFIER_assert (ite (= (- (+ (- (- (- (* (* 2 $y78615468) $y78615468) (* (* 3 $x78515467) $z78715469)) (* 18 $x78515467)) (* 10 $y78615468)) (* 3 $z78715469)) 10) 0) 1 0))
             (__VERIFIER_assert (ite (= (- (+ (- (- (* $a78315465 $z78715469) (* 6 $a78315465)) (* 2 $y78615468)) (* 2 $z78715469)) 10) 0) 1 0))
             (__VERIFIER_assert (ite (= (+ (- (* (* 6 $a78315465) $x78515467) (* $x78515467 $z78715469)) (* 12 $x78515467)) 0) 1 0))
             (__VERIFIER_assert (ite (= $z78715469 (+ (* 6 $n78415466) 6)) 1 0))
             ($main_sum278 $a78315465 $n78415466 $x78515467 $y78615468 $z78715469))
        ($__VERIFIER_assert_pre (ite (= (+ (- (- (* $z78715469 $z78715469) (* 12 $y78615468)) (* 6 $z78715469)) 12) 0) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x78515467 Int) ($n78415466 Int) ($z78715469 Int) ($y78615468 Int) ($a78315465 Int))
    (=> (and (__VERIFIER_assert (ite (= (+ (- (- (* $z78715469 $z78715469) (* 12 $y78615468)) (* 6 $z78715469)) 12) 0) 1 0))
             (__VERIFIER_assert (ite (= (- (+ (- (- (- (* (* 2 $y78615468) $y78615468) (* (* 3 $x78515467) $z78715469)) (* 18 $x78515467)) (* 10 $y78615468)) (* 3 $z78715469)) 10) 0) 1 0))
             (__VERIFIER_assert (ite (= (- (+ (- (- (* $a78315465 $z78715469) (* 6 $a78315465)) (* 2 $y78615468)) (* 2 $z78715469)) 10) 0) 1 0))
             (__VERIFIER_assert (ite (= (+ (- (* (* 6 $a78315465) $x78515467) (* $x78515467 $z78715469)) (* 12 $x78515467)) 0) 1 0))
             (__VERIFIER_assert (ite (= $z78715469 (+ (* 6 $n78415466) 6)) 1 0))
             ($main_sum278 $a78315465 $n78415466 $x78515467 $y78615468 $z78715469))
        ($__VERIFIER_assert_pre (ite (= (- (+ (- (- (* $y78615468 $z78715469) (* 18 $x78515467)) (* 12 $y78615468)) (* 2 $z78715469)) 6) 0) 1 0)))))

(check-sat)
