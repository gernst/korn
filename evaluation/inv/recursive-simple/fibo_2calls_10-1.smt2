(set-logic HORN)

(declare-fun $fibo2_if3183 (Int) Bool)
(declare-fun $fibo1_if3182 (Int) Bool)
(declare-fun $fibo1_pre (Int) Bool)
(declare-fun $fibo1_if3181 (Int) Bool)
(declare-fun $fibo2_if3184 (Int) Bool)
(declare-fun $main_if3185 (Int Int) Bool)
(declare-fun fibo2 (Int Int) Bool)
(declare-fun $fibo2_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
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
  (forall ((n Int) ($result210643 Int))
    (=> (and (fibo2 (- n 1) $result210643)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        ($fibo2_pre (- n 2)))))

; post fibo1
(assert
  (forall ((n Int) ($result210643 Int) ($result210644 Int))
    (=> (and (fibo2 (- n 2) $result210644)
             (fibo2 (- n 1) $result210643)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        (fibo1 n (+ $result210643 $result210644)))))

; if else
(assert
  (forall ((n210645 Int))
    (=> (and ($fibo1_if3181 n210645))
        ($fibo1_if3182 n210645))))

; post fibo1
(assert
  (forall ((n210646 Int))
    (=> (and ($fibo1_if3182 n210646))
        (fibo1 n210646 0))))

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
  (forall ((n Int) ($result210647 Int))
    (=> (and (fibo1 (- n 1) $result210647)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        ($fibo1_pre (- n 2)))))

; post fibo2
(assert
  (forall ((n Int) ($result210647 Int) ($result210648 Int))
    (=> (and (fibo1 (- n 2) $result210648)
             (fibo1 (- n 1) $result210647)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        (fibo2 n (+ $result210647 $result210648)))))

; if else
(assert
  (forall ((n210649 Int))
    (=> (and ($fibo2_if3183 n210649))
        ($fibo2_if3184 n210649))))

; post fibo2
(assert
  (forall ((n210650 Int))
    (=> (and ($fibo2_if3184 n210650))
        (fibo2 n210650 0))))

; fibo1 precondition
(assert
  (forall (($x2315 Int))
    (=> (and (= $x2315 10))
        ($fibo1_pre $x2315))))

; label ERROR
(assert
  (forall (($x2315 Int) ($result2316 Int) ($result210651 Int))
    (=> (and (not (= $result2316 55))
             (= $result2316 $result210651)
             (fibo1 $x2315 $result210651)
             (= $x2315 10))
        ($main_ERROR $x2315 $result2316))))

; error
(assert
  (forall (($x2315210652 Int) ($result2316210653 Int))
    (=> (and ($main_ERROR $x2315210652 $result2316210653))
        false)))

; if else
(assert
  (forall (($x2315 Int) ($result2316 Int) ($result210651 Int))
    (=> (and (= $result2316 55)
             (= $result2316 $result210651)
             (fibo1 $x2315 $result210651)
             (= $x2315 10))
        ($main_if3185 $x2315 $result2316))))

(check-sat)
