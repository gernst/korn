(set-logic HORN)

(declare-fun $fibo1_if3212 (Int Int) Bool)
(declare-fun $fibo1_pre (Int) Bool)
(declare-fun $main_if3215 (Int Int Int Int) Bool)
(declare-fun $fibo1_if3211 (Int Int) Bool)
(declare-fun $fibo2_if3213 (Int Int) Bool)
(declare-fun fibo2 (Int Int) Bool)
(declare-fun $fibo2_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $fibo2_if3214 (Int Int) Bool)
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
  (forall ((n Int) ($result213722 Int))
    (=> (and (fibo2 (- n 1) $result213722)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        ($fibo2_pre (- n 2)))))

; post fibo1
(assert
  (forall ((n Int) ($result213722 Int) ($result213723 Int))
    (=> (and (fibo2 (- n 2) $result213723)
             (fibo2 (- n 1) $result213722)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        (fibo1 n (+ $result213722 $result213723)))))

; if else
(assert
  (forall ((n Int) (n213724 Int))
    (=> (and ($fibo1_if3211 n n213724))
        ($fibo1_if3212 n n213724))))

; post fibo1
(assert
  (forall ((n213725 Int) (n Int))
    (=> (and ($fibo1_if3212 n n213725))
        (fibo1 n213725 0))))

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
  (forall ((n Int) ($result213726 Int))
    (=> (and (fibo1 (- n 1) $result213726)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        ($fibo1_pre (- n 2)))))

; post fibo2
(assert
  (forall ((n Int) ($result213726 Int) ($result213727 Int))
    (=> (and (fibo1 (- n 2) $result213727)
             (fibo1 (- n 1) $result213726)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        (fibo2 n (+ $result213726 $result213727)))))

; if else
(assert
  (forall ((n Int) (n213728 Int))
    (=> (and ($fibo2_if3213 n n213728))
        ($fibo2_if3214 n n213728))))

; post fibo2
(assert
  (forall ((n213729 Int) (n Int))
    (=> (and ($fibo2_if3214 n n213729))
        (fibo2 n213729 0))))

; fibo1 precondition
(assert
  (forall (($x2327 Int))
    (=> (and (= $x2327 2))
        ($fibo1_pre $x2327))))

; label ERROR
(assert
  (forall (($x2327 Int) ($result2328 Int) ($result213730 Int))
    (=> (and (= $result2328 1)
             (= $result2328 $result213730)
             (fibo1 $x2327 $result213730)
             (= $x2327 2))
        ($main_ERROR $x2327 $result2328 $x2327 $result2328))))

; error
(assert
  (forall (($x2327 Int) ($result2328 Int) ($x2327213731 Int) ($result2328213732 Int))
    (=> (and ($main_ERROR $x2327 $result2328 $x2327213731 $result2328213732))
        false)))

; if else
(assert
  (forall (($x2327 Int) ($result2328 Int) ($result213730 Int))
    (=> (and (not (= $result2328 1))
             (= $result2328 $result213730)
             (fibo1 $x2327 $result213730)
             (= $x2327 2))
        ($main_if3215 $x2327 $result2328 $x2327 $result2328))))

(check-sat)
