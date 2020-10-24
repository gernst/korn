(set-logic HORN)

(declare-fun $fibo1_if3262 (Int Int) Bool)
(declare-fun $fibo1_pre (Int) Bool)
(declare-fun $fibo2_if3263 (Int Int) Bool)
(declare-fun $main_if3265 (Int Int Int Int) Bool)
(declare-fun $fibo2_if3264 (Int Int) Bool)
(declare-fun fibo2 (Int Int) Bool)
(declare-fun $fibo2_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun fibo1 (Int Int) Bool)
(declare-fun $fibo1_if3261 (Int Int) Bool)

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
  (forall ((n Int) ($result213852 Int))
    (=> (and (fibo2 (- n 1) $result213852)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        ($fibo2_pre (- n 2)))))

; post fibo1
(assert
  (forall ((n Int) ($result213852 Int) ($result213853 Int))
    (=> (and (fibo2 (- n 2) $result213853)
             (fibo2 (- n 1) $result213852)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        (fibo1 n (+ $result213852 $result213853)))))

; if else
(assert
  (forall ((n Int) (n213854 Int))
    (=> (and ($fibo1_if3261 n n213854))
        ($fibo1_if3262 n n213854))))

; post fibo1
(assert
  (forall ((n213855 Int) (n Int))
    (=> (and ($fibo1_if3262 n n213855))
        (fibo1 n213855 0))))

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
  (forall ((n Int) ($result213856 Int))
    (=> (and (fibo1 (- n 1) $result213856)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        ($fibo1_pre (- n 2)))))

; post fibo2
(assert
  (forall ((n Int) ($result213856 Int) ($result213857 Int))
    (=> (and (fibo1 (- n 2) $result213857)
             (fibo1 (- n 1) $result213856)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        (fibo2 n (+ $result213856 $result213857)))))

; if else
(assert
  (forall ((n Int) (n213858 Int))
    (=> (and ($fibo2_if3263 n n213858))
        ($fibo2_if3264 n n213858))))

; post fibo2
(assert
  (forall ((n213859 Int) (n Int))
    (=> (and ($fibo2_if3264 n n213859))
        (fibo2 n213859 0))))

; fibo1 precondition
(assert
  (forall (($x2347 Int))
    (=> (and (= $x2347 8))
        ($fibo1_pre $x2347))))

; label ERROR
(assert
  (forall (($x2347 Int) ($result2348 Int) ($result213860 Int))
    (=> (and (not (= $result2348 21))
             (= $result2348 $result213860)
             (fibo1 $x2347 $result213860)
             (= $x2347 8))
        ($main_ERROR $x2347 $result2348 $x2347 $result2348))))

; error
(assert
  (forall (($x2347 Int) ($result2348 Int) ($x2347213861 Int) ($result2348213862 Int))
    (=> (and ($main_ERROR $x2347 $result2348 $x2347213861 $result2348213862))
        false)))

; if else
(assert
  (forall (($x2347 Int) ($result2348 Int) ($result213860 Int))
    (=> (and (= $result2348 21)
             (= $result2348 $result213860)
             (fibo1 $x2347 $result213860)
             (= $x2347 8))
        ($main_if3265 $x2347 $result2348 $x2347 $result2348))))

(check-sat)
