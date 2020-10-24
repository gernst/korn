(set-logic HORN)

(declare-fun $sum_pre (Int Int) Bool)
(declare-fun $sum_if3359 (Int Int Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int Int Int) Bool)
(declare-fun sum (Int Int Int) Bool)
(declare-fun $main_if3360 (Int Int Int Int Int Int) Bool)

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
  (forall ((n Int) (m Int) ($result214188 Int))
    (=> (and (sum (- n 1) (+ m 1) $result214188)
             (not (<= n 0))
             ($sum_pre n m))
        (sum n m $result214188))))

; post sum
(assert
  (forall ((n214189 Int) (m214190 Int) (n Int) (m Int))
    (=> (and ($sum_if3359 n m n214189 m214190))
        (sum n214189 m214190 0))))

; sum precondition
(assert
  (forall (($a2432 Int) ($b2433 Int))
    (=> (and (= $b2433 0)
             (= $a2432 15))
        ($sum_pre $a2432 $b2433))))

; label ERROR
(assert
  (forall (($a2432 Int) ($b2433 Int) ($result2434 Int) ($result214191 Int))
    (=> (and (= $result2434 (+ $a2432 $b2433))
             (= $result2434 $result214191)
             (sum $a2432 $b2433 $result214191)
             (= $b2433 0)
             (= $a2432 15))
        ($main_ERROR $a2432 $b2433 $result2434 $a2432 $b2433 $result2434))))

; error
(assert
  (forall (($b2433214193 Int) ($a2432214192 Int) ($a2432 Int) ($result2434 Int) ($b2433 Int) ($result2434214194 Int))
    (=> (and ($main_ERROR $a2432 $b2433 $result2434 $a2432214192 $b2433214193 $result2434214194))
        false)))

; if else
(assert
  (forall (($a2432 Int) ($b2433 Int) ($result2434 Int) ($result214191 Int))
    (=> (and (not (= $result2434 (+ $a2432 $b2433)))
             (= $result2434 $result214191)
             (sum $a2432 $b2433 $result214191)
             (= $b2433 0)
             (= $a2432 15))
        ($main_if3360 $a2432 $b2433 $result2434 $a2432 $b2433 $result2434))))

(check-sat)
