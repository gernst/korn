(set-logic HORN)

(declare-fun $main_if3103 (Int Int) Bool)
(declare-fun $fibonacci_if3102 (Int) Bool)
(declare-fun fibonacci (Int Int) Bool)
(declare-fun $fibonacci_if3101 (Int) Bool)
(declare-fun $fibonacci_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)

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
  (forall ((n Int) ($result210367 Int))
    (=> (and (fibonacci (- n 1) $result210367)
             (not (= n 1))
             (not (< n 1))
             ($fibonacci_pre n))
        ($fibonacci_pre (- n 2)))))

; post fibonacci
(assert
  (forall ((n Int) ($result210367 Int) ($result210368 Int))
    (=> (and (fibonacci (- n 2) $result210368)
             (fibonacci (- n 1) $result210367)
             (not (= n 1))
             (not (< n 1))
             ($fibonacci_pre n))
        (fibonacci n (+ $result210367 $result210368)))))

; if else
(assert
  (forall ((n210369 Int))
    (=> (and ($fibonacci_if3101 n210369))
        ($fibonacci_if3102 n210369))))

; post fibonacci
(assert
  (forall ((n210370 Int))
    (=> (and ($fibonacci_if3102 n210370))
        (fibonacci n210370 0))))

; fibonacci precondition
(assert
  (forall (($x2275 Int) ($int210371 Int))
    (=> (and (= $x2275 $int210371)
             (<= (- 2147483648) $int210371)
             (<= $int210371 2147483647))
        ($fibonacci_pre $x2275))))

; label ERROR
(assert
  (forall (($x2275 Int) ($result2276 Int) ($result210372 Int) ($int210371 Int))
    (=> (and (not (or (< $x2275 8) (>= $result2276 34)))
             (= $result2276 $result210372)
             (fibonacci $x2275 $result210372)
             (= $x2275 $int210371)
             (<= (- 2147483648) $int210371)
             (<= $int210371 2147483647))
        ($main_ERROR $x2275 $result2276))))

; error
(assert
  (forall (($x2275210373 Int) ($result2276210374 Int))
    (=> (and ($main_ERROR $x2275210373 $result2276210374))
        false)))

(check-sat)
