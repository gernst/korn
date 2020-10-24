(set-logic HORN)

(declare-fun $sum_pre (Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int Int Int) Bool)
(declare-fun sum (Int Int Int) Bool)
(declare-fun $main_if3354 (Int Int Int Int Int Int) Bool)
(declare-fun $sum_if3353 (Int Int Int Int) Bool)

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
  (forall ((n Int) (m Int) ($result214158 Int))
    (=> (and (sum (- n 1) (+ m 1) $result214158)
             (not (<= n 0))
             ($sum_pre n m))
        (sum n m $result214158))))

; post sum
(assert
  (forall ((n214159 Int) (m214160 Int) (n Int) (m Int))
    (=> (and ($sum_if3353 n m n214159 m214160))
        (sum n214159 m214160 0))))

; sum precondition
(assert
  (forall (($a2423 Int) ($b2424 Int))
    (=> (and (= $b2424 0)
             (= $a2423 10))
        ($sum_pre $a2423 $b2424))))

; label ERROR
(assert
  (forall (($a2423 Int) ($b2424 Int) ($result2425 Int) ($result214161 Int))
    (=> (and (not (= $result2425 (+ $a2423 $b2424)))
             (= $result2425 $result214161)
             (sum $a2423 $b2424 $result214161)
             (= $b2424 0)
             (= $a2423 10))
        ($main_ERROR $a2423 $b2424 $result2425 $a2423 $b2424 $result2425))))

; error
(assert
  (forall (($result2425 Int) ($result2425214164 Int) ($a2423214162 Int) ($b2424 Int) ($a2423 Int) ($b2424214163 Int))
    (=> (and ($main_ERROR $a2423 $b2424 $result2425 $a2423214162 $b2424214163 $result2425214164))
        false)))

; if else
(assert
  (forall (($a2423 Int) ($b2424 Int) ($result2425 Int) ($result214161 Int))
    (=> (and (= $result2425 (+ $a2423 $b2424))
             (= $result2425 $result214161)
             (sum $a2423 $b2424 $result214161)
             (= $b2424 0)
             (= $a2423 10))
        ($main_if3354 $a2423 $b2424 $result2425 $a2423 $b2424 $result2425))))

(check-sat)
