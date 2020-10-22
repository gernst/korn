(set-logic HORN)

(declare-fun $main_if3041 (Int Int Int Int Int Int) Bool)
(declare-fun ackermann (Int Int Int) Bool)
(declare-fun $ackermann_if3038 (Int Int Int Int) Bool)
(declare-fun $main_if3039 (Int Int Int Int Int Int) Bool)
(declare-fun $ackermann_pre (Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int Int Int) Bool)
(declare-fun $ackermann_if3037 (Int Int Int Int) Bool)
(declare-fun $main_if3040 (Int Int Int Int Int Int) Bool)

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
        ($ackermann_if3037 m n m n))))

; ackermann precondition
(assert
  (forall ((m213129 Int) (n213130 Int) (m Int) (n Int))
    (=> (and (= n213130 0)
             ($ackermann_if3037 m n m213129 n213130))
        ($ackermann_pre (- m213129 1) 1))))

; post ackermann
(assert
  (forall ((m213129 Int) ($result213131 Int) (n Int) (n213130 Int) (m Int))
    (=> (and (ackermann (- m213129 1) 1 $result213131)
             (= n213130 0)
             ($ackermann_if3037 m n m213129 n213130))
        (ackermann m213129 n213130 $result213131))))

; if else
(assert
  (forall ((m Int) (n Int) (m213129 Int) (n213130 Int))
    (=> (and (not (= n213130 0))
             ($ackermann_if3037 m n m213129 n213130))
        ($ackermann_if3038 m n m213129 n213130))))

; ackermann precondition
(assert
  (forall ((m213132 Int) (n213133 Int) (m Int) (n Int))
    (=> (and ($ackermann_if3038 m n m213132 n213133))
        ($ackermann_pre m213132 (- n213133 1)))))

; ackermann precondition
(assert
  (forall ((n213133 Int) (n Int) (m213132 Int) ($result213134 Int) (m Int))
    (=> (and (ackermann m213132 (- n213133 1) $result213134)
             ($ackermann_if3038 m n m213132 n213133))
        ($ackermann_pre (- m213132 1) $result213134))))

; post ackermann
(assert
  (forall ((n213133 Int) (n Int) (m213132 Int) ($result213135 Int) ($result213134 Int) (m Int))
    (=> (and (ackermann (- m213132 1) $result213134 $result213135)
             (ackermann m213132 (- n213133 1) $result213134)
             ($ackermann_if3038 m n m213132 n213133))
        (ackermann m213132 n213133 $result213135))))

; if else
(assert
  (forall (($m2238 Int) ($n2239 Int) ($result2240 Int) ($int213136 Int))
    (=> (and (not (or (< $m2238 0) (> $m2238 3)))
             (= $m2238 $int213136)
             (<= (- 2147483648) $int213136)
             (<= $int213136 2147483647))
        ($main_if3039 $m2238 $n2239 $result2240 $m2238 $n2239 $result2240))))

; if else
(assert
  (forall (($result2240213139 Int) ($n2239 Int) ($n2239213138 Int) ($result2240 Int) ($m2238213137 Int) ($m2238 Int) ($int213140 Int))
    (=> (and (not (or (< $n2239213138 0) (> $n2239213138 23)))
             (= $n2239213138 $int213140)
             (<= (- 2147483648) $int213140)
             (<= $int213140 2147483647)
             ($main_if3039 $m2238 $n2239 $result2240 $m2238213137 $n2239213138 $result2240213139))
        ($main_if3040 $m2238 $n2239 $result2240 $m2238213137 $n2239213138 $result2240213139))))

; ackermann precondition
(assert
  (forall (($m2238213141 Int) ($n2239 Int) ($result2240213143 Int) ($n2239213142 Int) ($result2240 Int) ($m2238 Int))
    (=> (and ($main_if3040 $m2238 $n2239 $result2240 $m2238213141 $n2239213142 $result2240213143))
        ($ackermann_pre $m2238213141 $n2239213142))))

; label ERROR
(assert
  (forall (($m2238213141 Int) ($n2239 Int) ($n2239213142 Int) ($result2240 Int) ($m2238 Int) ($result213144 Int) ($result2240213143 Int))
    (=> (and (not (or (or (< $m2238213141 0) (< $n2239213142 0)) (>= $result2240213143 0)))
             (= $result2240213143 $result213144)
             (ackermann $m2238213141 $n2239213142 $result213144)
             ($main_if3040 $m2238 $n2239 $result2240 $m2238213141 $n2239213142 $result2240213143))
        ($main_ERROR $m2238 $n2239 $result2240 $m2238213141 $n2239213142 $result2240213143))))

; error
(assert
  (forall (($n2239 Int) ($result2240213147 Int) ($n2239213146 Int) ($m2238213145 Int) ($result2240 Int) ($m2238 Int))
    (=> (and ($main_ERROR $m2238 $n2239 $result2240 $m2238213145 $n2239213146 $result2240213147))
        false)))

(check-sat)
