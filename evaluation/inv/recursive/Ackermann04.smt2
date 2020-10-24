(set-logic HORN)

(declare-fun ackermann (Int Int Int) Bool)
(declare-fun $ackermann_if3052 (Int Int) Bool)
(declare-fun $main_if3056 (Int Int Int) Bool)
(declare-fun $ackermann_pre (Int Int) Bool)
(declare-fun $ackermann_if3053 (Int Int) Bool)
(declare-fun $main_if3055 (Int Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int) Bool)
(declare-fun $main_if3054 (Int Int Int) Bool)

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
        ($ackermann_if3052 m n))))

; ackermann precondition
(assert
  (forall ((m210194 Int) (n210195 Int))
    (=> (and (= n210195 0)
             ($ackermann_if3052 m210194 n210195))
        ($ackermann_pre (- m210194 1) 1))))

; post ackermann
(assert
  (forall ((m210194 Int) (n210195 Int) ($result210196 Int))
    (=> (and (ackermann (- m210194 1) 1 $result210196)
             (= n210195 0)
             ($ackermann_if3052 m210194 n210195))
        (ackermann m210194 n210195 $result210196))))

; if else
(assert
  (forall ((m210194 Int) (n210195 Int))
    (=> (and (not (= n210195 0))
             ($ackermann_if3052 m210194 n210195))
        ($ackermann_if3053 m210194 n210195))))

; ackermann precondition
(assert
  (forall ((m210197 Int) (n210198 Int))
    (=> (and ($ackermann_if3053 m210197 n210198))
        ($ackermann_pre m210197 (- n210198 1)))))

; ackermann precondition
(assert
  (forall ((m210197 Int) ($result210199 Int) (n210198 Int))
    (=> (and (ackermann m210197 (- n210198 1) $result210199)
             ($ackermann_if3053 m210197 n210198))
        ($ackermann_pre (- m210197 1) $result210199))))

; post ackermann
(assert
  (forall ((m210197 Int) (n210198 Int) ($result210200 Int) ($result210199 Int))
    (=> (and (ackermann (- m210197 1) $result210199 $result210200)
             (ackermann m210197 (- n210198 1) $result210199)
             ($ackermann_if3053 m210197 n210198))
        (ackermann m210197 n210198 $result210200))))

; if else
(assert
  (forall (($m2247 Int) ($n2248 Int) ($result2249 Int) ($int210201 Int))
    (=> (and (not (or (< $m2247 0) (> $m2247 3)))
             (= $m2247 $int210201)
             (<= (- 2147483648) $int210201)
             (<= $int210201 2147483647))
        ($main_if3054 $m2247 $n2248 $result2249))))

; if else
(assert
  (forall (($m2247210202 Int) ($n2248210203 Int) ($result2249210204 Int) ($int210205 Int))
    (=> (and (not (or (< $n2248210203 0) (> $n2248210203 23)))
             (= $n2248210203 $int210205)
             (<= (- 2147483648) $int210205)
             (<= $int210205 2147483647)
             ($main_if3054 $m2247210202 $n2248210203 $result2249210204))
        ($main_if3055 $m2247210202 $n2248210203 $result2249210204))))

; ackermann precondition
(assert
  (forall (($m2247210206 Int) ($n2248210207 Int) ($result2249210208 Int))
    (=> (and ($main_if3055 $m2247210206 $n2248210207 $result2249210208))
        ($ackermann_pre $m2247210206 $n2248210207))))

; label ERROR
(assert
  (forall (($m2247210206 Int) ($n2248210207 Int) ($result2249210208 Int) ($result210209 Int))
    (=> (and (not (or (or (< $m2247210206 2) (< $n2248210207 2)) (>= $result2249210208 7)))
             (= $result2249210208 $result210209)
             (ackermann $m2247210206 $n2248210207 $result210209)
             ($main_if3055 $m2247210206 $n2248210207 $result2249210208))
        ($main_ERROR $m2247210206 $n2248210207 $result2249210208))))

; error
(assert
  (forall (($m2247210210 Int) ($n2248210211 Int) ($result2249210212 Int))
    (=> (and ($main_ERROR $m2247210210 $n2248210211 $result2249210212))
        false)))

(check-sat)
