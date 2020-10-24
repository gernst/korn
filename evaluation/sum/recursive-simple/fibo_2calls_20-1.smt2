(set-logic HORN)

(declare-fun $fibo1_pre (Int) Bool)
(declare-fun $fibo2_if3204 (Int Int) Bool)
(declare-fun fibo2 (Int Int) Bool)
(declare-fun $fibo2_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $fibo1_if3201 (Int Int) Bool)
(declare-fun fibo1 (Int Int) Bool)
(declare-fun $fibo2_if3203 (Int Int) Bool)
(declare-fun $main_if3205 (Int Int Int Int) Bool)
(declare-fun $fibo1_if3202 (Int Int) Bool)

; post fibo1
(assert
  (forall ((n Int))
    (=> (and (< n 1)
             ($fibo1_pre n))
        (fibo1 n 0))))

; post fibo1
(assert
  (forall ((n Int))
    (=> (and (= n 1)
             (not (< n 1))
             ($fibo1_pre n))
        (fibo1 n 1))))

; fibo2 precondition
(assert
  (forall ((n Int))
    (=> (and (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        ($fibo2_pre (- n 1)))))

; fibo2 precondition
(assert
  (forall ((n Int) ($result213696 Int))
    (=> (and (fibo2 (- n 1) $result213696)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        ($fibo2_pre (- n 2)))))

; post fibo1
(assert
  (forall ((n Int) ($result213696 Int) ($result213697 Int))
    (=> (and (fibo2 (- n 2) $result213697)
             (fibo2 (- n 1) $result213696)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        (fibo1 n (+ $result213696 $result213697)))))

; if else
(assert
  (forall ((n Int) (n213698 Int))
    (=> (and ($fibo1_if3201 n n213698))
        ($fibo1_if3202 n n213698))))

; post fibo1
(assert
  (forall ((n213699 Int) (n Int))
    (=> (and ($fibo1_if3202 n n213699))
        (fibo1 n213699 0))))

; post fibo2
(assert
  (forall ((n Int))
    (=> (and (< n 1)
             ($fibo2_pre n))
        (fibo2 n 0))))

; post fibo2
(assert
  (forall ((n Int))
    (=> (and (= n 1)
             (not (< n 1))
             ($fibo2_pre n))
        (fibo2 n 1))))

; fibo1 precondition
(assert
  (forall ((n Int))
    (=> (and (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        ($fibo1_pre (- n 1)))))

; fibo1 precondition
(assert
  (forall ((n Int) ($result213700 Int))
    (=> (and (fibo1 (- n 1) $result213700)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        ($fibo1_pre (- n 2)))))

; post fibo2
(assert
  (forall ((n Int) ($result213700 Int) ($result213701 Int))
    (=> (and (fibo1 (- n 2) $result213701)
             (fibo1 (- n 1) $result213700)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        (fibo2 n (+ $result213700 $result213701)))))

; if else
(assert
  (forall ((n Int) (n213702 Int))
    (=> (and ($fibo2_if3203 n n213702))
        ($fibo2_if3204 n n213702))))

; post fibo2
(assert
  (forall ((n213703 Int) (n Int))
    (=> (and ($fibo2_if3204 n n213703))
        (fibo2 n213703 0))))

; fibo1 precondition
(assert
  (forall (($x2323 Int))
    (=> (and (= $x2323 20))
        ($fibo1_pre $x2323))))

; label ERROR
(assert
  (forall (($x2323 Int) ($result2324 Int) ($result213704 Int))
    (=> (and (= $result2324 6765)
             (= $result2324 $result213704)
             (fibo1 $x2323 $result213704)
             (= $x2323 20))
        ($main_ERROR $x2323 $result2324 $x2323 $result2324))))

; error
(assert
  (forall (($x2323 Int) ($result2324 Int) ($x2323213705 Int) ($result2324213706 Int))
    (=> (and ($main_ERROR $x2323 $result2324 $x2323213705 $result2324213706))
        false)))

; if else
(assert
  (forall (($x2323 Int) ($result2324 Int) ($result213704 Int))
    (=> (and (not (= $result2324 6765))
             (= $result2324 $result213704)
             (fibo1 $x2323 $result213704)
             (= $x2323 20))
        ($main_if3205 $x2323 $result2324 $x2323 $result2324))))

(check-sat)
