(set-logic HORN)

(declare-fun fibonacci (Int Int) Bool)
(declare-fun $fibonacci_if3098 (Int Int) Bool)
(declare-fun $fibonacci_if3099 (Int Int) Bool)
(declare-fun $fibonacci_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $main_if3100 (Int Int Int Int) Bool)

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
  (forall ((n Int) ($result213358 Int))
    (=> (and (fibonacci (- n 1) $result213358)
             (not (= n 1))
             (not (< n 1))
             ($fibonacci_pre n))
        ($fibonacci_pre (- n 2)))))

; post fibonacci
(assert
  (forall ((n Int) ($result213358 Int) ($result213359 Int))
    (=> (and (fibonacci (- n 2) $result213359)
             (fibonacci (- n 1) $result213358)
             (not (= n 1))
             (not (< n 1))
             ($fibonacci_pre n))
        (fibonacci n (+ $result213358 $result213359)))))

; if else
(assert
  (forall ((n Int) (n213360 Int))
    (=> (and ($fibonacci_if3098 n n213360))
        ($fibonacci_if3099 n n213360))))

; post fibonacci
(assert
  (forall ((n213361 Int) (n Int))
    (=> (and ($fibonacci_if3099 n n213361))
        (fibonacci n213361 0))))

; fibonacci precondition
(assert
  (forall (($x2273 Int) ($int213362 Int))
    (=> (and (= $x2273 $int213362)
             (<= (- 2147483648) $int213362)
             (<= $int213362 2147483647))
        ($fibonacci_pre $x2273))))

; label ERROR
(assert
  (forall (($x2273 Int) ($result2274 Int) ($result213363 Int) ($int213362 Int))
    (=> (and (not (or (not (= $x2273 5)) (= $result2274 3)))
             (= $result2274 $result213363)
             (fibonacci $x2273 $result213363)
             (= $x2273 $int213362)
             (<= (- 2147483648) $int213362)
             (<= $int213362 2147483647))
        ($main_ERROR $x2273 $result2274 $x2273 $result2274))))

; error
(assert
  (forall (($x2273 Int) ($result2274 Int) ($x2273213364 Int) ($result2274213365 Int))
    (=> (and ($main_ERROR $x2273 $result2274 $x2273213364 $result2274213365))
        false)))

(check-sat)
