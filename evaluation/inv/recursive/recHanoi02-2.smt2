(set-logic HORN)

(declare-fun hanoi (Int Int) Bool)
(declare-fun $hanoi_pre (Int) Bool)
(declare-fun $hanoi_if3145 (Int) Bool)
(declare-fun $main_if3146 (Int Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun $main_if3147 (Int Int) Bool)

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
        ($hanoi_if3145 n))))

; hanoi precondition
(assert
  (forall ((n210539 Int))
    (=> (and ($hanoi_if3145 n210539))
        ($hanoi_pre (- n210539 1)))))

; post hanoi
(assert
  (forall ((n210539 Int) ($result210540 Int))
    (=> (and (hanoi (- n210539 1) $result210540)
             ($hanoi_if3145 n210539))
        (hanoi n210539 (+ (* 2 $result210540) 1)))))

; if else
(assert
  (forall (($n2295 Int) ($result2296 Int) ($int210541 Int))
    (=> (and (not (or (< $n2295 1) (> $n2295 31)))
             (= $n2295 $int210541)
             (<= (- 2147483648) $int210541)
             (<= $int210541 2147483647))
        ($main_if3146 $n2295 $result2296))))

; hanoi precondition
(assert
  (forall (($n2295210542 Int) ($result2296210543 Int))
    (=> (and ($main_if3146 $n2295210542 $result2296210543))
        ($hanoi_pre $n2295210542))))

; label ERROR
(assert
  (forall (($n2295210542 Int) ($result2296210543 Int) ($result210544 Int))
    (=> (and (not (>= $result2296210543 0))
             (= $result2296210543 $result210544)
             (hanoi $n2295210542 $result210544)
             ($main_if3146 $n2295210542 $result2296210543))
        ($main_ERROR $n2295210542 $result2296210543))))

; error
(assert
  (forall (($n2295210545 Int) ($result2296210546 Int))
    (=> (and ($main_ERROR $n2295210545 $result2296210546))
        false)))

(check-sat)
