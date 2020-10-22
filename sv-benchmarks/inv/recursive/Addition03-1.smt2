(set-logic HORN)

(declare-fun $addition_if3069 (Int Int) Bool)
(declare-fun $addition_if3071 (Int Int) Bool)
(declare-fun addition (Int Int Int) Bool)
(declare-fun $addition_pre (Int Int) Bool)
(declare-fun $main_if3072 (Int Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int) Bool)
(declare-fun $addition_if3070 (Int Int) Bool)

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
        ($addition_if3069 m n))))

; addition precondition
(assert
  (forall ((m210262 Int) (n210263 Int))
    (=> (and (> n210263 0)
             ($addition_if3069 m210262 n210263))
        ($addition_pre (+ m210262 1) (- n210263 1)))))

; post addition
(assert
  (forall ((m210262 Int) (n210263 Int) ($result210264 Int))
    (=> (and (addition (+ m210262 1) (- n210263 1) $result210264)
             (> n210263 0)
             ($addition_if3069 m210262 n210263))
        (addition m210262 n210263 $result210264))))

; if else
(assert
  (forall ((m210262 Int) (n210263 Int))
    (=> (and (not (> n210263 0))
             ($addition_if3069 m210262 n210263))
        ($addition_if3070 m210262 n210263))))

; addition precondition
(assert
  (forall ((m210265 Int) (n210266 Int))
    (=> (and (< n210266 0)
             ($addition_if3070 m210265 n210266))
        ($addition_pre (- m210265 1) (+ n210266 1)))))

; post addition
(assert
  (forall ((m210265 Int) (n210266 Int) ($result210267 Int))
    (=> (and (addition (- m210265 1) (+ n210266 1) $result210267)
             (< n210266 0)
             ($addition_if3070 m210265 n210266))
        (addition m210265 n210266 $result210267))))

; if else
(assert
  (forall ((m210265 Int) (n210266 Int))
    (=> (and (not (< n210266 0))
             ($addition_if3070 m210265 n210266))
        ($addition_if3071 m210265 n210266))))

; post addition
(assert
  (forall ((m210268 Int) (n210269 Int))
    (=> (and ($addition_if3071 m210268 n210269))
        (addition m210268 n210269 0))))

; addition precondition
(assert
  (forall (($m2256 Int) ($n2257 Int) ($int210271 Int) ($int210270 Int))
    (=> (and (= $n2257 $int210271)
             (<= (- 2147483648) $int210271)
             (<= $int210271 2147483647)
             (= $m2256 $int210270)
             (<= (- 2147483648) $int210270)
             (<= $int210270 2147483647))
        ($addition_pre $m2256 $n2257))))

; label ERROR
(assert
  (forall (($int210270 Int) ($result2258 Int) ($result210272 Int) ($m2256 Int) ($n2257 Int) ($int210271 Int))
    (=> (and (not (or (or (< $m2256 100) (< $n2257 100)) (>= $result2258 200)))
             (= $result2258 $result210272)
             (addition $m2256 $n2257 $result210272)
             (= $n2257 $int210271)
             (<= (- 2147483648) $int210271)
             (<= $int210271 2147483647)
             (= $m2256 $int210270)
             (<= (- 2147483648) $int210270)
             (<= $int210270 2147483647))
        ($main_ERROR $m2256 $n2257 $result2258))))

; error
(assert
  (forall (($m2256210273 Int) ($n2257210274 Int) ($result2258210275 Int))
    (=> (and ($main_ERROR $m2256210273 $n2257210274 $result2258210275))
        false)))

(check-sat)
