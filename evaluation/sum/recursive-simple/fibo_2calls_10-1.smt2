(set-logic HORN)

(declare-fun $fibo1_pre (Int) Bool)
(declare-fun $fibo1_if3181 (Int Int) Bool)
(declare-fun $fibo1_if3182 (Int Int) Bool)
(declare-fun $fibo2_if3183 (Int Int) Bool)
(declare-fun $main_if3185 (Int Int Int Int) Bool)
(declare-fun fibo2 (Int Int) Bool)
(declare-fun $fibo2_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun fibo1 (Int Int) Bool)
(declare-fun $fibo2_if3184 (Int Int) Bool)

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
  (forall ((n Int) ($result213644 Int))
    (=> (and (fibo2 (- n 1) $result213644)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        ($fibo2_pre (- n 2)))))

; post fibo1
(assert
  (forall ((n Int) ($result213644 Int) ($result213645 Int))
    (=> (and (fibo2 (- n 2) $result213645)
             (fibo2 (- n 1) $result213644)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        (fibo1 n (+ $result213644 $result213645)))))

; if else
(assert
  (forall ((n Int) (n213646 Int))
    (=> (and ($fibo1_if3181 n n213646))
        ($fibo1_if3182 n n213646))))

; post fibo1
(assert
  (forall ((n213647 Int) (n Int))
    (=> (and ($fibo1_if3182 n n213647))
        (fibo1 n213647 0))))

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
  (forall ((n Int) ($result213648 Int))
    (=> (and (fibo1 (- n 1) $result213648)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        ($fibo1_pre (- n 2)))))

; post fibo2
(assert
  (forall ((n Int) ($result213648 Int) ($result213649 Int))
    (=> (and (fibo1 (- n 2) $result213649)
             (fibo1 (- n 1) $result213648)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        (fibo2 n (+ $result213648 $result213649)))))

; if else
(assert
  (forall ((n Int) (n213650 Int))
    (=> (and ($fibo2_if3183 n n213650))
        ($fibo2_if3184 n n213650))))

; post fibo2
(assert
  (forall ((n213651 Int) (n Int))
    (=> (and ($fibo2_if3184 n n213651))
        (fibo2 n213651 0))))

; fibo1 precondition
(assert
  (forall (($x2315 Int))
    (=> (and (= $x2315 10))
        ($fibo1_pre $x2315))))

; label ERROR
(assert
  (forall (($x2315 Int) ($result2316 Int) ($result213652 Int))
    (=> (and (not (= $result2316 55))
             (= $result2316 $result213652)
             (fibo1 $x2315 $result213652)
             (= $x2315 10))
        ($main_ERROR $x2315 $result2316 $x2315 $result2316))))

; error
(assert
  (forall (($x2315 Int) ($result2316 Int) ($x2315213653 Int) ($result2316213654 Int))
    (=> (and ($main_ERROR $x2315 $result2316 $x2315213653 $result2316213654))
        false)))

; if else
(assert
  (forall (($x2315 Int) ($result2316 Int) ($result213652 Int))
    (=> (and (= $result2316 55)
             (= $result2316 $result213652)
             (fibo1 $x2315 $result213652)
             (= $x2315 10))
        ($main_if3185 $x2315 $result2316 $x2315 $result2316))))

(check-sat)
