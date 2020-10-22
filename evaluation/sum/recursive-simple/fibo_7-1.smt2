(set-logic HORN)

(declare-fun $fibo_if3278 (Int Int) Bool)
(declare-fun $main_if3279 (Int Int Int Int) Bool)
(declare-fun fibo (Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $fibo_pre (Int) Bool)
(declare-fun $fibo_if3277 (Int Int) Bool)

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
  (forall ((n Int) ($result213896 Int))
    (=> (and (fibo (- n 1) $result213896)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        ($fibo_pre (- n 2)))))

; post fibo
(assert
  (forall ((n Int) ($result213896 Int) ($result213897 Int))
    (=> (and (fibo (- n 2) $result213897)
             (fibo (- n 1) $result213896)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        (fibo n (+ $result213896 $result213897)))))

; if else
(assert
  (forall ((n Int) (n213898 Int))
    (=> (and ($fibo_if3277 n n213898))
        ($fibo_if3278 n n213898))))

; post fibo
(assert
  (forall ((n213899 Int) (n Int))
    (=> (and ($fibo_if3278 n n213899))
        (fibo n213899 0))))

; fibo precondition
(assert
  (forall (($x2355 Int))
    (=> (and (= $x2355 7))
        ($fibo_pre $x2355))))

; label ERROR
(assert
  (forall (($x2355 Int) ($result2356 Int) ($result213900 Int))
    (=> (and (not (= $result2356 13))
             (= $result2356 $result213900)
             (fibo $x2355 $result213900)
             (= $x2355 7))
        ($main_ERROR $x2355 $result2356 $x2355 $result2356))))

; error
(assert
  (forall (($x2355 Int) ($result2356 Int) ($x2355213901 Int) ($result2356213902 Int))
    (=> (and ($main_ERROR $x2355 $result2356 $x2355213901 $result2356213902))
        false)))

; if else
(assert
  (forall (($x2355 Int) ($result2356 Int) ($result213900 Int))
    (=> (and (= $result2356 13)
             (= $result2356 $result213900)
             (fibo $x2355 $result213900)
             (= $x2355 7))
        ($main_if3279 $x2355 $result2356 $x2355 $result2356))))

(check-sat)
