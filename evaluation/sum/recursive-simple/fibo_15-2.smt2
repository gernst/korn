(set-logic HORN)

(declare-fun $main_if3168 (Int Int Int Int) Bool)
(declare-fun $fibo_if3166 (Int Int) Bool)
(declare-fun fibo (Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $fibo_if3167 (Int Int) Bool)
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
  (forall ((n Int) ($result213599 Int))
    (=> (and (fibo (- n 1) $result213599)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        ($fibo_pre (- n 2)))))

; post fibo
(assert
  (forall ((n Int) ($result213599 Int) ($result213600 Int))
    (=> (and (fibo (- n 2) $result213600)
             (fibo (- n 1) $result213599)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        (fibo n (+ $result213599 $result213600)))))

; if else
(assert
  (forall ((n Int) (n213601 Int))
    (=> (and ($fibo_if3166 n n213601))
        ($fibo_if3167 n n213601))))

; post fibo
(assert
  (forall ((n213602 Int) (n Int))
    (=> (and ($fibo_if3167 n n213602))
        (fibo n213602 0))))

; fibo precondition
(assert
  (forall (($x2305 Int))
    (=> (and (= $x2305 15))
        ($fibo_pre $x2305))))

; label ERROR
(assert
  (forall (($x2305 Int) ($result2306 Int) ($result213603 Int))
    (=> (and (= $result2306 610)
             (= $result2306 $result213603)
             (fibo $x2305 $result213603)
             (= $x2305 15))
        ($main_ERROR $x2305 $result2306 $x2305 $result2306))))

; error
(assert
  (forall (($x2305 Int) ($result2306 Int) ($x2305213604 Int) ($result2306213605 Int))
    (=> (and ($main_ERROR $x2305 $result2306 $x2305213604 $result2306213605))
        false)))

; if else
(assert
  (forall (($x2305 Int) ($result2306 Int) ($result213603 Int))
    (=> (and (not (= $result2306 610))
             (= $result2306 $result213603)
             (fibo $x2305 $result213603)
             (= $x2305 15))
        ($main_if3168 $x2305 $result2306 $x2305 $result2306))))

(check-sat)
