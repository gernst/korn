(set-logic HORN)

(declare-fun $fibo_if3179 (Int) Bool)
(declare-fun $main_if3180 (Int Int) Bool)
(declare-fun fibo (Int Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun $fibo_if3178 (Int) Bool)
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
  (forall ((n Int) ($result210634 Int))
    (=> (and (fibo (- n 1) $result210634)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        ($fibo_pre (- n 2)))))

; post fibo
(assert
  (forall ((n Int) ($result210634 Int) ($result210635 Int))
    (=> (and (fibo (- n 2) $result210635)
             (fibo (- n 1) $result210634)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        (fibo n (+ $result210634 $result210635)))))

; if else
(assert
  (forall ((n210636 Int))
    (=> (and ($fibo_if3178 n210636))
        ($fibo_if3179 n210636))))

; post fibo
(assert
  (forall ((n210637 Int))
    (=> (and ($fibo_if3179 n210637))
        (fibo n210637 0))))

; fibo precondition
(assert
  (forall (($x2313 Int))
    (=> (and (= $x2313 25))
        ($fibo_pre $x2313))))

; label ERROR
(assert
  (forall (($x2313 Int) ($result2314 Int) ($result210638 Int))
    (=> (and (not (= $result2314 75025))
             (= $result2314 $result210638)
             (fibo $x2313 $result210638)
             (= $x2313 25))
        ($main_ERROR $x2313 $result2314))))

; error
(assert
  (forall (($x2313210639 Int) ($result2314210640 Int))
    (=> (and ($main_ERROR $x2313210639 $result2314210640))
        false)))

; if else
(assert
  (forall (($x2313 Int) ($result2314 Int) ($result210638 Int))
    (=> (and (= $result2314 75025)
             (= $result2314 $result210638)
             (fibo $x2313 $result210638)
             (= $x2313 25))
        ($main_if3180 $x2313 $result2314))))

(check-sat)
