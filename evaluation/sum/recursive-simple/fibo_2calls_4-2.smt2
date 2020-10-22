(set-logic HORN)

(declare-fun $fibo1_pre (Int) Bool)
(declare-fun $fibo1_if3236 (Int Int) Bool)
(declare-fun $fibo2_if3239 (Int Int) Bool)
(declare-fun $main_if3240 (Int Int Int Int) Bool)
(declare-fun $fibo2_if3238 (Int Int) Bool)
(declare-fun fibo2 (Int Int) Bool)
(declare-fun $fibo2_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun fibo1 (Int Int) Bool)
(declare-fun $fibo1_if3237 (Int Int) Bool)

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
  (forall ((n Int) ($result213787 Int))
    (=> (and (fibo2 (- n 1) $result213787)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        ($fibo2_pre (- n 2)))))

; post fibo1
(assert
  (forall ((n Int) ($result213787 Int) ($result213788 Int))
    (=> (and (fibo2 (- n 2) $result213788)
             (fibo2 (- n 1) $result213787)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        (fibo1 n (+ $result213787 $result213788)))))

; if else
(assert
  (forall ((n Int) (n213789 Int))
    (=> (and ($fibo1_if3236 n n213789))
        ($fibo1_if3237 n n213789))))

; post fibo1
(assert
  (forall ((n213790 Int) (n Int))
    (=> (and ($fibo1_if3237 n n213790))
        (fibo1 n213790 0))))

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
  (forall ((n Int) ($result213791 Int))
    (=> (and (fibo1 (- n 1) $result213791)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        ($fibo1_pre (- n 2)))))

; post fibo2
(assert
  (forall ((n Int) ($result213791 Int) ($result213792 Int))
    (=> (and (fibo1 (- n 2) $result213792)
             (fibo1 (- n 1) $result213791)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        (fibo2 n (+ $result213791 $result213792)))))

; if else
(assert
  (forall ((n Int) (n213793 Int))
    (=> (and ($fibo2_if3238 n n213793))
        ($fibo2_if3239 n n213793))))

; post fibo2
(assert
  (forall ((n213794 Int) (n Int))
    (=> (and ($fibo2_if3239 n n213794))
        (fibo2 n213794 0))))

; fibo1 precondition
(assert
  (forall (($x2337 Int))
    (=> (and (= $x2337 4))
        ($fibo1_pre $x2337))))

; label ERROR
(assert
  (forall (($x2337 Int) ($result2338 Int) ($result213795 Int))
    (=> (and (= $result2338 3)
             (= $result2338 $result213795)
             (fibo1 $x2337 $result213795)
             (= $x2337 4))
        ($main_ERROR $x2337 $result2338 $x2337 $result2338))))

; error
(assert
  (forall (($x2337 Int) ($result2338 Int) ($x2337213796 Int) ($result2338213797 Int))
    (=> (and ($main_ERROR $x2337 $result2338 $x2337213796 $result2338213797))
        false)))

; if else
(assert
  (forall (($x2337 Int) ($result2338 Int) ($result213795 Int))
    (=> (and (not (= $result2338 3))
             (= $result2338 $result213795)
             (fibo1 $x2337 $result213795)
             (= $x2337 4))
        ($main_if3240 $x2337 $result2338 $x2337 $result2338))))

(check-sat)
