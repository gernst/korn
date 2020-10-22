(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_nondet_bool_pre () Bool)
(declare-fun $__VERIFIER_assert_if382 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv530 (Int Int) Bool)
(declare-fun $assume_abort_if_not_if381 (Int Int) Bool)
(declare-fun $main_if383 (Int Int Int Int) Bool)
(declare-fun __VERIFIER_nondet_bool (Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_sum530 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_if384 (Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if381 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond10115 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if381 cond cond10115))
        (assume_abort_if_not cond10115))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond10116 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond10116))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if382 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond10117 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if382 cond cond10117))
        (__VERIFIER_assert cond10117))))

; if else
(assert
  (forall (($x763 Int) ($y764 Int) ($int10119 Int) ($int10118 Int))
    (=> (and (<= $y764 1000000)
             (= $y764 $int10119)
             (<= (- 2147483648) $int10119)
             (<= $int10119 2147483647)
             (= $x763 $int10118)
             (<= (- 2147483648) $int10118)
             (<= $int10118 2147483647))
        ($main_if383 $x763 $y764 $x763 $y764))))

; loop entry $main_inv530
(assert
  (forall (($x76310120 Int) ($y76410121 Int) ($x763 Int) ($y764 Int))
    (=> (and (> $y76410121 0)
             ($main_if383 $x763 $y764 $x76310120 $y76410121))
        ($main_inv530 $x76310120 $y76410121))))

; loop term $main_sum530
(assert
  (forall (($x76310122 Int) ($y76410123 Int))
    (=> (and (not (< $x76310122 100)))
        ($main_sum530 $x76310122 $y76410123 $x76310122 $y76410123))))

; forwards $main_inv530
(assert
  (forall (($x76310122 Int) ($y76410123 Int))
    (=> (and (< $x76310122 100)
             ($main_inv530 $x76310122 $y76410123))
        ($main_inv530 (+ $x76310122 $y76410123) $y76410123))))

; backwards $main_sum530
(assert
  (forall (($x76310122 Int) ($y76410123 Int) ($x76310124 Int) ($y76410125 Int))
    (=> (and ($main_sum530 (+ $x76310122 $y76410123) $y76410123 $x76310124 $y76410125)
             (< $x76310122 100))
        ($main_sum530 $x76310122 $y76410123 $x76310124 $y76410125))))

; if then
(assert
  (forall (($x76310126 Int) ($x76310120 Int) ($y764 Int) ($y76410127 Int) ($x763 Int) ($y76410121 Int))
    (=> (and ($main_sum530 $x76310120 $y76410121 $x76310126 $y76410127)
             (> $y76410121 0)
             ($main_if383 $x763 $y764 $x76310120 $y76410121))
        ($main_if384 $x763 $y764 $x76310126 $y76410127))))

; if else
(assert
  (forall (($x763 Int) ($y764 Int) ($x76310120 Int) ($y76410121 Int))
    (=> (and (not (> $y76410121 0))
             ($main_if383 $x763 $y764 $x76310120 $y76410121))
        ($main_if384 $x763 $y764 $x76310120 $y76410121))))

; __VERIFIER_assert precondition
(assert
  (forall (($y76410129 Int) ($x76310128 Int) ($x763 Int) ($y764 Int))
    (=> (and ($main_if384 $x763 $y764 $x76310128 $y76410129))
        ($__VERIFIER_assert_pre (ite (or (<= $y76410129 0) (and (> $y76410129 0) (>= $x76310128 100))) 1 0)))))

(check-sat)
