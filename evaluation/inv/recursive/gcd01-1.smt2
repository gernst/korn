(set-logic HORN)

(declare-fun $gcd_pre (Int Int) Bool)
(declare-fun $main_if3108 (Int Int Int) Bool)
(declare-fun $gcd_if3104 (Int Int) Bool)
(declare-fun $gcd_if3106 (Int Int) Bool)
(declare-fun gcd (Int Int Int) Bool)
(declare-fun $gcd_if3105 (Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int) Bool)
(declare-fun $main_if3109 (Int Int Int) Bool)
(declare-fun $main_if3107 (Int Int Int) Bool)

; post gcd
(assert
  (forall ((y1 Int) (y2 Int))
    (=> (and (or (<= y1 0) (<= y2 0))
             ($gcd_pre y1 y2))
        (gcd y1 y2 0))))

; if else
(assert
  (forall ((y1 Int) (y2 Int))
    (=> (and (not (or (<= y1 0) (<= y2 0)))
             ($gcd_pre y1 y2))
        ($gcd_if3104 y1 y2))))

; post gcd
(assert
  (forall ((y1210377 Int) (y2210378 Int))
    (=> (and (= y1210377 y2210378)
             ($gcd_if3104 y1210377 y2210378))
        (gcd y1210377 y2210378 y1210377))))

; if else
(assert
  (forall ((y1210377 Int) (y2210378 Int))
    (=> (and (not (= y1210377 y2210378))
             ($gcd_if3104 y1210377 y2210378))
        ($gcd_if3105 y1210377 y2210378))))

; gcd precondition
(assert
  (forall ((y1210379 Int) (y2210380 Int))
    (=> (and (> y1210379 y2210380)
             ($gcd_if3105 y1210379 y2210380))
        ($gcd_pre (- y1210379 y2210380) y2210380))))

; post gcd
(assert
  (forall ((y1210379 Int) (y2210380 Int) ($result210381 Int))
    (=> (and (gcd (- y1210379 y2210380) y2210380 $result210381)
             (> y1210379 y2210380)
             ($gcd_if3105 y1210379 y2210380))
        (gcd y1210379 y2210380 $result210381))))

; if else
(assert
  (forall ((y1210379 Int) (y2210380 Int))
    (=> (and (not (> y1210379 y2210380))
             ($gcd_if3105 y1210379 y2210380))
        ($gcd_if3106 y1210379 y2210380))))

; gcd precondition
(assert
  (forall ((y1210382 Int) (y2210383 Int))
    (=> (and ($gcd_if3106 y1210382 y2210383))
        ($gcd_pre y1210382 (- y2210383 y1210382)))))

; post gcd
(assert
  (forall ((y1210382 Int) (y2210383 Int) ($result210384 Int))
    (=> (and (gcd y1210382 (- y2210383 y1210382) $result210384)
             ($gcd_if3106 y1210382 y2210383))
        (gcd y1210382 y2210383 $result210384))))

; if else
(assert
  (forall (($m2277 Int) ($n2278 Int) ($z2279 Int) ($int210385 Int))
    (=> (and (not (or (<= $m2277 0) (> $m2277 2147483647)))
             (= $m2277 $int210385)
             (<= (- 2147483648) $int210385)
             (<= $int210385 2147483647))
        ($main_if3107 $m2277 $n2278 $z2279))))

; if else
(assert
  (forall (($m2277210386 Int) ($n2278210387 Int) ($z2279210388 Int) ($int210389 Int))
    (=> (and (not (or (<= $n2278210387 0) (> $n2278210387 2147483647)))
             (= $n2278210387 $int210389)
             (<= (- 2147483648) $int210389)
             (<= $int210389 2147483647)
             ($main_if3107 $m2277210386 $n2278210387 $z2279210388))
        ($main_if3108 $m2277210386 $n2278210387 $z2279210388))))

; gcd precondition
(assert
  (forall (($m2277210390 Int) ($n2278210391 Int) ($z2279210392 Int))
    (=> (and ($main_if3108 $m2277210390 $n2278210391 $z2279210392))
        ($gcd_pre $m2277210390 $n2278210391))))

; label ERROR
(assert
  (forall (($m2277210390 Int) ($n2278210391 Int) ($z2279210392 Int) ($result210393 Int))
    (=> (and (< $z2279210392 1)
             (> $m2277210390 0)
             (> $n2278210391 0)
             (= $z2279210392 $result210393)
             (gcd $m2277210390 $n2278210391 $result210393)
             ($main_if3108 $m2277210390 $n2278210391 $z2279210392))
        ($main_ERROR $m2277210390 $n2278210391 $z2279210392))))

; error
(assert
  (forall (($m2277210394 Int) ($n2278210395 Int) ($z2279210396 Int))
    (=> (and ($main_ERROR $m2277210394 $n2278210395 $z2279210396))
        false)))

(check-sat)
