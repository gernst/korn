(set-logic HORN)

(declare-fun $sum_pre (Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int) Bool)
(declare-fun $sum_if3355 (Int Int) Bool)
(declare-fun sum (Int Int Int) Bool)
(declare-fun $main_if3356 (Int Int Int) Bool)

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
  (forall ((n Int) (m Int) ($result211167 Int))
    (=> (and (sum (- n 1) (+ m 1) $result211167)
             (not (<= n 0))
             ($sum_pre n m))
        (sum n m $result211167))))

; post sum
(assert
  (forall ((n211168 Int) (m211169 Int))
    (=> (and ($sum_if3355 n211168 m211169))
        (sum n211168 m211169 0))))

; sum precondition
(assert
  (forall (($a2426 Int) ($b2427 Int))
    (=> (and (= $b2427 0)
             (= $a2426 10))
        ($sum_pre $a2426 $b2427))))

; label ERROR
(assert
  (forall (($a2426 Int) ($b2427 Int) ($result2428 Int) ($result211170 Int))
    (=> (and (= $result2428 (+ $a2426 $b2427))
             (= $result2428 $result211170)
             (sum $a2426 $b2427 $result211170)
             (= $b2427 0)
             (= $a2426 10))
        ($main_ERROR $a2426 $b2427 $result2428))))

; error
(assert
  (forall (($a2426211171 Int) ($b2427211172 Int) ($result2428211173 Int))
    (=> (and ($main_ERROR $a2426211171 $b2427211172 $result2428211173))
        false)))

; if else
(assert
  (forall (($a2426 Int) ($b2427 Int) ($result2428 Int) ($result211170 Int))
    (=> (and (not (= $result2428 (+ $a2426 $b2427)))
             (= $result2428 $result211170)
             (sum $a2426 $b2427 $result211170)
             (= $b2427 0)
             (= $a2426 10))
        ($main_if3356 $a2426 $b2427 $result2428))))

(check-sat)
