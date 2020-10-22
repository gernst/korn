(set-logic HORN)

(declare-fun $fibo1_pre (Int) Bool)
(declare-fun $fibo1_if3206 (Int Int) Bool)
(declare-fun $fibo2_if3209 (Int Int) Bool)
(declare-fun fibo2 (Int Int) Bool)
(declare-fun $fibo2_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $fibo2_if3208 (Int Int) Bool)
(declare-fun $fibo1_if3207 (Int Int) Bool)
(declare-fun fibo1 (Int Int) Bool)
(declare-fun $main_if3210 (Int Int Int Int) Bool)

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
  (forall ((n Int) ($result213709 Int))
    (=> (and (fibo2 (- n 1) $result213709)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        ($fibo2_pre (- n 2)))))

; post fibo1
(assert
  (forall ((n Int) ($result213709 Int) ($result213710 Int))
    (=> (and (fibo2 (- n 2) $result213710)
             (fibo2 (- n 1) $result213709)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        (fibo1 n (+ $result213709 $result213710)))))

; if else
(assert
  (forall ((n Int) (n213711 Int))
    (=> (and ($fibo1_if3206 n n213711))
        ($fibo1_if3207 n n213711))))

; post fibo1
(assert
  (forall ((n213712 Int) (n Int))
    (=> (and ($fibo1_if3207 n n213712))
        (fibo1 n213712 0))))

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
  (forall ((n Int) ($result213713 Int))
    (=> (and (fibo1 (- n 1) $result213713)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        ($fibo1_pre (- n 2)))))

; post fibo2
(assert
  (forall ((n Int) ($result213713 Int) ($result213714 Int))
    (=> (and (fibo1 (- n 2) $result213714)
             (fibo1 (- n 1) $result213713)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        (fibo2 n (+ $result213713 $result213714)))))

; if else
(assert
  (forall ((n Int) (n213715 Int))
    (=> (and ($fibo2_if3208 n n213715))
        ($fibo2_if3209 n n213715))))

; post fibo2
(assert
  (forall ((n213716 Int) (n Int))
    (=> (and ($fibo2_if3209 n n213716))
        (fibo2 n213716 0))))

; fibo1 precondition
(assert
  (forall (($x2325 Int))
    (=> (and (= $x2325 20))
        ($fibo1_pre $x2325))))

; label ERROR
(assert
  (forall (($x2325 Int) ($result2326 Int) ($result213717 Int))
    (=> (and (not (= $result2326 6765))
             (= $result2326 $result213717)
             (fibo1 $x2325 $result213717)
             (= $x2325 20))
        ($main_ERROR $x2325 $result2326 $x2325 $result2326))))

; error
(assert
  (forall (($x2325 Int) ($result2326 Int) ($x2325213718 Int) ($result2326213719 Int))
    (=> (and ($main_ERROR $x2325 $result2326 $x2325213718 $result2326213719))
        false)))

; if else
(assert
  (forall (($x2325 Int) ($result2326 Int) ($result213717 Int))
    (=> (and (= $result2326 6765)
             (= $result2326 $result213717)
             (fibo1 $x2325 $result213717)
             (= $x2325 20))
        ($main_if3210 $x2325 $result2326 $x2325 $result2326))))

(check-sat)
