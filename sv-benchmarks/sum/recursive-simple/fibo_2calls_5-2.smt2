(set-logic HORN)

(declare-fun $fibo1_if3247 (Int Int) Bool)
(declare-fun $fibo1_pre (Int) Bool)
(declare-fun $fibo2_if3249 (Int Int) Bool)
(declare-fun fibo2 (Int Int) Bool)
(declare-fun $fibo2_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun fibo1 (Int Int) Bool)
(declare-fun $main_if3250 (Int Int Int Int) Bool)
(declare-fun $fibo2_if3248 (Int Int) Bool)
(declare-fun $fibo1_if3246 (Int Int) Bool)

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
  (forall ((n Int) ($result213813 Int))
    (=> (and (fibo2 (- n 1) $result213813)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        ($fibo2_pre (- n 2)))))

; post fibo1
(assert
  (forall ((n Int) ($result213813 Int) ($result213814 Int))
    (=> (and (fibo2 (- n 2) $result213814)
             (fibo2 (- n 1) $result213813)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        (fibo1 n (+ $result213813 $result213814)))))

; if else
(assert
  (forall ((n Int) (n213815 Int))
    (=> (and ($fibo1_if3246 n n213815))
        ($fibo1_if3247 n n213815))))

; post fibo1
(assert
  (forall ((n213816 Int) (n Int))
    (=> (and ($fibo1_if3247 n n213816))
        (fibo1 n213816 0))))

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
  (forall ((n Int) ($result213817 Int))
    (=> (and (fibo1 (- n 1) $result213817)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        ($fibo1_pre (- n 2)))))

; post fibo2
(assert
  (forall ((n Int) ($result213817 Int) ($result213818 Int))
    (=> (and (fibo1 (- n 2) $result213818)
             (fibo1 (- n 1) $result213817)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        (fibo2 n (+ $result213817 $result213818)))))

; if else
(assert
  (forall ((n Int) (n213819 Int))
    (=> (and ($fibo2_if3248 n n213819))
        ($fibo2_if3249 n n213819))))

; post fibo2
(assert
  (forall ((n213820 Int) (n Int))
    (=> (and ($fibo2_if3249 n n213820))
        (fibo2 n213820 0))))

; fibo1 precondition
(assert
  (forall (($x2341 Int))
    (=> (and (= $x2341 5))
        ($fibo1_pre $x2341))))

; label ERROR
(assert
  (forall (($x2341 Int) ($result2342 Int) ($result213821 Int))
    (=> (and (= $result2342 5)
             (= $result2342 $result213821)
             (fibo1 $x2341 $result213821)
             (= $x2341 5))
        ($main_ERROR $x2341 $result2342 $x2341 $result2342))))

; error
(assert
  (forall (($x2341 Int) ($result2342 Int) ($x2341213822 Int) ($result2342213823 Int))
    (=> (and ($main_ERROR $x2341 $result2342 $x2341213822 $result2342213823))
        false)))

; if else
(assert
  (forall (($x2341 Int) ($result2342 Int) ($result213821 Int))
    (=> (and (not (= $result2342 5))
             (= $result2342 $result213821)
             (fibo1 $x2341 $result213821)
             (= $x2341 5))
        ($main_if3250 $x2341 $result2342 $x2341 $result2342))))

(check-sat)
