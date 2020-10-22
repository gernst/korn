(set-logic HORN)

(declare-fun $sum_if3369 (Int Int Int Int) Bool)
(declare-fun $sum_pre (Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int Int Int) Bool)
(declare-fun sum (Int Int Int) Bool)
(declare-fun $main_if3370 (Int Int Int Int Int Int) Bool)

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
  (forall ((n Int) (m Int) ($result214238 Int))
    (=> (and (sum (- n 1) (+ m 1) $result214238)
             (not (<= n 0))
             ($sum_pre n m))
        (sum n m $result214238))))

; post sum
(assert
  (forall ((n214239 Int) (m214240 Int) (n Int) (m Int))
    (=> (and ($sum_if3369 n m n214239 m214240))
        (sum n214239 m214240 0))))

; sum precondition
(assert
  (forall (($a2447 Int) ($b2448 Int))
    (=> (and (= $b2448 3)
             (= $a2447 2))
        ($sum_pre $a2447 $b2448))))

; label ERROR
(assert
  (forall (($a2447 Int) ($b2448 Int) ($result2449 Int) ($result214241 Int))
    (=> (and (= $result2449 (+ $a2447 $b2448))
             (= $result2449 $result214241)
             (sum $a2447 $b2448 $result214241)
             (= $b2448 3)
             (= $a2447 2))
        ($main_ERROR $a2447 $b2448 $result2449 $a2447 $b2448 $result2449))))

; error
(assert
  (forall (($b2448214243 Int) ($a2447 Int) ($b2448 Int) ($result2449 Int) ($a2447214242 Int) ($result2449214244 Int))
    (=> (and ($main_ERROR $a2447 $b2448 $result2449 $a2447214242 $b2448214243 $result2449214244))
        false)))

; if else
(assert
  (forall (($a2447 Int) ($b2448 Int) ($result2449 Int) ($result214241 Int))
    (=> (and (not (= $result2449 (+ $a2447 $b2448)))
             (= $result2449 $result214241)
             (sum $a2447 $b2448 $result214241)
             (= $b2448 3)
             (= $a2447 2))
        ($main_if3370 $a2447 $b2448 $result2449 $a2447 $b2448 $result2449))))

(check-sat)
