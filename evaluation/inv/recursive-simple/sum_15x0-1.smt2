(set-logic HORN)

(declare-fun $sum_pre (Int Int) Bool)
(declare-fun $sum_if3357 (Int Int) Bool)
(declare-fun $main_if3358 (Int Int Int) Bool)
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
  (forall ((n Int) (m Int) ($result211177 Int))
    (=> (and (sum (- n 1) (+ m 1) $result211177)
             (not (<= n 0))
             ($sum_pre n m))
        (sum n m $result211177))))

; post sum
(assert
  (forall ((n211178 Int) (m211179 Int))
    (=> (and ($sum_if3357 n211178 m211179))
        (sum n211178 m211179 0))))

; sum precondition
(assert
  (forall (($a2429 Int) ($b2430 Int))
    (=> (and (= $b2430 0)
             (= $a2429 15))
        ($sum_pre $a2429 $b2430))))

; label ERROR
(assert
  (forall (($a2429 Int) ($b2430 Int) ($result2431 Int) ($result211180 Int))
    (=> (and (not (= $result2431 (+ $a2429 $b2430)))
             (= $result2431 $result211180)
             (sum $a2429 $b2430 $result211180)
             (= $b2430 0)
             (= $a2429 15))
        ($main_ERROR $a2429 $b2430 $result2431))))

; error
(assert
  (forall (($a2429211181 Int) ($b2430211182 Int) ($result2431211183 Int))
    (=> (and ($main_ERROR $a2429211181 $b2430211182 $result2431211183))
        false)))

; if else
(assert
  (forall (($a2429 Int) ($b2430 Int) ($result2431 Int) ($result211180 Int))
    (=> (and (= $result2431 (+ $a2429 $b2430))
             (= $result2431 $result211180)
             (sum $a2429 $b2430 $result211180)
             (= $b2430 0)
             (= $a2429 15))
        ($main_if3358 $a2429 $b2430 $result2431))))

(check-sat)
