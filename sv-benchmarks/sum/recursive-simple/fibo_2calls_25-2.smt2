(set-logic HORN)

(declare-fun $fibo1_pre (Int) Bool)
(declare-fun $fibo2_if3228 (Int Int) Bool)
(declare-fun $main_if3230 (Int Int Int Int) Bool)
(declare-fun $fibo1_if3226 (Int Int) Bool)
(declare-fun fibo2 (Int Int) Bool)
(declare-fun $fibo2_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $fibo2_if3229 (Int Int) Bool)
(declare-fun fibo1 (Int Int) Bool)
(declare-fun $fibo1_if3227 (Int Int) Bool)

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
  (forall ((n Int) ($result213761 Int))
    (=> (and (fibo2 (- n 1) $result213761)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        ($fibo2_pre (- n 2)))))

; post fibo1
(assert
  (forall ((n Int) ($result213761 Int) ($result213762 Int))
    (=> (and (fibo2 (- n 2) $result213762)
             (fibo2 (- n 1) $result213761)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        (fibo1 n (+ $result213761 $result213762)))))

; if else
(assert
  (forall ((n Int) (n213763 Int))
    (=> (and ($fibo1_if3226 n n213763))
        ($fibo1_if3227 n n213763))))

; post fibo1
(assert
  (forall ((n213764 Int) (n Int))
    (=> (and ($fibo1_if3227 n n213764))
        (fibo1 n213764 0))))

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
  (forall ((n Int) ($result213765 Int))
    (=> (and (fibo1 (- n 1) $result213765)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        ($fibo1_pre (- n 2)))))

; post fibo2
(assert
  (forall ((n Int) ($result213765 Int) ($result213766 Int))
    (=> (and (fibo1 (- n 2) $result213766)
             (fibo1 (- n 1) $result213765)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        (fibo2 n (+ $result213765 $result213766)))))

; if else
(assert
  (forall ((n Int) (n213767 Int))
    (=> (and ($fibo2_if3228 n n213767))
        ($fibo2_if3229 n n213767))))

; post fibo2
(assert
  (forall ((n213768 Int) (n Int))
    (=> (and ($fibo2_if3229 n n213768))
        (fibo2 n213768 0))))

; fibo1 precondition
(assert
  (forall (($x2333 Int))
    (=> (and (= $x2333 25))
        ($fibo1_pre $x2333))))

; label ERROR
(assert
  (forall (($x2333 Int) ($result2334 Int) ($result213769 Int))
    (=> (and (not (= $result2334 75025))
             (= $result2334 $result213769)
             (fibo1 $x2333 $result213769)
             (= $x2333 25))
        ($main_ERROR $x2333 $result2334 $x2333 $result2334))))

; error
(assert
  (forall (($x2333 Int) ($result2334 Int) ($x2333213770 Int) ($result2334213771 Int))
    (=> (and ($main_ERROR $x2333 $result2334 $x2333213770 $result2334213771))
        false)))

; if else
(assert
  (forall (($x2333 Int) ($result2334 Int) ($result213769 Int))
    (=> (and (= $result2334 75025)
             (= $result2334 $result213769)
             (fibo1 $x2333 $result213769)
             (= $x2333 25))
        ($main_if3230 $x2333 $result2334 $x2333 $result2334))))

(check-sat)
