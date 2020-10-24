(set-logic HORN)

(declare-fun $main_if3062 (Int Int Int) Bool)
(declare-fun $addition_if3059 (Int Int) Bool)
(declare-fun addition (Int Int Int) Bool)
(declare-fun $addition_if3058 (Int Int) Bool)
(declare-fun $addition_pre (Int Int) Bool)
(declare-fun $main_if3061 (Int Int Int) Bool)
(declare-fun $addition_if3057 (Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int) Bool)
(declare-fun $main_if3060 (Int Int Int) Bool)

; post addition
(assert
  (forall ((m Int) (n Int))
    (=> (and (= n 0)
             ($addition_pre m n))
        (addition m n m))))

; if else
(assert
  (forall ((m Int) (n Int))
    (=> (and (not (= n 0))
             ($addition_pre m n))
        ($addition_if3057 m n))))

; addition precondition
(assert
  (forall ((m210216 Int) (n210217 Int))
    (=> (and (> n210217 0)
             ($addition_if3057 m210216 n210217))
        ($addition_pre (+ m210216 1) (- n210217 1)))))

; post addition
(assert
  (forall ((m210216 Int) (n210217 Int) ($result210218 Int))
    (=> (and (addition (+ m210216 1) (- n210217 1) $result210218)
             (> n210217 0)
             ($addition_if3057 m210216 n210217))
        (addition m210216 n210217 $result210218))))

; if else
(assert
  (forall ((m210216 Int) (n210217 Int))
    (=> (and (not (> n210217 0))
             ($addition_if3057 m210216 n210217))
        ($addition_if3058 m210216 n210217))))

; addition precondition
(assert
  (forall ((m210219 Int) (n210220 Int))
    (=> (and (< n210220 0)
             ($addition_if3058 m210219 n210220))
        ($addition_pre (- m210219 1) (+ n210220 1)))))

; post addition
(assert
  (forall ((m210219 Int) (n210220 Int) ($result210221 Int))
    (=> (and (addition (- m210219 1) (+ n210220 1) $result210221)
             (< n210220 0)
             ($addition_if3058 m210219 n210220))
        (addition m210219 n210220 $result210221))))

; if else
(assert
  (forall ((m210219 Int) (n210220 Int))
    (=> (and (not (< n210220 0))
             ($addition_if3058 m210219 n210220))
        ($addition_if3059 m210219 n210220))))

; post addition
(assert
  (forall ((m210222 Int) (n210223 Int))
    (=> (and ($addition_if3059 m210222 n210223))
        (addition m210222 n210223 0))))

; if else
(assert
  (forall (($m2250 Int) ($n2251 Int) ($result2252 Int) ($int210224 Int))
    (=> (and (not (or (< $m2250 0) (> $m2250 1073741823)))
             (= $m2250 $int210224)
             (<= (- 2147483648) $int210224)
             (<= $int210224 2147483647))
        ($main_if3060 $m2250 $n2251 $result2252))))

; if else
(assert
  (forall (($m2250210225 Int) ($n2251210226 Int) ($result2252210227 Int) ($int210228 Int))
    (=> (and (not (or (< $n2251210226 0) (> $n2251210226 1073741823)))
             (= $n2251210226 $int210228)
             (<= (- 2147483648) $int210228)
             (<= $int210228 2147483647)
             ($main_if3060 $m2250210225 $n2251210226 $result2252210227))
        ($main_if3061 $m2250210225 $n2251210226 $result2252210227))))

; addition precondition
(assert
  (forall (($m2250210229 Int) ($n2251210230 Int) ($result2252210231 Int))
    (=> (and ($main_if3061 $m2250210229 $n2251210230 $result2252210231))
        ($addition_pre $m2250210229 $n2251210230))))

; label ERROR
(assert
  (forall (($m2250210229 Int) ($n2251210230 Int) ($result2252210231 Int) ($result210232 Int))
    (=> (and (not (= $result2252210231 (+ $m2250210229 $n2251210230)))
             (= $result2252210231 $result210232)
             (addition $m2250210229 $n2251210230 $result210232)
             ($main_if3061 $m2250210229 $n2251210230 $result2252210231))
        ($main_ERROR $m2250210229 $n2251210230 $result2252210231))))

; error
(assert
  (forall (($m2250210233 Int) ($n2251210234 Int) ($result2252210235 Int))
    (=> (and ($main_ERROR $m2250210233 $n2251210234 $result2252210235))
        false)))

(check-sat)
