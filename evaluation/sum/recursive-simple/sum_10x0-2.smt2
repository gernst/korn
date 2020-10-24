(set-logic HORN)

(declare-fun $sum_pre (Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int Int Int) Bool)
(declare-fun $sum_if3355 (Int Int Int Int) Bool)
(declare-fun sum (Int Int Int) Bool)
(declare-fun $main_if3356 (Int Int Int Int Int Int) Bool)

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
  (forall ((n Int) (m Int) ($result214168 Int))
    (=> (and (sum (- n 1) (+ m 1) $result214168)
             (not (<= n 0))
             ($sum_pre n m))
        (sum n m $result214168))))

; post sum
(assert
  (forall ((n214169 Int) (m214170 Int) (n Int) (m Int))
    (=> (and ($sum_if3355 n m n214169 m214170))
        (sum n214169 m214170 0))))

; sum precondition
(assert
  (forall (($a2426 Int) ($b2427 Int))
    (=> (and (= $b2427 0)
             (= $a2426 10))
        ($sum_pre $a2426 $b2427))))

; label ERROR
(assert
  (forall (($a2426 Int) ($b2427 Int) ($result2428 Int) ($result214171 Int))
    (=> (and (= $result2428 (+ $a2426 $b2427))
             (= $result2428 $result214171)
             (sum $a2426 $b2427 $result214171)
             (= $b2427 0)
             (= $a2426 10))
        ($main_ERROR $a2426 $b2427 $result2428 $a2426 $b2427 $result2428))))

; error
(assert
  (forall (($b2427 Int) ($a2426 Int) ($result2428214174 Int) ($a2426214172 Int) ($result2428 Int) ($b2427214173 Int))
    (=> (and ($main_ERROR $a2426 $b2427 $result2428 $a2426214172 $b2427214173 $result2428214174))
        false)))

; if else
(assert
  (forall (($a2426 Int) ($b2427 Int) ($result2428 Int) ($result214171 Int))
    (=> (and (not (= $result2428 (+ $a2426 $b2427)))
             (= $result2428 $result214171)
             (sum $a2426 $b2427 $result214171)
             (= $b2427 0)
             (= $a2426 10))
        ($main_if3356 $a2426 $b2427 $result2428 $a2426 $b2427 $result2428))))

(check-sat)
