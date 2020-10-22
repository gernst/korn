(set-logic HORN)

(declare-fun $sum_pre (Int Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_if3374 (Int Int Int) Bool)
(declare-fun $sum_if3373 (Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int) Bool)
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
  (forall ((n Int) (m Int) ($result211257 Int))
    (=> (and (sum (- n 1) (+ m 1) $result211257)
             (not (= n 0))
             ($sum_pre n m))
        (sum n m $result211257))))

; post sum
(assert
  (forall ((n211258 Int) (m211259 Int))
    (=> (and ($sum_if3373 n211258 m211259))
        (sum n211258 m211259 0))))

; sum precondition
(assert
  (forall (($a2453 Int) ($b2454 Int) ($uint211261 Int) ($uint211260 Int))
    (=> (and (= $b2454 $uint211261)
             (<= 0 $uint211261)
             (<= $uint211261 4294967295)
             (= $a2453 $uint211260)
             (<= 0 $uint211260)
             (<= $uint211260 4294967295))
        ($sum_pre $a2453 $b2454))))

; label ERROR
(assert
  (forall (($result211262 Int) ($uint211260 Int) ($result2455 Int) ($a2453 Int) ($uint211261 Int) ($b2454 Int))
    (=> (and (not (= $result2455 (+ $a2453 $b2454)))
             (= $result2455 $result211262)
             (sum $a2453 $b2454 $result211262)
             (= $b2454 $uint211261)
             (<= 0 $uint211261)
             (<= $uint211261 4294967295)
             (= $a2453 $uint211260)
             (<= 0 $uint211260)
             (<= $uint211260 4294967295))
        ($main_ERROR $a2453 $b2454 $result2455))))

; error
(assert
  (forall (($a2453211263 Int) ($b2454211264 Int) ($result2455211265 Int))
    (=> (and ($main_ERROR $a2453211263 $b2454211264 $result2455211265))
        false)))

; if else
(assert
  (forall (($result211262 Int) ($uint211260 Int) ($result2455 Int) ($a2453 Int) ($uint211261 Int) ($b2454 Int))
    (=> (and (= $result2455 (+ $a2453 $b2454))
             (= $result2455 $result211262)
             (sum $a2453 $b2454 $result211262)
             (= $b2454 $uint211261)
             (<= 0 $uint211261)
             (<= $uint211261 4294967295)
             (= $a2453 $uint211260)
             (<= 0 $uint211260)
             (<= $uint211260 4294967295))
        ($main_if3374 $a2453 $b2454 $result2455))))

(check-sat)
