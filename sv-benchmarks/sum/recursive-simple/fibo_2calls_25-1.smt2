(set-logic HORN)

(declare-fun $fibo1_pre (Int) Bool)
(declare-fun $fibo2_if3224 (Int Int) Bool)
(declare-fun $fibo2_if3223 (Int Int) Bool)
(declare-fun $main_if3225 (Int Int Int Int) Bool)
(declare-fun fibo2 (Int Int) Bool)
(declare-fun $fibo2_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $fibo1_if3222 (Int Int) Bool)
(declare-fun $fibo1_if3221 (Int Int) Bool)
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
  (forall ((n Int) ($result213748 Int))
    (=> (and (fibo2 (- n 1) $result213748)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        ($fibo2_pre (- n 2)))))

; post fibo1
(assert
  (forall ((n Int) ($result213748 Int) ($result213749 Int))
    (=> (and (fibo2 (- n 2) $result213749)
             (fibo2 (- n 1) $result213748)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        (fibo1 n (+ $result213748 $result213749)))))

; if else
(assert
  (forall ((n Int) (n213750 Int))
    (=> (and ($fibo1_if3221 n n213750))
        ($fibo1_if3222 n n213750))))

; post fibo1
(assert
  (forall ((n213751 Int) (n Int))
    (=> (and ($fibo1_if3222 n n213751))
        (fibo1 n213751 0))))

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
  (forall ((n Int) ($result213752 Int))
    (=> (and (fibo1 (- n 1) $result213752)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        ($fibo1_pre (- n 2)))))

; post fibo2
(assert
  (forall ((n Int) ($result213752 Int) ($result213753 Int))
    (=> (and (fibo1 (- n 2) $result213753)
             (fibo1 (- n 1) $result213752)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        (fibo2 n (+ $result213752 $result213753)))))

; if else
(assert
  (forall ((n Int) (n213754 Int))
    (=> (and ($fibo2_if3223 n n213754))
        ($fibo2_if3224 n n213754))))

; post fibo2
(assert
  (forall ((n213755 Int) (n Int))
    (=> (and ($fibo2_if3224 n n213755))
        (fibo2 n213755 0))))

; fibo1 precondition
(assert
  (forall (($x2331 Int))
    (=> (and (= $x2331 25))
        ($fibo1_pre $x2331))))

; label ERROR
(assert
  (forall (($x2331 Int) ($result2332 Int) ($result213756 Int))
    (=> (and (= $result2332 75025)
             (= $result2332 $result213756)
             (fibo1 $x2331 $result213756)
             (= $x2331 25))
        ($main_ERROR $x2331 $result2332 $x2331 $result2332))))

; error
(assert
  (forall (($x2331 Int) ($result2332 Int) ($x2331213757 Int) ($result2332213758 Int))
    (=> (and ($main_ERROR $x2331 $result2332 $x2331213757 $result2332213758))
        false)))

; if else
(assert
  (forall (($x2331 Int) ($result2332 Int) ($result213756 Int))
    (=> (and (not (= $result2332 75025))
             (= $result2332 $result213756)
             (fibo1 $x2331 $result213756)
             (= $x2331 25))
        ($main_if3225 $x2331 $result2332 $x2331 $result2332))))

(check-sat)
