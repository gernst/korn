(set-logic HORN)

(declare-fun $sum_if3363 (Int Int Int Int) Bool)
(declare-fun $sum_pre (Int Int) Bool)
(declare-fun $main_if3364 (Int Int Int Int Int Int) Bool)
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
  (forall ((n Int) (m Int) ($result214208 Int))
    (=> (and (sum (- n 1) (+ m 1) $result214208)
             (not (<= n 0))
             ($sum_pre n m))
        (sum n m $result214208))))

; post sum
(assert
  (forall ((n214209 Int) (m214210 Int) (n Int) (m Int))
    (=> (and ($sum_if3363 n m n214209 m214210))
        (sum n214209 m214210 0))))

; sum precondition
(assert
  (forall (($a2438 Int) ($b2439 Int))
    (=> (and (= $b2439 0)
             (= $a2438 20))
        ($sum_pre $a2438 $b2439))))

; label ERROR
(assert
  (forall (($a2438 Int) ($b2439 Int) ($result2440 Int) ($result214211 Int))
    (=> (and (not (= $result2440 (+ $a2438 $b2439)))
             (= $result2440 $result214211)
             (sum $a2438 $b2439 $result214211)
             (= $b2439 0)
             (= $a2438 20))
        ($main_ERROR $a2438 $b2439 $result2440 $a2438 $b2439 $result2440))))

; error
(assert
  (forall (($b2439214213 Int) ($a2438 Int) ($result2440 Int) ($b2439 Int) ($a2438214212 Int) ($result2440214214 Int))
    (=> (and ($main_ERROR $a2438 $b2439 $result2440 $a2438214212 $b2439214213 $result2440214214))
        false)))

; if else
(assert
  (forall (($a2438 Int) ($b2439 Int) ($result2440 Int) ($result214211 Int))
    (=> (and (= $result2440 (+ $a2438 $b2439))
             (= $result2440 $result214211)
             (sum $a2438 $b2439 $result214211)
             (= $b2439 0)
             (= $a2438 20))
        ($main_if3364 $a2438 $b2439 $result2440 $a2438 $b2439 $result2440))))

(check-sat)
