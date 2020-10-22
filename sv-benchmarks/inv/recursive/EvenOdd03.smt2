(set-logic HORN)

(declare-fun $isOdd_if3081 (Int) Bool)
(declare-fun $isEven_pre (Int) Bool)
(declare-fun $main_if3086 (Int Int Int) Bool)
(declare-fun $isEven_if3084 (Int) Bool)
(declare-fun isEven (Int Int) Bool)
(declare-fun isOdd (Int Int) Bool)
(declare-fun $main_if3085 (Int Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int) Bool)
(declare-fun $isEven_if3083 (Int) Bool)
(declare-fun $isOdd_pre (Int) Bool)
(declare-fun $isOdd_if3082 (Int) Bool)

; post isOdd
(assert
  (forall ((n Int))
    (=> (and (= n 0)
             ($isOdd_pre n))
        (isOdd n 0))))

; post isOdd
(assert
  (forall ((n Int))
    (=> (and (= n 1)
             (not (= n 0))
             ($isOdd_pre n))
        (isOdd n 1))))

; isEven precondition
(assert
  (forall ((n Int))
    (=> (and (not (= n 1))
             (not (= n 0))
             ($isOdd_pre n))
        ($isEven_pre (- n 1)))))

; post isOdd
(assert
  (forall ((n Int) ($result210307 Int))
    (=> (and (isEven (- n 1) $result210307)
             (not (= n 1))
             (not (= n 0))
             ($isOdd_pre n))
        (isOdd n $result210307))))

; if else
(assert
  (forall ((n210308 Int))
    (=> (and ($isOdd_if3081 n210308))
        ($isOdd_if3082 n210308))))

; post isOdd
(assert
  (forall ((n210309 Int))
    (=> (and ($isOdd_if3082 n210309))
        (isOdd n210309 0))))

; post isEven
(assert
  (forall ((n Int))
    (=> (and (= n 0)
             ($isEven_pre n))
        (isEven n 1))))

; post isEven
(assert
  (forall ((n Int))
    (=> (and (= n 1)
             (not (= n 0))
             ($isEven_pre n))
        (isEven n 0))))

; isOdd precondition
(assert
  (forall ((n Int))
    (=> (and (not (= n 1))
             (not (= n 0))
             ($isEven_pre n))
        ($isOdd_pre (- n 1)))))

; post isEven
(assert
  (forall ((n Int) ($result210310 Int))
    (=> (and (isOdd (- n 1) $result210310)
             (not (= n 1))
             (not (= n 0))
             ($isEven_pre n))
        (isEven n $result210310))))

; if else
(assert
  (forall ((n210311 Int))
    (=> (and ($isEven_if3083 n210311))
        ($isEven_if3084 n210311))))

; post isEven
(assert
  (forall ((n210312 Int))
    (=> (and ($isEven_if3084 n210312))
        (isEven n210312 0))))

; if else
(assert
  (forall (($n2264 Int) ($result2265 Int) ($mod2266 Int) ($int210313 Int))
    (=> (and (not (< $n2264 0))
             (= $n2264 $int210313)
             (<= (- 2147483648) $int210313)
             (<= $int210313 2147483647))
        ($main_if3085 $n2264 $result2265 $mod2266))))

; isEven precondition
(assert
  (forall (($n2264210314 Int) ($result2265210315 Int) ($mod2266210316 Int))
    (=> (and ($main_if3085 $n2264210314 $result2265210315 $mod2266210316))
        ($isEven_pre $n2264210314))))

; label ERROR
(assert
  (forall (($n2264210314 Int) ($result2265210315 Int) ($mod2266210316 Int) ($result210317 Int))
    (=> (and (not (or (< $result2265210315 0) (= $result2265210315 $mod2266210316)))
             (= $mod2266210316 (mod $n2264210314 2))
             (= $result2265210315 $result210317)
             (isEven $n2264210314 $result210317)
             ($main_if3085 $n2264210314 $result2265210315 $mod2266210316))
        ($main_ERROR $n2264210314 $result2265210315 $mod2266210316))))

; error
(assert
  (forall (($n2264210318 Int) ($result2265210319 Int) ($mod2266210320 Int))
    (=> (and ($main_ERROR $n2264210318 $result2265210319 $mod2266210320))
        false)))

(check-sat)
