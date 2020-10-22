(set-logic HORN)

(declare-fun $fibo1_if3202 (Int) Bool)
(declare-fun $fibo1_pre (Int) Bool)
(declare-fun $fibo2_if3204 (Int) Bool)
(declare-fun $fibo1_if3201 (Int) Bool)
(declare-fun $fibo2_if3203 (Int) Bool)
(declare-fun fibo2 (Int Int) Bool)
(declare-fun $fibo2_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun fibo1 (Int Int) Bool)
(declare-fun $main_if3205 (Int Int) Bool)

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
  (forall ((n Int) ($result210695 Int))
    (=> (and (fibo2 (- n 1) $result210695)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        ($fibo2_pre (- n 2)))))

; post fibo1
(assert
  (forall ((n Int) ($result210695 Int) ($result210696 Int))
    (=> (and (fibo2 (- n 2) $result210696)
             (fibo2 (- n 1) $result210695)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        (fibo1 n (+ $result210695 $result210696)))))

; if else
(assert
  (forall ((n210697 Int))
    (=> (and ($fibo1_if3201 n210697))
        ($fibo1_if3202 n210697))))

; post fibo1
(assert
  (forall ((n210698 Int))
    (=> (and ($fibo1_if3202 n210698))
        (fibo1 n210698 0))))

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
  (forall ((n Int) ($result210699 Int))
    (=> (and (fibo1 (- n 1) $result210699)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        ($fibo1_pre (- n 2)))))

; post fibo2
(assert
  (forall ((n Int) ($result210699 Int) ($result210700 Int))
    (=> (and (fibo1 (- n 2) $result210700)
             (fibo1 (- n 1) $result210699)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        (fibo2 n (+ $result210699 $result210700)))))

; if else
(assert
  (forall ((n210701 Int))
    (=> (and ($fibo2_if3203 n210701))
        ($fibo2_if3204 n210701))))

; post fibo2
(assert
  (forall ((n210702 Int))
    (=> (and ($fibo2_if3204 n210702))
        (fibo2 n210702 0))))

; fibo1 precondition
(assert
  (forall (($x2323 Int))
    (=> (and (= $x2323 20))
        ($fibo1_pre $x2323))))

; label ERROR
(assert
  (forall (($x2323 Int) ($result2324 Int) ($result210703 Int))
    (=> (and (= $result2324 6765)
             (= $result2324 $result210703)
             (fibo1 $x2323 $result210703)
             (= $x2323 20))
        ($main_ERROR $x2323 $result2324))))

; error
(assert
  (forall (($x2323210704 Int) ($result2324210705 Int))
    (=> (and ($main_ERROR $x2323210704 $result2324210705))
        false)))

; if else
(assert
  (forall (($x2323 Int) ($result2324 Int) ($result210703 Int))
    (=> (and (not (= $result2324 6765))
             (= $result2324 $result210703)
             (fibo1 $x2323 $result210703)
             (= $x2323 20))
        ($main_if3205 $x2323 $result2324))))

(check-sat)
