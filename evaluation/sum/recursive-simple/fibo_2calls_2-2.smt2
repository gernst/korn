(set-logic HORN)

(declare-fun $fibo1_pre (Int) Bool)
(declare-fun $main_if3220 (Int Int Int Int) Bool)
(declare-fun fibo2 (Int Int) Bool)
(declare-fun $fibo1_if3216 (Int Int) Bool)
(declare-fun $fibo1_if3217 (Int Int) Bool)
(declare-fun $fibo2_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun fibo1 (Int Int) Bool)
(declare-fun $fibo2_if3218 (Int Int) Bool)
(declare-fun $fibo2_if3219 (Int Int) Bool)

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
  (forall ((n Int) ($result213735 Int))
    (=> (and (fibo2 (- n 1) $result213735)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        ($fibo2_pre (- n 2)))))

; post fibo1
(assert
  (forall ((n Int) ($result213735 Int) ($result213736 Int))
    (=> (and (fibo2 (- n 2) $result213736)
             (fibo2 (- n 1) $result213735)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        (fibo1 n (+ $result213735 $result213736)))))

; if else
(assert
  (forall ((n Int) (n213737 Int))
    (=> (and ($fibo1_if3216 n n213737))
        ($fibo1_if3217 n n213737))))

; post fibo1
(assert
  (forall ((n213738 Int) (n Int))
    (=> (and ($fibo1_if3217 n n213738))
        (fibo1 n213738 0))))

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
  (forall ((n Int) ($result213739 Int))
    (=> (and (fibo1 (- n 1) $result213739)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        ($fibo1_pre (- n 2)))))

; post fibo2
(assert
  (forall ((n Int) ($result213739 Int) ($result213740 Int))
    (=> (and (fibo1 (- n 2) $result213740)
             (fibo1 (- n 1) $result213739)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        (fibo2 n (+ $result213739 $result213740)))))

; if else
(assert
  (forall ((n Int) (n213741 Int))
    (=> (and ($fibo2_if3218 n n213741))
        ($fibo2_if3219 n n213741))))

; post fibo2
(assert
  (forall ((n213742 Int) (n Int))
    (=> (and ($fibo2_if3219 n n213742))
        (fibo2 n213742 0))))

; fibo1 precondition
(assert
  (forall (($x2329 Int))
    (=> (and (= $x2329 2))
        ($fibo1_pre $x2329))))

; label ERROR
(assert
  (forall (($x2329 Int) ($result2330 Int) ($result213743 Int))
    (=> (and (not (= $result2330 1))
             (= $result2330 $result213743)
             (fibo1 $x2329 $result213743)
             (= $x2329 2))
        ($main_ERROR $x2329 $result2330 $x2329 $result2330))))

; error
(assert
  (forall (($x2329 Int) ($result2330 Int) ($x2329213744 Int) ($result2330213745 Int))
    (=> (and ($main_ERROR $x2329 $result2330 $x2329213744 $result2330213745))
        false)))

; if else
(assert
  (forall (($x2329 Int) ($result2330 Int) ($result213743 Int))
    (=> (and (= $result2330 1)
             (= $result2330 $result213743)
             (fibo1 $x2329 $result213743)
             (= $x2329 2))
        ($main_if3220 $x2329 $result2330 $x2329 $result2330))))

(check-sat)
