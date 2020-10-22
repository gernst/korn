(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum484 (Int Int Int Int) Bool)
(declare-fun $main_if277 (Int Int Int Int) Bool)
(declare-fun $main_L1 (Int Int Int Int) Bool)
(declare-fun $main_inv484 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv483 (Int Int) Bool)
(declare-fun $main_STUCK (Int Int Int Int) Bool)
(declare-fun $main_L2 (Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_L0 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if275 (Int Int) Bool)
(declare-fun $main_sum483 (Int Int Int Int) Bool)
(declare-fun $main_if276 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $assume_abort_if_not_if274 (Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if274 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond9285 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if274 cond cond9285))
        (assume_abort_if_not cond9285))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond9286 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond9286))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if275 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond9287 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if275 cond cond9287))
        (__VERIFIER_assert cond9287))))

; label L0
(assert
  (forall (($i653 Int) ($j654 Int))
        ($main_L0 $i653 $j654 $i653 $j654)))

; label L1
(assert
  (forall (($i653 Int) ($j654 Int) ($j6549289 Int) ($i6539288 Int))
    (=> (and ($main_L0 $i653 $j654 $i6539288 $j6549289))
        ($main_L1 $i653 $j654 0 $j6549289))))

; loop entry $main_inv483
(assert
  (forall (($i6539290 Int) ($j6549291 Int) ($i653 Int) ($j654 Int))
    (=> (and ($main_L1 $i653 $j654 $i6539290 $j6549291))
        ($main_inv483 $i6539290 $j6549291))))

; loop term $main_sum483
(assert
  (forall (($i6539292 Int) ($j6549293 Int) ($int9294 Int))
    (=> (and (not (and (not (= $int9294 0)) (< $i6539292 1000000)))
             (<= (- 2147483648) $int9294)
             (<= $int9294 2147483647))
        ($main_sum483 $i6539292 $j6549293 $i6539292 $j6549293))))

; forwards $main_inv483
(assert
  (forall (($i6539292 Int) ($j6549293 Int) ($int9294 Int))
    (=> (and (not (= $int9294 0))
             (< $i6539292 1000000)
             (<= (- 2147483648) $int9294)
             (<= $int9294 2147483647)
             ($main_inv483 $i6539292 $j6549293))
        ($main_inv483 (+ $i6539292 1) $j6549293))))

; backwards $main_sum483
(assert
  (forall (($j6549296 Int) ($int9294 Int) ($j6549293 Int) ($i6539295 Int) ($i6539292 Int))
    (=> (and ($main_sum483 (+ $i6539292 1) $j6549293 $i6539295 $j6549296)
             (not (= $int9294 0))
             (< $i6539292 1000000)
             (<= (- 2147483648) $int9294)
             (<= $int9294 2147483647))
        ($main_sum483 $i6539292 $j6549293 $i6539295 $j6549296))))

; label STUCK
(assert
  (forall (($i653 Int) ($i6539297 Int) ($i6539290 Int) ($j6549298 Int) ($j6549291 Int) ($j654 Int))
    (=> (and (>= $i6539297 100)
             ($main_sum483 $i6539290 $j6549291 $i6539297 $j6549298)
             ($main_L1 $i653 $j654 $i6539290 $j6549291))
        ($main_STUCK $i653 $j654 $i6539297 $j6549298))))

; if else
(assert
  (forall (($i653 Int) ($i6539297 Int) ($i6539290 Int) ($j6549298 Int) ($j6549291 Int) ($j654 Int))
    (=> (and (not (>= $i6539297 100))
             ($main_sum483 $i6539290 $j6549291 $i6539297 $j6549298)
             ($main_L1 $i653 $j654 $i6539290 $j6549291))
        ($main_if276 $i653 $j654 $i6539297 $j6549298))))

; label L2
(assert
  (forall (($i653 Int) ($j654 Int) ($i6539301 Int) ($j6549302 Int))
    (=> (and ($main_if276 $i653 $j654 $i6539301 $j6549302))
        ($main_L2 $i653 $j654 $i6539301 0))))

; loop entry $main_inv484
(assert
  (forall (($i6539303 Int) ($j6549304 Int) ($i653 Int) ($j654 Int))
    (=> (and ($main_L2 $i653 $j654 $i6539303 $j6549304))
        ($main_inv484 $i6539303 $j6549304))))

; loop term $main_sum484
(assert
  (forall (($i6539305 Int) ($j6549306 Int) ($int9307 Int))
    (=> (and (not (and (not (= $int9307 0)) (< $i6539305 1000000)))
             (<= (- 2147483648) $int9307)
             (<= $int9307 2147483647))
        ($main_sum484 $i6539305 $j6549306 $i6539305 $j6549306))))

; forwards $main_inv484
(assert
  (forall (($i6539305 Int) ($j6549306 Int) ($int9307 Int))
    (=> (and (not (= $int9307 0))
             (< $i6539305 1000000)
             (<= (- 2147483648) $int9307)
             (<= $int9307 2147483647)
             ($main_inv484 $i6539305 $j6549306))
        ($main_inv484 (+ $i6539305 1) (+ $j6549306 1)))))

; backwards $main_sum484
(assert
  (forall (($j6549306 Int) ($i6539308 Int) ($i6539305 Int) ($j6549309 Int) ($int9307 Int))
    (=> (and ($main_sum484 (+ $i6539305 1) (+ $j6549306 1) $i6539308 $j6549309)
             (not (= $int9307 0))
             (< $i6539305 1000000)
             (<= (- 2147483648) $int9307)
             (<= $int9307 2147483647))
        ($main_sum484 $i6539305 $j6549306 $i6539308 $j6549309))))

; goto STUCK
(assert
  (forall (($i653 Int) ($i6539303 Int) ($j6549304 Int) ($i6539310 Int) ($j654 Int) ($j6549311 Int))
    (=> (and (>= $j6549311 100)
             ($main_sum484 $i6539303 $j6549304 $i6539310 $j6549311)
             ($main_L2 $i653 $j654 $i6539303 $j6549304))
        ($main_STUCK $i653 $j654 $i6539310 $j6549311))))

; if else
(assert
  (forall (($i653 Int) ($i6539303 Int) ($j6549304 Int) ($i6539310 Int) ($j654 Int) ($j6549311 Int))
    (=> (and (not (>= $j6549311 100))
             ($main_sum484 $i6539303 $j6549304 $i6539310 $j6549311)
             ($main_L2 $i653 $j654 $i6539303 $j6549304))
        ($main_if277 $i653 $j654 $i6539310 $j6549311))))

; __VERIFIER_assert precondition
(assert
  (forall (($i6539312 Int) ($i653 Int) ($j654 Int) ($j6549313 Int))
    (=> (and ($main_if277 $i653 $j654 $i6539312 $j6549313))
        ($__VERIFIER_assert_pre (ite (< $i6539312 200) 1 0)))))

(check-sat)
