(set-logic HORN)

(declare-fun $divides_pre (Int Int) Bool)
(declare-fun $main_if3118 (Int Int Int) Bool)
(declare-fun $main_if3117 (Int Int Int) Bool)
(declare-fun divides (Int Int Int) Bool)
(declare-fun $divides_if3114 (Int Int) Bool)
(declare-fun $gcd_ERROR (Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int) Bool)
(declare-fun $main_if3116 (Int Int Int) Bool)
(declare-fun $main_if3115 (Int Int Int) Bool)
(declare-fun $gcd_pre (Int Int) Bool)
(declare-fun $gcd_if3112 (Int Int) Bool)
(declare-fun $divides_if3113 (Int Int) Bool)
(declare-fun gcd (Int Int Int) Bool)
(declare-fun $gcd_if3110 (Int Int) Bool)
(declare-fun $gcd_if3111 (Int Int) Bool)

; label ERROR
(assert
  (forall ((y1 Int) (y2 Int))
    (=> (and (or (<= y1 0) (<= y2 0))
             ($gcd_pre y1 y2))
        ($gcd_ERROR y1 y2))))

; error
(assert
  (forall ((y1210400 Int) (y2210401 Int))
    (=> (and ($gcd_ERROR y1210400 y2210401))
        false)))

; if else
(assert
  (forall ((y1 Int) (y2 Int))
    (=> (and (not (or (<= y1 0) (<= y2 0)))
             ($gcd_pre y1 y2))
        ($gcd_if3110 y1 y2))))

; post gcd
(assert
  (forall ((y1210402 Int) (y2210403 Int))
    (=> (and (= y1210402 y2210403)
             ($gcd_if3110 y1210402 y2210403))
        (gcd y1210402 y2210403 y1210402))))

; if else
(assert
  (forall ((y1210402 Int) (y2210403 Int))
    (=> (and (not (= y1210402 y2210403))
             ($gcd_if3110 y1210402 y2210403))
        ($gcd_if3111 y1210402 y2210403))))

; gcd precondition
(assert
  (forall ((y1210404 Int) (y2210405 Int))
    (=> (and (> y1210404 y2210405)
             ($gcd_if3111 y1210404 y2210405))
        ($gcd_pre (- y1210404 y2210405) y2210405))))

; post gcd
(assert
  (forall ((y1210404 Int) (y2210405 Int) ($result210406 Int))
    (=> (and (gcd (- y1210404 y2210405) y2210405 $result210406)
             (> y1210404 y2210405)
             ($gcd_if3111 y1210404 y2210405))
        (gcd y1210404 y2210405 $result210406))))

; if else
(assert
  (forall ((y1210404 Int) (y2210405 Int))
    (=> (and (not (> y1210404 y2210405))
             ($gcd_if3111 y1210404 y2210405))
        ($gcd_if3112 y1210404 y2210405))))

; gcd precondition
(assert
  (forall ((y1210407 Int) (y2210408 Int))
    (=> (and ($gcd_if3112 y1210407 y2210408))
        ($gcd_pre y1210407 (- y2210408 y1210407)))))

; post gcd
(assert
  (forall ((y1210407 Int) (y2210408 Int) ($result210409 Int))
    (=> (and (gcd y1210407 (- y2210408 y1210407) $result210409)
             ($gcd_if3112 y1210407 y2210408))
        (gcd y1210407 y2210408 $result210409))))

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
        ($divides_if3113 n m))))

; post divides
(assert
  (forall ((n210410 Int) (m210411 Int))
    (=> (and (> n210410 m210411)
             ($divides_if3113 n210410 m210411))
        (divides n210410 m210411 0))))

; if else
(assert
  (forall ((n210410 Int) (m210411 Int))
    (=> (and (not (> n210410 m210411))
             ($divides_if3113 n210410 m210411))
        ($divides_if3114 n210410 m210411))))

; divides precondition
(assert
  (forall ((n210412 Int) (m210413 Int))
    (=> (and ($divides_if3114 n210412 m210413))
        ($divides_pre n210412 (- m210413 n210412)))))

; post divides
(assert
  (forall ((n210412 Int) (m210413 Int) ($result210414 Int))
    (=> (and (divides n210412 (- m210413 n210412) $result210414)
             ($divides_if3114 n210412 m210413))
        (divides n210412 m210413 $result210414))))

; if else
(assert
  (forall (($m2280 Int) ($n2281 Int) ($z2282 Int) ($int210415 Int))
    (=> (and (not (or (<= $m2280 0) (> $m2280 2147483647)))
             (= $m2280 $int210415)
             (<= (- 2147483648) $int210415)
             (<= $int210415 2147483647))
        ($main_if3115 $m2280 $n2281 $z2282))))

; if else
(assert
  (forall (($m2280210416 Int) ($n2281210417 Int) ($z2282210418 Int) ($int210419 Int))
    (=> (and (not (or (<= $n2281210417 0) (> $n2281210417 2147483647)))
             (= $n2281210417 $int210419)
             (<= (- 2147483648) $int210419)
             (<= $int210419 2147483647)
             ($main_if3115 $m2280210416 $n2281210417 $z2282210418))
        ($main_if3116 $m2280210416 $n2281210417 $z2282210418))))

; gcd precondition
(assert
  (forall (($m2280210420 Int) ($n2281210421 Int) ($z2282210422 Int))
    (=> (and (> $m2280210420 0)
             (> $n2281210421 0)
             ($main_if3116 $m2280210420 $n2281210421 $z2282210422))
        ($gcd_pre $m2280210420 $n2281210421))))

; divides precondition
(assert
  (forall (($z2282210422 Int) ($m2280210420 Int) ($result210423 Int) ($n2281210421 Int))
    (=> (and (= $z2282210422 $result210423)
             (gcd $m2280210420 $n2281210421 $result210423)
             (> $m2280210420 0)
             (> $n2281210421 0)
             ($main_if3116 $m2280210420 $n2281210421 $z2282210422))
        ($divides_pre $z2282210422 $m2280210420))))

; label ERROR
(assert
  (forall (($z2282210422 Int) ($n2281210421 Int) ($result210423 Int) ($result210424 Int) ($m2280210420 Int))
    (=> (and (= $result210424 0)
             (divides $z2282210422 $m2280210420 $result210424)
             (= $z2282210422 $result210423)
             (gcd $m2280210420 $n2281210421 $result210423)
             (> $m2280210420 0)
             (> $n2281210421 0)
             ($main_if3116 $m2280210420 $n2281210421 $z2282210422))
        ($main_ERROR $m2280210420 $n2281210421 $z2282210422))))

; error
(assert
  (forall (($m2280210425 Int) ($n2281210426 Int) ($z2282210427 Int))
    (=> (and ($main_ERROR $m2280210425 $n2281210426 $z2282210427))
        false)))

; if then
(assert
  (forall (($m2280210428 Int) ($n2281210429 Int) ($z2282210430 Int))
    (=> (and ($main_if3117 $m2280210428 $n2281210429 $z2282210430))
        ($main_if3118 $m2280210428 $n2281210429 $z2282210430))))

; if else
(assert
  (forall (($m2280210420 Int) ($n2281210421 Int) ($z2282210422 Int))
    (=> (and (not (and (> $m2280210420 0) (> $n2281210421 0)))
             ($main_if3116 $m2280210420 $n2281210421 $z2282210422))
        ($main_if3118 $m2280210420 $n2281210421 $z2282210422))))

(check-sat)
