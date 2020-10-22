(set-logic HORN)

(declare-fun $fibo1_pre (Int) Bool)
(declare-fun $main_if3225 (Int Int) Bool)
(declare-fun $fibo1_if3222 (Int) Bool)
(declare-fun $fibo2_if3224 (Int) Bool)
(declare-fun $fibo2_if3223 (Int) Bool)
(declare-fun fibo2 (Int Int) Bool)
(declare-fun $fibo1_if3221 (Int) Bool)
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
  (forall ((n Int) ($result210747 Int))
    (=> (and (fibo2 (- n 1) $result210747)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        ($fibo2_pre (- n 2)))))

; post fibo1
(assert
  (forall ((n Int) ($result210747 Int) ($result210748 Int))
    (=> (and (fibo2 (- n 2) $result210748)
             (fibo2 (- n 1) $result210747)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        (fibo1 n (+ $result210747 $result210748)))))

; if else
(assert
  (forall ((n210749 Int))
    (=> (and ($fibo1_if3221 n210749))
        ($fibo1_if3222 n210749))))

; post fibo1
(assert
  (forall ((n210750 Int))
    (=> (and ($fibo1_if3222 n210750))
        (fibo1 n210750 0))))

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
  (forall ((n Int) ($result210751 Int))
    (=> (and (fibo1 (- n 1) $result210751)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        ($fibo1_pre (- n 2)))))

; post fibo2
(assert
  (forall ((n Int) ($result210751 Int) ($result210752 Int))
    (=> (and (fibo1 (- n 2) $result210752)
             (fibo1 (- n 1) $result210751)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        (fibo2 n (+ $result210751 $result210752)))))

; if else
(assert
  (forall ((n210753 Int))
    (=> (and ($fibo2_if3223 n210753))
        ($fibo2_if3224 n210753))))

; post fibo2
(assert
  (forall ((n210754 Int))
    (=> (and ($fibo2_if3224 n210754))
        (fibo2 n210754 0))))

; fibo1 precondition
(assert
  (forall (($x2331 Int))
    (=> (and (= $x2331 25))
        ($fibo1_pre $x2331))))

; label ERROR
(assert
  (forall (($x2331 Int) ($result2332 Int) ($result210755 Int))
    (=> (and (= $result2332 75025)
             (= $result2332 $result210755)
             (fibo1 $x2331 $result210755)
             (= $x2331 25))
        ($main_ERROR $x2331 $result2332))))

; error
(assert
  (forall (($x2331210756 Int) ($result2332210757 Int))
    (=> (and ($main_ERROR $x2331210756 $result2332210757))
        false)))

; if else
(assert
  (forall (($x2331 Int) ($result2332 Int) ($result210755 Int))
    (=> (and (not (= $result2332 75025))
             (= $result2332 $result210755)
             (fibo1 $x2331 $result210755)
             (= $x2331 25))
        ($main_if3225 $x2331 $result2332))))

(check-sat)
