(set-logic HORN)

(declare-fun $main_sum505 (Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if337 (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $assume_abort_if_not_if336 (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_inv505 (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if336 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond6904 Int))
    (=> (and ($assume_abort_if_not_if336 cond6904))
        (assume_abort_if_not cond6904))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond6905 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond6905))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if337 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6906 Int))
    (=> (and ($__VERIFIER_assert_if337 cond6906))
        (__VERIFIER_assert cond6906))))

; loop entry $main_inv505
(assert
        ($main_inv505 0))

; loop term $main_sum505
(assert
  (forall (($i7086907 Int))
    (=> (and (= $i7086907 1000000)
             ($main_inv505 $i7086907))
        ($main_sum505 $i7086907))))

; __VERIFIER_assert precondition
(assert
  (forall (($i7086907 Int))
    (=> (and (not (= $i7086907 1000000))
             ($main_inv505 $i7086907))
        ($__VERIFIER_assert_pre (ite (<= $i7086907 1000000) 1 0)))))

; forwards $main_inv505
(assert
  (forall (($i7086907 Int))
    (=> (and (__VERIFIER_assert (ite (<= $i7086907 1000000) 1 0))
             (not (= $i7086907 1000000))
             ($main_inv505 $i7086907))
        ($main_inv505 (+ $i7086907 1)))))

(check-sat)
