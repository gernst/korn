(set-logic HORN)

(declare-fun $main_if3046 (Int Int Int) Bool)
(declare-fun ackermann (Int Int Int) Bool)
(declare-fun $ackermann_if3043 (Int Int) Bool)
(declare-fun $ackermann_pre (Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int) Bool)
(declare-fun $main_if3045 (Int Int Int) Bool)
(declare-fun $ackermann_if3042 (Int Int) Bool)
(declare-fun $main_if3044 (Int Int Int) Bool)

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
        ($ackermann_if3042 m n))))

; ackermann precondition
(assert
  (forall ((m210150 Int) (n210151 Int))
    (=> (and (= n210151 0)
             ($ackermann_if3042 m210150 n210151))
        ($ackermann_pre (- m210150 1) 1))))

; post ackermann
(assert
  (forall ((m210150 Int) (n210151 Int) ($result210152 Int))
    (=> (and (ackermann (- m210150 1) 1 $result210152)
             (= n210151 0)
             ($ackermann_if3042 m210150 n210151))
        (ackermann m210150 n210151 $result210152))))

; if else
(assert
  (forall ((m210150 Int) (n210151 Int))
    (=> (and (not (= n210151 0))
             ($ackermann_if3042 m210150 n210151))
        ($ackermann_if3043 m210150 n210151))))

; ackermann precondition
(assert
  (forall ((m210153 Int) (n210154 Int))
    (=> (and ($ackermann_if3043 m210153 n210154))
        ($ackermann_pre m210153 (- n210154 1)))))

; ackermann precondition
(assert
  (forall ((m210153 Int) ($result210155 Int) (n210154 Int))
    (=> (and (ackermann m210153 (- n210154 1) $result210155)
             ($ackermann_if3043 m210153 n210154))
        ($ackermann_pre (- m210153 1) $result210155))))

; post ackermann
(assert
  (forall ((m210153 Int) (n210154 Int) ($result210156 Int) ($result210155 Int))
    (=> (and (ackermann (- m210153 1) $result210155 $result210156)
             (ackermann m210153 (- n210154 1) $result210155)
             ($ackermann_if3043 m210153 n210154))
        (ackermann m210153 n210154 $result210156))))

; if else
(assert
  (forall (($m2241 Int) ($n2242 Int) ($result2243 Int) ($int210157 Int))
    (=> (and (not (or (< $m2241 0) (> $m2241 3)))
             (= $m2241 $int210157)
             (<= (- 2147483648) $int210157)
             (<= $int210157 2147483647))
        ($main_if3044 $m2241 $n2242 $result2243))))

; if else
(assert
  (forall (($m2241210158 Int) ($n2242210159 Int) ($result2243210160 Int) ($int210161 Int))
    (=> (and (not (or (< $n2242210159 0) (> $n2242210159 23)))
             (= $n2242210159 $int210161)
             (<= (- 2147483648) $int210161)
             (<= $int210161 2147483647)
             ($main_if3044 $m2241210158 $n2242210159 $result2243210160))
        ($main_if3045 $m2241210158 $n2242210159 $result2243210160))))

; ackermann precondition
(assert
  (forall (($m2241210162 Int) ($n2242210163 Int) ($result2243210164 Int))
    (=> (and ($main_if3045 $m2241210162 $n2242210163 $result2243210164))
        ($ackermann_pre $m2241210162 $n2242210163))))

; label ERROR
(assert
  (forall (($m2241210162 Int) ($n2242210163 Int) ($result2243210164 Int) ($result210165 Int))
    (=> (and (not (or (< $m2241210162 2) (>= $result2243210164 4)))
             (= $result2243210164 $result210165)
             (ackermann $m2241210162 $n2242210163 $result210165)
             ($main_if3045 $m2241210162 $n2242210163 $result2243210164))
        ($main_ERROR $m2241210162 $n2242210163 $result2243210164))))

; error
(assert
  (forall (($m2241210166 Int) ($n2242210167 Int) ($result2243210168 Int))
    (=> (and ($main_ERROR $m2241210166 $n2242210167 $result2243210168))
        false)))

(check-sat)
