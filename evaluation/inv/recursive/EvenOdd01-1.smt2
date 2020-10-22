(set-logic HORN)

(declare-fun $isEven_if3077 (Int) Bool)
(declare-fun $isEven_pre (Int) Bool)
(declare-fun $isEven_if3078 (Int) Bool)
(declare-fun isEven (Int Int) Bool)
(declare-fun isOdd (Int Int) Bool)
(declare-fun $isOdd_if3075 (Int) Bool)
(declare-fun $main_ERROR (Int Int Int) Bool)
(declare-fun $isOdd_if3076 (Int) Bool)
(declare-fun $isOdd_pre (Int) Bool)
(declare-fun $main_if3080 (Int Int Int) Bool)
(declare-fun $main_if3079 (Int Int Int) Bool)

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
  (forall ((n Int) ($result210290 Int))
    (=> (and (isEven (- n 1) $result210290)
             (not (= n 1))
             (not (= n 0))
             ($isOdd_pre n))
        (isOdd n $result210290))))

; if else
(assert
  (forall ((n210291 Int))
    (=> (and ($isOdd_if3075 n210291))
        ($isOdd_if3076 n210291))))

; post isOdd
(assert
  (forall ((n210292 Int))
    (=> (and ($isOdd_if3076 n210292))
        (isOdd n210292 0))))

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
  (forall ((n Int) ($result210293 Int))
    (=> (and (isOdd (- n 1) $result210293)
             (not (= n 1))
             (not (= n 0))
             ($isEven_pre n))
        (isEven n $result210293))))

; if else
(assert
  (forall ((n210294 Int))
    (=> (and ($isEven_if3077 n210294))
        ($isEven_if3078 n210294))))

; post isEven
(assert
  (forall ((n210295 Int))
    (=> (and ($isEven_if3078 n210295))
        (isEven n210295 0))))

; if else
(assert
  (forall (($n2261 Int) ($result2262 Int) ($mod2263 Int) ($int210296 Int))
    (=> (and (not (< $n2261 0))
             (= $n2261 $int210296)
             (<= (- 2147483648) $int210296)
             (<= $int210296 2147483647))
        ($main_if3079 $n2261 $result2262 $mod2263))))

; isOdd precondition
(assert
  (forall (($n2261210297 Int) ($result2262210298 Int) ($mod2263210299 Int))
    (=> (and ($main_if3079 $n2261210297 $result2262210298 $mod2263210299))
        ($isOdd_pre $n2261210297))))

; label ERROR
(assert
  (forall (($n2261210297 Int) ($result2262210298 Int) ($mod2263210299 Int) ($result210300 Int))
    (=> (and (not (or (< $result2262210298 0) (= $result2262210298 $mod2263210299)))
             (= $mod2263210299 (mod $n2261210297 2))
             (= $result2262210298 $result210300)
             (isOdd $n2261210297 $result210300)
             ($main_if3079 $n2261210297 $result2262210298 $mod2263210299))
        ($main_ERROR $n2261210297 $result2262210298 $mod2263210299))))

; error
(assert
  (forall (($n2261210301 Int) ($result2262210302 Int) ($mod2263210303 Int))
    (=> (and ($main_ERROR $n2261210301 $result2262210302 $mod2263210303))
        false)))

(check-sat)
