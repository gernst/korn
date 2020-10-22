(set-logic HORN)

(declare-fun ackermann (Int Int Int) Bool)
(declare-fun $main_if3050 (Int Int Int Int Int Int) Bool)
(declare-fun $ackermann_if3047 (Int Int Int Int) Bool)
(declare-fun $ackermann_pre (Int Int) Bool)
(declare-fun $ackermann_if3048 (Int Int Int Int) Bool)
(declare-fun $main_if3051 (Int Int Int Int Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int Int Int) Bool)
(declare-fun $main_if3049 (Int Int Int Int Int Int) Bool)

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
        ($ackermann_if3047 m n m n))))

; ackermann precondition
(assert
  (forall ((m213173 Int) (n213174 Int) (m Int) (n Int))
    (=> (and (= n213174 0)
             ($ackermann_if3047 m n m213173 n213174))
        ($ackermann_pre (- m213173 1) 1))))

; post ackermann
(assert
  (forall ((n Int) ($result213175 Int) (n213174 Int) (m213173 Int) (m Int))
    (=> (and (ackermann (- m213173 1) 1 $result213175)
             (= n213174 0)
             ($ackermann_if3047 m n m213173 n213174))
        (ackermann m213173 n213174 $result213175))))

; if else
(assert
  (forall ((m Int) (n Int) (m213173 Int) (n213174 Int))
    (=> (and (not (= n213174 0))
             ($ackermann_if3047 m n m213173 n213174))
        ($ackermann_if3048 m n m213173 n213174))))

; ackermann precondition
(assert
  (forall ((m213176 Int) (n213177 Int) (m Int) (n Int))
    (=> (and ($ackermann_if3048 m n m213176 n213177))
        ($ackermann_pre m213176 (- n213177 1)))))

; ackermann precondition
(assert
  (forall ((m213176 Int) (n Int) (n213177 Int) (m Int) ($result213178 Int))
    (=> (and (ackermann m213176 (- n213177 1) $result213178)
             ($ackermann_if3048 m n m213176 n213177))
        ($ackermann_pre (- m213176 1) $result213178))))

; post ackermann
(assert
  (forall (($result213179 Int) (m213176 Int) (n Int) (n213177 Int) (m Int) ($result213178 Int))
    (=> (and (ackermann (- m213176 1) $result213178 $result213179)
             (ackermann m213176 (- n213177 1) $result213178)
             ($ackermann_if3048 m n m213176 n213177))
        (ackermann m213176 n213177 $result213179))))

; if else
(assert
  (forall (($m2244 Int) ($n2245 Int) ($result2246 Int) ($int213180 Int))
    (=> (and (not (or (< $m2244 0) (> $m2244 3)))
             (= $m2244 $int213180)
             (<= (- 2147483648) $int213180)
             (<= $int213180 2147483647))
        ($main_if3049 $m2244 $n2245 $result2246 $m2244 $n2245 $result2246))))

; if else
(assert
  (forall (($n2245 Int) ($result2246 Int) ($n2245213182 Int) ($m2244 Int) ($result2246213183 Int) ($int213184 Int) ($m2244213181 Int))
    (=> (and (not (or (< $n2245213182 0) (> $n2245213182 23)))
             (= $n2245213182 $int213184)
             (<= (- 2147483648) $int213184)
             (<= $int213184 2147483647)
             ($main_if3049 $m2244 $n2245 $result2246 $m2244213181 $n2245213182 $result2246213183))
        ($main_if3050 $m2244 $n2245 $result2246 $m2244213181 $n2245213182 $result2246213183))))

; ackermann precondition
(assert
  (forall (($result2246 Int) ($n2245213186 Int) ($m2244213185 Int) ($m2244 Int) ($n2245 Int) ($result2246213187 Int))
    (=> (and ($main_if3050 $m2244 $n2245 $result2246 $m2244213185 $n2245213186 $result2246213187))
        ($ackermann_pre $m2244213185 $n2245213186))))

; label ERROR
(assert
  (forall (($result213188 Int) ($result2246 Int) ($n2245213186 Int) ($m2244213185 Int) ($m2244 Int) ($n2245 Int) ($result2246213187 Int))
    (=> (and (not (or (or (not (= $m2244213185 2)) (not (= $n2245213186 2))) (= $result2246213187 7)))
             (= $result2246213187 $result213188)
             (ackermann $m2244213185 $n2245213186 $result213188)
             ($main_if3050 $m2244 $n2245 $result2246 $m2244213185 $n2245213186 $result2246213187))
        ($main_ERROR $m2244 $n2245 $result2246 $m2244213185 $n2245213186 $result2246213187))))

; error
(assert
  (forall (($m2244213189 Int) ($n2245 Int) ($result2246 Int) ($m2244 Int) ($n2245213190 Int) ($result2246213191 Int))
    (=> (and ($main_ERROR $m2244 $n2245 $result2246 $m2244213189 $n2245213190 $result2246213191))
        false)))

(check-sat)
