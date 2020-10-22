(set-logic HORN)

(declare-fun $main_if3177 (Int Int Int Int) Bool)
(declare-fun $fibo_if3175 (Int Int) Bool)
(declare-fun fibo (Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $fibo_pre (Int) Bool)
(declare-fun $fibo_if3176 (Int Int) Bool)

; post fibo
(assert
  (forall ((n Int))
    (=> (and (< n 1)
             ($fibo_pre n))
        (fibo n 0))))

; post fibo
(assert
  (forall ((n Int))
    (=> (and (= n 1)
             (not (< n 1))
             ($fibo_pre n))
        (fibo n 1))))

; fibo precondition
(assert
  (forall ((n Int))
    (=> (and (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        ($fibo_pre (- n 1)))))

; fibo precondition
(assert
  (forall ((n Int) ($result213626 Int))
    (=> (and (fibo (- n 1) $result213626)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        ($fibo_pre (- n 2)))))

; post fibo
(assert
  (forall ((n Int) ($result213626 Int) ($result213627 Int))
    (=> (and (fibo (- n 2) $result213627)
             (fibo (- n 1) $result213626)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        (fibo n (+ $result213626 $result213627)))))

; if else
(assert
  (forall ((n Int) (n213628 Int))
    (=> (and ($fibo_if3175 n n213628))
        ($fibo_if3176 n n213628))))

; post fibo
(assert
  (forall ((n213629 Int) (n Int))
    (=> (and ($fibo_if3176 n n213629))
        (fibo n213629 0))))

; fibo precondition
(assert
  (forall (($x2311 Int))
    (=> (and (= $x2311 25))
        ($fibo_pre $x2311))))

; label ERROR
(assert
  (forall (($x2311 Int) ($result2312 Int) ($result213630 Int))
    (=> (and (= $result2312 75025)
             (= $result2312 $result213630)
             (fibo $x2311 $result213630)
             (= $x2311 25))
        ($main_ERROR $x2311 $result2312 $x2311 $result2312))))

; error
(assert
  (forall (($x2311 Int) ($result2312 Int) ($x2311213631 Int) ($result2312213632 Int))
    (=> (and ($main_ERROR $x2311 $result2312 $x2311213631 $result2312213632))
        false)))

; if else
(assert
  (forall (($x2311 Int) ($result2312 Int) ($result213630 Int))
    (=> (and (not (= $result2312 75025))
             (= $result2312 $result213630)
             (fibo $x2311 $result213630)
             (= $x2311 25))
        ($main_if3177 $x2311 $result2312 $x2311 $result2312))))

(check-sat)
