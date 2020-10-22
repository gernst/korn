(set-logic HORN)

(declare-fun fibonacci (Int Int) Bool)
(declare-fun $fibonacci_if3095 (Int Int) Bool)
(declare-fun $fibonacci_pre (Int) Bool)
(declare-fun $main_if3097 (Int Int Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $fibonacci_if3094 (Int Int) Bool)
(declare-fun $main_if3096 (Int Int Int Int) Bool)

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
  (forall ((n Int) ($result213346 Int))
    (=> (and (fibonacci (- n 1) $result213346)
             (not (= n 1))
             (not (< n 1))
             ($fibonacci_pre n))
        ($fibonacci_pre (- n 2)))))

; post fibonacci
(assert
  (forall ((n Int) ($result213346 Int) ($result213347 Int))
    (=> (and (fibonacci (- n 2) $result213347)
             (fibonacci (- n 1) $result213346)
             (not (= n 1))
             (not (< n 1))
             ($fibonacci_pre n))
        (fibonacci n (+ $result213346 $result213347)))))

; if else
(assert
  (forall ((n Int) (n213348 Int))
    (=> (and ($fibonacci_if3094 n n213348))
        ($fibonacci_if3095 n n213348))))

; post fibonacci
(assert
  (forall ((n213349 Int) (n Int))
    (=> (and ($fibonacci_if3095 n n213349))
        (fibonacci n213349 0))))

; if else
(assert
  (forall (($x2271 Int) ($result2272 Int) ($int213350 Int))
    (=> (and (not (> $x2271 46))
             (= $x2271 $int213350)
             (<= (- 2147483648) $int213350)
             (<= $int213350 2147483647))
        ($main_if3096 $x2271 $result2272 $x2271 $result2272))))

; fibonacci precondition
(assert
  (forall (($x2271213351 Int) ($x2271 Int) ($result2272 Int) ($result2272213352 Int))
    (=> (and ($main_if3096 $x2271 $result2272 $x2271213351 $result2272213352))
        ($fibonacci_pre $x2271213351))))

; label ERROR
(assert
  (forall (($x2271 Int) ($x2271213351 Int) ($result213353 Int) ($result2272 Int) ($result2272213352 Int))
    (=> (and (not (or (< $x2271213351 9) (>= $result2272213352 34)))
             (= $result2272213352 $result213353)
             (fibonacci $x2271213351 $result213353)
             ($main_if3096 $x2271 $result2272 $x2271213351 $result2272213352))
        ($main_ERROR $x2271 $result2272 $x2271213351 $result2272213352))))

; error
(assert
  (forall (($x2271 Int) ($result2272 Int) ($x2271213354 Int) ($result2272213355 Int))
    (=> (and ($main_ERROR $x2271 $result2272 $x2271213354 $result2272213355))
        false)))

(check-sat)
