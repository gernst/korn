(set-logic HORN)

(declare-fun $sum_pre (Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int) Bool)
(declare-fun sum (Int Int Int) Bool)
(declare-fun $main_if3354 (Int Int Int) Bool)
(declare-fun $sum_if3353 (Int Int) Bool)

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
  (forall ((n Int) (m Int) ($result211157 Int))
    (=> (and (sum (- n 1) (+ m 1) $result211157)
             (not (<= n 0))
             ($sum_pre n m))
        (sum n m $result211157))))

; post sum
(assert
  (forall ((n211158 Int) (m211159 Int))
    (=> (and ($sum_if3353 n211158 m211159))
        (sum n211158 m211159 0))))

; sum precondition
(assert
  (forall (($a2423 Int) ($b2424 Int))
    (=> (and (= $b2424 0)
             (= $a2423 10))
        ($sum_pre $a2423 $b2424))))

; label ERROR
(assert
  (forall (($a2423 Int) ($b2424 Int) ($result2425 Int) ($result211160 Int))
    (=> (and (not (= $result2425 (+ $a2423 $b2424)))
             (= $result2425 $result211160)
             (sum $a2423 $b2424 $result211160)
             (= $b2424 0)
             (= $a2423 10))
        ($main_ERROR $a2423 $b2424 $result2425))))

; error
(assert
  (forall (($a2423211161 Int) ($b2424211162 Int) ($result2425211163 Int))
    (=> (and ($main_ERROR $a2423211161 $b2424211162 $result2425211163))
        false)))

; if else
(assert
  (forall (($a2423 Int) ($b2424 Int) ($result2425 Int) ($result211160 Int))
    (=> (and (= $result2425 (+ $a2423 $b2424))
             (= $result2425 $result211160)
             (sum $a2423 $b2424 $result211160)
             (= $b2424 0)
             (= $a2423 10))
        ($main_if3354 $a2423 $b2424 $result2425))))

(check-sat)
