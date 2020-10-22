(set-logic HORN)

(declare-fun $fibo_if3280 (Int) Bool)
(declare-fun fibo (Int Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun $main_if3282 (Int Int) Bool)
(declare-fun $fibo_pre (Int) Bool)
(declare-fun $fibo_if3281 (Int) Bool)

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
  (forall ((n Int) ($result210904 Int))
    (=> (and (fibo (- n 1) $result210904)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        ($fibo_pre (- n 2)))))

; post fibo
(assert
  (forall ((n Int) ($result210904 Int) ($result210905 Int))
    (=> (and (fibo (- n 2) $result210905)
             (fibo (- n 1) $result210904)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        (fibo n (+ $result210904 $result210905)))))

; if else
(assert
  (forall ((n210906 Int))
    (=> (and ($fibo_if3280 n210906))
        ($fibo_if3281 n210906))))

; post fibo
(assert
  (forall ((n210907 Int))
    (=> (and ($fibo_if3281 n210907))
        (fibo n210907 0))))

; fibo precondition
(assert
  (forall (($x2357 Int))
    (=> (and (= $x2357 7))
        ($fibo_pre $x2357))))

; label ERROR
(assert
  (forall (($x2357 Int) ($result2358 Int) ($result210908 Int))
    (=> (and (= $result2358 13)
             (= $result2358 $result210908)
             (fibo $x2357 $result210908)
             (= $x2357 7))
        ($main_ERROR $x2357 $result2358))))

; error
(assert
  (forall (($x2357210909 Int) ($result2358210910 Int))
    (=> (and ($main_ERROR $x2357210909 $result2358210910))
        false)))

; if else
(assert
  (forall (($x2357 Int) ($result2358 Int) ($result210908 Int))
    (=> (and (not (= $result2358 13))
             (= $result2358 $result210908)
             (fibo $x2357 $result210908)
             (= $x2357 7))
        ($main_if3282 $x2357 $result2358))))

(check-sat)
