(set-logic HORN)

(declare-fun $fibo1_pre (Int) Bool)
(declare-fun $fibo2_if3258 (Int Int) Bool)
(declare-fun $fibo2_if3259 (Int Int) Bool)
(declare-fun $main_if3260 (Int Int Int Int) Bool)
(declare-fun $fibo1_if3256 (Int Int) Bool)
(declare-fun fibo2 (Int Int) Bool)
(declare-fun $fibo2_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun fibo1 (Int Int) Bool)
(declare-fun $fibo1_if3257 (Int Int) Bool)

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
  (forall ((n Int) ($result213839 Int))
    (=> (and (fibo2 (- n 1) $result213839)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        ($fibo2_pre (- n 2)))))

; post fibo1
(assert
  (forall ((n Int) ($result213839 Int) ($result213840 Int))
    (=> (and (fibo2 (- n 2) $result213840)
             (fibo2 (- n 1) $result213839)
             (not (= n 1))
             (not (< n 1))
             ($fibo1_pre n))
        (fibo1 n (+ $result213839 $result213840)))))

; if else
(assert
  (forall ((n Int) (n213841 Int))
    (=> (and ($fibo1_if3256 n n213841))
        ($fibo1_if3257 n n213841))))

; post fibo1
(assert
  (forall ((n213842 Int) (n Int))
    (=> (and ($fibo1_if3257 n n213842))
        (fibo1 n213842 0))))

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
  (forall ((n Int) ($result213843 Int))
    (=> (and (fibo1 (- n 1) $result213843)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        ($fibo1_pre (- n 2)))))

; post fibo2
(assert
  (forall ((n Int) ($result213843 Int) ($result213844 Int))
    (=> (and (fibo1 (- n 2) $result213844)
             (fibo1 (- n 1) $result213843)
             (not (= n 1))
             (not (< n 1))
             ($fibo2_pre n))
        (fibo2 n (+ $result213843 $result213844)))))

; if else
(assert
  (forall ((n Int) (n213845 Int))
    (=> (and ($fibo2_if3258 n n213845))
        ($fibo2_if3259 n n213845))))

; post fibo2
(assert
  (forall ((n213846 Int) (n Int))
    (=> (and ($fibo2_if3259 n n213846))
        (fibo2 n213846 0))))

; fibo1 precondition
(assert
  (forall (($x2345 Int))
    (=> (and (= $x2345 6))
        ($fibo1_pre $x2345))))

; label ERROR
(assert
  (forall (($x2345 Int) ($result2346 Int) ($result213847 Int))
    (=> (and (= $result2346 8)
             (= $result2346 $result213847)
             (fibo1 $x2345 $result213847)
             (= $x2345 6))
        ($main_ERROR $x2345 $result2346 $x2345 $result2346))))

; error
(assert
  (forall (($x2345 Int) ($result2346 Int) ($x2345213848 Int) ($result2346213849 Int))
    (=> (and ($main_ERROR $x2345 $result2346 $x2345213848 $result2346213849))
        false)))

; if else
(assert
  (forall (($x2345 Int) ($result2346 Int) ($result213847 Int))
    (=> (and (not (= $result2346 8))
             (= $result2346 $result213847)
             (fibo1 $x2345 $result213847)
             (= $x2345 6))
        ($main_if3260 $x2345 $result2346 $x2345 $result2346))))

(check-sat)
