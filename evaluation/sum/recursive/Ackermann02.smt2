(set-logic HORN)

(declare-fun $main_if3046 (Int Int Int Int Int Int) Bool)
(declare-fun ackermann (Int Int Int) Bool)
(declare-fun $ackermann_if3043 (Int Int Int Int) Bool)
(declare-fun $ackermann_pre (Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int Int Int) Bool)
(declare-fun $main_if3045 (Int Int Int Int Int Int) Bool)
(declare-fun $ackermann_if3042 (Int Int Int Int) Bool)
(declare-fun $main_if3044 (Int Int Int Int Int Int) Bool)

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
        ($ackermann_if3042 m n m n))))

; ackermann precondition
(assert
  (forall ((m213151 Int) (n213152 Int) (m Int) (n Int))
    (=> (and (= n213152 0)
             ($ackermann_if3042 m n m213151 n213152))
        ($ackermann_pre (- m213151 1) 1))))

; post ackermann
(assert
  (forall ((m213151 Int) (n213152 Int) (n Int) ($result213153 Int) (m Int))
    (=> (and (ackermann (- m213151 1) 1 $result213153)
             (= n213152 0)
             ($ackermann_if3042 m n m213151 n213152))
        (ackermann m213151 n213152 $result213153))))

; if else
(assert
  (forall ((m Int) (n Int) (m213151 Int) (n213152 Int))
    (=> (and (not (= n213152 0))
             ($ackermann_if3042 m n m213151 n213152))
        ($ackermann_if3043 m n m213151 n213152))))

; ackermann precondition
(assert
  (forall ((m213154 Int) (n213155 Int) (m Int) (n Int))
    (=> (and ($ackermann_if3043 m n m213154 n213155))
        ($ackermann_pre m213154 (- n213155 1)))))

; ackermann precondition
(assert
  (forall ((n213155 Int) ($result213156 Int) (n Int) (m213154 Int) (m Int))
    (=> (and (ackermann m213154 (- n213155 1) $result213156)
             ($ackermann_if3043 m n m213154 n213155))
        ($ackermann_pre (- m213154 1) $result213156))))

; post ackermann
(assert
  (forall ((n213155 Int) ($result213156 Int) (n Int) (m Int) (m213154 Int) ($result213157 Int))
    (=> (and (ackermann (- m213154 1) $result213156 $result213157)
             (ackermann m213154 (- n213155 1) $result213156)
             ($ackermann_if3043 m n m213154 n213155))
        (ackermann m213154 n213155 $result213157))))

; if else
(assert
  (forall (($m2241 Int) ($n2242 Int) ($result2243 Int) ($int213158 Int))
    (=> (and (not (or (< $m2241 0) (> $m2241 3)))
             (= $m2241 $int213158)
             (<= (- 2147483648) $int213158)
             (<= $int213158 2147483647))
        ($main_if3044 $m2241 $n2242 $result2243 $m2241 $n2242 $result2243))))

; if else
(assert
  (forall (($int213162 Int) ($result2243213161 Int) ($m2241213159 Int) ($n2242 Int) ($m2241 Int) ($n2242213160 Int) ($result2243 Int))
    (=> (and (not (or (< $n2242213160 0) (> $n2242213160 23)))
             (= $n2242213160 $int213162)
             (<= (- 2147483648) $int213162)
             (<= $int213162 2147483647)
             ($main_if3044 $m2241 $n2242 $result2243 $m2241213159 $n2242213160 $result2243213161))
        ($main_if3045 $m2241 $n2242 $result2243 $m2241213159 $n2242213160 $result2243213161))))

; ackermann precondition
(assert
  (forall (($n2242 Int) ($m2241 Int) ($m2241213163 Int) ($n2242213164 Int) ($result2243 Int) ($result2243213165 Int))
    (=> (and ($main_if3045 $m2241 $n2242 $result2243 $m2241213163 $n2242213164 $result2243213165))
        ($ackermann_pre $m2241213163 $n2242213164))))

; label ERROR
(assert
  (forall (($n2242 Int) ($m2241 Int) ($n2242213164 Int) ($result2243 Int) ($result2243213165 Int) ($m2241213163 Int) ($result213166 Int))
    (=> (and (not (or (< $m2241213163 2) (>= $result2243213165 4)))
             (= $result2243213165 $result213166)
             (ackermann $m2241213163 $n2242213164 $result213166)
             ($main_if3045 $m2241 $n2242 $result2243 $m2241213163 $n2242213164 $result2243213165))
        ($main_ERROR $m2241 $n2242 $result2243 $m2241213163 $n2242213164 $result2243213165))))

; error
(assert
  (forall (($result2243213169 Int) ($n2242213168 Int) ($m2241213167 Int) ($n2242 Int) ($m2241 Int) ($result2243 Int))
    (=> (and ($main_ERROR $m2241 $n2242 $result2243 $m2241213167 $n2242213168 $result2243213169))
        false)))

(check-sat)
