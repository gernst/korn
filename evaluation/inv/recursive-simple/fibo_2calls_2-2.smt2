(set-logic HORN)

(declare-fun $fibo1_pre (Int) Bool)
(declare-fun $main_if3220 (Int Int) Bool)
(declare-fun $fibo1_if3217 (Int) Bool)
(declare-fun fibo2 (Int Int) Bool)
(declare-fun $fibo2_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun $fibo1_if3216 (Int) Bool)
(declare-fun fibo1 (Int Int) Bool)
(declare-fun $fibo2_if3219 (Int) Bool)
(declare-fun $fibo2_if3218 (Int) Bool)

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
  (forall ((n Int) ($result210734 Int))
    (=> (and (fibo2 (- n 1) $result210734)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        ($fibo2_pre (- n 2)))))

; post fibo1
(assert
  (forall ((n Int) ($result210734 Int) ($result210735 Int))
    (=> (and (fibo2 (- n 2) $result210735)
             (fibo2 (- n 1) $result210734)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        (fibo1 n (+ $result210734 $result210735)))))

; if else
(assert
  (forall ((n210736 Int))
    (=> (and ($fibo1_if3216 n210736))
        ($fibo1_if3217 n210736))))

; post fibo1
(assert
  (forall ((n210737 Int))
    (=> (and ($fibo1_if3217 n210737))
        (fibo1 n210737 0))))

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
  (forall ((n Int) ($result210738 Int))
    (=> (and (fibo1 (- n 1) $result210738)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        ($fibo1_pre (- n 2)))))

; post fibo2
(assert
  (forall ((n Int) ($result210738 Int) ($result210739 Int))
    (=> (and (fibo1 (- n 2) $result210739)
             (fibo1 (- n 1) $result210738)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        (fibo2 n (+ $result210738 $result210739)))))

; if else
(assert
  (forall ((n210740 Int))
    (=> (and ($fibo2_if3218 n210740))
        ($fibo2_if3219 n210740))))

; post fibo2
(assert
  (forall ((n210741 Int))
    (=> (and ($fibo2_if3219 n210741))
        (fibo2 n210741 0))))

; fibo1 precondition
(assert
  (forall (($x2329 Int))
    (=> (and (= $x2329 2))
        ($fibo1_pre $x2329))))

; label ERROR
(assert
  (forall (($x2329 Int) ($result2330 Int) ($result210742 Int))
    (=> (and (not (= $result2330 1))
             (= $result2330 $result210742)
             (fibo1 $x2329 $result210742)
             (= $x2329 2))
        ($main_ERROR $x2329 $result2330))))

; error
(assert
  (forall (($x2329210743 Int) ($result2330210744 Int))
    (=> (and ($main_ERROR $x2329210743 $result2330210744))
        false)))

; if else
(assert
  (forall (($x2329 Int) ($result2330 Int) ($result210742 Int))
    (=> (and (= $result2330 1)
             (= $result2330 $result210742)
             (fibo1 $x2329 $result210742)
             (= $x2329 2))
        ($main_if3220 $x2329 $result2330))))

(check-sat)
