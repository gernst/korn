(set-logic HORN)

(declare-fun $fibo_if3280 (Int Int) Bool)
(declare-fun fibo (Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $fibo_if3281 (Int Int) Bool)
(declare-fun $main_if3282 (Int Int Int Int) Bool)
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
  (forall ((n Int) ($result213905 Int))
    (=> (and (fibo (- n 1) $result213905)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        ($fibo_pre (- n 2)))))

; post fibo
(assert
  (forall ((n Int) ($result213905 Int) ($result213906 Int))
    (=> (and (fibo (- n 2) $result213906)
             (fibo (- n 1) $result213905)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        (fibo n (+ $result213905 $result213906)))))

; if else
(assert
  (forall ((n Int) (n213907 Int))
    (=> (and ($fibo_if3280 n n213907))
        ($fibo_if3281 n n213907))))

; post fibo
(assert
  (forall ((n213908 Int) (n Int))
    (=> (and ($fibo_if3281 n n213908))
        (fibo n213908 0))))

; fibo precondition
(assert
  (forall (($x2357 Int))
    (=> (and (= $x2357 7))
        ($fibo_pre $x2357))))

; label ERROR
(assert
  (forall (($x2357 Int) ($result2358 Int) ($result213909 Int))
    (=> (and (= $result2358 13)
             (= $result2358 $result213909)
             (fibo $x2357 $result213909)
             (= $x2357 7))
        ($main_ERROR $x2357 $result2358 $x2357 $result2358))))

; error
(assert
  (forall (($x2357 Int) ($result2358 Int) ($x2357213910 Int) ($result2358213911 Int))
    (=> (and ($main_ERROR $x2357 $result2358 $x2357213910 $result2358213911))
        false)))

; if else
(assert
  (forall (($x2357 Int) ($result2358 Int) ($result213909 Int))
    (=> (and (not (= $result2358 13))
             (= $result2358 $result213909)
             (fibo $x2357 $result213909)
             (= $x2357 7))
        ($main_if3282 $x2357 $result2358 $x2357 $result2358))))

(check-sat)
