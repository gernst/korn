(set-logic HORN)

(declare-fun $multiple_of_if3133 (Int Int) Bool)
(declare-fun is_prime (Int Int) Bool)
(declare-fun $mult_if3128 (Int Int) Bool)
(declare-fun $multiple_of_if3134 (Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int) Bool)
(declare-fun $is_prime__pre (Int Int) Bool)
(declare-fun $mult_if3130 (Int Int) Bool)
(declare-fun $is_prime__if3139 (Int Int) Bool)
(declare-fun $main_if3144 (Int Int Int Int) Bool)
(declare-fun $multiple_of_pre (Int Int) Bool)
(declare-fun $main_if3143 (Int Int Int Int) Bool)
(declare-fun $main_if3141 (Int Int Int Int) Bool)
(declare-fun $main_if3140 (Int Int Int Int) Bool)
(declare-fun $is_prime__if3138 (Int Int) Bool)
(declare-fun $is_prime__if3135 (Int Int) Bool)
(declare-fun $is_prime_pre (Int) Bool)
(declare-fun $is_prime__if3136 (Int Int) Bool)
(declare-fun multiple_of (Int Int Int) Bool)
(declare-fun $multiple_of_if3132 (Int Int) Bool)
(declare-fun is_prime_ (Int Int Int) Bool)
(declare-fun $main_if3142 (Int Int Int Int) Bool)
(declare-fun $mult_pre (Int Int) Bool)
(declare-fun $multiple_of_if3131 (Int Int) Bool)
(declare-fun mult (Int Int Int) Bool)
(declare-fun $is_prime__if3137 (Int Int) Bool)
(declare-fun $mult_if3129 (Int Int) Bool)

; mult precondition
(assert
  (forall ((n Int) (m Int))
    (=> (and (< m 0)
             ($mult_pre n m))
        ($mult_pre n (- m)))))

; post mult
(assert
  (forall ((n Int) (m Int) ($result210478 Int))
    (=> (and (mult n (- m) $result210478)
             (< m 0)
             ($mult_pre n m))
        (mult n m $result210478))))

; if else
(assert
  (forall ((n Int) (m Int))
    (=> (and (not (< m 0))
             ($mult_pre n m))
        ($mult_if3128 n m))))

; post mult
(assert
  (forall ((n210479 Int) (m210480 Int))
    (=> (and (= m210480 0)
             ($mult_if3128 n210479 m210480))
        (mult n210479 m210480 0))))

; if else
(assert
  (forall ((n210479 Int) (m210480 Int))
    (=> (and (not (= m210480 0))
             ($mult_if3128 n210479 m210480))
        ($mult_if3129 n210479 m210480))))

; post mult
(assert
  (forall ((n210481 Int) (m210482 Int))
    (=> (and (= m210482 1)
             ($mult_if3129 n210481 m210482))
        (mult n210481 m210482 1))))

; if else
(assert
  (forall ((n210481 Int) (m210482 Int))
    (=> (and (not (= m210482 1))
             ($mult_if3129 n210481 m210482))
        ($mult_if3130 n210481 m210482))))

; mult precondition
(assert
  (forall ((n210483 Int) (m210484 Int))
    (=> (and ($mult_if3130 n210483 m210484))
        ($mult_pre n210483 (- m210484 1)))))

; post mult
(assert
  (forall ((n210483 Int) (m210484 Int) ($result210485 Int))
    (=> (and (mult n210483 (- m210484 1) $result210485)
             ($mult_if3130 n210483 m210484))
        (mult n210483 m210484 (+ n210483 $result210485)))))

; multiple_of precondition
(assert
  (forall ((n Int) (m Int))
    (=> (and (< m 0)
             ($multiple_of_pre n m))
        ($multiple_of_pre n (- m)))))

; post multiple_of
(assert
  (forall ((n Int) (m Int) ($result210486 Int))
    (=> (and (multiple_of n (- m) $result210486)
             (< m 0)
             ($multiple_of_pre n m))
        (multiple_of n m $result210486))))

; if else
(assert
  (forall ((n Int) (m Int))
    (=> (and (not (< m 0))
             ($multiple_of_pre n m))
        ($multiple_of_if3131 n m))))

; multiple_of precondition
(assert
  (forall ((n210487 Int) (m210488 Int))
    (=> (and (< n210487 0)
             ($multiple_of_if3131 n210487 m210488))
        ($multiple_of_pre (- n210487) m210488))))

; post multiple_of
(assert
  (forall ((n210487 Int) (m210488 Int) ($result210489 Int))
    (=> (and (multiple_of (- n210487) m210488 $result210489)
             (< n210487 0)
             ($multiple_of_if3131 n210487 m210488))
        (multiple_of n210487 m210488 $result210489))))

; if else
(assert
  (forall ((n210487 Int) (m210488 Int))
    (=> (and (not (< n210487 0))
             ($multiple_of_if3131 n210487 m210488))
        ($multiple_of_if3132 n210487 m210488))))

; post multiple_of
(assert
  (forall ((n210490 Int) (m210491 Int))
    (=> (and (= m210491 0)
             ($multiple_of_if3132 n210490 m210491))
        (multiple_of n210490 m210491 0))))

; if else
(assert
  (forall ((n210490 Int) (m210491 Int))
    (=> (and (not (= m210491 0))
             ($multiple_of_if3132 n210490 m210491))
        ($multiple_of_if3133 n210490 m210491))))

; post multiple_of
(assert
  (forall ((n210492 Int) (m210493 Int))
    (=> (and (= n210492 0)
             ($multiple_of_if3133 n210492 m210493))
        (multiple_of n210492 m210493 1))))

; if else
(assert
  (forall ((n210492 Int) (m210493 Int))
    (=> (and (not (= n210492 0))
             ($multiple_of_if3133 n210492 m210493))
        ($multiple_of_if3134 n210492 m210493))))

; multiple_of precondition
(assert
  (forall ((n210494 Int) (m210495 Int))
    (=> (and ($multiple_of_if3134 n210494 m210495))
        ($multiple_of_pre (- n210494 m210495) m210495))))

; post multiple_of
(assert
  (forall ((n210494 Int) (m210495 Int) ($result210496 Int))
    (=> (and (multiple_of (- n210494 m210495) m210495 $result210496)
             ($multiple_of_if3134 n210494 m210495))
        (multiple_of n210494 m210495 $result210496))))

; is_prime_ precondition
(assert
  (forall ((n Int))
    (=> (and ($is_prime_pre n))
        ($is_prime__pre n (- n 1)))))

; post is_prime
(assert
  (forall ((n Int) ($result210497 Int))
    (=> (and (is_prime_ n (- n 1) $result210497)
             ($is_prime_pre n))
        (is_prime n $result210497))))

; post is_prime_
(assert
  (forall ((n Int) (m Int))
    (=> (and (<= n 1)
             ($is_prime__pre n m))
        (is_prime_ n m 0))))

; if else
(assert
  (forall ((n Int) (m Int))
    (=> (and (not (<= n 1))
             ($is_prime__pre n m))
        ($is_prime__if3135 n m))))

; post is_prime_
(assert
  (forall ((n210498 Int) (m210499 Int))
    (=> (and (= n210498 2)
             ($is_prime__if3135 n210498 m210499))
        (is_prime_ n210498 m210499 1))))

; if else
(assert
  (forall ((n210498 Int) (m210499 Int))
    (=> (and (not (= n210498 2))
             ($is_prime__if3135 n210498 m210499))
        ($is_prime__if3136 n210498 m210499))))

; post is_prime_
(assert
  (forall ((n210500 Int) (m210501 Int))
    (=> (and (<= m210501 1)
             (> n210500 2)
             ($is_prime__if3136 n210500 m210501))
        (is_prime_ n210500 m210501 1))))

; multiple_of precondition
(assert
  (forall ((n210500 Int) (m210501 Int))
    (=> (and (not (<= m210501 1))
             (> n210500 2)
             ($is_prime__if3136 n210500 m210501))
        ($multiple_of_pre n210500 m210501))))

; post is_prime_
(assert
  (forall ((n210500 Int) (m210501 Int) ($result210502 Int))
    (=> (and (= $result210502 0)
             (multiple_of n210500 m210501 $result210502)
             (not (<= m210501 1))
             (> n210500 2)
             ($is_prime__if3136 n210500 m210501))
        (is_prime_ n210500 m210501 0))))

; if else
(assert
  (forall ((n210500 Int) (m210501 Int) ($result210502 Int))
    (=> (and (not (= $result210502 0))
             (multiple_of n210500 m210501 $result210502)
             (not (<= m210501 1))
             (> n210500 2)
             ($is_prime__if3136 n210500 m210501))
        ($is_prime__if3137 n210500 m210501))))

; is_prime_ precondition
(assert
  (forall ((n210503 Int) (m210504 Int))
    (=> (and ($is_prime__if3137 n210503 m210504))
        ($is_prime__pre n210503 (- m210504 1)))))

; post is_prime_
(assert
  (forall ((n210503 Int) (m210504 Int) ($result210505 Int))
    (=> (and (is_prime_ n210503 (- m210504 1) $result210505)
             ($is_prime__if3137 n210503 m210504))
        (is_prime_ n210503 m210504 $result210505))))

; if then
(assert
  (forall ((n210506 Int) (m210507 Int))
    (=> (and ($is_prime__if3138 n210506 m210507))
        ($is_prime__if3139 n210506 m210507))))

; if else
(assert
  (forall ((n210500 Int) (m210501 Int))
    (=> (and (not (> n210500 2))
             ($is_prime__if3136 n210500 m210501))
        ($is_prime__if3139 n210500 m210501))))

; post is_prime_
(assert
  (forall ((n210508 Int) (m210509 Int))
    (=> (and ($is_prime__if3139 n210508 m210509))
        (is_prime_ n210508 m210509 0))))

; if else
(assert
  (forall (($f12293 Int) ($result2292 Int) ($n2291 Int) ($int210510 Int) ($f22294 Int))
    (=> (and (not (or (< $n2291 1) (> $n2291 46340)))
             (= $n2291 $int210510)
             (<= (- 2147483648) $int210510)
             (<= $int210510 2147483647))
        ($main_if3140 $n2291 $result2292 $f12293 $f22294))))

; is_prime precondition
(assert
  (forall (($n2291210511 Int) ($result2292210512 Int) ($f12293210513 Int) ($f22294210514 Int))
    (=> (and ($main_if3140 $n2291210511 $result2292210512 $f12293210513 $f22294210514))
        ($is_prime_pre $n2291210511))))

; if else
(assert
  (forall (($int210516 Int) ($f22294210514 Int) ($f12293210513 Int) ($n2291210511 Int) ($result2292210512 Int) ($result210515 Int))
    (=> (and (not (or (< $f12293210513 1) (> $f12293210513 46340)))
             (= $f12293210513 $int210516)
             (<= (- 2147483648) $int210516)
             (<= $int210516 2147483647)
             (= $result2292210512 $result210515)
             (is_prime $n2291210511 $result210515)
             ($main_if3140 $n2291210511 $result2292210512 $f12293210513 $f22294210514))
        ($main_if3141 $n2291210511 $result2292210512 $f12293210513 $f22294210514))))

; if else
(assert
  (forall (($n2291210517 Int) ($result2292210518 Int) ($int210521 Int) ($f12293210519 Int) ($f22294210520 Int))
    (=> (and (not (or (< $f22294210520 1) (> $f22294210520 46340)))
             (= $f22294210520 $int210521)
             (<= (- 2147483648) $int210521)
             (<= $int210521 2147483647)
             ($main_if3141 $n2291210517 $result2292210518 $f12293210519 $f22294210520))
        ($main_if3142 $n2291210517 $result2292210518 $f12293210519 $f22294210520))))

; mult precondition
(assert
  (forall (($f12293210524 Int) ($f22294210525 Int) ($result2292210523 Int) ($n2291210522 Int))
    (=> (and (= $result2292210523 1)
             ($main_if3142 $n2291210522 $result2292210523 $f12293210524 $f22294210525))
        ($mult_pre $f12293210524 $f22294210525))))

; and left
(assert
  (forall (($n2291210522 Int) ($result2292210523 Int) ($f12293210524 Int) ($f22294210525 Int))
    (=> (and ($main_if3142 $n2291210522 $result2292210523 $f12293210524 $f22294210525))
        ($main_if3143 $n2291210522 $result2292210523 $f12293210524 $f22294210525))))

; and right
(assert
  (forall (($f12293210524 Int) ($n2291210522 Int) ($result2292210523 Int) ($result210526 Int) ($f22294210525 Int))
    (=> (and (mult $f12293210524 $f22294210525 $result210526)
             (= $result2292210523 1)
             ($main_if3142 $n2291210522 $result2292210523 $f12293210524 $f22294210525))
        ($main_if3143 $n2291210522 $result2292210523 $f12293210524 $f22294210525))))

; label ERROR
(assert
  (forall (($n2291210522 Int) ($result210526 Int) ($result2292210528 Int) ($result2292210523 Int) ($n2291210527 Int) ($f22294210530 Int) ($f12293210529 Int))
    (=> (and (= $result2292210523 1)
             (= $result210526 $n2291210522)
             (> $f12293210529 1)
             (> $f22294210530 1)
             ($main_if3143 $n2291210527 $result2292210528 $f12293210529 $f22294210530))
        ($main_ERROR $n2291210527 $result2292210528 $f12293210529 $f22294210530))))

; error
(assert
  (forall (($n2291210531 Int) ($result2292210532 Int) ($f12293210533 Int) ($f22294210534 Int))
    (=> (and ($main_ERROR $n2291210531 $result2292210532 $f12293210533 $f22294210534))
        false)))

(check-sat)
