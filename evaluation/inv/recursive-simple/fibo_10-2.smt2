(set-logic HORN)

(declare-fun $fibo_if3160 (Int) Bool)
(declare-fun fibo (Int Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun $main_if3162 (Int Int) Bool)
(declare-fun $fibo_pre (Int) Bool)
(declare-fun $fibo_if3161 (Int) Bool)

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
  (forall ((n Int) ($result210580 Int))
    (=> (and (fibo (- n 1) $result210580)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        ($fibo_pre (- n 2)))))

; post fibo
(assert
  (forall ((n Int) ($result210580 Int) ($result210581 Int))
    (=> (and (fibo (- n 2) $result210581)
             (fibo (- n 1) $result210580)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        (fibo n (+ $result210580 $result210581)))))

; if else
(assert
  (forall ((n210582 Int))
    (=> (and ($fibo_if3160 n210582))
        ($fibo_if3161 n210582))))

; post fibo
(assert
  (forall ((n210583 Int))
    (=> (and ($fibo_if3161 n210583))
        (fibo n210583 0))))

; fibo precondition
(assert
  (forall (($x2301 Int))
    (=> (and (= $x2301 10))
        ($fibo_pre $x2301))))

; label ERROR
(assert
  (forall (($x2301 Int) ($result2302 Int) ($result210584 Int))
    (=> (and (not (= $result2302 55))
             (= $result2302 $result210584)
             (fibo $x2301 $result210584)
             (= $x2301 10))
        ($main_ERROR $x2301 $result2302))))

; error
(assert
  (forall (($x2301210585 Int) ($result2302210586 Int))
    (=> (and ($main_ERROR $x2301210585 $result2302210586))
        false)))

; if else
(assert
  (forall (($x2301 Int) ($result2302 Int) ($result210584 Int))
    (=> (and (= $result2302 55)
             (= $result2302 $result210584)
             (fibo $x2301 $result210584)
             (= $x2301 10))
        ($main_if3162 $x2301 $result2302))))

(check-sat)
