(set-logic HORN)

(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $assume_abort_if_not_if346 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum509 (Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_if348 (Int Int Int Int Int Int) Bool)
(declare-fun $main_inv509 (Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $__VERIFIER_assert_if347 (Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if346 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond9703 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if346 cond cond9703))
        (assume_abort_if_not cond9703))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond9704 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond9704))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if347 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond9705 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if347 cond cond9705))
        (__VERIFIER_assert cond9705))))

; if else
(assert
  (forall (($n715 Int) ($sum716 Int) ($i717 Int) ($int9706 Int))
    (=> (and (<= 1 $int9706)
             (<= $int9706 1000)
             (<= (- 2147483648) $int9706)
             (<= $int9706 2147483647))
        ($main_if348 $n715 $sum716 $i717 $int9706 $sum716 $i717))))

; loop entry $main_inv509
(assert
  (forall (($sum7169708 Int) ($n7159707 Int) ($n715 Int) ($i717 Int) ($i7179709 Int) ($sum716 Int))
    (=> (and ($main_if348 $n715 $sum716 $i717 $n7159707 $sum7169708 $i7179709))
        ($main_inv509 $n7159707 0 1))))

; loop term $main_sum509
(assert
  (forall (($n7159710 Int) ($sum7169711 Int) ($i7179712 Int))
    (=> (and (not (<= $i7179712 $n7159710)))
        ($main_sum509 $n7159710 $sum7169711 $i7179712 $n7159710 $sum7169711 $i7179712))))

; forwards $main_inv509
(assert
  (forall (($n7159710 Int) ($sum7169711 Int) ($i7179712 Int))
    (=> (and (<= $i7179712 $n7159710)
             ($main_inv509 $n7159710 $sum7169711 $i7179712))
        ($main_inv509 $n7159710 (+ $sum7169711 $i7179712) (+ $i7179712 1)))))

; backwards $main_sum509
(assert
  (forall (($i7179712 Int) ($sum7169711 Int) ($i7179715 Int) ($sum7169714 Int) ($n7159710 Int) ($n7159713 Int))
    (=> (and ($main_sum509 $n7159710 (+ $sum7169711 $i7179712) (+ $i7179712 1) $n7159713 $sum7169714 $i7179715)
             (<= $i7179712 $n7159710))
        ($main_sum509 $n7159710 $sum7169711 $i7179712 $n7159713 $sum7169714 $i7179715))))

; __VERIFIER_assert precondition
(assert
  (forall (($sum7169708 Int) ($n7159707 Int) ($n715 Int) ($i717 Int) ($n7159716 Int) ($i7179718 Int) ($sum7169717 Int) ($i7179709 Int) ($sum716 Int))
    (=> (and ($main_sum509 $n7159707 0 1 $n7159716 $sum7169717 $i7179718)
             ($main_if348 $n715 $sum716 $i717 $n7159707 $sum7169708 $i7179709))
        ($__VERIFIER_assert_pre (ite (= (* 2 $sum7169717) (* $n7159716 (+ $n7159716 1))) 1 0)))))

(check-sat)
