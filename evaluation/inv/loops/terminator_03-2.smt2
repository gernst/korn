(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_if382 (Int) Bool)
(declare-fun $__VERIFIER_nondet_bool_pre () Bool)
(declare-fun $assume_abort_if_not_if381 (Int) Bool)
(declare-fun $main_inv530 (Int Int) Bool)
(declare-fun $main_if383 (Int Int) Bool)
(declare-fun __VERIFIER_nondet_bool (Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_sum530 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_if384 (Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if381 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond7253 Int))
    (=> (and ($assume_abort_if_not_if381 cond7253))
        (assume_abort_if_not cond7253))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond7254 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond7254))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if382 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond7255 Int))
    (=> (and ($__VERIFIER_assert_if382 cond7255))
        (__VERIFIER_assert cond7255))))

; if else
(assert
  (forall (($x763 Int) ($y764 Int) ($int7257 Int) ($int7256 Int))
    (=> (and (<= $y764 1000000)
             (= $y764 $int7257)
             (<= (- 2147483648) $int7257)
             (<= $int7257 2147483647)
             (= $x763 $int7256)
             (<= (- 2147483648) $int7256)
             (<= $int7256 2147483647))
        ($main_if383 $x763 $y764))))

; loop entry $main_inv530
(assert
  (forall (($x7637258 Int) ($y7647259 Int))
    (=> (and (> $y7647259 0)
             ($main_if383 $x7637258 $y7647259))
        ($main_inv530 $x7637258 $y7647259))))

; loop term $main_sum530
(assert
  (forall (($x7637260 Int) ($y7647261 Int))
    (=> (and (not (< $x7637260 100))
             ($main_inv530 $x7637260 $y7647261))
        ($main_sum530 $x7637260 $y7647261))))

; forwards $main_inv530
(assert
  (forall (($x7637260 Int) ($y7647261 Int))
    (=> (and (< $x7637260 100)
             ($main_inv530 $x7637260 $y7647261))
        ($main_inv530 (+ $x7637260 $y7647261) $y7647261))))

; if then
(assert
  (forall (($x7637262 Int) ($y7647263 Int))
    (=> (and ($main_sum530 $x7637262 $y7647263))
        ($main_if384 $x7637262 $y7647263))))

; if else
(assert
  (forall (($x7637258 Int) ($y7647259 Int))
    (=> (and (not (> $y7647259 0))
             ($main_if383 $x7637258 $y7647259))
        ($main_if384 $x7637258 $y7647259))))

; __VERIFIER_assert precondition
(assert
  (forall (($y7647265 Int) ($x7637264 Int))
    (=> (and ($main_if384 $x7637264 $y7647265))
        ($__VERIFIER_assert_pre (ite (or (<= $y7647265 0) (and (> $y7647265 0) (>= $x7637264 100))) 1 0)))))

(check-sat)
