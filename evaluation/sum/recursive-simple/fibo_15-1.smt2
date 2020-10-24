(set-logic HORN)

(declare-fun $fibo_if3164 (Int Int) Bool)
(declare-fun $fibo_if3163 (Int Int) Bool)
(declare-fun fibo (Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $main_if3165 (Int Int Int Int) Bool)
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
  (forall ((n Int) ($result213590 Int))
    (=> (and (fibo (- n 1) $result213590)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        ($fibo_pre (- n 2)))))

; post fibo
(assert
  (forall ((n Int) ($result213590 Int) ($result213591 Int))
    (=> (and (fibo (- n 2) $result213591)
             (fibo (- n 1) $result213590)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        (fibo n (+ $result213590 $result213591)))))

; if else
(assert
  (forall ((n Int) (n213592 Int))
    (=> (and ($fibo_if3163 n n213592))
        ($fibo_if3164 n n213592))))

; post fibo
(assert
  (forall ((n213593 Int) (n Int))
    (=> (and ($fibo_if3164 n n213593))
        (fibo n213593 0))))

; fibo precondition
(assert
  (forall (($x2303 Int))
    (=> (and (= $x2303 15))
        ($fibo_pre $x2303))))

; label ERROR
(assert
  (forall (($x2303 Int) ($result2304 Int) ($result213594 Int))
    (=> (and (not (= $result2304 610))
             (= $result2304 $result213594)
             (fibo $x2303 $result213594)
             (= $x2303 15))
        ($main_ERROR $x2303 $result2304 $x2303 $result2304))))

; error
(assert
  (forall (($x2303 Int) ($result2304 Int) ($x2303213595 Int) ($result2304213596 Int))
    (=> (and ($main_ERROR $x2303 $result2304 $x2303213595 $result2304213596))
        false)))

; if else
(assert
  (forall (($x2303 Int) ($result2304 Int) ($result213594 Int))
    (=> (and (= $result2304 610)
             (= $result2304 $result213594)
             (fibo $x2303 $result213594)
             (= $x2303 15))
        ($main_if3165 $x2303 $result2304 $x2303 $result2304))))

(check-sat)
