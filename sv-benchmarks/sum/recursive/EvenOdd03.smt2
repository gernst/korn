(set-logic HORN)

(declare-fun $isEven_pre (Int) Bool)
(declare-fun $main_if3086 (Int Int Int Int Int Int) Bool)
(declare-fun $isEven_if3084 (Int Int) Bool)
(declare-fun isEven (Int Int) Bool)
(declare-fun $isOdd_if3081 (Int Int) Bool)
(declare-fun isOdd (Int Int) Bool)
(declare-fun $main_if3085 (Int Int Int Int Int Int) Bool)
(declare-fun $isEven_if3083 (Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int Int Int) Bool)
(declare-fun $isOdd_pre (Int) Bool)
(declare-fun $isOdd_if3082 (Int Int) Bool)

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
  (forall ((n Int) ($result213308 Int))
    (=> (and (isEven (- n 1) $result213308)
             (not (= n 1))
             (not (= n 0))
             ($isOdd_pre n))
        (isOdd n $result213308))))

; if else
(assert
  (forall ((n Int) (n213309 Int))
    (=> (and ($isOdd_if3081 n n213309))
        ($isOdd_if3082 n n213309))))

; post isOdd
(assert
  (forall ((n213310 Int) (n Int))
    (=> (and ($isOdd_if3082 n n213310))
        (isOdd n213310 0))))

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
  (forall ((n Int) ($result213311 Int))
    (=> (and (isOdd (- n 1) $result213311)
             (not (= n 1))
             (not (= n 0))
             ($isEven_pre n))
        (isEven n $result213311))))

; if else
(assert
  (forall ((n Int) (n213312 Int))
    (=> (and ($isEven_if3083 n n213312))
        ($isEven_if3084 n n213312))))

; post isEven
(assert
  (forall ((n213313 Int) (n Int))
    (=> (and ($isEven_if3084 n n213313))
        (isEven n213313 0))))

; if else
(assert
  (forall (($n2264 Int) ($result2265 Int) ($mod2266 Int) ($int213314 Int))
    (=> (and (not (< $n2264 0))
             (= $n2264 $int213314)
             (<= (- 2147483648) $int213314)
             (<= $int213314 2147483647))
        ($main_if3085 $n2264 $result2265 $mod2266 $n2264 $result2265 $mod2266))))

; isEven precondition
(assert
  (forall (($n2264 Int) ($n2264213315 Int) ($mod2266213317 Int) ($result2265 Int) ($result2265213316 Int) ($mod2266 Int))
    (=> (and ($main_if3085 $n2264 $result2265 $mod2266 $n2264213315 $result2265213316 $mod2266213317))
        ($isEven_pre $n2264213315))))

; label ERROR
(assert
  (forall (($n2264 Int) ($n2264213315 Int) ($mod2266213317 Int) ($result2265 Int) ($result2265213316 Int) ($mod2266 Int) ($result213318 Int))
    (=> (and (not (or (< $result2265213316 0) (= $result2265213316 $mod2266213317)))
             (= $mod2266213317 (mod $n2264213315 2))
             (= $result2265213316 $result213318)
             (isEven $n2264213315 $result213318)
             ($main_if3085 $n2264 $result2265 $mod2266 $n2264213315 $result2265213316 $mod2266213317))
        ($main_ERROR $n2264 $result2265 $mod2266 $n2264213315 $result2265213316 $mod2266213317))))

; error
(assert
  (forall (($n2264 Int) ($mod2266213321 Int) ($result2265 Int) ($mod2266 Int) ($n2264213319 Int) ($result2265213320 Int))
    (=> (and ($main_ERROR $n2264 $result2265 $mod2266 $n2264213319 $result2265213320 $mod2266213321))
        false)))

(check-sat)
