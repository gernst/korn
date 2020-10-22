(set-logic HORN)

(declare-fun $main_if3168 (Int Int) Bool)
(declare-fun $fibo_if3166 (Int) Bool)
(declare-fun $fibo_if3167 (Int) Bool)
(declare-fun fibo (Int Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun $fibo_pre (Int) Bool)

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
  (forall ((n Int) ($result210598 Int))
    (=> (and (fibo (- n 1) $result210598)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        ($fibo_pre (- n 2)))))

; post fibo
(assert
  (forall ((n Int) ($result210598 Int) ($result210599 Int))
    (=> (and (fibo (- n 2) $result210599)
             (fibo (- n 1) $result210598)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        (fibo n (+ $result210598 $result210599)))))

; if else
(assert
  (forall ((n210600 Int))
    (=> (and ($fibo_if3166 n210600))
        ($fibo_if3167 n210600))))

; post fibo
(assert
  (forall ((n210601 Int))
    (=> (and ($fibo_if3167 n210601))
        (fibo n210601 0))))

; fibo precondition
(assert
  (forall (($x2305 Int))
    (=> (and (= $x2305 15))
        ($fibo_pre $x2305))))

; label ERROR
(assert
  (forall (($x2305 Int) ($result2306 Int) ($result210602 Int))
    (=> (and (= $result2306 610)
             (= $result2306 $result210602)
             (fibo $x2305 $result210602)
             (= $x2305 15))
        ($main_ERROR $x2305 $result2306))))

; error
(assert
  (forall (($x2305210603 Int) ($result2306210604 Int))
    (=> (and ($main_ERROR $x2305210603 $result2306210604))
        false)))

; if else
(assert
  (forall (($x2305 Int) ($result2306 Int) ($result210602 Int))
    (=> (and (not (= $result2306 610))
             (= $result2306 $result210602)
             (fibo $x2305 $result210602)
             (= $x2305 15))
        ($main_if3168 $x2305 $result2306))))

(check-sat)
