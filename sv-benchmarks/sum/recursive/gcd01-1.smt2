(set-logic HORN)

(declare-fun $gcd_pre (Int Int) Bool)
(declare-fun $main_if3108 (Int Int Int Int Int Int) Bool)
(declare-fun $gcd_if3104 (Int Int Int Int) Bool)
(declare-fun $gcd_if3106 (Int Int Int Int) Bool)
(declare-fun gcd (Int Int Int) Bool)
(declare-fun $gcd_if3105 (Int Int Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int Int Int) Bool)
(declare-fun $main_if3109 (Int Int Int Int Int Int) Bool)
(declare-fun $main_if3107 (Int Int Int Int Int Int) Bool)

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
        ($gcd_if3104 y1 y2 y1 y2))))

; post gcd
(assert
  (forall ((y1213378 Int) (y2213379 Int) (y1 Int) (y2 Int))
    (=> (and (= y1213378 y2213379)
             ($gcd_if3104 y1 y2 y1213378 y2213379))
        (gcd y1213378 y2213379 y1213378))))

; if else
(assert
  (forall ((y1 Int) (y2 Int) (y1213378 Int) (y2213379 Int))
    (=> (and (not (= y1213378 y2213379))
             ($gcd_if3104 y1 y2 y1213378 y2213379))
        ($gcd_if3105 y1 y2 y1213378 y2213379))))

; gcd precondition
(assert
  (forall ((y1213380 Int) (y2213381 Int) (y1 Int) (y2 Int))
    (=> (and (> y1213380 y2213381)
             ($gcd_if3105 y1 y2 y1213380 y2213381))
        ($gcd_pre (- y1213380 y2213381) y2213381))))

; post gcd
(assert
  (forall ((y2 Int) (y2213381 Int) (y1 Int) ($result213382 Int) (y1213380 Int))
    (=> (and (gcd (- y1213380 y2213381) y2213381 $result213382)
             (> y1213380 y2213381)
             ($gcd_if3105 y1 y2 y1213380 y2213381))
        (gcd y1213380 y2213381 $result213382))))

; if else
(assert
  (forall ((y1 Int) (y2 Int) (y1213380 Int) (y2213381 Int))
    (=> (and (not (> y1213380 y2213381))
             ($gcd_if3105 y1 y2 y1213380 y2213381))
        ($gcd_if3106 y1 y2 y1213380 y2213381))))

; gcd precondition
(assert
  (forall ((y1213383 Int) (y2213384 Int) (y1 Int) (y2 Int))
    (=> (and ($gcd_if3106 y1 y2 y1213383 y2213384))
        ($gcd_pre y1213383 (- y2213384 y1213383)))))

; post gcd
(assert
  (forall (($result213385 Int) (y2 Int) (y2213384 Int) (y1213383 Int) (y1 Int))
    (=> (and (gcd y1213383 (- y2213384 y1213383) $result213385)
             ($gcd_if3106 y1 y2 y1213383 y2213384))
        (gcd y1213383 y2213384 $result213385))))

; if else
(assert
  (forall (($m2277 Int) ($n2278 Int) ($z2279 Int) ($int213386 Int))
    (=> (and (not (or (<= $m2277 0) (> $m2277 2147483647)))
             (= $m2277 $int213386)
             (<= (- 2147483648) $int213386)
             (<= $int213386 2147483647))
        ($main_if3107 $m2277 $n2278 $z2279 $m2277 $n2278 $z2279))))

; if else
(assert
  (forall (($z2279213389 Int) ($m2277 Int) ($n2278 Int) ($int213390 Int) ($m2277213387 Int) ($z2279 Int) ($n2278213388 Int))
    (=> (and (not (or (<= $n2278213388 0) (> $n2278213388 2147483647)))
             (= $n2278213388 $int213390)
             (<= (- 2147483648) $int213390)
             (<= $int213390 2147483647)
             ($main_if3107 $m2277 $n2278 $z2279 $m2277213387 $n2278213388 $z2279213389))
        ($main_if3108 $m2277 $n2278 $z2279 $m2277213387 $n2278213388 $z2279213389))))

; gcd precondition
(assert
  (forall (($z2279213393 Int) ($m2277 Int) ($z2279 Int) ($m2277213391 Int) ($n2278 Int) ($n2278213392 Int))
    (=> (and ($main_if3108 $m2277 $n2278 $z2279 $m2277213391 $n2278213392 $z2279213393))
        ($gcd_pre $m2277213391 $n2278213392))))

; label ERROR
(assert
  (forall (($z2279213393 Int) ($m2277 Int) ($z2279 Int) ($result213394 Int) ($m2277213391 Int) ($n2278 Int) ($n2278213392 Int))
    (=> (and (< $z2279213393 1)
             (> $m2277213391 0)
             (> $n2278213392 0)
             (= $z2279213393 $result213394)
             (gcd $m2277213391 $n2278213392 $result213394)
             ($main_if3108 $m2277 $n2278 $z2279 $m2277213391 $n2278213392 $z2279213393))
        ($main_ERROR $m2277 $n2278 $z2279 $m2277213391 $n2278213392 $z2279213393))))

; error
(assert
  (forall (($n2278213396 Int) ($m2277213395 Int) ($z2279213397 Int) ($m2277 Int) ($z2279 Int) ($n2278 Int))
    (=> (and ($main_ERROR $m2277 $n2278 $z2279 $m2277213395 $n2278213396 $z2279213397))
        false)))

(check-sat)
