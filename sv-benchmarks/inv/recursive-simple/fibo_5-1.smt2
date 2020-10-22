(set-logic HORN)

(declare-fun $main_if3273 (Int Int) Bool)
(declare-fun fibo (Int Int) Bool)
(declare-fun $fibo_if3272 (Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun $fibo_pre (Int) Bool)
(declare-fun $fibo_if3271 (Int) Bool)

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
  (forall ((n Int) ($result210877 Int))
    (=> (and (fibo (- n 1) $result210877)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        ($fibo_pre (- n 2)))))

; post fibo
(assert
  (forall ((n Int) ($result210877 Int) ($result210878 Int))
    (=> (and (fibo (- n 2) $result210878)
             (fibo (- n 1) $result210877)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        (fibo n (+ $result210877 $result210878)))))

; if else
(assert
  (forall ((n210879 Int))
    (=> (and ($fibo_if3271 n210879))
        ($fibo_if3272 n210879))))

; post fibo
(assert
  (forall ((n210880 Int))
    (=> (and ($fibo_if3272 n210880))
        (fibo n210880 0))))

; fibo precondition
(assert
  (forall (($x2351 Int))
    (=> (and (= $x2351 5))
        ($fibo_pre $x2351))))

; label ERROR
(assert
  (forall (($x2351 Int) ($result2352 Int) ($result210881 Int))
    (=> (and (not (= $result2352 5))
             (= $result2352 $result210881)
             (fibo $x2351 $result210881)
             (= $x2351 5))
        ($main_ERROR $x2351 $result2352))))

; error
(assert
  (forall (($x2351210882 Int) ($result2352210883 Int))
    (=> (and ($main_ERROR $x2351210882 $result2352210883))
        false)))

; if else
(assert
  (forall (($x2351 Int) ($result2352 Int) ($result210881 Int))
    (=> (and (= $result2352 5)
             (= $result2352 $result210881)
             (fibo $x2351 $result210881)
             (= $x2351 5))
        ($main_if3273 $x2351 $result2352))))

(check-sat)
