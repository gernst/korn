(set-logic HORN)

(declare-fun $fibo1_pre (Int) Bool)
(declare-fun $fibo1_if3192 (Int Int) Bool)
(declare-fun $fibo2_if3194 (Int Int) Bool)
(declare-fun fibo2 (Int Int) Bool)
(declare-fun $main_if3195 (Int Int Int Int) Bool)
(declare-fun $fibo2_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $fibo1_if3191 (Int Int) Bool)
(declare-fun fibo1 (Int Int) Bool)
(declare-fun $fibo2_if3193 (Int Int) Bool)

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
  (forall ((n Int) ($result213670 Int))
    (=> (and (fibo2 (- n 1) $result213670)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        ($fibo2_pre (- n 2)))))

; post fibo1
(assert
  (forall ((n Int) ($result213670 Int) ($result213671 Int))
    (=> (and (fibo2 (- n 2) $result213671)
             (fibo2 (- n 1) $result213670)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        (fibo1 n (+ $result213670 $result213671)))))

; if else
(assert
  (forall ((n Int) (n213672 Int))
    (=> (and ($fibo1_if3191 n n213672))
        ($fibo1_if3192 n n213672))))

; post fibo1
(assert
  (forall ((n213673 Int) (n Int))
    (=> (and ($fibo1_if3192 n n213673))
        (fibo1 n213673 0))))

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
  (forall ((n Int) ($result213674 Int))
    (=> (and (fibo1 (- n 1) $result213674)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        ($fibo1_pre (- n 2)))))

; post fibo2
(assert
  (forall ((n Int) ($result213674 Int) ($result213675 Int))
    (=> (and (fibo1 (- n 2) $result213675)
             (fibo1 (- n 1) $result213674)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        (fibo2 n (+ $result213674 $result213675)))))

; if else
(assert
  (forall ((n Int) (n213676 Int))
    (=> (and ($fibo2_if3193 n n213676))
        ($fibo2_if3194 n n213676))))

; post fibo2
(assert
  (forall ((n213677 Int) (n Int))
    (=> (and ($fibo2_if3194 n n213677))
        (fibo2 n213677 0))))

; fibo1 precondition
(assert
  (forall (($x2319 Int))
    (=> (and (= $x2319 15))
        ($fibo1_pre $x2319))))

; label ERROR
(assert
  (forall (($x2319 Int) ($result2320 Int) ($result213678 Int))
    (=> (and (= $result2320 610)
             (= $result2320 $result213678)
             (fibo1 $x2319 $result213678)
             (= $x2319 15))
        ($main_ERROR $x2319 $result2320 $x2319 $result2320))))

; error
(assert
  (forall (($x2319 Int) ($result2320 Int) ($x2319213679 Int) ($result2320213680 Int))
    (=> (and ($main_ERROR $x2319 $result2320 $x2319213679 $result2320213680))
        false)))

; if else
(assert
  (forall (($x2319 Int) ($result2320 Int) ($result213678 Int))
    (=> (and (not (= $result2320 610))
             (= $result2320 $result213678)
             (fibo1 $x2319 $result213678)
             (= $x2319 15))
        ($main_if3195 $x2319 $result2320 $x2319 $result2320))))

(check-sat)
