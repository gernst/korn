(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $assume_abort_if_not_if743 (Int) Bool)
(declare-fun $main_inv284 (Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if744 (Int) Bool)
(declare-fun $main_if745 (Int Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_sum284 (Int Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if743 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond15617 Int))
    (=> (and ($assume_abort_if_not_if743 cond15617))
        (assume_abort_if_not cond15617))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond15618 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15618))
        false)))

; if then
(assert
  (forall ((cond15618 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15618))
        ($__VERIFIER_assert_if744 cond15618))))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if744 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond15619 Int))
    (=> (and ($__VERIFIER_assert_if744 cond15619))
        (__VERIFIER_assert cond15619))))

; loop entry $main_inv284
(assert
  (forall (($int15620 Int) ($int15621 Int))
    (=> (and (<= (- 2147483648) $int15621)
             (<= $int15621 2147483647)
             (<= (- 2147483648) $int15620)
             (<= $int15620 2147483647))
        ($main_inv284 $int15620 $int15621 1 1 1))))

; loop term $main_sum284
(assert
  (forall (($y81515625 Int) ($c81615626 Int) ($x81415624 Int) ($z81215622 Int) ($k81315623 Int))
    (=> (and (= 1 0)
             ($main_inv284 $z81215622 $k81315623 $x81415624 $y81515625 $c81615626))
        ($main_sum284 $z81215622 $k81315623 $x81415624 $y81515625 $c81615626))))

; __VERIFIER_assert precondition
(assert
  (forall (($y81515625 Int) ($c81615626 Int) ($x81415624 Int) ($z81215622 Int) ($k81315623 Int))
    (=> (and (not (= 1 0))
             ($main_inv284 $z81215622 $k81315623 $x81415624 $y81515625 $c81615626))
        ($__VERIFIER_assert_pre (ite (= (- (- (+ 1 (* $x81415624 $z81215622)) $x81415624) (* $z81215622 $y81515625)) 0) 1 0)))))

; break $main_sum284
(assert
  (forall (($y81515625 Int) ($c81615626 Int) ($x81415624 Int) ($z81215622 Int) ($k81315623 Int))
    (=> (and (not (< $c81615626 $k81315623))
             (__VERIFIER_assert (ite (= (- (- (+ 1 (* $x81415624 $z81215622)) $x81415624) (* $z81215622 $y81515625)) 0) 1 0))
             (not (= 1 0))
             ($main_inv284 $z81215622 $k81315623 $x81415624 $y81515625 $c81615626))
        ($main_sum284 $z81215622 $k81315623 $x81415624 $y81515625 $c81615626))))

; if else
(assert
  (forall (($y81515625 Int) ($c81615626 Int) ($x81415624 Int) ($z81215622 Int) ($k81315623 Int))
    (=> (and (< $c81615626 $k81315623)
             (__VERIFIER_assert (ite (= (- (- (+ 1 (* $x81415624 $z81215622)) $x81415624) (* $z81215622 $y81515625)) 0) 1 0))
             (not (= 1 0))
             ($main_inv284 $z81215622 $k81315623 $x81415624 $y81515625 $c81615626))
        ($main_if745 $z81215622 $k81315623 $x81415624 $y81515625 $c81615626))))

; forwards $main_inv284
(assert
  (forall (($y81515630 Int) ($z81215627 Int) ($k81315628 Int) ($c81615631 Int) ($x81415629 Int))
    (=> (and ($main_if745 $z81215627 $k81315628 $x81415629 $y81515630 $c81615631))
        ($main_inv284 $z81215627 $k81315628 (+ (* $x81415629 $z81215627) 1) (* $y81515630 $z81215627) (+ $c81615631 1)))))

; __VERIFIER_assert precondition
(assert
  (forall (($y81515635 Int) ($k81315633 Int) ($z81215632 Int) ($x81415634 Int) ($c81615636 Int))
    (=> (and ($main_sum284 $z81215632 $k81315633 $x81415634 $y81515635 $c81615636))
        ($__VERIFIER_assert_pre (ite (= (- (- (+ 1 (* $x81415634 $z81215632)) $x81415634) (* $z81215632 $y81515635)) 0) 1 0)))))

(check-sat)
