(set-logic HORN)

(declare-fun $sum_pre (Int Int) Bool)
(declare-fun $main_if3368 (Int Int Int) Bool)
(declare-fun $sum_if3367 (Int Int) Bool)
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
  (forall ((n Int) (m Int) ($result211227 Int))
    (=> (and (sum (- n 1) (+ m 1) $result211227)
             (not (<= n 0))
             ($sum_pre n m))
        (sum n m $result211227))))

; post sum
(assert
  (forall ((n211228 Int) (m211229 Int))
    (=> (and ($sum_if3367 n211228 m211229))
        (sum n211228 m211229 0))))

; sum precondition
(assert
  (forall (($a2444 Int) ($b2445 Int))
    (=> (and (= $b2445 0)
             (= $a2444 25))
        ($sum_pre $a2444 $b2445))))

; label ERROR
(assert
  (forall (($a2444 Int) ($b2445 Int) ($result2446 Int) ($result211230 Int))
    (=> (and (= $result2446 (+ $a2444 $b2445))
             (= $result2446 $result211230)
             (sum $a2444 $b2445 $result211230)
             (= $b2445 0)
             (= $a2444 25))
        ($main_ERROR $a2444 $b2445 $result2446))))

; error
(assert
  (forall (($a2444211231 Int) ($b2445211232 Int) ($result2446211233 Int))
    (=> (and ($main_ERROR $a2444211231 $b2445211232 $result2446211233))
        false)))

; if else
(assert
  (forall (($a2444 Int) ($b2445 Int) ($result2446 Int) ($result211230 Int))
    (=> (and (not (= $result2446 (+ $a2444 $b2445)))
             (= $result2446 $result211230)
             (sum $a2444 $b2445 $result211230)
             (= $b2445 0)
             (= $a2444 25))
        ($main_if3368 $a2444 $b2445 $result2446))))

(check-sat)
