(set-logic HORN)

(declare-fun $fibo_if3274 (Int Int) Bool)
(declare-fun fibo (Int Int) Bool)
(declare-fun $fibo_if3275 (Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $fibo_pre (Int) Bool)
(declare-fun $main_if3276 (Int Int Int Int) Bool)

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
  (forall ((n Int) ($result213887 Int))
    (=> (and (fibo (- n 1) $result213887)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        ($fibo_pre (- n 2)))))

; post fibo
(assert
  (forall ((n Int) ($result213887 Int) ($result213888 Int))
    (=> (and (fibo (- n 2) $result213888)
             (fibo (- n 1) $result213887)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        (fibo n (+ $result213887 $result213888)))))

; if else
(assert
  (forall ((n Int) (n213889 Int))
    (=> (and ($fibo_if3274 n n213889))
        ($fibo_if3275 n n213889))))

; post fibo
(assert
  (forall ((n213890 Int) (n Int))
    (=> (and ($fibo_if3275 n n213890))
        (fibo n213890 0))))

; fibo precondition
(assert
  (forall (($x2353 Int))
    (=> (and (= $x2353 5))
        ($fibo_pre $x2353))))

; label ERROR
(assert
  (forall (($x2353 Int) ($result2354 Int) ($result213891 Int))
    (=> (and (= $result2354 5)
             (= $result2354 $result213891)
             (fibo $x2353 $result213891)
             (= $x2353 5))
        ($main_ERROR $x2353 $result2354 $x2353 $result2354))))

; error
(assert
  (forall (($x2353 Int) ($result2354 Int) ($x2353213892 Int) ($result2354213893 Int))
    (=> (and ($main_ERROR $x2353 $result2354 $x2353213892 $result2354213893))
        false)))

; if else
(assert
  (forall (($x2353 Int) ($result2354 Int) ($result213891 Int))
    (=> (and (not (= $result2354 5))
             (= $result2354 $result213891)
             (fibo $x2353 $result213891)
             (= $x2353 5))
        ($main_if3276 $x2353 $result2354 $x2353 $result2354))))

(check-sat)
