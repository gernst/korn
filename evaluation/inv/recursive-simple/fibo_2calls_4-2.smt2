(set-logic HORN)

(declare-fun $fibo1_pre (Int) Bool)
(declare-fun $main_if3240 (Int Int) Bool)
(declare-fun fibo2 (Int Int) Bool)
(declare-fun $fibo2_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun fibo1 (Int Int) Bool)
(declare-fun $fibo2_if3239 (Int) Bool)
(declare-fun $fibo1_if3236 (Int) Bool)
(declare-fun $fibo1_if3237 (Int) Bool)
(declare-fun $fibo2_if3238 (Int) Bool)

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
  (forall ((n Int) ($result210786 Int))
    (=> (and (fibo2 (- n 1) $result210786)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        ($fibo2_pre (- n 2)))))

; post fibo1
(assert
  (forall ((n Int) ($result210786 Int) ($result210787 Int))
    (=> (and (fibo2 (- n 2) $result210787)
             (fibo2 (- n 1) $result210786)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        (fibo1 n (+ $result210786 $result210787)))))

; if else
(assert
  (forall ((n210788 Int))
    (=> (and ($fibo1_if3236 n210788))
        ($fibo1_if3237 n210788))))

; post fibo1
(assert
  (forall ((n210789 Int))
    (=> (and ($fibo1_if3237 n210789))
        (fibo1 n210789 0))))

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
  (forall ((n Int) ($result210790 Int))
    (=> (and (fibo1 (- n 1) $result210790)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        ($fibo1_pre (- n 2)))))

; post fibo2
(assert
  (forall ((n Int) ($result210790 Int) ($result210791 Int))
    (=> (and (fibo1 (- n 2) $result210791)
             (fibo1 (- n 1) $result210790)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        (fibo2 n (+ $result210790 $result210791)))))

; if else
(assert
  (forall ((n210792 Int))
    (=> (and ($fibo2_if3238 n210792))
        ($fibo2_if3239 n210792))))

; post fibo2
(assert
  (forall ((n210793 Int))
    (=> (and ($fibo2_if3239 n210793))
        (fibo2 n210793 0))))

; fibo1 precondition
(assert
  (forall (($x2337 Int))
    (=> (and (= $x2337 4))
        ($fibo1_pre $x2337))))

; label ERROR
(assert
  (forall (($x2337 Int) ($result2338 Int) ($result210794 Int))
    (=> (and (= $result2338 3)
             (= $result2338 $result210794)
             (fibo1 $x2337 $result210794)
             (= $x2337 4))
        ($main_ERROR $x2337 $result2338))))

; error
(assert
  (forall (($x2337210795 Int) ($result2338210796 Int))
    (=> (and ($main_ERROR $x2337210795 $result2338210796))
        false)))

; if else
(assert
  (forall (($x2337 Int) ($result2338 Int) ($result210794 Int))
    (=> (and (not (= $result2338 3))
             (= $result2338 $result210794)
             (fibo1 $x2337 $result210794)
             (= $x2337 4))
        ($main_if3240 $x2337 $result2338))))

(check-sat)
