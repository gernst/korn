(set-logic HORN)

(declare-fun ackermann (Int Int Int) Bool)
(declare-fun $main_if3050 (Int Int Int) Bool)
(declare-fun $ackermann_if3047 (Int Int) Bool)
(declare-fun $ackermann_pre (Int Int) Bool)
(declare-fun $ackermann_if3048 (Int Int) Bool)
(declare-fun $main_if3051 (Int Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int) Bool)
(declare-fun $main_if3049 (Int Int Int) Bool)

; post ackermann
(assert
  (forall ((m Int) (n Int))
    (=> (and (= m 0)
             ($ackermann_pre m n))
        (ackermann m n (+ n 1)))))

; if else
(assert
  (forall ((m Int) (n Int))
    (=> (and (not (= m 0))
             ($ackermann_pre m n))
        ($ackermann_if3047 m n))))

; ackermann precondition
(assert
  (forall ((m210172 Int) (n210173 Int))
    (=> (and (= n210173 0)
             ($ackermann_if3047 m210172 n210173))
        ($ackermann_pre (- m210172 1) 1))))

; post ackermann
(assert
  (forall ((m210172 Int) (n210173 Int) ($result210174 Int))
    (=> (and (ackermann (- m210172 1) 1 $result210174)
             (= n210173 0)
             ($ackermann_if3047 m210172 n210173))
        (ackermann m210172 n210173 $result210174))))

; if else
(assert
  (forall ((m210172 Int) (n210173 Int))
    (=> (and (not (= n210173 0))
             ($ackermann_if3047 m210172 n210173))
        ($ackermann_if3048 m210172 n210173))))

; ackermann precondition
(assert
  (forall ((m210175 Int) (n210176 Int))
    (=> (and ($ackermann_if3048 m210175 n210176))
        ($ackermann_pre m210175 (- n210176 1)))))

; ackermann precondition
(assert
  (forall ((m210175 Int) ($result210177 Int) (n210176 Int))
    (=> (and (ackermann m210175 (- n210176 1) $result210177)
             ($ackermann_if3048 m210175 n210176))
        ($ackermann_pre (- m210175 1) $result210177))))

; post ackermann
(assert
  (forall ((m210175 Int) (n210176 Int) ($result210178 Int) ($result210177 Int))
    (=> (and (ackermann (- m210175 1) $result210177 $result210178)
             (ackermann m210175 (- n210176 1) $result210177)
             ($ackermann_if3048 m210175 n210176))
        (ackermann m210175 n210176 $result210178))))

; if else
(assert
  (forall (($m2244 Int) ($n2245 Int) ($result2246 Int) ($int210179 Int))
    (=> (and (not (or (< $m2244 0) (> $m2244 3)))
             (= $m2244 $int210179)
             (<= (- 2147483648) $int210179)
             (<= $int210179 2147483647))
        ($main_if3049 $m2244 $n2245 $result2246))))

; if else
(assert
  (forall (($m2244210180 Int) ($n2245210181 Int) ($result2246210182 Int) ($int210183 Int))
    (=> (and (not (or (< $n2245210181 0) (> $n2245210181 23)))
             (= $n2245210181 $int210183)
             (<= (- 2147483648) $int210183)
             (<= $int210183 2147483647)
             ($main_if3049 $m2244210180 $n2245210181 $result2246210182))
        ($main_if3050 $m2244210180 $n2245210181 $result2246210182))))

; ackermann precondition
(assert
  (forall (($m2244210184 Int) ($n2245210185 Int) ($result2246210186 Int))
    (=> (and ($main_if3050 $m2244210184 $n2245210185 $result2246210186))
        ($ackermann_pre $m2244210184 $n2245210185))))

; label ERROR
(assert
  (forall (($m2244210184 Int) ($n2245210185 Int) ($result2246210186 Int) ($result210187 Int))
    (=> (and (not (or (or (not (= $m2244210184 2)) (not (= $n2245210185 2))) (= $result2246210186 7)))
             (= $result2246210186 $result210187)
             (ackermann $m2244210184 $n2245210185 $result210187)
             ($main_if3050 $m2244210184 $n2245210185 $result2246210186))
        ($main_ERROR $m2244210184 $n2245210185 $result2246210186))))

; error
(assert
  (forall (($m2244210188 Int) ($n2245210189 Int) ($result2246210190 Int))
    (=> (and ($main_ERROR $m2244210188 $n2245210189 $result2246210190))
        false)))

(check-sat)
