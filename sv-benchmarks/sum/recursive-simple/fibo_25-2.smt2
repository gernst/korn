(set-logic HORN)

(declare-fun $fibo_if3178 (Int Int) Bool)
(declare-fun $fibo_if3179 (Int Int) Bool)
(declare-fun $main_if3180 (Int Int Int Int) Bool)
(declare-fun fibo (Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $fibo_pre (Int) Bool)

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
  (forall ((n Int) ($result213635 Int))
    (=> (and (fibo (- n 1) $result213635)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        ($fibo_pre (- n 2)))))

; post fibo
(assert
  (forall ((n Int) ($result213635 Int) ($result213636 Int))
    (=> (and (fibo (- n 2) $result213636)
             (fibo (- n 1) $result213635)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        (fibo n (+ $result213635 $result213636)))))

; if else
(assert
  (forall ((n Int) (n213637 Int))
    (=> (and ($fibo_if3178 n n213637))
        ($fibo_if3179 n n213637))))

; post fibo
(assert
  (forall ((n213638 Int) (n Int))
    (=> (and ($fibo_if3179 n n213638))
        (fibo n213638 0))))

; fibo precondition
(assert
  (forall (($x2313 Int))
    (=> (and (= $x2313 25))
        ($fibo_pre $x2313))))

; label ERROR
(assert
  (forall (($x2313 Int) ($result2314 Int) ($result213639 Int))
    (=> (and (not (= $result2314 75025))
             (= $result2314 $result213639)
             (fibo $x2313 $result213639)
             (= $x2313 25))
        ($main_ERROR $x2313 $result2314 $x2313 $result2314))))

; error
(assert
  (forall (($x2313 Int) ($result2314 Int) ($x2313213640 Int) ($result2314213641 Int))
    (=> (and ($main_ERROR $x2313 $result2314 $x2313213640 $result2314213641))
        false)))

; if else
(assert
  (forall (($x2313 Int) ($result2314 Int) ($result213639 Int))
    (=> (and (= $result2314 75025)
             (= $result2314 $result213639)
             (fibo $x2313 $result213639)
             (= $x2313 25))
        ($main_if3180 $x2313 $result2314 $x2313 $result2314))))

(check-sat)
