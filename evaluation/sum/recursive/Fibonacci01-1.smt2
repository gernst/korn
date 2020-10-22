(set-logic HORN)

(declare-fun fibonacci (Int Int) Bool)
(declare-fun $main_if3089 (Int Int Int Int) Bool)
(declare-fun $fibonacci_if3087 (Int Int) Bool)
(declare-fun $fibonacci_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $main_if3090 (Int Int Int Int) Bool)
(declare-fun $fibonacci_if3088 (Int Int) Bool)

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
  (forall ((n Int) ($result213325 Int))
    (=> (and (fibonacci (- n 1) $result213325)
             (not (= n 1))
             (not (< n 1))
             ($fibonacci_pre n))
        ($fibonacci_pre (- n 2)))))

; post fibonacci
(assert
  (forall ((n Int) ($result213325 Int) ($result213326 Int))
    (=> (and (fibonacci (- n 2) $result213326)
             (fibonacci (- n 1) $result213325)
             (not (= n 1))
             (not (< n 1))
             ($fibonacci_pre n))
        (fibonacci n (+ $result213325 $result213326)))))

; if else
(assert
  (forall ((n Int) (n213327 Int))
    (=> (and ($fibonacci_if3087 n n213327))
        ($fibonacci_if3088 n n213327))))

; post fibonacci
(assert
  (forall ((n213328 Int) (n Int))
    (=> (and ($fibonacci_if3088 n n213328))
        (fibonacci n213328 0))))

; if else
(assert
  (forall (($x2267 Int) ($result2268 Int) ($int213329 Int))
    (=> (and (not (or (> $x2267 46) (= $x2267 (- 2147483648))))
             (= $x2267 $int213329)
             (<= (- 2147483648) $int213329)
             (<= $int213329 2147483647))
        ($main_if3089 $x2267 $result2268 $x2267 $result2268))))

; fibonacci precondition
(assert
  (forall (($x2267213330 Int) ($x2267 Int) ($result2268 Int) ($result2268213331 Int))
    (=> (and ($main_if3089 $x2267 $result2268 $x2267213330 $result2268213331))
        ($fibonacci_pre $x2267213330))))

; label ERROR
(assert
  (forall (($x2267 Int) ($result213332 Int) ($x2267213330 Int) ($result2268213331 Int) ($result2268 Int))
    (=> (and (not (>= $result2268213331 (- $x2267213330 1)))
             (= $result2268213331 $result213332)
             (fibonacci $x2267213330 $result213332)
             ($main_if3089 $x2267 $result2268 $x2267213330 $result2268213331))
        ($main_ERROR $x2267 $result2268 $x2267213330 $result2268213331))))

; error
(assert
  (forall (($x2267 Int) ($result2268 Int) ($x2267213333 Int) ($result2268213334 Int))
    (=> (and ($main_ERROR $x2267 $result2268 $x2267213333 $result2268213334))
        false)))

(check-sat)
