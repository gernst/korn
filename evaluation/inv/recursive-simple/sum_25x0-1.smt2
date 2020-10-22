(set-logic HORN)

(declare-fun $sum_if3365 (Int Int) Bool)
(declare-fun $sum_pre (Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int) Bool)
(declare-fun $main_if3366 (Int Int Int) Bool)
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
  (forall ((n Int) (m Int) ($result211217 Int))
    (=> (and (sum (- n 1) (+ m 1) $result211217)
             (not (<= n 0))
             ($sum_pre n m))
        (sum n m $result211217))))

; post sum
(assert
  (forall ((n211218 Int) (m211219 Int))
    (=> (and ($sum_if3365 n211218 m211219))
        (sum n211218 m211219 0))))

; sum precondition
(assert
  (forall (($a2441 Int) ($b2442 Int))
    (=> (and (= $b2442 0)
             (= $a2441 25))
        ($sum_pre $a2441 $b2442))))

; label ERROR
(assert
  (forall (($a2441 Int) ($b2442 Int) ($result2443 Int) ($result211220 Int))
    (=> (and (not (= $result2443 (+ $a2441 $b2442)))
             (= $result2443 $result211220)
             (sum $a2441 $b2442 $result211220)
             (= $b2442 0)
             (= $a2441 25))
        ($main_ERROR $a2441 $b2442 $result2443))))

; error
(assert
  (forall (($a2441211221 Int) ($b2442211222 Int) ($result2443211223 Int))
    (=> (and ($main_ERROR $a2441211221 $b2442211222 $result2443211223))
        false)))

; if else
(assert
  (forall (($a2441 Int) ($b2442 Int) ($result2443 Int) ($result211220 Int))
    (=> (and (= $result2443 (+ $a2441 $b2442))
             (= $result2443 $result211220)
             (sum $a2441 $b2442 $result211220)
             (= $b2442 0)
             (= $a2441 25))
        ($main_if3366 $a2441 $b2442 $result2443))))

(check-sat)
