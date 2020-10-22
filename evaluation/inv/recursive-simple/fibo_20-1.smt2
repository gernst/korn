(set-logic HORN)

(declare-fun $fibo_if3170 (Int) Bool)
(declare-fun $fibo_if3169 (Int) Bool)
(declare-fun fibo (Int Int) Bool)
(declare-fun $main_if3171 (Int Int) Bool)
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
  (forall ((n Int) ($result210607 Int))
    (=> (and (fibo (- n 1) $result210607)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        ($fibo_pre (- n 2)))))

; post fibo
(assert
  (forall ((n Int) ($result210607 Int) ($result210608 Int))
    (=> (and (fibo (- n 2) $result210608)
             (fibo (- n 1) $result210607)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        (fibo n (+ $result210607 $result210608)))))

; if else
(assert
  (forall ((n210609 Int))
    (=> (and ($fibo_if3169 n210609))
        ($fibo_if3170 n210609))))

; post fibo
(assert
  (forall ((n210610 Int))
    (=> (and ($fibo_if3170 n210610))
        (fibo n210610 0))))

; fibo precondition
(assert
  (forall (($x2307 Int))
    (=> (and (= $x2307 20))
        ($fibo_pre $x2307))))

; label ERROR
(assert
  (forall (($x2307 Int) ($result2308 Int) ($result210611 Int))
    (=> (and (= $result2308 6765)
             (= $result2308 $result210611)
             (fibo $x2307 $result210611)
             (= $x2307 20))
        ($main_ERROR $x2307 $result2308))))

; error
(assert
  (forall (($x2307210612 Int) ($result2308210613 Int))
    (=> (and ($main_ERROR $x2307210612 $result2308210613))
        false)))

; if else
(assert
  (forall (($x2307 Int) ($result2308 Int) ($result210611 Int))
    (=> (and (not (= $result2308 6765))
             (= $result2308 $result210611)
             (fibo $x2307 $result210611)
             (= $x2307 20))
        ($main_if3171 $x2307 $result2308))))

(check-sat)
