(set-logic HORN)

(declare-fun $fibo1_if3251 (Int Int) Bool)
(declare-fun $fibo1_pre (Int) Bool)
(declare-fun $fibo2_if3253 (Int Int) Bool)
(declare-fun $fibo2_if3254 (Int Int) Bool)
(declare-fun fibo2 (Int Int) Bool)
(declare-fun $fibo2_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $main_if3255 (Int Int Int Int) Bool)
(declare-fun fibo1 (Int Int) Bool)
(declare-fun $fibo1_if3252 (Int Int) Bool)

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
  (forall ((n Int) ($result213826 Int))
    (=> (and (fibo2 (- n 1) $result213826)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        ($fibo2_pre (- n 2)))))

; post fibo1
(assert
  (forall ((n Int) ($result213826 Int) ($result213827 Int))
    (=> (and (fibo2 (- n 2) $result213827)
             (fibo2 (- n 1) $result213826)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        (fibo1 n (+ $result213826 $result213827)))))

; if else
(assert
  (forall ((n Int) (n213828 Int))
    (=> (and ($fibo1_if3251 n n213828))
        ($fibo1_if3252 n n213828))))

; post fibo1
(assert
  (forall ((n213829 Int) (n Int))
    (=> (and ($fibo1_if3252 n n213829))
        (fibo1 n213829 0))))

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
  (forall ((n Int) ($result213830 Int))
    (=> (and (fibo1 (- n 1) $result213830)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        ($fibo1_pre (- n 2)))))

; post fibo2
(assert
  (forall ((n Int) ($result213830 Int) ($result213831 Int))
    (=> (and (fibo1 (- n 2) $result213831)
             (fibo1 (- n 1) $result213830)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        (fibo2 n (+ $result213830 $result213831)))))

; if else
(assert
  (forall ((n Int) (n213832 Int))
    (=> (and ($fibo2_if3253 n n213832))
        ($fibo2_if3254 n n213832))))

; post fibo2
(assert
  (forall ((n213833 Int) (n Int))
    (=> (and ($fibo2_if3254 n n213833))
        (fibo2 n213833 0))))

; fibo1 precondition
(assert
  (forall (($x2343 Int))
    (=> (and (= $x2343 6))
        ($fibo1_pre $x2343))))

; label ERROR
(assert
  (forall (($x2343 Int) ($result2344 Int) ($result213834 Int))
    (=> (and (not (= $result2344 8))
             (= $result2344 $result213834)
             (fibo1 $x2343 $result213834)
             (= $x2343 6))
        ($main_ERROR $x2343 $result2344 $x2343 $result2344))))

; error
(assert
  (forall (($x2343 Int) ($result2344 Int) ($x2343213835 Int) ($result2344213836 Int))
    (=> (and ($main_ERROR $x2343 $result2344 $x2343213835 $result2344213836))
        false)))

; if else
(assert
  (forall (($x2343 Int) ($result2344 Int) ($result213834 Int))
    (=> (and (= $result2344 8)
             (= $result2344 $result213834)
             (fibo1 $x2343 $result213834)
             (= $x2343 6))
        ($main_if3255 $x2343 $result2344 $x2343 $result2344))))

(check-sat)
