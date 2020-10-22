(set-logic HORN)

(declare-fun $fibo_if3170 (Int Int) Bool)
(declare-fun fibo (Int Int) Bool)
(declare-fun $main_if3171 (Int Int Int Int) Bool)
(declare-fun $fibo_if3169 (Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
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
  (forall ((n Int) ($result213608 Int))
    (=> (and (fibo (- n 1) $result213608)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        ($fibo_pre (- n 2)))))

; post fibo
(assert
  (forall ((n Int) ($result213608 Int) ($result213609 Int))
    (=> (and (fibo (- n 2) $result213609)
             (fibo (- n 1) $result213608)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        (fibo n (+ $result213608 $result213609)))))

; if else
(assert
  (forall ((n Int) (n213610 Int))
    (=> (and ($fibo_if3169 n n213610))
        ($fibo_if3170 n n213610))))

; post fibo
(assert
  (forall ((n213611 Int) (n Int))
    (=> (and ($fibo_if3170 n n213611))
        (fibo n213611 0))))

; fibo precondition
(assert
  (forall (($x2307 Int))
    (=> (and (= $x2307 20))
        ($fibo_pre $x2307))))

; label ERROR
(assert
  (forall (($x2307 Int) ($result2308 Int) ($result213612 Int))
    (=> (and (= $result2308 6765)
             (= $result2308 $result213612)
             (fibo $x2307 $result213612)
             (= $x2307 20))
        ($main_ERROR $x2307 $result2308 $x2307 $result2308))))

; error
(assert
  (forall (($x2307 Int) ($result2308 Int) ($x2307213613 Int) ($result2308213614 Int))
    (=> (and ($main_ERROR $x2307 $result2308 $x2307213613 $result2308213614))
        false)))

; if else
(assert
  (forall (($x2307 Int) ($result2308 Int) ($result213612 Int))
    (=> (and (not (= $result2308 6765))
             (= $result2308 $result213612)
             (fibo $x2307 $result213612)
             (= $x2307 20))
        ($main_if3171 $x2307 $result2308 $x2307 $result2308))))

(check-sat)
