(set-logic HORN)

(declare-fun $main_if3103 (Int Int Int Int) Bool)
(declare-fun fibonacci (Int Int) Bool)
(declare-fun $fibonacci_if3101 (Int Int) Bool)
(declare-fun $fibonacci_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $fibonacci_if3102 (Int Int) Bool)

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
  (forall ((n Int) ($result213368 Int))
    (=> (and (fibonacci (- n 1) $result213368)
             (not (= n 1))
             (not (< n 1))
             ($fibonacci_pre n))
        ($fibonacci_pre (- n 2)))))

; post fibonacci
(assert
  (forall ((n Int) ($result213368 Int) ($result213369 Int))
    (=> (and (fibonacci (- n 2) $result213369)
             (fibonacci (- n 1) $result213368)
             (not (= n 1))
             (not (< n 1))
             ($fibonacci_pre n))
        (fibonacci n (+ $result213368 $result213369)))))

; if else
(assert
  (forall ((n Int) (n213370 Int))
    (=> (and ($fibonacci_if3101 n n213370))
        ($fibonacci_if3102 n n213370))))

; post fibonacci
(assert
  (forall ((n213371 Int) (n Int))
    (=> (and ($fibonacci_if3102 n n213371))
        (fibonacci n213371 0))))

; fibonacci precondition
(assert
  (forall (($x2275 Int) ($int213372 Int))
    (=> (and (= $x2275 $int213372)
             (<= (- 2147483648) $int213372)
             (<= $int213372 2147483647))
        ($fibonacci_pre $x2275))))

; label ERROR
(assert
  (forall (($x2275 Int) ($result2276 Int) ($result213373 Int) ($int213372 Int))
    (=> (and (not (or (< $x2275 8) (>= $result2276 34)))
             (= $result2276 $result213373)
             (fibonacci $x2275 $result213373)
             (= $x2275 $int213372)
             (<= (- 2147483648) $int213372)
             (<= $int213372 2147483647))
        ($main_ERROR $x2275 $result2276 $x2275 $result2276))))

; error
(assert
  (forall (($x2275 Int) ($result2276 Int) ($x2275213374 Int) ($result2276213375 Int))
    (=> (and ($main_ERROR $x2275 $result2276 $x2275213374 $result2276213375))
        false)))

(check-sat)
