(set-logic HORN)

(declare-fun mult (Int Int Int) Bool)
(declare-fun $main_if3125 (Int Int Int Int) Bool)
(declare-fun $mult_if3123 (Int Int) Bool)
(declare-fun $mult_if3124 (Int Int) Bool)
(declare-fun $main_if3127 (Int Int Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $mult_pre (Int Int) Bool)
(declare-fun $main_if3126 (Int Int Int Int) Bool)

; mult precondition
(assert
  (forall ((n Int) (m Int))
    (=> (and (< m 0)
             ($mult_pre n m))
        ($mult_pre n (- m)))))

; post mult
(assert
  (forall ((n Int) (m Int) ($result210452 Int))
    (=> (and (mult n (- m) $result210452)
             (< m 0)
             ($mult_pre n m))
        (mult n m $result210452))))

; if else
(assert
  (forall ((n Int) (m Int))
    (=> (and (not (< m 0))
             ($mult_pre n m))
        ($mult_if3123 n m))))

; post mult
(assert
  (forall ((n210453 Int) (m210454 Int))
    (=> (and (= m210454 0)
             ($mult_if3123 n210453 m210454))
        (mult n210453 m210454 0))))

; if else
(assert
  (forall ((n210453 Int) (m210454 Int))
    (=> (and (not (= m210454 0))
             ($mult_if3123 n210453 m210454))
        ($mult_if3124 n210453 m210454))))

; mult precondition
(assert
  (forall ((n210455 Int) (m210456 Int))
    (=> (and ($mult_if3124 n210455 m210456))
        ($mult_pre n210455 (- m210456 1)))))

; post mult
(assert
  (forall ((n210455 Int) (m210456 Int) ($result210457 Int))
    (=> (and (mult n210455 (- m210456 1) $result210457)
             ($mult_if3124 n210455 m210456))
        (mult n210455 m210456 (+ n210455 $result210457)))))

; if else
(assert
  (forall (($res22290 Int) ($n2288 Int) ($m2287 Int) ($res12289 Int) ($int210458 Int))
    (=> (and (not (or (< $m2287 0) (> $m2287 46340)))
             (= $m2287 $int210458)
             (<= (- 2147483648) $int210458)
             (<= $int210458 2147483647))
        ($main_if3125 $m2287 $n2288 $res12289 $res22290))))

; if else
(assert
  (forall (($res22290210462 Int) ($int210463 Int) ($n2288210460 Int) ($res12289210461 Int) ($m2287210459 Int))
    (=> (and (not (or (< $n2288210460 0) (> $n2288210460 46340)))
             (= $n2288210460 $int210463)
             (<= (- 2147483648) $int210463)
             (<= $int210463 2147483647)
             ($main_if3125 $m2287210459 $n2288210460 $res12289210461 $res22290210462))
        ($main_if3126 $m2287210459 $n2288210460 $res12289210461 $res22290210462))))

; mult precondition
(assert
  (forall (($m2287210464 Int) ($n2288210465 Int) ($res12289210466 Int) ($res22290210467 Int))
    (=> (and ($main_if3126 $m2287210464 $n2288210465 $res12289210466 $res22290210467))
        ($mult_pre $m2287210464 $n2288210465))))

; mult precondition
(assert
  (forall (($result210468 Int) ($res12289210466 Int) ($n2288210465 Int) ($m2287210464 Int) ($res22290210467 Int))
    (=> (and (= $res12289210466 $result210468)
             (mult $m2287210464 $n2288210465 $result210468)
             ($main_if3126 $m2287210464 $n2288210465 $res12289210466 $res22290210467))
        ($mult_pre $n2288210465 $m2287210464))))

; label ERROR
(assert
  (forall (($result210468 Int) ($res12289210466 Int) ($n2288210465 Int) ($res22290210467 Int) ($m2287210464 Int) ($result210469 Int))
    (=> (and (not (= $res12289210466 $res22290210467))
             (> $m2287210464 0)
             (> $n2288210465 0)
             (= $res22290210467 $result210469)
             (mult $n2288210465 $m2287210464 $result210469)
             (= $res12289210466 $result210468)
             (mult $m2287210464 $n2288210465 $result210468)
             ($main_if3126 $m2287210464 $n2288210465 $res12289210466 $res22290210467))
        ($main_ERROR $m2287210464 $n2288210465 $res12289210466 $res22290210467))))

; error
(assert
  (forall (($m2287210470 Int) ($n2288210471 Int) ($res12289210472 Int) ($res22290210473 Int))
    (=> (and ($main_ERROR $m2287210470 $n2288210471 $res12289210472 $res22290210473))
        false)))

(check-sat)
