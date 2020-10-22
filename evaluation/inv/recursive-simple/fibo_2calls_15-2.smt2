(set-logic HORN)

(declare-fun $fibo1_pre (Int) Bool)
(declare-fun $fibo2_if3198 (Int) Bool)
(declare-fun $fibo1_if3196 (Int) Bool)
(declare-fun fibo2 (Int Int) Bool)
(declare-fun $fibo2_pre (Int) Bool)
(declare-fun $fibo2_if3199 (Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun fibo1 (Int Int) Bool)
(declare-fun $main_if3200 (Int Int) Bool)
(declare-fun $fibo1_if3197 (Int) Bool)

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
  (forall ((n Int) ($result210682 Int))
    (=> (and (fibo2 (- n 1) $result210682)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        ($fibo2_pre (- n 2)))))

; post fibo1
(assert
  (forall ((n Int) ($result210682 Int) ($result210683 Int))
    (=> (and (fibo2 (- n 2) $result210683)
             (fibo2 (- n 1) $result210682)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        (fibo1 n (+ $result210682 $result210683)))))

; if else
(assert
  (forall ((n210684 Int))
    (=> (and ($fibo1_if3196 n210684))
        ($fibo1_if3197 n210684))))

; post fibo1
(assert
  (forall ((n210685 Int))
    (=> (and ($fibo1_if3197 n210685))
        (fibo1 n210685 0))))

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
  (forall ((n Int) ($result210686 Int))
    (=> (and (fibo1 (- n 1) $result210686)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        ($fibo1_pre (- n 2)))))

; post fibo2
(assert
  (forall ((n Int) ($result210686 Int) ($result210687 Int))
    (=> (and (fibo1 (- n 2) $result210687)
             (fibo1 (- n 1) $result210686)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        (fibo2 n (+ $result210686 $result210687)))))

; if else
(assert
  (forall ((n210688 Int))
    (=> (and ($fibo2_if3198 n210688))
        ($fibo2_if3199 n210688))))

; post fibo2
(assert
  (forall ((n210689 Int))
    (=> (and ($fibo2_if3199 n210689))
        (fibo2 n210689 0))))

; fibo1 precondition
(assert
  (forall (($x2321 Int))
    (=> (and (= $x2321 15))
        ($fibo1_pre $x2321))))

; label ERROR
(assert
  (forall (($x2321 Int) ($result2322 Int) ($result210690 Int))
    (=> (and (not (= $result2322 610))
             (= $result2322 $result210690)
             (fibo1 $x2321 $result210690)
             (= $x2321 15))
        ($main_ERROR $x2321 $result2322))))

; error
(assert
  (forall (($x2321210691 Int) ($result2322210692 Int))
    (=> (and ($main_ERROR $x2321210691 $result2322210692))
        false)))

; if else
(assert
  (forall (($x2321 Int) ($result2322 Int) ($result210690 Int))
    (=> (and (= $result2322 610)
             (= $result2322 $result210690)
             (fibo1 $x2321 $result210690)
             (= $x2321 15))
        ($main_if3200 $x2321 $result2322))))

(check-sat)
