(set-logic HORN)

(declare-fun $addition_if3069 (Int Int Int Int) Bool)
(declare-fun $addition_if3071 (Int Int Int Int) Bool)
(declare-fun addition (Int Int Int) Bool)
(declare-fun $addition_pre (Int Int) Bool)
(declare-fun $main_if3072 (Int Int Int Int Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int Int Int) Bool)
(declare-fun $addition_if3070 (Int Int Int Int) Bool)

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
        ($addition_if3069 m n m n))))

; addition precondition
(assert
  (forall ((m213263 Int) (n213264 Int) (m Int) (n Int))
    (=> (and (> n213264 0)
             ($addition_if3069 m n m213263 n213264))
        ($addition_pre (+ m213263 1) (- n213264 1)))))

; post addition
(assert
  (forall ((n213264 Int) (n Int) (m213263 Int) ($result213265 Int) (m Int))
    (=> (and (addition (+ m213263 1) (- n213264 1) $result213265)
             (> n213264 0)
             ($addition_if3069 m n m213263 n213264))
        (addition m213263 n213264 $result213265))))

; if else
(assert
  (forall ((m Int) (n Int) (m213263 Int) (n213264 Int))
    (=> (and (not (> n213264 0))
             ($addition_if3069 m n m213263 n213264))
        ($addition_if3070 m n m213263 n213264))))

; addition precondition
(assert
  (forall ((m213266 Int) (n213267 Int) (m Int) (n Int))
    (=> (and (< n213267 0)
             ($addition_if3070 m n m213266 n213267))
        ($addition_pre (- m213266 1) (+ n213267 1)))))

; post addition
(assert
  (forall ((n213267 Int) (n Int) ($result213268 Int) (m Int) (m213266 Int))
    (=> (and (addition (- m213266 1) (+ n213267 1) $result213268)
             (< n213267 0)
             ($addition_if3070 m n m213266 n213267))
        (addition m213266 n213267 $result213268))))

; if else
(assert
  (forall ((m Int) (n Int) (m213266 Int) (n213267 Int))
    (=> (and (not (< n213267 0))
             ($addition_if3070 m n m213266 n213267))
        ($addition_if3071 m n m213266 n213267))))

; post addition
(assert
  (forall ((m213269 Int) (n213270 Int) (m Int) (n Int))
    (=> (and ($addition_if3071 m n m213269 n213270))
        (addition m213269 n213270 0))))

; addition precondition
(assert
  (forall (($m2256 Int) ($n2257 Int) ($int213272 Int) ($int213271 Int))
    (=> (and (= $n2257 $int213272)
             (<= (- 2147483648) $int213272)
             (<= $int213272 2147483647)
             (= $m2256 $int213271)
             (<= (- 2147483648) $int213271)
             (<= $int213271 2147483647))
        ($addition_pre $m2256 $n2257))))

; label ERROR
(assert
  (forall (($result2258 Int) ($int213272 Int) ($m2256 Int) ($result213273 Int) ($n2257 Int) ($int213271 Int))
    (=> (and (not (or (or (< $m2256 100) (< $n2257 100)) (>= $result2258 200)))
             (= $result2258 $result213273)
             (addition $m2256 $n2257 $result213273)
             (= $n2257 $int213272)
             (<= (- 2147483648) $int213272)
             (<= $int213272 2147483647)
             (= $m2256 $int213271)
             (<= (- 2147483648) $int213271)
             (<= $int213271 2147483647))
        ($main_ERROR $m2256 $n2257 $result2258 $m2256 $n2257 $result2258))))

; error
(assert
  (forall (($result2258 Int) ($m2256 Int) ($result2258213276 Int) ($n2257 Int) ($n2257213275 Int) ($m2256213274 Int))
    (=> (and ($main_ERROR $m2256 $n2257 $result2258 $m2256213274 $n2257213275 $result2258213276))
        false)))

(check-sat)
