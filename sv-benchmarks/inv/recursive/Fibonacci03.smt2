(set-logic HORN)

(declare-fun fibonacci (Int Int) Bool)
(declare-fun $fibonacci_if3094 (Int) Bool)
(declare-fun $fibonacci_pre (Int) Bool)
(declare-fun $main_if3097 (Int Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun $fibonacci_if3095 (Int) Bool)
(declare-fun $main_if3096 (Int Int) Bool)

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
  (forall ((n Int) ($result210345 Int))
    (=> (and (fibonacci (- n 1) $result210345)
             (not (= n 1))
             (not (< n 1))
             ($fibonacci_pre n))
        ($fibonacci_pre (- n 2)))))

; post fibonacci
(assert
  (forall ((n Int) ($result210345 Int) ($result210346 Int))
    (=> (and (fibonacci (- n 2) $result210346)
             (fibonacci (- n 1) $result210345)
             (not (= n 1))
             (not (< n 1))
             ($fibonacci_pre n))
        (fibonacci n (+ $result210345 $result210346)))))

; if else
(assert
  (forall ((n210347 Int))
    (=> (and ($fibonacci_if3094 n210347))
        ($fibonacci_if3095 n210347))))

; post fibonacci
(assert
  (forall ((n210348 Int))
    (=> (and ($fibonacci_if3095 n210348))
        (fibonacci n210348 0))))

; if else
(assert
  (forall (($x2271 Int) ($result2272 Int) ($int210349 Int))
    (=> (and (not (> $x2271 46))
             (= $x2271 $int210349)
             (<= (- 2147483648) $int210349)
             (<= $int210349 2147483647))
        ($main_if3096 $x2271 $result2272))))

; fibonacci precondition
(assert
  (forall (($x2271210350 Int) ($result2272210351 Int))
    (=> (and ($main_if3096 $x2271210350 $result2272210351))
        ($fibonacci_pre $x2271210350))))

; label ERROR
(assert
  (forall (($x2271210350 Int) ($result2272210351 Int) ($result210352 Int))
    (=> (and (not (or (< $x2271210350 9) (>= $result2272210351 34)))
             (= $result2272210351 $result210352)
             (fibonacci $x2271210350 $result210352)
             ($main_if3096 $x2271210350 $result2272210351))
        ($main_ERROR $x2271210350 $result2272210351))))

; error
(assert
  (forall (($x2271210353 Int) ($result2272210354 Int))
    (=> (and ($main_ERROR $x2271210353 $result2272210354))
        false)))

(check-sat)
