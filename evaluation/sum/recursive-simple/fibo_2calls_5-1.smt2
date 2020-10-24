(set-logic HORN)

(declare-fun $fibo2_if3243 (Int Int) Bool)
(declare-fun $main_if3245 (Int Int Int Int) Bool)
(declare-fun $fibo1_if3242 (Int Int) Bool)
(declare-fun $fibo1_pre (Int) Bool)
(declare-fun fibo2 (Int Int) Bool)
(declare-fun $fibo2_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $fibo2_if3244 (Int Int) Bool)
(declare-fun fibo1 (Int Int) Bool)
(declare-fun $fibo1_if3241 (Int Int) Bool)

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
  (forall ((n Int) ($result213800 Int))
    (=> (and (fibo2 (- n 1) $result213800)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        ($fibo2_pre (- n 2)))))

; post fibo1
(assert
  (forall ((n Int) ($result213800 Int) ($result213801 Int))
    (=> (and (fibo2 (- n 2) $result213801)
             (fibo2 (- n 1) $result213800)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        (fibo1 n (+ $result213800 $result213801)))))

; if else
(assert
  (forall ((n Int) (n213802 Int))
    (=> (and ($fibo1_if3241 n n213802))
        ($fibo1_if3242 n n213802))))

; post fibo1
(assert
  (forall ((n213803 Int) (n Int))
    (=> (and ($fibo1_if3242 n n213803))
        (fibo1 n213803 0))))

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
  (forall ((n Int) ($result213804 Int))
    (=> (and (fibo1 (- n 1) $result213804)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        ($fibo1_pre (- n 2)))))

; post fibo2
(assert
  (forall ((n Int) ($result213804 Int) ($result213805 Int))
    (=> (and (fibo1 (- n 2) $result213805)
             (fibo1 (- n 1) $result213804)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        (fibo2 n (+ $result213804 $result213805)))))

; if else
(assert
  (forall ((n Int) (n213806 Int))
    (=> (and ($fibo2_if3243 n n213806))
        ($fibo2_if3244 n n213806))))

; post fibo2
(assert
  (forall ((n213807 Int) (n Int))
    (=> (and ($fibo2_if3244 n n213807))
        (fibo2 n213807 0))))

; fibo1 precondition
(assert
  (forall (($x2339 Int))
    (=> (and (= $x2339 5))
        ($fibo1_pre $x2339))))

; label ERROR
(assert
  (forall (($x2339 Int) ($result2340 Int) ($result213808 Int))
    (=> (and (not (= $result2340 5))
             (= $result2340 $result213808)
             (fibo1 $x2339 $result213808)
             (= $x2339 5))
        ($main_ERROR $x2339 $result2340 $x2339 $result2340))))

; error
(assert
  (forall (($x2339 Int) ($result2340 Int) ($x2339213809 Int) ($result2340213810 Int))
    (=> (and ($main_ERROR $x2339 $result2340 $x2339213809 $result2340213810))
        false)))

; if else
(assert
  (forall (($x2339 Int) ($result2340 Int) ($result213808 Int))
    (=> (and (= $result2340 5)
             (= $result2340 $result213808)
             (fibo1 $x2339 $result213808)
             (= $x2339 5))
        ($main_if3245 $x2339 $result2340 $x2339 $result2340))))

(check-sat)
