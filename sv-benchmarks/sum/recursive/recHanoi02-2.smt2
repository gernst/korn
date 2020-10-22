(set-logic HORN)

(declare-fun $hanoi_if3145 (Int Int) Bool)
(declare-fun hanoi (Int Int) Bool)
(declare-fun $hanoi_pre (Int) Bool)
(declare-fun $main_if3146 (Int Int Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $main_if3147 (Int Int Int Int) Bool)

; post hanoi
(assert
  (forall ((n Int))
    (=> (and (= n 1)
             ($hanoi_pre n))
        (hanoi n 1))))

; if else
(assert
  (forall ((n Int))
    (=> (and (not (= n 1))
             ($hanoi_pre n))
        ($hanoi_if3145 n n))))

; hanoi precondition
(assert
  (forall ((n213540 Int) (n Int))
    (=> (and ($hanoi_if3145 n n213540))
        ($hanoi_pre (- n213540 1)))))

; post hanoi
(assert
  (forall ((n213540 Int) ($result213541 Int) (n Int))
    (=> (and (hanoi (- n213540 1) $result213541)
             ($hanoi_if3145 n n213540))
        (hanoi n213540 (+ (* 2 $result213541) 1)))))

; if else
(assert
  (forall (($n2295 Int) ($result2296 Int) ($int213542 Int))
    (=> (and (not (or (< $n2295 1) (> $n2295 31)))
             (= $n2295 $int213542)
             (<= (- 2147483648) $int213542)
             (<= $int213542 2147483647))
        ($main_if3146 $n2295 $result2296 $n2295 $result2296))))

; hanoi precondition
(assert
  (forall (($n2295213543 Int) ($n2295 Int) ($result2296 Int) ($result2296213544 Int))
    (=> (and ($main_if3146 $n2295 $result2296 $n2295213543 $result2296213544))
        ($hanoi_pre $n2295213543))))

; label ERROR
(assert
  (forall (($n2295213543 Int) ($result2296 Int) ($result2296213544 Int) ($result213545 Int) ($n2295 Int))
    (=> (and (not (>= $result2296213544 0))
             (= $result2296213544 $result213545)
             (hanoi $n2295213543 $result213545)
             ($main_if3146 $n2295 $result2296 $n2295213543 $result2296213544))
        ($main_ERROR $n2295 $result2296 $n2295213543 $result2296213544))))

; error
(assert
  (forall (($n2295 Int) ($result2296 Int) ($n2295213546 Int) ($result2296213547 Int))
    (=> (and ($main_ERROR $n2295 $result2296 $n2295213546 $result2296213547))
        false)))

(check-sat)
