(set-logic HORN)

(declare-fun $sum_if3371 (Int Int) Bool)
(declare-fun $sum_pre (Int Int) Bool)
(declare-fun $main_if3372 (Int Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int) Bool)
(declare-fun sum (Int Int Int) Bool)

; post sum
(assert
  (forall ((n Int) (m Int))
    (=> (and (<= n 0)
             ($sum_pre n m))
        (sum n m (+ m n)))))

; sum precondition
(assert
  (forall ((n Int) (m Int))
    (=> (and (not (<= n 0))
             ($sum_pre n m))
        ($sum_pre (- n 1) (+ m 1)))))

; post sum
(assert
  (forall ((n Int) (m Int) ($result211247 Int))
    (=> (and (sum (- n 1) (+ m 1) $result211247)
             (not (<= n 0))
             ($sum_pre n m))
        (sum n m $result211247))))

; post sum
(assert
  (forall ((n211248 Int) (m211249 Int))
    (=> (and ($sum_if3371 n211248 m211249))
        (sum n211248 m211249 0))))

; sum precondition
(assert
  (forall (($a2450 Int) ($b2451 Int))
    (=> (and (= $b2451 3)
             (= $a2450 2))
        ($sum_pre $a2450 $b2451))))

; label ERROR
(assert
  (forall (($a2450 Int) ($b2451 Int) ($result2452 Int) ($result211250 Int))
    (=> (and (not (= $result2452 (+ $a2450 $b2451)))
             (= $result2452 $result211250)
             (sum $a2450 $b2451 $result211250)
             (= $b2451 3)
             (= $a2450 2))
        ($main_ERROR $a2450 $b2451 $result2452))))

; error
(assert
  (forall (($a2450211251 Int) ($b2451211252 Int) ($result2452211253 Int))
    (=> (and ($main_ERROR $a2450211251 $b2451211252 $result2452211253))
        false)))

; if else
(assert
  (forall (($a2450 Int) ($b2451 Int) ($result2452 Int) ($result211250 Int))
    (=> (and (= $result2452 (+ $a2450 $b2451))
             (= $result2452 $result211250)
             (sum $a2450 $b2451 $result211250)
             (= $b2451 3)
             (= $a2450 2))
        ($main_if3372 $a2450 $b2451 $result2452))))

(check-sat)
