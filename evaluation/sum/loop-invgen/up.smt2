(set-logic HORN)

(declare-fun $main_sum486 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if279 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $assume_abort_if_not_if278 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv486 (Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_sum485 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv485 (Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if278 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond9314 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if278 cond cond9314))
        (assume_abort_if_not cond9314))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond9315 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond9315))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if279 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond9316 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if279 cond cond9316))
        (__VERIFIER_assert cond9316))))

; loop entry $main_inv485
(assert
  (forall (($int9317 Int) ($i656 Int) ($k657 Int) ($j658 Int))
    (=> (and (<= (- 2147483648) $int9317)
             (<= $int9317 2147483647)
             (= $k657 0)
             (= $i656 0))
        ($main_inv485 $int9317 $i656 $k657 $j658))))

; loop term $main_sum485
(assert
  (forall (($n6559318 Int) ($i6569319 Int) ($k6579320 Int) ($j6589321 Int))
    (=> (and (not (< $i6569319 $n6559318)))
        ($main_sum485 $n6559318 $i6569319 $k6579320 $j6589321 $n6559318 $i6569319 $k6579320 $j6589321))))

; forwards $main_inv485
(assert
  (forall (($n6559318 Int) ($i6569319 Int) ($k6579320 Int) ($j6589321 Int))
    (=> (and (< $i6569319 $n6559318)
             ($main_inv485 $n6559318 $i6569319 $k6579320 $j6589321))
        ($main_inv485 $n6559318 (+ $i6569319 1) (+ $k6579320 1) $j6589321))))

; backwards $main_sum485
(assert
  (forall (($j6589321 Int) ($j6589325 Int) ($i6569319 Int) ($k6579324 Int) ($k6579320 Int) ($n6559322 Int) ($i6569323 Int) ($n6559318 Int))
    (=> (and ($main_sum485 $n6559318 (+ $i6569319 1) (+ $k6579320 1) $j6589321 $n6559322 $i6569323 $k6579324 $j6589325)
             (< $i6569319 $n6559318))
        ($main_sum485 $n6559318 $i6569319 $k6579320 $j6589321 $n6559322 $i6569323 $k6579324 $j6589325))))

; loop entry $main_inv486
(assert
  (forall (($k657 Int) ($j658 Int) ($n6559326 Int) ($j6589329 Int) ($i656 Int) ($int9317 Int) ($i6569327 Int) ($k6579328 Int))
    (=> (and (= $j6589329 0)
             ($main_sum485 $int9317 $i656 $k657 $j658 $n6559326 $i6569327 $k6579328 $j6589329)
             (<= (- 2147483648) $int9317)
             (<= $int9317 2147483647)
             (= $k657 0)
             (= $i656 0))
        ($main_inv486 $n6559326 $i6569327 $k6579328 $j6589329))))

; loop term $main_sum486
(assert
  (forall (($n6559330 Int) ($i6569331 Int) ($k6579332 Int) ($j6589333 Int))
    (=> (and (not (< $j6589333 $n6559330)))
        ($main_sum486 $n6559330 $i6569331 $k6579332 $j6589333 $n6559330 $i6569331 $k6579332 $j6589333))))

; __VERIFIER_assert precondition
(assert
  (forall (($k6579332 Int) ($j6589333 Int) ($n6559330 Int) ($i6569331 Int))
    (=> (and (< $j6589333 $n6559330)
             ($main_inv486 $n6559330 $i6569331 $k6579332 $j6589333))
        ($__VERIFIER_assert_pre (ite (> $k6579332 0) 1 0)))))

; forwards $main_inv486
(assert
  (forall (($n6559330 Int) ($i6569331 Int) ($k6579332 Int) ($j6589333 Int))
    (=> (and (__VERIFIER_assert (ite (> $k6579332 0) 1 0))
             (< $j6589333 $n6559330)
             ($main_inv486 $n6559330 $i6569331 $k6579332 $j6589333))
        ($main_inv486 $n6559330 $i6569331 (- $k6579332 1) (+ $j6589333 1)))))

; backwards $main_sum486
(assert
  (forall (($i6569331 Int) ($k6579332 Int) ($n6559330 Int) ($i6569335 Int) ($k6579336 Int) ($j6589333 Int) ($j6589337 Int) ($n6559334 Int))
    (=> (and ($main_sum486 $n6559330 $i6569331 (- $k6579332 1) (+ $j6589333 1) $n6559334 $i6569335 $k6579336 $j6589337)
             (__VERIFIER_assert (ite (> $k6579332 0) 1 0))
             (< $j6589333 $n6559330))
        ($main_sum486 $n6559330 $i6569331 $k6579332 $j6589333 $n6559334 $i6569335 $k6579336 $j6589337))))

(check-sat)
