(set-logic HORN)

(declare-fun $fibonacci_if3091 (Int) Bool)
(declare-fun fibonacci (Int Int) Bool)
(declare-fun $fibonacci_if3092 (Int) Bool)
(declare-fun $fibonacci_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun $main_if3093 (Int Int) Bool)

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
  (forall ((n Int) ($result210336 Int))
    (=> (and (fibonacci (- n 1) $result210336)
             (not (= n 1))
             (not (< n 1))
             ($fibonacci_pre n))
        ($fibonacci_pre (- n 2)))))

; post fibonacci
(assert
  (forall ((n Int) ($result210336 Int) ($result210337 Int))
    (=> (and (fibonacci (- n 2) $result210337)
             (fibonacci (- n 1) $result210336)
             (not (= n 1))
             (not (< n 1))
             ($fibonacci_pre n))
        (fibonacci n (+ $result210336 $result210337)))))

; if else
(assert
  (forall ((n210338 Int))
    (=> (and ($fibonacci_if3091 n210338))
        ($fibonacci_if3092 n210338))))

; post fibonacci
(assert
  (forall ((n210339 Int))
    (=> (and ($fibonacci_if3092 n210339))
        (fibonacci n210339 0))))

; fibonacci precondition
(assert
  (forall (($x2269 Int))
    (=> (and (= $x2269 9))
        ($fibonacci_pre $x2269))))

; label ERROR
(assert
  (forall (($x2269 Int) ($result2270 Int) ($result210340 Int))
    (=> (and (not (= $result2270 34))
             (= $result2270 $result210340)
             (fibonacci $x2269 $result210340)
             (= $x2269 9))
        ($main_ERROR $x2269 $result2270))))

; error
(assert
  (forall (($x2269210341 Int) ($result2270210342 Int))
    (=> (and ($main_ERROR $x2269210341 $result2270210342))
        false)))

(check-sat)
