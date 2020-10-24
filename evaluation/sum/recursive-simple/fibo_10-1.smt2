(set-logic HORN)

(declare-fun $main_if3159 (Int Int Int Int) Bool)
(declare-fun fibo (Int Int) Bool)
(declare-fun $fibo_if3158 (Int Int) Bool)
(declare-fun $fibo_if3157 (Int Int) Bool)
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
  (forall ((n Int) ($result213572 Int))
    (=> (and (fibo (- n 1) $result213572)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        ($fibo_pre (- n 2)))))

; post fibo
(assert
  (forall ((n Int) ($result213572 Int) ($result213573 Int))
    (=> (and (fibo (- n 2) $result213573)
             (fibo (- n 1) $result213572)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        (fibo n (+ $result213572 $result213573)))))

; if else
(assert
  (forall ((n Int) (n213574 Int))
    (=> (and ($fibo_if3157 n n213574))
        ($fibo_if3158 n n213574))))

; post fibo
(assert
  (forall ((n213575 Int) (n Int))
    (=> (and ($fibo_if3158 n n213575))
        (fibo n213575 0))))

; fibo precondition
(assert
  (forall (($x2299 Int))
    (=> (and (= $x2299 10))
        ($fibo_pre $x2299))))

; label ERROR
(assert
  (forall (($x2299 Int) ($result2300 Int) ($result213576 Int))
    (=> (and (= $result2300 55)
             (= $result2300 $result213576)
             (fibo $x2299 $result213576)
             (= $x2299 10))
        ($main_ERROR $x2299 $result2300 $x2299 $result2300))))

; error
(assert
  (forall (($x2299 Int) ($result2300 Int) ($x2299213577 Int) ($result2300213578 Int))
    (=> (and ($main_ERROR $x2299 $result2300 $x2299213577 $result2300213578))
        false)))

; if else
(assert
  (forall (($x2299 Int) ($result2300 Int) ($result213576 Int))
    (=> (and (not (= $result2300 55))
             (= $result2300 $result213576)
             (fibo $x2299 $result213576)
             (= $x2299 10))
        ($main_if3159 $x2299 $result2300 $x2299 $result2300))))

(check-sat)
