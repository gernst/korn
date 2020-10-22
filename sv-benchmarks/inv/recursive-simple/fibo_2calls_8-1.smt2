(set-logic HORN)

(declare-fun $fibo1_pre (Int) Bool)
(declare-fun $fibo2_if3263 (Int) Bool)
(declare-fun $fibo2_if3264 (Int) Bool)
(declare-fun $main_if3265 (Int Int) Bool)
(declare-fun $fibo1_if3262 (Int) Bool)
(declare-fun fibo2 (Int Int) Bool)
(declare-fun $fibo2_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun $fibo1_if3261 (Int) Bool)
(declare-fun fibo1 (Int Int) Bool)

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
  (forall ((n Int) ($result210851 Int))
    (=> (and (fibo2 (- n 1) $result210851)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        ($fibo2_pre (- n 2)))))

; post fibo1
(assert
  (forall ((n Int) ($result210851 Int) ($result210852 Int))
    (=> (and (fibo2 (- n 2) $result210852)
             (fibo2 (- n 1) $result210851)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        (fibo1 n (+ $result210851 $result210852)))))

; if else
(assert
  (forall ((n210853 Int))
    (=> (and ($fibo1_if3261 n210853))
        ($fibo1_if3262 n210853))))

; post fibo1
(assert
  (forall ((n210854 Int))
    (=> (and ($fibo1_if3262 n210854))
        (fibo1 n210854 0))))

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
  (forall ((n Int) ($result210855 Int))
    (=> (and (fibo1 (- n 1) $result210855)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        ($fibo1_pre (- n 2)))))

; post fibo2
(assert
  (forall ((n Int) ($result210855 Int) ($result210856 Int))
    (=> (and (fibo1 (- n 2) $result210856)
             (fibo1 (- n 1) $result210855)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        (fibo2 n (+ $result210855 $result210856)))))

; if else
(assert
  (forall ((n210857 Int))
    (=> (and ($fibo2_if3263 n210857))
        ($fibo2_if3264 n210857))))

; post fibo2
(assert
  (forall ((n210858 Int))
    (=> (and ($fibo2_if3264 n210858))
        (fibo2 n210858 0))))

; fibo1 precondition
(assert
  (forall (($x2347 Int))
    (=> (and (= $x2347 8))
        ($fibo1_pre $x2347))))

; label ERROR
(assert
  (forall (($x2347 Int) ($result2348 Int) ($result210859 Int))
    (=> (and (not (= $result2348 21))
             (= $result2348 $result210859)
             (fibo1 $x2347 $result210859)
             (= $x2347 8))
        ($main_ERROR $x2347 $result2348))))

; error
(assert
  (forall (($x2347210860 Int) ($result2348210861 Int))
    (=> (and ($main_ERROR $x2347210860 $result2348210861))
        false)))

; if else
(assert
  (forall (($x2347 Int) ($result2348 Int) ($result210859 Int))
    (=> (and (= $result2348 21)
             (= $result2348 $result210859)
             (fibo1 $x2347 $result210859)
             (= $x2347 8))
        ($main_if3265 $x2347 $result2348))))

(check-sat)
