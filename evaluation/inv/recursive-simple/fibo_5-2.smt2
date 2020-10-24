(set-logic HORN)

(declare-fun fibo (Int Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun $fibo_pre (Int) Bool)
(declare-fun $fibo_if3275 (Int) Bool)
(declare-fun $fibo_if3274 (Int) Bool)
(declare-fun $main_if3276 (Int Int) Bool)

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
  (forall ((n Int) ($result210886 Int))
    (=> (and (fibo (- n 1) $result210886)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        ($fibo_pre (- n 2)))))

; post fibo
(assert
  (forall ((n Int) ($result210886 Int) ($result210887 Int))
    (=> (and (fibo (- n 2) $result210887)
             (fibo (- n 1) $result210886)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        (fibo n (+ $result210886 $result210887)))))

; if else
(assert
  (forall ((n210888 Int))
    (=> (and ($fibo_if3274 n210888))
        ($fibo_if3275 n210888))))

; post fibo
(assert
  (forall ((n210889 Int))
    (=> (and ($fibo_if3275 n210889))
        (fibo n210889 0))))

; fibo precondition
(assert
  (forall (($x2353 Int))
    (=> (and (= $x2353 5))
        ($fibo_pre $x2353))))

; label ERROR
(assert
  (forall (($x2353 Int) ($result2354 Int) ($result210890 Int))
    (=> (and (= $result2354 5)
             (= $result2354 $result210890)
             (fibo $x2353 $result210890)
             (= $x2353 5))
        ($main_ERROR $x2353 $result2354))))

; error
(assert
  (forall (($x2353210891 Int) ($result2354210892 Int))
    (=> (and ($main_ERROR $x2353210891 $result2354210892))
        false)))

; if else
(assert
  (forall (($x2353 Int) ($result2354 Int) ($result210890 Int))
    (=> (and (not (= $result2354 5))
             (= $result2354 $result210890)
             (fibo $x2353 $result210890)
             (= $x2353 5))
        ($main_if3276 $x2353 $result2354))))

(check-sat)
