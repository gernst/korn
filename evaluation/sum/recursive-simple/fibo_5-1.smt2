(set-logic HORN)

(declare-fun $fibo_if3271 (Int Int) Bool)
(declare-fun $main_if3273 (Int Int Int Int) Bool)
(declare-fun fibo (Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $fibo_if3272 (Int Int) Bool)
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
  (forall ((n Int) ($result213878 Int))
    (=> (and (fibo (- n 1) $result213878)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        ($fibo_pre (- n 2)))))

; post fibo
(assert
  (forall ((n Int) ($result213878 Int) ($result213879 Int))
    (=> (and (fibo (- n 2) $result213879)
             (fibo (- n 1) $result213878)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        (fibo n (+ $result213878 $result213879)))))

; if else
(assert
  (forall ((n Int) (n213880 Int))
    (=> (and ($fibo_if3271 n n213880))
        ($fibo_if3272 n n213880))))

; post fibo
(assert
  (forall ((n213881 Int) (n Int))
    (=> (and ($fibo_if3272 n n213881))
        (fibo n213881 0))))

; fibo precondition
(assert
  (forall (($x2351 Int))
    (=> (and (= $x2351 5))
        ($fibo_pre $x2351))))

; label ERROR
(assert
  (forall (($x2351 Int) ($result2352 Int) ($result213882 Int))
    (=> (and (not (= $result2352 5))
             (= $result2352 $result213882)
             (fibo $x2351 $result213882)
             (= $x2351 5))
        ($main_ERROR $x2351 $result2352 $x2351 $result2352))))

; error
(assert
  (forall (($x2351 Int) ($result2352 Int) ($x2351213883 Int) ($result2352213884 Int))
    (=> (and ($main_ERROR $x2351 $result2352 $x2351213883 $result2352213884))
        false)))

; if else
(assert
  (forall (($x2351 Int) ($result2352 Int) ($result213882 Int))
    (=> (and (= $result2352 5)
             (= $result2352 $result213882)
             (fibo $x2351 $result213882)
             (= $x2351 5))
        ($main_if3273 $x2351 $result2352 $x2351 $result2352))))

(check-sat)
