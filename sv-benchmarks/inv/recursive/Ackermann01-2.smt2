(set-logic HORN)

(declare-fun $main_if3041 (Int Int Int) Bool)
(declare-fun ackermann (Int Int Int) Bool)
(declare-fun $ackermann_if3038 (Int Int) Bool)
(declare-fun $main_if3039 (Int Int Int) Bool)
(declare-fun $ackermann_pre (Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int) Bool)
(declare-fun $ackermann_if3037 (Int Int) Bool)
(declare-fun $main_if3040 (Int Int Int) Bool)

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
        ($ackermann_if3037 m n))))

; ackermann precondition
(assert
  (forall ((m210128 Int) (n210129 Int))
    (=> (and (= n210129 0)
             ($ackermann_if3037 m210128 n210129))
        ($ackermann_pre (- m210128 1) 1))))

; post ackermann
(assert
  (forall ((m210128 Int) (n210129 Int) ($result210130 Int))
    (=> (and (ackermann (- m210128 1) 1 $result210130)
             (= n210129 0)
             ($ackermann_if3037 m210128 n210129))
        (ackermann m210128 n210129 $result210130))))

; if else
(assert
  (forall ((m210128 Int) (n210129 Int))
    (=> (and (not (= n210129 0))
             ($ackermann_if3037 m210128 n210129))
        ($ackermann_if3038 m210128 n210129))))

; ackermann precondition
(assert
  (forall ((m210131 Int) (n210132 Int))
    (=> (and ($ackermann_if3038 m210131 n210132))
        ($ackermann_pre m210131 (- n210132 1)))))

; ackermann precondition
(assert
  (forall ((m210131 Int) ($result210133 Int) (n210132 Int))
    (=> (and (ackermann m210131 (- n210132 1) $result210133)
             ($ackermann_if3038 m210131 n210132))
        ($ackermann_pre (- m210131 1) $result210133))))

; post ackermann
(assert
  (forall ((m210131 Int) (n210132 Int) ($result210134 Int) ($result210133 Int))
    (=> (and (ackermann (- m210131 1) $result210133 $result210134)
             (ackermann m210131 (- n210132 1) $result210133)
             ($ackermann_if3038 m210131 n210132))
        (ackermann m210131 n210132 $result210134))))

; if else
(assert
  (forall (($m2238 Int) ($n2239 Int) ($result2240 Int) ($int210135 Int))
    (=> (and (not (or (< $m2238 0) (> $m2238 3)))
             (= $m2238 $int210135)
             (<= (- 2147483648) $int210135)
             (<= $int210135 2147483647))
        ($main_if3039 $m2238 $n2239 $result2240))))

; if else
(assert
  (forall (($m2238210136 Int) ($n2239210137 Int) ($result2240210138 Int) ($int210139 Int))
    (=> (and (not (or (< $n2239210137 0) (> $n2239210137 23)))
             (= $n2239210137 $int210139)
             (<= (- 2147483648) $int210139)
             (<= $int210139 2147483647)
             ($main_if3039 $m2238210136 $n2239210137 $result2240210138))
        ($main_if3040 $m2238210136 $n2239210137 $result2240210138))))

; ackermann precondition
(assert
  (forall (($m2238210140 Int) ($n2239210141 Int) ($result2240210142 Int))
    (=> (and ($main_if3040 $m2238210140 $n2239210141 $result2240210142))
        ($ackermann_pre $m2238210140 $n2239210141))))

; label ERROR
(assert
  (forall (($m2238210140 Int) ($n2239210141 Int) ($result2240210142 Int) ($result210143 Int))
    (=> (and (not (or (or (< $m2238210140 0) (< $n2239210141 0)) (>= $result2240210142 0)))
             (= $result2240210142 $result210143)
             (ackermann $m2238210140 $n2239210141 $result210143)
             ($main_if3040 $m2238210140 $n2239210141 $result2240210142))
        ($main_ERROR $m2238210140 $n2239210141 $result2240210142))))

; error
(assert
  (forall (($m2238210144 Int) ($n2239210145 Int) ($result2240210146 Int))
    (=> (and ($main_ERROR $m2238210144 $n2239210145 $result2240210146))
        false)))

(check-sat)
