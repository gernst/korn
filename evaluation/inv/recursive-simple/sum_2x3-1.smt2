(set-logic HORN)

(declare-fun $sum_if3369 (Int Int) Bool)
(declare-fun $sum_pre (Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int) Bool)
(declare-fun sum (Int Int Int) Bool)
(declare-fun $main_if3370 (Int Int Int) Bool)

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
  (forall ((n Int) (m Int) ($result211237 Int))
    (=> (and (sum (- n 1) (+ m 1) $result211237)
             (not (<= n 0))
             ($sum_pre n m))
        (sum n m $result211237))))

; post sum
(assert
  (forall ((n211238 Int) (m211239 Int))
    (=> (and ($sum_if3369 n211238 m211239))
        (sum n211238 m211239 0))))

; sum precondition
(assert
  (forall (($a2447 Int) ($b2448 Int))
    (=> (and (= $b2448 3)
             (= $a2447 2))
        ($sum_pre $a2447 $b2448))))

; label ERROR
(assert
  (forall (($a2447 Int) ($b2448 Int) ($result2449 Int) ($result211240 Int))
    (=> (and (= $result2449 (+ $a2447 $b2448))
             (= $result2449 $result211240)
             (sum $a2447 $b2448 $result211240)
             (= $b2448 3)
             (= $a2447 2))
        ($main_ERROR $a2447 $b2448 $result2449))))

; error
(assert
  (forall (($a2447211241 Int) ($b2448211242 Int) ($result2449211243 Int))
    (=> (and ($main_ERROR $a2447211241 $b2448211242 $result2449211243))
        false)))

; if else
(assert
  (forall (($a2447 Int) ($b2448 Int) ($result2449 Int) ($result211240 Int))
    (=> (and (not (= $result2449 (+ $a2447 $b2448)))
             (= $result2449 $result211240)
             (sum $a2447 $b2448 $result211240)
             (= $b2448 3)
             (= $a2447 2))
        ($main_if3370 $a2447 $b2448 $result2449))))

(check-sat)
