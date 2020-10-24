(set-logic HORN)

(declare-fun $hanoi_if3148 (Int Int) Bool)
(declare-fun hanoi (Int Int) Bool)
(declare-fun $hanoi_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $main_if3149 (Int Int Int Int) Bool)
(declare-fun $main_if3150 (Int Int Int Int) Bool)

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
        ($hanoi_if3148 n n))))

; hanoi precondition
(assert
  (forall ((n213550 Int) (n Int))
    (=> (and ($hanoi_if3148 n n213550))
        ($hanoi_pre (- n213550 1)))))

; post hanoi
(assert
  (forall ((n213550 Int) ($result213551 Int) (n Int))
    (=> (and (hanoi (- n213550 1) $result213551)
             ($hanoi_if3148 n n213550))
        (hanoi n213550 (+ (* 2 $result213551) 1)))))

; if else
(assert
  (forall (($n2297 Int) ($result2298 Int) ($int213552 Int))
    (=> (and (not (or (< $n2297 1) (> $n2297 31)))
             (= $n2297 $int213552)
             (<= (- 2147483648) $int213552)
             (<= $int213552 2147483647))
        ($main_if3149 $n2297 $result2298 $n2297 $result2298))))

; hanoi precondition
(assert
  (forall (($n2297213553 Int) ($n2297 Int) ($result2298 Int) ($result2298213554 Int))
    (=> (and ($main_if3149 $n2297 $result2298 $n2297213553 $result2298213554))
        ($hanoi_pre $n2297213553))))

; label ERROR
(assert
  (forall (($result213555 Int) ($n2297213553 Int) ($n2297 Int) ($result2298 Int) ($result2298213554 Int))
    (=> (and (not (>= $result2298213554 $n2297213553))
             (= $result2298213554 $result213555)
             (hanoi $n2297213553 $result213555)
             ($main_if3149 $n2297 $result2298 $n2297213553 $result2298213554))
        ($main_ERROR $n2297 $result2298 $n2297213553 $result2298213554))))

; error
(assert
  (forall (($n2297 Int) ($result2298 Int) ($n2297213556 Int) ($result2298213557 Int))
    (=> (and ($main_ERROR $n2297 $result2298 $n2297213556 $result2298213557))
        false)))

(check-sat)
