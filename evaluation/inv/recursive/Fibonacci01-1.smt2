(set-logic HORN)

(declare-fun fibonacci (Int Int) Bool)
(declare-fun $main_if3089 (Int Int) Bool)
(declare-fun $fibonacci_if3087 (Int) Bool)
(declare-fun $fibonacci_pre (Int) Bool)
(declare-fun $fibonacci_if3088 (Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun $main_if3090 (Int Int) Bool)

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
  (forall ((n Int) ($result210324 Int))
    (=> (and (fibonacci (- n 1) $result210324)
             (not (= n 1))
             (not (< n 1))
             ($fibonacci_pre n))
        ($fibonacci_pre (- n 2)))))

; post fibonacci
(assert
  (forall ((n Int) ($result210324 Int) ($result210325 Int))
    (=> (and (fibonacci (- n 2) $result210325)
             (fibonacci (- n 1) $result210324)
             (not (= n 1))
             (not (< n 1))
             ($fibonacci_pre n))
        (fibonacci n (+ $result210324 $result210325)))))

; if else
(assert
  (forall ((n210326 Int))
    (=> (and ($fibonacci_if3087 n210326))
        ($fibonacci_if3088 n210326))))

; post fibonacci
(assert
  (forall ((n210327 Int))
    (=> (and ($fibonacci_if3088 n210327))
        (fibonacci n210327 0))))

; if else
(assert
  (forall (($x2267 Int) ($result2268 Int) ($int210328 Int))
    (=> (and (not (or (> $x2267 46) (= $x2267 (- 2147483648))))
             (= $x2267 $int210328)
             (<= (- 2147483648) $int210328)
             (<= $int210328 2147483647))
        ($main_if3089 $x2267 $result2268))))

; fibonacci precondition
(assert
  (forall (($x2267210329 Int) ($result2268210330 Int))
    (=> (and ($main_if3089 $x2267210329 $result2268210330))
        ($fibonacci_pre $x2267210329))))

; label ERROR
(assert
  (forall (($x2267210329 Int) ($result2268210330 Int) ($result210331 Int))
    (=> (and (not (>= $result2268210330 (- $x2267210329 1)))
             (= $result2268210330 $result210331)
             (fibonacci $x2267210329 $result210331)
             ($main_if3089 $x2267210329 $result2268210330))
        ($main_ERROR $x2267210329 $result2268210330))))

; error
(assert
  (forall (($x2267210332 Int) ($result2268210333 Int))
    (=> (and ($main_ERROR $x2267210332 $result2268210333))
        false)))

(check-sat)
