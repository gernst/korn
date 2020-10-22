(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $assume_abort_if_not_if346 (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum509 (Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if347 (Int) Bool)
(declare-fun $main_if348 (Int Int Int) Bool)
(declare-fun $main_inv509 (Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if346 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond6937 Int))
    (=> (and ($assume_abort_if_not_if346 cond6937))
        (assume_abort_if_not cond6937))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond6938 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond6938))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if347 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6939 Int))
    (=> (and ($__VERIFIER_assert_if347 cond6939))
        (__VERIFIER_assert cond6939))))

; if else
(assert
  (forall (($int6940 Int) ($sum716 Int) ($i717 Int))
    (=> (and (<= 1 $int6940)
             (<= $int6940 1000)
             (<= (- 2147483648) $int6940)
             (<= $int6940 2147483647))
        ($main_if348 $int6940 $sum716 $i717))))

; loop entry $main_inv509
(assert
  (forall (($n7156941 Int) ($sum7166942 Int) ($i7176943 Int))
    (=> (and ($main_if348 $n7156941 $sum7166942 $i7176943))
        ($main_inv509 $n7156941 0 1))))

; loop term $main_sum509
(assert
  (forall (($n7156944 Int) ($sum7166945 Int) ($i7176946 Int))
    (=> (and (not (<= $i7176946 $n7156944))
             ($main_inv509 $n7156944 $sum7166945 $i7176946))
        ($main_sum509 $n7156944 $sum7166945 $i7176946))))

; forwards $main_inv509
(assert
  (forall (($n7156944 Int) ($sum7166945 Int) ($i7176946 Int))
    (=> (and (<= $i7176946 $n7156944)
             ($main_inv509 $n7156944 $sum7166945 $i7176946))
        ($main_inv509 $n7156944 (+ $sum7166945 $i7176946) (+ $i7176946 1)))))

; __VERIFIER_assert precondition
(assert
  (forall (($sum7166948 Int) ($n7156947 Int) ($i7176949 Int))
    (=> (and ($main_sum509 $n7156947 $sum7166948 $i7176949))
        ($__VERIFIER_assert_pre (ite (= (* 2 $sum7166948) (* $n7156947 (+ $n7156947 1))) 1 0)))))

(check-sat)
