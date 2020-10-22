(set-logic HORN)

(declare-fun $sum_pre (Int Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_if3374 (Int Int Int Int Int Int) Bool)
(declare-fun $sum_if3373 (Int Int Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int Int Int) Bool)
(declare-fun sum (Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)

; post sum
(assert
  (forall ((n Int) (m Int))
    (=> (and (= n 0)
             ($sum_pre n m))
        (sum n m m))))

; sum precondition
(assert
  (forall ((n Int) (m Int))
    (=> (and (not (= n 0))
             ($sum_pre n m))
        ($sum_pre (- n 1) (+ m 1)))))

; post sum
(assert
  (forall ((n Int) (m Int) ($result214258 Int))
    (=> (and (sum (- n 1) (+ m 1) $result214258)
             (not (= n 0))
             ($sum_pre n m))
        (sum n m $result214258))))

; post sum
(assert
  (forall ((n214259 Int) (m214260 Int) (n Int) (m Int))
    (=> (and ($sum_if3373 n m n214259 m214260))
        (sum n214259 m214260 0))))

; sum precondition
(assert
  (forall (($a2453 Int) ($b2454 Int) ($uint214262 Int) ($uint214261 Int))
    (=> (and (= $b2454 $uint214262)
             (<= 0 $uint214262)
             (<= $uint214262 4294967295)
             (= $a2453 $uint214261)
             (<= 0 $uint214261)
             (<= $uint214261 4294967295))
        ($sum_pre $a2453 $b2454))))

; label ERROR
(assert
  (forall (($uint214262 Int) ($result2455 Int) ($b2454 Int) ($uint214261 Int) ($result214263 Int) ($a2453 Int))
    (=> (and (not (= $result2455 (+ $a2453 $b2454)))
             (= $result2455 $result214263)
             (sum $a2453 $b2454 $result214263)
             (= $b2454 $uint214262)
             (<= 0 $uint214262)
             (<= $uint214262 4294967295)
             (= $a2453 $uint214261)
             (<= 0 $uint214261)
             (<= $uint214261 4294967295))
        ($main_ERROR $a2453 $b2454 $result2455 $a2453 $b2454 $result2455))))

; error
(assert
  (forall (($result2455 Int) ($a2453 Int) ($b2454 Int) ($a2453214264 Int) ($b2454214265 Int) ($result2455214266 Int))
    (=> (and ($main_ERROR $a2453 $b2454 $result2455 $a2453214264 $b2454214265 $result2455214266))
        false)))

; if else
(assert
  (forall (($uint214262 Int) ($result2455 Int) ($b2454 Int) ($uint214261 Int) ($result214263 Int) ($a2453 Int))
    (=> (and (= $result2455 (+ $a2453 $b2454))
             (= $result2455 $result214263)
             (sum $a2453 $b2454 $result214263)
             (= $b2454 $uint214262)
             (<= 0 $uint214262)
             (<= $uint214262 4294967295)
             (= $a2453 $uint214261)
             (<= 0 $uint214261)
             (<= $uint214261 4294967295))
        ($main_if3374 $a2453 $b2454 $result2455 $a2453 $b2454 $result2455))))

(check-sat)
