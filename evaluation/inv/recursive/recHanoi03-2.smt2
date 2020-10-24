(set-logic HORN)

(declare-fun $hanoi_if3148 (Int) Bool)
(declare-fun hanoi (Int Int) Bool)
(declare-fun $hanoi_pre (Int) Bool)
(declare-fun $main_ERROR (Int Int) Bool)
(declare-fun $main_if3149 (Int Int) Bool)
(declare-fun $main_if3150 (Int Int) Bool)

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
        ($hanoi_if3148 n))))

; hanoi precondition
(assert
  (forall ((n210549 Int))
    (=> (and ($hanoi_if3148 n210549))
        ($hanoi_pre (- n210549 1)))))

; post hanoi
(assert
  (forall ((n210549 Int) ($result210550 Int))
    (=> (and (hanoi (- n210549 1) $result210550)
             ($hanoi_if3148 n210549))
        (hanoi n210549 (+ (* 2 $result210550) 1)))))

; if else
(assert
  (forall (($n2297 Int) ($result2298 Int) ($int210551 Int))
    (=> (and (not (or (< $n2297 1) (> $n2297 31)))
             (= $n2297 $int210551)
             (<= (- 2147483648) $int210551)
             (<= $int210551 2147483647))
        ($main_if3149 $n2297 $result2298))))

; hanoi precondition
(assert
  (forall (($n2297210552 Int) ($result2298210553 Int))
    (=> (and ($main_if3149 $n2297210552 $result2298210553))
        ($hanoi_pre $n2297210552))))

; label ERROR
(assert
  (forall (($n2297210552 Int) ($result2298210553 Int) ($result210554 Int))
    (=> (and (not (>= $result2298210553 $n2297210552))
             (= $result2298210553 $result210554)
             (hanoi $n2297210552 $result210554)
             ($main_if3149 $n2297210552 $result2298210553))
        ($main_ERROR $n2297210552 $result2298210553))))

; error
(assert
  (forall (($n2297210555 Int) ($result2298210556 Int))
    (=> (and ($main_ERROR $n2297210555 $result2298210556))
        false)))

(check-sat)
