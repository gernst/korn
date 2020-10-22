(set-logic HORN)

(declare-fun $sum_if3363 (Int Int) Bool)
(declare-fun $sum_pre (Int Int) Bool)
(declare-fun $main_if3364 (Int Int Int) Bool)
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
  (forall ((n Int) (m Int) ($result211207 Int))
    (=> (and (sum (- n 1) (+ m 1) $result211207)
             (not (<= n 0))
             ($sum_pre n m))
        (sum n m $result211207))))

; post sum
(assert
  (forall ((n211208 Int) (m211209 Int))
    (=> (and ($sum_if3363 n211208 m211209))
        (sum n211208 m211209 0))))

; sum precondition
(assert
  (forall (($a2438 Int) ($b2439 Int))
    (=> (and (= $b2439 0)
             (= $a2438 20))
        ($sum_pre $a2438 $b2439))))

; label ERROR
(assert
  (forall (($a2438 Int) ($b2439 Int) ($result2440 Int) ($result211210 Int))
    (=> (and (not (= $result2440 (+ $a2438 $b2439)))
             (= $result2440 $result211210)
             (sum $a2438 $b2439 $result211210)
             (= $b2439 0)
             (= $a2438 20))
        ($main_ERROR $a2438 $b2439 $result2440))))

; error
(assert
  (forall (($a2438211211 Int) ($b2439211212 Int) ($result2440211213 Int))
    (=> (and ($main_ERROR $a2438211211 $b2439211212 $result2440211213))
        false)))

; if else
(assert
  (forall (($a2438 Int) ($b2439 Int) ($result2440 Int) ($result211210 Int))
    (=> (and (= $result2440 (+ $a2438 $b2439))
             (= $result2440 $result211210)
             (sum $a2438 $b2439 $result211210)
             (= $b2439 0)
             (= $a2438 20))
        ($main_if3364 $a2438 $b2439 $result2440))))

(check-sat)
