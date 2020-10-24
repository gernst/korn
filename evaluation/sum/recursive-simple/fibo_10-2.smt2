(set-logic HORN)

(declare-fun $fibo_if3161 (Int Int) Bool)
(declare-fun fibo (Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $main_if3162 (Int Int Int Int) Bool)
(declare-fun $fibo_if3160 (Int Int) Bool)
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
  (forall ((n Int) ($result213581 Int))
    (=> (and (fibo (- n 1) $result213581)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        ($fibo_pre (- n 2)))))

; post fibo
(assert
  (forall ((n Int) ($result213581 Int) ($result213582 Int))
    (=> (and (fibo (- n 2) $result213582)
             (fibo (- n 1) $result213581)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        (fibo n (+ $result213581 $result213582)))))

; if else
(assert
  (forall ((n Int) (n213583 Int))
    (=> (and ($fibo_if3160 n n213583))
        ($fibo_if3161 n n213583))))

; post fibo
(assert
  (forall ((n213584 Int) (n Int))
    (=> (and ($fibo_if3161 n n213584))
        (fibo n213584 0))))

; fibo precondition
(assert
  (forall (($x2301 Int))
    (=> (and (= $x2301 10))
        ($fibo_pre $x2301))))

; label ERROR
(assert
  (forall (($x2301 Int) ($result2302 Int) ($result213585 Int))
    (=> (and (not (= $result2302 55))
             (= $result2302 $result213585)
             (fibo $x2301 $result213585)
             (= $x2301 10))
        ($main_ERROR $x2301 $result2302 $x2301 $result2302))))

; error
(assert
  (forall (($x2301 Int) ($result2302 Int) ($x2301213586 Int) ($result2302213587 Int))
    (=> (and ($main_ERROR $x2301 $result2302 $x2301213586 $result2302213587))
        false)))

; if else
(assert
  (forall (($x2301 Int) ($result2302 Int) ($result213585 Int))
    (=> (and (= $result2302 55)
             (= $result2302 $result213585)
             (fibo $x2301 $result213585)
             (= $x2301 10))
        ($main_if3162 $x2301 $result2302 $x2301 $result2302))))

(check-sat)
