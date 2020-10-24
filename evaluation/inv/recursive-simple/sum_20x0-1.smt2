(set-logic HORN)

(declare-fun $sum_pre (Int Int) Bool)
(declare-fun $sum_if3361 (Int Int) Bool)
(declare-fun $main_if3362 (Int Int Int) Bool)
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
  (forall ((n Int) (m Int) ($result211197 Int))
    (=> (and (sum (- n 1) (+ m 1) $result211197)
             (not (<= n 0))
             ($sum_pre n m))
        (sum n m $result211197))))

; post sum
(assert
  (forall ((n211198 Int) (m211199 Int))
    (=> (and ($sum_if3361 n211198 m211199))
        (sum n211198 m211199 0))))

; sum precondition
(assert
  (forall (($a2435 Int) ($b2436 Int))
    (=> (and (= $b2436 0)
             (= $a2435 20))
        ($sum_pre $a2435 $b2436))))

; label ERROR
(assert
  (forall (($a2435 Int) ($b2436 Int) ($result2437 Int) ($result211200 Int))
    (=> (and (= $result2437 (+ $a2435 $b2436))
             (= $result2437 $result211200)
             (sum $a2435 $b2436 $result211200)
             (= $b2436 0)
             (= $a2435 20))
        ($main_ERROR $a2435 $b2436 $result2437))))

; error
(assert
  (forall (($a2435211201 Int) ($b2436211202 Int) ($result2437211203 Int))
    (=> (and ($main_ERROR $a2435211201 $b2436211202 $result2437211203))
        false)))

; if else
(assert
  (forall (($a2435 Int) ($b2436 Int) ($result2437 Int) ($result211200 Int))
    (=> (and (not (= $result2437 (+ $a2435 $b2436)))
             (= $result2437 $result211200)
             (sum $a2435 $b2436 $result211200)
             (= $b2436 0)
             (= $a2435 20))
        ($main_if3362 $a2435 $b2436 $result2437))))

(check-sat)
