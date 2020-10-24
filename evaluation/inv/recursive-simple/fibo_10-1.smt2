(set-logic HORN)

(declare-fun $main_if3159 (Int Int) Bool)
(declare-fun $fibo_if3158 (Int) Bool)
(declare-fun fibo (Int Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun $fibo_if3157 (Int) Bool)
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
  (forall ((n Int) ($result210571 Int))
    (=> (and (fibo (- n 1) $result210571)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        ($fibo_pre (- n 2)))))

; post fibo
(assert
  (forall ((n Int) ($result210571 Int) ($result210572 Int))
    (=> (and (fibo (- n 2) $result210572)
             (fibo (- n 1) $result210571)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        (fibo n (+ $result210571 $result210572)))))

; if else
(assert
  (forall ((n210573 Int))
    (=> (and ($fibo_if3157 n210573))
        ($fibo_if3158 n210573))))

; post fibo
(assert
  (forall ((n210574 Int))
    (=> (and ($fibo_if3158 n210574))
        (fibo n210574 0))))

; fibo precondition
(assert
  (forall (($x2299 Int))
    (=> (and (= $x2299 10))
        ($fibo_pre $x2299))))

; label ERROR
(assert
  (forall (($x2299 Int) ($result2300 Int) ($result210575 Int))
    (=> (and (= $result2300 55)
             (= $result2300 $result210575)
             (fibo $x2299 $result210575)
             (= $x2299 10))
        ($main_ERROR $x2299 $result2300))))

; error
(assert
  (forall (($x2299210576 Int) ($result2300210577 Int))
    (=> (and ($main_ERROR $x2299210576 $result2300210577))
        false)))

; if else
(assert
  (forall (($x2299 Int) ($result2300 Int) ($result210575 Int))
    (=> (and (not (= $result2300 55))
             (= $result2300 $result210575)
             (fibo $x2299 $result210575)
             (= $x2299 10))
        ($main_if3159 $x2299 $result2300))))

(check-sat)
