(set-logic HORN)

(declare-fun $main_if3279 (Int Int) Bool)
(declare-fun $fibo_if3277 (Int) Bool)
(declare-fun fibo (Int Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun $fibo_pre (Int) Bool)
(declare-fun $fibo_if3278 (Int) Bool)

; post fibo
(assert
  (forall ((n Int))
    (=> (and (< n 1)
             ($fibo_pre n))
        (fibo n 0))))

; post fibo
(assert
  (forall ((n Int))
    (=> (and (= n 1)
             (not (< n 1))
             ($fibo_pre n))
        (fibo n 1))))

; fibo precondition
(assert
  (forall ((n Int))
    (=> (and (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        ($fibo_pre (- n 1)))))

; fibo precondition
(assert
  (forall ((n Int) ($result210895 Int))
    (=> (and (fibo (- n 1) $result210895)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        ($fibo_pre (- n 2)))))

; post fibo
(assert
  (forall ((n Int) ($result210895 Int) ($result210896 Int))
    (=> (and (fibo (- n 2) $result210896)
             (fibo (- n 1) $result210895)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        (fibo n (+ $result210895 $result210896)))))

; if else
(assert
  (forall ((n210897 Int))
    (=> (and ($fibo_if3277 n210897))
        ($fibo_if3278 n210897))))

; post fibo
(assert
  (forall ((n210898 Int))
    (=> (and ($fibo_if3278 n210898))
        (fibo n210898 0))))

; fibo precondition
(assert
  (forall (($x2355 Int))
    (=> (and (= $x2355 7))
        ($fibo_pre $x2355))))

; label ERROR
(assert
  (forall (($x2355 Int) ($result2356 Int) ($result210899 Int))
    (=> (and (not (= $result2356 13))
             (= $result2356 $result210899)
             (fibo $x2355 $result210899)
             (= $x2355 7))
        ($main_ERROR $x2355 $result2356))))

; error
(assert
  (forall (($x2355210900 Int) ($result2356210901 Int))
    (=> (and ($main_ERROR $x2355210900 $result2356210901))
        false)))

; if else
(assert
  (forall (($x2355 Int) ($result2356 Int) ($result210899 Int))
    (=> (and (= $result2356 13)
             (= $result2356 $result210899)
             (fibo $x2355 $result210899)
             (= $x2355 7))
        ($main_if3279 $x2355 $result2356))))

(check-sat)
