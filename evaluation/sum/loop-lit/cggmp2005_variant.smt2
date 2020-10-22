(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $assume_abort_if_not_if291 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_if292 (Int Int) Bool)
(declare-fun $main_inv493 (Int Int Int) Bool)
(declare-fun $main_if293 (Int Int Int Int Int Int) Bool)
(declare-fun $main_sum493 (Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if291 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond9418 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if291 cond cond9418))
        (assume_abort_if_not cond9418))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond9419 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond9419))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if292 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond9420 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if292 cond cond9420))
        (__VERIFIER_assert cond9420))))

; if else
(assert
  (forall (($lo670 Int) ($mid671 Int) ($hi672 Int) ($int9421 Int))
    (=> (and (> $int9421 0)
             (<= $int9421 1000000)
             (<= (- 2147483648) $int9421)
             (<= $int9421 2147483647))
        ($main_if293 $lo670 $mid671 $hi672 0 $int9421 $hi672))))

; loop entry $main_inv493
(assert
  (forall (($hi6729424 Int) ($lo670 Int) ($lo6709422 Int) ($hi672 Int) ($mid671 Int) ($mid6719423 Int))
    (=> (and ($main_if293 $lo670 $mid671 $hi672 $lo6709422 $mid6719423 $hi6729424))
        ($main_inv493 $lo6709422 $mid6719423 (* 2 $mid6719423)))))

; loop term $main_sum493
(assert
  (forall (($lo6709425 Int) ($mid6719426 Int) ($hi6729427 Int))
    (=> (and (not (> $mid6719426 0)))
        ($main_sum493 $lo6709425 $mid6719426 $hi6729427 $lo6709425 $mid6719426 $hi6729427))))

; forwards $main_inv493
(assert
  (forall (($lo6709425 Int) ($mid6719426 Int) ($hi6729427 Int))
    (=> (and (> $mid6719426 0)
             ($main_inv493 $lo6709425 $mid6719426 $hi6729427))
        ($main_inv493 (+ $lo6709425 1) (- $mid6719426 1) (- $hi6729427 1)))))

; backwards $main_sum493
(assert
  (forall (($mid6719426 Int) ($hi6729427 Int) ($lo6709425 Int) ($mid6719429 Int) ($hi6729430 Int) ($lo6709428 Int))
    (=> (and ($main_sum493 (+ $lo6709425 1) (- $mid6719426 1) (- $hi6729427 1) $lo6709428 $mid6719429 $hi6729430)
             (> $mid6719426 0))
        ($main_sum493 $lo6709425 $mid6719426 $hi6729427 $lo6709428 $mid6719429 $hi6729430))))

; __VERIFIER_assert precondition
(assert
  (forall (($lo6709431 Int) ($hi6729424 Int) ($lo670 Int) ($lo6709422 Int) ($hi672 Int) ($mid6719432 Int) ($mid671 Int) ($hi6729433 Int) ($mid6719423 Int))
    (=> (and ($main_sum493 $lo6709422 $mid6719423 (* 2 $mid6719423) $lo6709431 $mid6719432 $hi6729433)
             ($main_if293 $lo670 $mid671 $hi672 $lo6709422 $mid6719423 $hi6729424))
        ($__VERIFIER_assert_pre (ite (= $lo6709431 $hi6729433) 1 0)))))

(check-sat)
