(set-logic HORN)

(declare-fun $fibo1_pre (Int) Bool)
(declare-fun $main_if3270 (Int Int Int Int) Bool)
(declare-fun $fibo1_if3266 (Int Int) Bool)
(declare-fun fibo2 (Int Int) Bool)
(declare-fun $fibo2_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun fibo1 (Int Int) Bool)
(declare-fun $fibo2_if3269 (Int Int) Bool)
(declare-fun $fibo1_if3267 (Int Int) Bool)
(declare-fun $fibo2_if3268 (Int Int) Bool)

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
  (forall ((n Int) ($result213865 Int))
    (=> (and (fibo2 (- n 1) $result213865)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        ($fibo2_pre (- n 2)))))

; post fibo1
(assert
  (forall ((n Int) ($result213865 Int) ($result213866 Int))
    (=> (and (fibo2 (- n 2) $result213866)
             (fibo2 (- n 1) $result213865)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        (fibo1 n (+ $result213865 $result213866)))))

; if else
(assert
  (forall ((n Int) (n213867 Int))
    (=> (and ($fibo1_if3266 n n213867))
        ($fibo1_if3267 n n213867))))

; post fibo1
(assert
  (forall ((n213868 Int) (n Int))
    (=> (and ($fibo1_if3267 n n213868))
        (fibo1 n213868 0))))

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
  (forall ((n Int) ($result213869 Int))
    (=> (and (fibo1 (- n 1) $result213869)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        ($fibo1_pre (- n 2)))))

; post fibo2
(assert
  (forall ((n Int) ($result213869 Int) ($result213870 Int))
    (=> (and (fibo1 (- n 2) $result213870)
             (fibo1 (- n 1) $result213869)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        (fibo2 n (+ $result213869 $result213870)))))

; if else
(assert
  (forall ((n Int) (n213871 Int))
    (=> (and ($fibo2_if3268 n n213871))
        ($fibo2_if3269 n n213871))))

; post fibo2
(assert
  (forall ((n213872 Int) (n Int))
    (=> (and ($fibo2_if3269 n n213872))
        (fibo2 n213872 0))))

; fibo1 precondition
(assert
  (forall (($x2349 Int))
    (=> (and (= $x2349 8))
        ($fibo1_pre $x2349))))

; label ERROR
(assert
  (forall (($x2349 Int) ($result2350 Int) ($result213873 Int))
    (=> (and (= $result2350 21)
             (= $result2350 $result213873)
             (fibo1 $x2349 $result213873)
             (= $x2349 8))
        ($main_ERROR $x2349 $result2350 $x2349 $result2350))))

; error
(assert
  (forall (($x2349 Int) ($result2350 Int) ($x2349213874 Int) ($result2350213875 Int))
    (=> (and ($main_ERROR $x2349 $result2350 $x2349213874 $result2350213875))
        false)))

; if else
(assert
  (forall (($x2349 Int) ($result2350 Int) ($result213873 Int))
    (=> (and (not (= $result2350 21))
             (= $result2350 $result213873)
             (fibo1 $x2349 $result213873)
             (= $x2349 8))
        ($main_if3270 $x2349 $result2350 $x2349 $result2350))))

(check-sat)
