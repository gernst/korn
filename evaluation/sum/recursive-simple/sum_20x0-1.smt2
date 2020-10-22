(set-logic HORN)

(declare-fun $sum_pre (Int Int) Bool)
(declare-fun $sum_if3361 (Int Int Int Int) Bool)
(declare-fun $main_if3362 (Int Int Int Int Int Int) Bool)
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
  (forall ((n Int) (m Int) ($result214198 Int))
    (=> (and (sum (- n 1) (+ m 1) $result214198)
             (not (<= n 0))
             ($sum_pre n m))
        (sum n m $result214198))))

; post sum
(assert
  (forall ((n214199 Int) (m214200 Int) (n Int) (m Int))
    (=> (and ($sum_if3361 n m n214199 m214200))
        (sum n214199 m214200 0))))

; sum precondition
(assert
  (forall (($a2435 Int) ($b2436 Int))
    (=> (and (= $b2436 0)
             (= $a2435 20))
        ($sum_pre $a2435 $b2436))))

; label ERROR
(assert
  (forall (($a2435 Int) ($b2436 Int) ($result2437 Int) ($result214201 Int))
    (=> (and (= $result2437 (+ $a2435 $b2436))
             (= $result2437 $result214201)
             (sum $a2435 $b2436 $result214201)
             (= $b2436 0)
             (= $a2435 20))
        ($main_ERROR $a2435 $b2436 $result2437 $a2435 $b2436 $result2437))))

; error
(assert
  (forall (($a2435 Int) ($b2436 Int) ($b2436214203 Int) ($result2437 Int) ($result2437214204 Int) ($a2435214202 Int))
    (=> (and ($main_ERROR $a2435 $b2436 $result2437 $a2435214202 $b2436214203 $result2437214204))
        false)))

; if else
(assert
  (forall (($a2435 Int) ($b2436 Int) ($result2437 Int) ($result214201 Int))
    (=> (and (not (= $result2437 (+ $a2435 $b2436)))
             (= $result2437 $result214201)
             (sum $a2435 $b2436 $result214201)
             (= $b2436 0)
             (= $a2435 20))
        ($main_if3362 $a2435 $b2436 $result2437 $a2435 $b2436 $result2437))))

(check-sat)
