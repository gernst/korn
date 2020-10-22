(set-logic HORN)

(declare-fun $fibo2_if3253 (Int) Bool)
(declare-fun $fibo1_if3252 (Int) Bool)
(declare-fun $fibo1_pre (Int) Bool)
(declare-fun fibo2 (Int Int) Bool)
(declare-fun $fibo2_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun $main_if3255 (Int Int) Bool)
(declare-fun fibo1 (Int Int) Bool)
(declare-fun $fibo1_if3251 (Int) Bool)
(declare-fun $fibo2_if3254 (Int) Bool)

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
  (forall ((n Int) ($result210825 Int))
    (=> (and (fibo2 (- n 1) $result210825)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        ($fibo2_pre (- n 2)))))

; post fibo1
(assert
  (forall ((n Int) ($result210825 Int) ($result210826 Int))
    (=> (and (fibo2 (- n 2) $result210826)
             (fibo2 (- n 1) $result210825)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        (fibo1 n (+ $result210825 $result210826)))))

; if else
(assert
  (forall ((n210827 Int))
    (=> (and ($fibo1_if3251 n210827))
        ($fibo1_if3252 n210827))))

; post fibo1
(assert
  (forall ((n210828 Int))
    (=> (and ($fibo1_if3252 n210828))
        (fibo1 n210828 0))))

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
  (forall ((n Int) ($result210829 Int))
    (=> (and (fibo1 (- n 1) $result210829)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        ($fibo1_pre (- n 2)))))

; post fibo2
(assert
  (forall ((n Int) ($result210829 Int) ($result210830 Int))
    (=> (and (fibo1 (- n 2) $result210830)
             (fibo1 (- n 1) $result210829)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        (fibo2 n (+ $result210829 $result210830)))))

; if else
(assert
  (forall ((n210831 Int))
    (=> (and ($fibo2_if3253 n210831))
        ($fibo2_if3254 n210831))))

; post fibo2
(assert
  (forall ((n210832 Int))
    (=> (and ($fibo2_if3254 n210832))
        (fibo2 n210832 0))))

; fibo1 precondition
(assert
  (forall (($x2343 Int))
    (=> (and (= $x2343 6))
        ($fibo1_pre $x2343))))

; label ERROR
(assert
  (forall (($x2343 Int) ($result2344 Int) ($result210833 Int))
    (=> (and (not (= $result2344 8))
             (= $result2344 $result210833)
             (fibo1 $x2343 $result210833)
             (= $x2343 6))
        ($main_ERROR $x2343 $result2344))))

; error
(assert
  (forall (($x2343210834 Int) ($result2344210835 Int))
    (=> (and ($main_ERROR $x2343210834 $result2344210835))
        false)))

; if else
(assert
  (forall (($x2343 Int) ($result2344 Int) ($result210833 Int))
    (=> (and (= $result2344 8)
             (= $result2344 $result210833)
             (fibo1 $x2343 $result210833)
             (= $x2343 6))
        ($main_if3255 $x2343 $result2344))))

(check-sat)
