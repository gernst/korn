(set-logic HORN)

(declare-fun $isEven_pre (Int) Bool)
(declare-fun $isOdd_if3076 (Int Int) Bool)
(declare-fun $isOdd_if3075 (Int Int) Bool)
(declare-fun $isEven_if3078 (Int Int) Bool)
(declare-fun isEven (Int Int) Bool)
(declare-fun $isEven_if3077 (Int Int) Bool)
(declare-fun isOdd (Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int Int Int) Bool)
(declare-fun $isOdd_pre (Int) Bool)
(declare-fun $main_if3080 (Int Int Int Int Int Int) Bool)
(declare-fun $main_if3079 (Int Int Int Int Int Int) Bool)

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
  (forall ((n Int) ($result213291 Int))
    (=> (and (isEven (- n 1) $result213291)
             (not (= n 1))
             (not (= n 0))
             ($isOdd_pre n))
        (isOdd n $result213291))))

; if else
(assert
  (forall ((n Int) (n213292 Int))
    (=> (and ($isOdd_if3075 n n213292))
        ($isOdd_if3076 n n213292))))

; post isOdd
(assert
  (forall ((n213293 Int) (n Int))
    (=> (and ($isOdd_if3076 n n213293))
        (isOdd n213293 0))))

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
  (forall ((n Int) ($result213294 Int))
    (=> (and (isOdd (- n 1) $result213294)
             (not (= n 1))
             (not (= n 0))
             ($isEven_pre n))
        (isEven n $result213294))))

; if else
(assert
  (forall ((n Int) (n213295 Int))
    (=> (and ($isEven_if3077 n n213295))
        ($isEven_if3078 n n213295))))

; post isEven
(assert
  (forall ((n213296 Int) (n Int))
    (=> (and ($isEven_if3078 n n213296))
        (isEven n213296 0))))

; if else
(assert
  (forall (($n2261 Int) ($result2262 Int) ($mod2263 Int) ($int213297 Int))
    (=> (and (not (< $n2261 0))
             (= $n2261 $int213297)
             (<= (- 2147483648) $int213297)
             (<= $int213297 2147483647))
        ($main_if3079 $n2261 $result2262 $mod2263 $n2261 $result2262 $mod2263))))

; isOdd precondition
(assert
  (forall (($result2262213299 Int) ($n2261213298 Int) ($result2262 Int) ($n2261 Int) ($mod2263213300 Int) ($mod2263 Int))
    (=> (and ($main_if3079 $n2261 $result2262 $mod2263 $n2261213298 $result2262213299 $mod2263213300))
        ($isOdd_pre $n2261213298))))

; label ERROR
(assert
  (forall (($result2262213299 Int) ($n2261213298 Int) ($result2262 Int) ($mod2263213300 Int) ($mod2263 Int) ($n2261 Int) ($result213301 Int))
    (=> (and (not (or (< $result2262213299 0) (= $result2262213299 $mod2263213300)))
             (= $mod2263213300 (mod $n2261213298 2))
             (= $result2262213299 $result213301)
             (isOdd $n2261213298 $result213301)
             ($main_if3079 $n2261 $result2262 $mod2263 $n2261213298 $result2262213299 $mod2263213300))
        ($main_ERROR $n2261 $result2262 $mod2263 $n2261213298 $result2262213299 $mod2263213300))))

; error
(assert
  (forall (($mod2263 Int) ($result2262213303 Int) ($mod2263213304 Int) ($result2262 Int) ($n2261213302 Int) ($n2261 Int))
    (=> (and ($main_ERROR $n2261 $result2262 $mod2263 $n2261213302 $result2262213303 $mod2263213304))
        false)))

(check-sat)
