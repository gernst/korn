(set-logic HORN)

(declare-fun fibonacci (Int Int) Bool)
(declare-fun $fibonacci_if3099 (Int) Bool)
(declare-fun $fibonacci_if3098 (Int) Bool)
(declare-fun $fibonacci_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun $main_if3100 (Int Int) Bool)

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
  (forall ((n Int) ($result210357 Int))
    (=> (and (fibonacci (- n 1) $result210357)
             (not (= n 1))
             (not (< n 1))
             ($fibonacci_pre n))
        ($fibonacci_pre (- n 2)))))

; post fibonacci
(assert
  (forall ((n Int) ($result210357 Int) ($result210358 Int))
    (=> (and (fibonacci (- n 2) $result210358)
             (fibonacci (- n 1) $result210357)
             (not (= n 1))
             (not (< n 1))
             ($fibonacci_pre n))
        (fibonacci n (+ $result210357 $result210358)))))

; if else
(assert
  (forall ((n210359 Int))
    (=> (and ($fibonacci_if3098 n210359))
        ($fibonacci_if3099 n210359))))

; post fibonacci
(assert
  (forall ((n210360 Int))
    (=> (and ($fibonacci_if3099 n210360))
        (fibonacci n210360 0))))

; fibonacci precondition
(assert
  (forall (($x2273 Int) ($int210361 Int))
    (=> (and (= $x2273 $int210361)
             (<= (- 2147483648) $int210361)
             (<= $int210361 2147483647))
        ($fibonacci_pre $x2273))))

; label ERROR
(assert
  (forall (($x2273 Int) ($result2274 Int) ($result210362 Int) ($int210361 Int))
    (=> (and (not (or (not (= $x2273 5)) (= $result2274 3)))
             (= $result2274 $result210362)
             (fibonacci $x2273 $result210362)
             (= $x2273 $int210361)
             (<= (- 2147483648) $int210361)
             (<= $int210361 2147483647))
        ($main_ERROR $x2273 $result2274))))

; error
(assert
  (forall (($x2273210363 Int) ($result2274210364 Int))
    (=> (and ($main_ERROR $x2273210363 $result2274210364))
        false)))

(check-sat)
