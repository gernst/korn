(set-logic HORN)

(declare-fun $sum_if3371 (Int Int Int Int) Bool)
(declare-fun $sum_pre (Int Int) Bool)
(declare-fun $main_if3372 (Int Int Int Int Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int Int Int) Bool)
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
  (forall ((n Int) (m Int) ($result214248 Int))
    (=> (and (sum (- n 1) (+ m 1) $result214248)
             (not (<= n 0))
             ($sum_pre n m))
        (sum n m $result214248))))

; post sum
(assert
  (forall ((n214249 Int) (m214250 Int) (n Int) (m Int))
    (=> (and ($sum_if3371 n m n214249 m214250))
        (sum n214249 m214250 0))))

; sum precondition
(assert
  (forall (($a2450 Int) ($b2451 Int))
    (=> (and (= $b2451 3)
             (= $a2450 2))
        ($sum_pre $a2450 $b2451))))

; label ERROR
(assert
  (forall (($a2450 Int) ($b2451 Int) ($result2452 Int) ($result214251 Int))
    (=> (and (not (= $result2452 (+ $a2450 $b2451)))
             (= $result2452 $result214251)
             (sum $a2450 $b2451 $result214251)
             (= $b2451 3)
             (= $a2450 2))
        ($main_ERROR $a2450 $b2451 $result2452 $a2450 $b2451 $result2452))))

; error
(assert
  (forall (($b2451214253 Int) ($a2450214252 Int) ($result2452 Int) ($b2451 Int) ($a2450 Int) ($result2452214254 Int))
    (=> (and ($main_ERROR $a2450 $b2451 $result2452 $a2450214252 $b2451214253 $result2452214254))
        false)))

; if else
(assert
  (forall (($a2450 Int) ($b2451 Int) ($result2452 Int) ($result214251 Int))
    (=> (and (= $result2452 (+ $a2450 $b2451))
             (= $result2452 $result214251)
             (sum $a2450 $b2451 $result214251)
             (= $b2451 3)
             (= $a2450 2))
        ($main_if3372 $a2450 $b2451 $result2452 $a2450 $b2451 $result2452))))

(check-sat)
