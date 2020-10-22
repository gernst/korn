(set-logic HORN)

(declare-fun ackermann (Int Int Int) Bool)
(declare-fun $ackermann_if3052 (Int Int Int Int) Bool)
(declare-fun $main_if3056 (Int Int Int Int Int Int) Bool)
(declare-fun $ackermann_pre (Int Int) Bool)
(declare-fun $ackermann_if3053 (Int Int Int Int) Bool)
(declare-fun $main_if3055 (Int Int Int Int Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int Int Int) Bool)
(declare-fun $main_if3054 (Int Int Int Int Int Int) Bool)

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
        ($ackermann_if3052 m n m n))))

; ackermann precondition
(assert
  (forall ((m213195 Int) (n213196 Int) (m Int) (n Int))
    (=> (and (= n213196 0)
             ($ackermann_if3052 m n m213195 n213196))
        ($ackermann_pre (- m213195 1) 1))))

; post ackermann
(assert
  (forall (($result213197 Int) (n Int) (m213195 Int) (n213196 Int) (m Int))
    (=> (and (ackermann (- m213195 1) 1 $result213197)
             (= n213196 0)
             ($ackermann_if3052 m n m213195 n213196))
        (ackermann m213195 n213196 $result213197))))

; if else
(assert
  (forall ((m Int) (n Int) (m213195 Int) (n213196 Int))
    (=> (and (not (= n213196 0))
             ($ackermann_if3052 m n m213195 n213196))
        ($ackermann_if3053 m n m213195 n213196))))

; ackermann precondition
(assert
  (forall ((m213198 Int) (n213199 Int) (m Int) (n Int))
    (=> (and ($ackermann_if3053 m n m213198 n213199))
        ($ackermann_pre m213198 (- n213199 1)))))

; ackermann precondition
(assert
  (forall (($result213200 Int) (n213199 Int) (m Int) (m213198 Int) (n Int))
    (=> (and (ackermann m213198 (- n213199 1) $result213200)
             ($ackermann_if3053 m n m213198 n213199))
        ($ackermann_pre (- m213198 1) $result213200))))

; post ackermann
(assert
  (forall (($result213201 Int) ($result213200 Int) (n213199 Int) (m Int) (m213198 Int) (n Int))
    (=> (and (ackermann (- m213198 1) $result213200 $result213201)
             (ackermann m213198 (- n213199 1) $result213200)
             ($ackermann_if3053 m n m213198 n213199))
        (ackermann m213198 n213199 $result213201))))

; if else
(assert
  (forall (($m2247 Int) ($n2248 Int) ($result2249 Int) ($int213202 Int))
    (=> (and (not (or (< $m2247 0) (> $m2247 3)))
             (= $m2247 $int213202)
             (<= (- 2147483648) $int213202)
             (<= $int213202 2147483647))
        ($main_if3054 $m2247 $n2248 $result2249 $m2247 $n2248 $result2249))))

; if else
(assert
  (forall (($result2249 Int) ($result2249213205 Int) ($m2247 Int) ($int213206 Int) ($n2248 Int) ($m2247213203 Int) ($n2248213204 Int))
    (=> (and (not (or (< $n2248213204 0) (> $n2248213204 23)))
             (= $n2248213204 $int213206)
             (<= (- 2147483648) $int213206)
             (<= $int213206 2147483647)
             ($main_if3054 $m2247 $n2248 $result2249 $m2247213203 $n2248213204 $result2249213205))
        ($main_if3055 $m2247 $n2248 $result2249 $m2247213203 $n2248213204 $result2249213205))))

; ackermann precondition
(assert
  (forall (($m2247213207 Int) ($result2249 Int) ($result2249213209 Int) ($m2247 Int) ($n2248213208 Int) ($n2248 Int))
    (=> (and ($main_if3055 $m2247 $n2248 $result2249 $m2247213207 $n2248213208 $result2249213209))
        ($ackermann_pre $m2247213207 $n2248213208))))

; label ERROR
(assert
  (forall (($m2247213207 Int) ($result2249 Int) ($result2249213209 Int) ($m2247 Int) ($n2248213208 Int) ($result213210 Int) ($n2248 Int))
    (=> (and (not (or (or (< $m2247213207 2) (< $n2248213208 2)) (>= $result2249213209 7)))
             (= $result2249213209 $result213210)
             (ackermann $m2247213207 $n2248213208 $result213210)
             ($main_if3055 $m2247 $n2248 $result2249 $m2247213207 $n2248213208 $result2249213209))
        ($main_ERROR $m2247 $n2248 $result2249 $m2247213207 $n2248213208 $result2249213209))))

; error
(assert
  (forall (($result2249 Int) ($n2248213212 Int) ($m2247213211 Int) ($m2247 Int) ($n2248 Int) ($result2249213213 Int))
    (=> (and ($main_ERROR $m2247 $n2248 $result2249 $m2247213211 $n2248213212 $result2249213213))
        false)))

(check-sat)
