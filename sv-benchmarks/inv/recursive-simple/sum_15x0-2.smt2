(set-logic HORN)

(declare-fun $sum_pre (Int Int) Bool)
(declare-fun $sum_if3359 (Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int) Bool)
(declare-fun sum (Int Int Int) Bool)
(declare-fun $main_if3360 (Int Int Int) Bool)

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
  (forall ((n Int) (m Int) ($result211187 Int))
    (=> (and (sum (- n 1) (+ m 1) $result211187)
             (not (<= n 0))
             ($sum_pre n m))
        (sum n m $result211187))))

; post sum
(assert
  (forall ((n211188 Int) (m211189 Int))
    (=> (and ($sum_if3359 n211188 m211189))
        (sum n211188 m211189 0))))

; sum precondition
(assert
  (forall (($a2432 Int) ($b2433 Int))
    (=> (and (= $b2433 0)
             (= $a2432 15))
        ($sum_pre $a2432 $b2433))))

; label ERROR
(assert
  (forall (($a2432 Int) ($b2433 Int) ($result2434 Int) ($result211190 Int))
    (=> (and (= $result2434 (+ $a2432 $b2433))
             (= $result2434 $result211190)
             (sum $a2432 $b2433 $result211190)
             (= $b2433 0)
             (= $a2432 15))
        ($main_ERROR $a2432 $b2433 $result2434))))

; error
(assert
  (forall (($a2432211191 Int) ($b2433211192 Int) ($result2434211193 Int))
    (=> (and ($main_ERROR $a2432211191 $b2433211192 $result2434211193))
        false)))

; if else
(assert
  (forall (($a2432 Int) ($b2433 Int) ($result2434 Int) ($result211190 Int))
    (=> (and (not (= $result2434 (+ $a2432 $b2433)))
             (= $result2434 $result211190)
             (sum $a2432 $b2433 $result211190)
             (= $b2433 0)
             (= $a2432 15))
        ($main_if3360 $a2432 $b2433 $result2434))))

(check-sat)
