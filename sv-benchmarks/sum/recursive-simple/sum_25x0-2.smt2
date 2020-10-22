(set-logic HORN)

(declare-fun $sum_pre (Int Int) Bool)
(declare-fun $main_if3368 (Int Int Int Int Int Int) Bool)
(declare-fun $sum_if3367 (Int Int Int Int) Bool)
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
  (forall ((n Int) (m Int) ($result214228 Int))
    (=> (and (sum (- n 1) (+ m 1) $result214228)
             (not (<= n 0))
             ($sum_pre n m))
        (sum n m $result214228))))

; post sum
(assert
  (forall ((n214229 Int) (m214230 Int) (n Int) (m Int))
    (=> (and ($sum_if3367 n m n214229 m214230))
        (sum n214229 m214230 0))))

; sum precondition
(assert
  (forall (($a2444 Int) ($b2445 Int))
    (=> (and (= $b2445 0)
             (= $a2444 25))
        ($sum_pre $a2444 $b2445))))

; label ERROR
(assert
  (forall (($a2444 Int) ($b2445 Int) ($result2446 Int) ($result214231 Int))
    (=> (and (= $result2446 (+ $a2444 $b2445))
             (= $result2446 $result214231)
             (sum $a2444 $b2445 $result214231)
             (= $b2445 0)
             (= $a2444 25))
        ($main_ERROR $a2444 $b2445 $result2446 $a2444 $b2445 $result2446))))

; error
(assert
  (forall (($b2445214233 Int) ($result2446 Int) ($a2444 Int) ($result2446214234 Int) ($b2445 Int) ($a2444214232 Int))
    (=> (and ($main_ERROR $a2444 $b2445 $result2446 $a2444214232 $b2445214233 $result2446214234))
        false)))

; if else
(assert
  (forall (($a2444 Int) ($b2445 Int) ($result2446 Int) ($result214231 Int))
    (=> (and (not (= $result2446 (+ $a2444 $b2445)))
             (= $result2446 $result214231)
             (sum $a2444 $b2445 $result214231)
             (= $b2445 0)
             (= $a2444 25))
        ($main_if3368 $a2444 $b2445 $result2446 $a2444 $b2445 $result2446))))

(check-sat)
