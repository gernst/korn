(set-logic HORN)

(declare-fun $fibo1_pre (Int) Bool)
(declare-fun $fibo1_if3211 (Int) Bool)
(declare-fun $fibo2_if3214 (Int) Bool)
(declare-fun $main_if3215 (Int Int) Bool)
(declare-fun $fibo1_if3212 (Int) Bool)
(declare-fun fibo2 (Int Int) Bool)
(declare-fun $fibo2_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun fibo1 (Int Int) Bool)
(declare-fun $fibo2_if3213 (Int) Bool)

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
  (forall ((n Int) ($result210721 Int))
    (=> (and (fibo2 (- n 1) $result210721)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        ($fibo2_pre (- n 2)))))

; post fibo1
(assert
  (forall ((n Int) ($result210721 Int) ($result210722 Int))
    (=> (and (fibo2 (- n 2) $result210722)
             (fibo2 (- n 1) $result210721)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        (fibo1 n (+ $result210721 $result210722)))))

; if else
(assert
  (forall ((n210723 Int))
    (=> (and ($fibo1_if3211 n210723))
        ($fibo1_if3212 n210723))))

; post fibo1
(assert
  (forall ((n210724 Int))
    (=> (and ($fibo1_if3212 n210724))
        (fibo1 n210724 0))))

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
  (forall ((n Int) ($result210725 Int))
    (=> (and (fibo1 (- n 1) $result210725)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        ($fibo1_pre (- n 2)))))

; post fibo2
(assert
  (forall ((n Int) ($result210725 Int) ($result210726 Int))
    (=> (and (fibo1 (- n 2) $result210726)
             (fibo1 (- n 1) $result210725)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        (fibo2 n (+ $result210725 $result210726)))))

; if else
(assert
  (forall ((n210727 Int))
    (=> (and ($fibo2_if3213 n210727))
        ($fibo2_if3214 n210727))))

; post fibo2
(assert
  (forall ((n210728 Int))
    (=> (and ($fibo2_if3214 n210728))
        (fibo2 n210728 0))))

; fibo1 precondition
(assert
  (forall (($x2327 Int))
    (=> (and (= $x2327 2))
        ($fibo1_pre $x2327))))

; label ERROR
(assert
  (forall (($x2327 Int) ($result2328 Int) ($result210729 Int))
    (=> (and (= $result2328 1)
             (= $result2328 $result210729)
             (fibo1 $x2327 $result210729)
             (= $x2327 2))
        ($main_ERROR $x2327 $result2328))))

; error
(assert
  (forall (($x2327210730 Int) ($result2328210731 Int))
    (=> (and ($main_ERROR $x2327210730 $result2328210731))
        false)))

; if else
(assert
  (forall (($x2327 Int) ($result2328 Int) ($result210729 Int))
    (=> (and (not (= $result2328 1))
             (= $result2328 $result210729)
             (fibo1 $x2327 $result210729)
             (= $x2327 2))
        ($main_if3215 $x2327 $result2328))))

(check-sat)
