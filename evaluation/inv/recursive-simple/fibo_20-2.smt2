(set-logic HORN)

(declare-fun $main_if3174 (Int Int) Bool)
(declare-fun $fibo_if3173 (Int) Bool)
(declare-fun $fibo_if3172 (Int) Bool)
(declare-fun fibo (Int Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
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
  (forall ((n Int) ($result210616 Int))
    (=> (and (fibo (- n 1) $result210616)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        ($fibo_pre (- n 2)))))

; post fibo
(assert
  (forall ((n Int) ($result210616 Int) ($result210617 Int))
    (=> (and (fibo (- n 2) $result210617)
             (fibo (- n 1) $result210616)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        (fibo n (+ $result210616 $result210617)))))

; if else
(assert
  (forall ((n210618 Int))
    (=> (and ($fibo_if3172 n210618))
        ($fibo_if3173 n210618))))

; post fibo
(assert
  (forall ((n210619 Int))
    (=> (and ($fibo_if3173 n210619))
        (fibo n210619 0))))

; fibo precondition
(assert
  (forall (($x2309 Int))
    (=> (and (= $x2309 20))
        ($fibo_pre $x2309))))

; label ERROR
(assert
  (forall (($x2309 Int) ($result2310 Int) ($result210620 Int))
    (=> (and (not (= $result2310 6765))
             (= $result2310 $result210620)
             (fibo $x2309 $result210620)
             (= $x2309 20))
        ($main_ERROR $x2309 $result2310))))

; error
(assert
  (forall (($x2309210621 Int) ($result2310210622 Int))
    (=> (and ($main_ERROR $x2309210621 $result2310210622))
        false)))

; if else
(assert
  (forall (($x2309 Int) ($result2310 Int) ($result210620 Int))
    (=> (and (= $result2310 6765)
             (= $result2310 $result210620)
             (fibo $x2309 $result210620)
             (= $x2309 20))
        ($main_if3174 $x2309 $result2310))))

(check-sat)
