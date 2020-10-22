(set-logic HORN)

(declare-fun $fibo1_pre (Int) Bool)
(declare-fun $fibo2_if3269 (Int) Bool)
(declare-fun $main_if3270 (Int Int) Bool)
(declare-fun $fibo2_if3268 (Int) Bool)
(declare-fun fibo2 (Int Int) Bool)
(declare-fun $fibo2_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun fibo1 (Int Int) Bool)
(declare-fun $fibo1_if3266 (Int) Bool)
(declare-fun $fibo1_if3267 (Int) Bool)

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
  (forall ((n Int) ($result210864 Int))
    (=> (and (fibo2 (- n 1) $result210864)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        ($fibo2_pre (- n 2)))))

; post fibo1
(assert
  (forall ((n Int) ($result210864 Int) ($result210865 Int))
    (=> (and (fibo2 (- n 2) $result210865)
             (fibo2 (- n 1) $result210864)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        (fibo1 n (+ $result210864 $result210865)))))

; if else
(assert
  (forall ((n210866 Int))
    (=> (and ($fibo1_if3266 n210866))
        ($fibo1_if3267 n210866))))

; post fibo1
(assert
  (forall ((n210867 Int))
    (=> (and ($fibo1_if3267 n210867))
        (fibo1 n210867 0))))

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
  (forall ((n Int) ($result210868 Int))
    (=> (and (fibo1 (- n 1) $result210868)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        ($fibo1_pre (- n 2)))))

; post fibo2
(assert
  (forall ((n Int) ($result210868 Int) ($result210869 Int))
    (=> (and (fibo1 (- n 2) $result210869)
             (fibo1 (- n 1) $result210868)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        (fibo2 n (+ $result210868 $result210869)))))

; if else
(assert
  (forall ((n210870 Int))
    (=> (and ($fibo2_if3268 n210870))
        ($fibo2_if3269 n210870))))

; post fibo2
(assert
  (forall ((n210871 Int))
    (=> (and ($fibo2_if3269 n210871))
        (fibo2 n210871 0))))

; fibo1 precondition
(assert
  (forall (($x2349 Int))
    (=> (and (= $x2349 8))
        ($fibo1_pre $x2349))))

; label ERROR
(assert
  (forall (($x2349 Int) ($result2350 Int) ($result210872 Int))
    (=> (and (= $result2350 21)
             (= $result2350 $result210872)
             (fibo1 $x2349 $result210872)
             (= $x2349 8))
        ($main_ERROR $x2349 $result2350))))

; error
(assert
  (forall (($x2349210873 Int) ($result2350210874 Int))
    (=> (and ($main_ERROR $x2349210873 $result2350210874))
        false)))

; if else
(assert
  (forall (($x2349 Int) ($result2350 Int) ($result210872 Int))
    (=> (and (not (= $result2350 21))
             (= $result2350 $result210872)
             (fibo1 $x2349 $result210872)
             (= $x2349 8))
        ($main_if3270 $x2349 $result2350))))

(check-sat)
