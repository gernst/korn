(set-logic HORN)

(declare-fun $sum_if3365 (Int Int Int Int) Bool)
(declare-fun $sum_pre (Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int Int Int) Bool)
(declare-fun $main_if3366 (Int Int Int Int Int Int) Bool)
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
  (forall ((n Int) (m Int) ($result214218 Int))
    (=> (and (sum (- n 1) (+ m 1) $result214218)
             (not (<= n 0))
             ($sum_pre n m))
        (sum n m $result214218))))

; post sum
(assert
  (forall ((n214219 Int) (m214220 Int) (n Int) (m Int))
    (=> (and ($sum_if3365 n m n214219 m214220))
        (sum n214219 m214220 0))))

; sum precondition
(assert
  (forall (($a2441 Int) ($b2442 Int))
    (=> (and (= $b2442 0)
             (= $a2441 25))
        ($sum_pre $a2441 $b2442))))

; label ERROR
(assert
  (forall (($a2441 Int) ($b2442 Int) ($result2443 Int) ($result214221 Int))
    (=> (and (not (= $result2443 (+ $a2441 $b2442)))
             (= $result2443 $result214221)
             (sum $a2441 $b2442 $result214221)
             (= $b2442 0)
             (= $a2441 25))
        ($main_ERROR $a2441 $b2442 $result2443 $a2441 $b2442 $result2443))))

; error
(assert
  (forall (($result2443 Int) ($b2442 Int) ($a2441 Int) ($a2441214222 Int) ($result2443214224 Int) ($b2442214223 Int))
    (=> (and ($main_ERROR $a2441 $b2442 $result2443 $a2441214222 $b2442214223 $result2443214224))
        false)))

; if else
(assert
  (forall (($a2441 Int) ($b2442 Int) ($result2443 Int) ($result214221 Int))
    (=> (and (= $result2443 (+ $a2441 $b2442))
             (= $result2443 $result214221)
             (sum $a2441 $b2442 $result214221)
             (= $b2442 0)
             (= $a2441 25))
        ($main_if3366 $a2441 $b2442 $result2443 $a2441 $b2442 $result2443))))

(check-sat)
