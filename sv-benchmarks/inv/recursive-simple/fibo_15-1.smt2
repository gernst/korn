(set-logic HORN)

(declare-fun $fibo_if3164 (Int) Bool)
(declare-fun fibo (Int Int) Bool)
(declare-fun $fibo_if3163 (Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun $main_if3165 (Int Int) Bool)
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
  (forall ((n Int) ($result210589 Int))
    (=> (and (fibo (- n 1) $result210589)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        ($fibo_pre (- n 2)))))

; post fibo
(assert
  (forall ((n Int) ($result210589 Int) ($result210590 Int))
    (=> (and (fibo (- n 2) $result210590)
             (fibo (- n 1) $result210589)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        (fibo n (+ $result210589 $result210590)))))

; if else
(assert
  (forall ((n210591 Int))
    (=> (and ($fibo_if3163 n210591))
        ($fibo_if3164 n210591))))

; post fibo
(assert
  (forall ((n210592 Int))
    (=> (and ($fibo_if3164 n210592))
        (fibo n210592 0))))

; fibo precondition
(assert
  (forall (($x2303 Int))
    (=> (and (= $x2303 15))
        ($fibo_pre $x2303))))

; label ERROR
(assert
  (forall (($x2303 Int) ($result2304 Int) ($result210593 Int))
    (=> (and (not (= $result2304 610))
             (= $result2304 $result210593)
             (fibo $x2303 $result210593)
             (= $x2303 15))
        ($main_ERROR $x2303 $result2304))))

; error
(assert
  (forall (($x2303210594 Int) ($result2304210595 Int))
    (=> (and ($main_ERROR $x2303210594 $result2304210595))
        false)))

; if else
(assert
  (forall (($x2303 Int) ($result2304 Int) ($result210593 Int))
    (=> (and (= $result2304 610)
             (= $result2304 $result210593)
             (fibo $x2303 $result210593)
             (= $x2303 15))
        ($main_if3165 $x2303 $result2304))))

(check-sat)
