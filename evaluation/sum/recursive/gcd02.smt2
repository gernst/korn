(set-logic HORN)

(declare-fun $divides_pre (Int Int) Bool)
(declare-fun $main_if3118 (Int Int Int Int Int Int) Bool)
(declare-fun $main_if3117 (Int Int Int Int Int Int) Bool)
(declare-fun divides (Int Int Int) Bool)
(declare-fun $divides_if3114 (Int Int Int Int) Bool)
(declare-fun $gcd_ERROR (Int Int Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int Int Int) Bool)
(declare-fun $main_if3116 (Int Int Int Int Int Int) Bool)
(declare-fun $main_if3115 (Int Int Int Int Int Int) Bool)
(declare-fun $gcd_pre (Int Int) Bool)
(declare-fun $gcd_if3112 (Int Int Int Int) Bool)
(declare-fun $divides_if3113 (Int Int Int Int) Bool)
(declare-fun gcd (Int Int Int) Bool)
(declare-fun $gcd_if3110 (Int Int Int Int) Bool)
(declare-fun $gcd_if3111 (Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((y1 Int) (y2 Int))
    (=> (and (or (<= y1 0) (<= y2 0))
             ($gcd_pre y1 y2))
        ($gcd_ERROR y1 y2 y1 y2))))

; error
(assert
  (forall ((y1 Int) (y2 Int) (y1213401 Int) (y2213402 Int))
    (=> (and ($gcd_ERROR y1 y2 y1213401 y2213402))
        false)))

; if else
(assert
  (forall ((y1 Int) (y2 Int))
    (=> (and (not (or (<= y1 0) (<= y2 0)))
             ($gcd_pre y1 y2))
        ($gcd_if3110 y1 y2 y1 y2))))

; post gcd
(assert
  (forall ((y1213403 Int) (y2213404 Int) (y1 Int) (y2 Int))
    (=> (and (= y1213403 y2213404)
             ($gcd_if3110 y1 y2 y1213403 y2213404))
        (gcd y1213403 y2213404 y1213403))))

; if else
(assert
  (forall ((y1 Int) (y2 Int) (y1213403 Int) (y2213404 Int))
    (=> (and (not (= y1213403 y2213404))
             ($gcd_if3110 y1 y2 y1213403 y2213404))
        ($gcd_if3111 y1 y2 y1213403 y2213404))))

; gcd precondition
(assert
  (forall ((y1213405 Int) (y2213406 Int) (y1 Int) (y2 Int))
    (=> (and (> y1213405 y2213406)
             ($gcd_if3111 y1 y2 y1213405 y2213406))
        ($gcd_pre (- y1213405 y2213406) y2213406))))

; post gcd
(assert
  (forall ((y2213406 Int) (y2 Int) (y1213405 Int) (y1 Int) ($result213407 Int))
    (=> (and (gcd (- y1213405 y2213406) y2213406 $result213407)
             (> y1213405 y2213406)
             ($gcd_if3111 y1 y2 y1213405 y2213406))
        (gcd y1213405 y2213406 $result213407))))

; if else
(assert
  (forall ((y1 Int) (y2 Int) (y1213405 Int) (y2213406 Int))
    (=> (and (not (> y1213405 y2213406))
             ($gcd_if3111 y1 y2 y1213405 y2213406))
        ($gcd_if3112 y1 y2 y1213405 y2213406))))

; gcd precondition
(assert
  (forall ((y1213408 Int) (y2213409 Int) (y1 Int) (y2 Int))
    (=> (and ($gcd_if3112 y1 y2 y1213408 y2213409))
        ($gcd_pre y1213408 (- y2213409 y1213408)))))

; post gcd
(assert
  (forall ((y1213408 Int) (y2 Int) (y1 Int) (y2213409 Int) ($result213410 Int))
    (=> (and (gcd y1213408 (- y2213409 y1213408) $result213410)
             ($gcd_if3112 y1 y2 y1213408 y2213409))
        (gcd y1213408 y2213409 $result213410))))

; post divides
(assert
  (forall ((n Int) (m Int))
    (=> (and (= m 0)
             ($divides_pre n m))
        (divides n m 1))))

; if else
(assert
  (forall ((n Int) (m Int))
    (=> (and (not (= m 0))
             ($divides_pre n m))
        ($divides_if3113 n m n m))))

; post divides
(assert
  (forall ((n213411 Int) (m213412 Int) (n Int) (m Int))
    (=> (and (> n213411 m213412)
             ($divides_if3113 n m n213411 m213412))
        (divides n213411 m213412 0))))

; if else
(assert
  (forall ((n Int) (m Int) (n213411 Int) (m213412 Int))
    (=> (and (not (> n213411 m213412))
             ($divides_if3113 n m n213411 m213412))
        ($divides_if3114 n m n213411 m213412))))

; divides precondition
(assert
  (forall ((n213413 Int) (m213414 Int) (n Int) (m Int))
    (=> (and ($divides_if3114 n m n213413 m213414))
        ($divides_pre n213413 (- m213414 n213413)))))

; post divides
(assert
  (forall ((m213414 Int) (n Int) (n213413 Int) ($result213415 Int) (m Int))
    (=> (and (divides n213413 (- m213414 n213413) $result213415)
             ($divides_if3114 n m n213413 m213414))
        (divides n213413 m213414 $result213415))))

; if else
(assert
  (forall (($m2280 Int) ($n2281 Int) ($z2282 Int) ($int213416 Int))
    (=> (and (not (or (<= $m2280 0) (> $m2280 2147483647)))
             (= $m2280 $int213416)
             (<= (- 2147483648) $int213416)
             (<= $int213416 2147483647))
        ($main_if3115 $m2280 $n2281 $z2282 $m2280 $n2281 $z2282))))

; if else
(assert
  (forall (($m2280213417 Int) ($int213420 Int) ($n2281 Int) ($z2282 Int) ($z2282213419 Int) ($m2280 Int) ($n2281213418 Int))
    (=> (and (not (or (<= $n2281213418 0) (> $n2281213418 2147483647)))
             (= $n2281213418 $int213420)
             (<= (- 2147483648) $int213420)
             (<= $int213420 2147483647)
             ($main_if3115 $m2280 $n2281 $z2282 $m2280213417 $n2281213418 $z2282213419))
        ($main_if3116 $m2280 $n2281 $z2282 $m2280213417 $n2281213418 $z2282213419))))

; gcd precondition
(assert
  (forall (($m2280 Int) ($z2282213423 Int) ($n2281213422 Int) ($n2281 Int) ($m2280213421 Int) ($z2282 Int))
    (=> (and (> $m2280213421 0)
             (> $n2281213422 0)
             ($main_if3116 $m2280 $n2281 $z2282 $m2280213421 $n2281213422 $z2282213423))
        ($gcd_pre $m2280213421 $n2281213422))))

; divides precondition
(assert
  (forall (($m2280 Int) ($z2282213423 Int) ($n2281213422 Int) ($n2281 Int) ($result213424 Int) ($m2280213421 Int) ($z2282 Int))
    (=> (and (= $z2282213423 $result213424)
             (gcd $m2280213421 $n2281213422 $result213424)
             (> $m2280213421 0)
             (> $n2281213422 0)
             ($main_if3116 $m2280 $n2281 $z2282 $m2280213421 $n2281213422 $z2282213423))
        ($divides_pre $z2282213423 $m2280213421))))

; label ERROR
(assert
  (forall (($result213425 Int) ($m2280 Int) ($z2282213423 Int) ($n2281213422 Int) ($n2281 Int) ($result213424 Int) ($m2280213421 Int) ($z2282 Int))
    (=> (and (= $result213425 0)
             (divides $z2282213423 $m2280213421 $result213425)
             (= $z2282213423 $result213424)
             (gcd $m2280213421 $n2281213422 $result213424)
             (> $m2280213421 0)
             (> $n2281213422 0)
             ($main_if3116 $m2280 $n2281 $z2282 $m2280213421 $n2281213422 $z2282213423))
        ($main_ERROR $m2280 $n2281 $z2282 $m2280213421 $n2281213422 $z2282213423))))

; error
(assert
  (forall (($m2280213426 Int) ($n2281 Int) ($z2282 Int) ($z2282213428 Int) ($n2281213427 Int) ($m2280 Int))
    (=> (and ($main_ERROR $m2280 $n2281 $z2282 $m2280213426 $n2281213427 $z2282213428))
        false)))

; if then
(assert
  (forall (($n2281213430 Int) ($m2280213429 Int) ($z2282213431 Int) ($n2281 Int) ($z2282 Int) ($m2280 Int))
    (=> (and ($main_if3117 $m2280 $n2281 $z2282 $m2280213429 $n2281213430 $z2282213431))
        ($main_if3118 $m2280 $n2281 $z2282 $m2280213429 $n2281213430 $z2282213431))))

; if else
(assert
  (forall (($m2280 Int) ($z2282213423 Int) ($n2281213422 Int) ($n2281 Int) ($m2280213421 Int) ($z2282 Int))
    (=> (and (not (and (> $m2280213421 0) (> $n2281213422 0)))
             ($main_if3116 $m2280 $n2281 $z2282 $m2280213421 $n2281213422 $z2282213423))
        ($main_if3118 $m2280 $n2281 $z2282 $m2280213421 $n2281213422 $z2282213423))))

(check-sat)
