(set-logic HORN)

(declare-fun $main_if3174 (Int Int Int Int) Bool)
(declare-fun $fibo_if3173 (Int Int) Bool)
(declare-fun fibo (Int Int) Bool)
(declare-fun $fibo_if3172 (Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
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
  (forall ((n Int) ($result213617 Int))
    (=> (and (fibo (- n 1) $result213617)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        ($fibo_pre (- n 2)))))

; post fibo
(assert
  (forall ((n Int) ($result213617 Int) ($result213618 Int))
    (=> (and (fibo (- n 2) $result213618)
             (fibo (- n 1) $result213617)
             (not (= n 1))
             (not (< n 1))
             ($fibo_pre n))
        (fibo n (+ $result213617 $result213618)))))

; if else
(assert
  (forall ((n Int) (n213619 Int))
    (=> (and ($fibo_if3172 n n213619))
        ($fibo_if3173 n n213619))))

; post fibo
(assert
  (forall ((n213620 Int) (n Int))
    (=> (and ($fibo_if3173 n n213620))
        (fibo n213620 0))))

; fibo precondition
(assert
  (forall (($x2309 Int))
    (=> (and (= $x2309 20))
        ($fibo_pre $x2309))))

; label ERROR
(assert
  (forall (($x2309 Int) ($result2310 Int) ($result213621 Int))
    (=> (and (not (= $result2310 6765))
             (= $result2310 $result213621)
             (fibo $x2309 $result213621)
             (= $x2309 20))
        ($main_ERROR $x2309 $result2310 $x2309 $result2310))))

; error
(assert
  (forall (($x2309 Int) ($result2310 Int) ($x2309213622 Int) ($result2310213623 Int))
    (=> (and ($main_ERROR $x2309 $result2310 $x2309213622 $result2310213623))
        false)))

; if else
(assert
  (forall (($x2309 Int) ($result2310 Int) ($result213621 Int))
    (=> (and (= $result2310 6765)
             (= $result2310 $result213621)
             (fibo $x2309 $result213621)
             (= $x2309 20))
        ($main_if3174 $x2309 $result2310 $x2309 $result2310))))

(check-sat)
