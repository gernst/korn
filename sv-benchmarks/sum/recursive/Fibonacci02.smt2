(set-logic HORN)

(declare-fun $fibonacci_if3091 (Int Int) Bool)
(declare-fun fibonacci (Int Int) Bool)
(declare-fun $fibonacci_if3092 (Int Int) Bool)
(declare-fun $fibonacci_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $main_if3093 (Int Int Int Int) Bool)

; post fibonacci
(assert
  (forall ((n Int))
    (=> (and (< n 1)
             ($fibonacci_pre n))
        (fibonacci n 0))))

; post fibonacci
(assert
  (forall ((n Int))
    (=> (and (= n 1)
             (not (< n 1))
             ($fibonacci_pre n))
        (fibonacci n 1))))

; fibonacci precondition
(assert
  (forall ((n Int))
    (=> (and (not (= n 1))
             (not (< n 1))
             ($fibonacci_pre n))
        ($fibonacci_pre (- n 1)))))

; fibonacci precondition
(assert
  (forall ((n Int) ($result213337 Int))
    (=> (and (fibonacci (- n 1) $result213337)
             (not (= n 1))
             (not (< n 1))
             ($fibonacci_pre n))
        ($fibonacci_pre (- n 2)))))

; post fibonacci
(assert
  (forall ((n Int) ($result213337 Int) ($result213338 Int))
    (=> (and (fibonacci (- n 2) $result213338)
             (fibonacci (- n 1) $result213337)
             (not (= n 1))
             (not (< n 1))
             ($fibonacci_pre n))
        (fibonacci n (+ $result213337 $result213338)))))

; if else
(assert
  (forall ((n Int) (n213339 Int))
    (=> (and ($fibonacci_if3091 n n213339))
        ($fibonacci_if3092 n n213339))))

; post fibonacci
(assert
  (forall ((n213340 Int) (n Int))
    (=> (and ($fibonacci_if3092 n n213340))
        (fibonacci n213340 0))))

; fibonacci precondition
(assert
  (forall (($x2269 Int))
    (=> (and (= $x2269 9))
        ($fibonacci_pre $x2269))))

; label ERROR
(assert
  (forall (($x2269 Int) ($result2270 Int) ($result213341 Int))
    (=> (and (not (= $result2270 34))
             (= $result2270 $result213341)
             (fibonacci $x2269 $result213341)
             (= $x2269 9))
        ($main_ERROR $x2269 $result2270 $x2269 $result2270))))

; error
(assert
  (forall (($x2269 Int) ($result2270 Int) ($x2269213342 Int) ($result2270213343 Int))
    (=> (and ($main_ERROR $x2269 $result2270 $x2269213342 $result2270213343))
        false)))

(check-sat)
