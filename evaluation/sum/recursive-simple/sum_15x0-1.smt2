(set-logic HORN)

(declare-fun $sum_pre (Int Int) Bool)
(declare-fun $sum_if3357 (Int Int Int Int) Bool)
(declare-fun $main_if3358 (Int Int Int Int Int Int) Bool)
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
  (forall ((n Int) (m Int) ($result214178 Int))
    (=> (and (sum (- n 1) (+ m 1) $result214178)
             (not (<= n 0))
             ($sum_pre n m))
        (sum n m $result214178))))

; post sum
(assert
  (forall ((n214179 Int) (m214180 Int) (n Int) (m Int))
    (=> (and ($sum_if3357 n m n214179 m214180))
        (sum n214179 m214180 0))))

; sum precondition
(assert
  (forall (($a2429 Int) ($b2430 Int))
    (=> (and (= $b2430 0)
             (= $a2429 15))
        ($sum_pre $a2429 $b2430))))

; label ERROR
(assert
  (forall (($a2429 Int) ($b2430 Int) ($result2431 Int) ($result214181 Int))
    (=> (and (not (= $result2431 (+ $a2429 $b2430)))
             (= $result2431 $result214181)
             (sum $a2429 $b2430 $result214181)
             (= $b2430 0)
             (= $a2429 15))
        ($main_ERROR $a2429 $b2430 $result2431 $a2429 $b2430 $result2431))))

; error
(assert
  (forall (($b2430214183 Int) ($result2431 Int) ($b2430 Int) ($result2431214184 Int) ($a2429 Int) ($a2429214182 Int))
    (=> (and ($main_ERROR $a2429 $b2430 $result2431 $a2429214182 $b2430214183 $result2431214184))
        false)))

; if else
(assert
  (forall (($a2429 Int) ($b2430 Int) ($result2431 Int) ($result214181 Int))
    (=> (and (= $result2431 (+ $a2429 $b2430))
             (= $result2431 $result214181)
             (sum $a2429 $b2430 $result214181)
             (= $b2430 0)
             (= $a2429 15))
        ($main_if3358 $a2429 $b2430 $result2431 $a2429 $b2430 $result2431))))

(check-sat)
