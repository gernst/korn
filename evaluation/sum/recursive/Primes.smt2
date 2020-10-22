(set-logic HORN)

(declare-fun $multiple_of_if3133 (Int Int Int Int) Bool)
(declare-fun is_prime (Int Int) Bool)
(declare-fun $mult_if3128 (Int Int Int Int) Bool)
(declare-fun $multiple_of_if3134 (Int Int Int Int) Bool)
(declare-fun $main_ERROR (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $is_prime__pre (Int Int) Bool)
(declare-fun $mult_if3130 (Int Int Int Int) Bool)
(declare-fun $is_prime__if3139 (Int Int Int Int) Bool)
(declare-fun $main_if3144 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $multiple_of_pre (Int Int) Bool)
(declare-fun $main_if3143 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if3141 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if3140 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $is_prime__if3138 (Int Int Int Int) Bool)
(declare-fun $is_prime__if3135 (Int Int Int Int) Bool)
(declare-fun $is_prime_pre (Int) Bool)
(declare-fun $is_prime__if3136 (Int Int Int Int) Bool)
(declare-fun multiple_of (Int Int Int) Bool)
(declare-fun $multiple_of_if3132 (Int Int Int Int) Bool)
(declare-fun is_prime_ (Int Int Int) Bool)
(declare-fun $main_if3142 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $mult_pre (Int Int) Bool)
(declare-fun $multiple_of_if3131 (Int Int Int Int) Bool)
(declare-fun mult (Int Int Int) Bool)
(declare-fun $is_prime__if3137 (Int Int Int Int) Bool)
(declare-fun $mult_if3129 (Int Int Int Int) Bool)

; mult precondition
(assert
  (forall ((n Int) (m Int))
    (=> (and (< m 0)
             ($mult_pre n m))
        ($mult_pre n (- m)))))

; post mult
(assert
  (forall ((n Int) (m Int) ($result213479 Int))
    (=> (and (mult n (- m) $result213479)
             (< m 0)
             ($mult_pre n m))
        (mult n m $result213479))))

; if else
(assert
  (forall ((n Int) (m Int))
    (=> (and (not (< m 0))
             ($mult_pre n m))
        ($mult_if3128 n m n m))))

; post mult
(assert
  (forall ((n213480 Int) (m213481 Int) (n Int) (m Int))
    (=> (and (= m213481 0)
             ($mult_if3128 n m n213480 m213481))
        (mult n213480 m213481 0))))

; if else
(assert
  (forall ((n Int) (m Int) (n213480 Int) (m213481 Int))
    (=> (and (not (= m213481 0))
             ($mult_if3128 n m n213480 m213481))
        ($mult_if3129 n m n213480 m213481))))

; post mult
(assert
  (forall ((n213482 Int) (m213483 Int) (n Int) (m Int))
    (=> (and (= m213483 1)
             ($mult_if3129 n m n213482 m213483))
        (mult n213482 m213483 1))))

; if else
(assert
  (forall ((n Int) (m Int) (n213482 Int) (m213483 Int))
    (=> (and (not (= m213483 1))
             ($mult_if3129 n m n213482 m213483))
        ($mult_if3130 n m n213482 m213483))))

; mult precondition
(assert
  (forall ((n213484 Int) (m213485 Int) (n Int) (m Int))
    (=> (and ($mult_if3130 n m n213484 m213485))
        ($mult_pre n213484 (- m213485 1)))))

; post mult
(assert
  (forall ((m213485 Int) (n Int) (n213484 Int) ($result213486 Int) (m Int))
    (=> (and (mult n213484 (- m213485 1) $result213486)
             ($mult_if3130 n m n213484 m213485))
        (mult n213484 m213485 (+ n213484 $result213486)))))

; multiple_of precondition
(assert
  (forall ((n Int) (m Int))
    (=> (and (< m 0)
             ($multiple_of_pre n m))
        ($multiple_of_pre n (- m)))))

; post multiple_of
(assert
  (forall ((n Int) (m Int) ($result213487 Int))
    (=> (and (multiple_of n (- m) $result213487)
             (< m 0)
             ($multiple_of_pre n m))
        (multiple_of n m $result213487))))

; if else
(assert
  (forall ((n Int) (m Int))
    (=> (and (not (< m 0))
             ($multiple_of_pre n m))
        ($multiple_of_if3131 n m n m))))

; multiple_of precondition
(assert
  (forall ((n213488 Int) (m213489 Int) (n Int) (m Int))
    (=> (and (< n213488 0)
             ($multiple_of_if3131 n m n213488 m213489))
        ($multiple_of_pre (- n213488) m213489))))

; post multiple_of
(assert
  (forall ((n Int) (n213488 Int) (m213489 Int) ($result213490 Int) (m Int))
    (=> (and (multiple_of (- n213488) m213489 $result213490)
             (< n213488 0)
             ($multiple_of_if3131 n m n213488 m213489))
        (multiple_of n213488 m213489 $result213490))))

; if else
(assert
  (forall ((n Int) (m Int) (n213488 Int) (m213489 Int))
    (=> (and (not (< n213488 0))
             ($multiple_of_if3131 n m n213488 m213489))
        ($multiple_of_if3132 n m n213488 m213489))))

; post multiple_of
(assert
  (forall ((n213491 Int) (m213492 Int) (n Int) (m Int))
    (=> (and (= m213492 0)
             ($multiple_of_if3132 n m n213491 m213492))
        (multiple_of n213491 m213492 0))))

; if else
(assert
  (forall ((n Int) (m Int) (n213491 Int) (m213492 Int))
    (=> (and (not (= m213492 0))
             ($multiple_of_if3132 n m n213491 m213492))
        ($multiple_of_if3133 n m n213491 m213492))))

; post multiple_of
(assert
  (forall ((n213493 Int) (m213494 Int) (n Int) (m Int))
    (=> (and (= n213493 0)
             ($multiple_of_if3133 n m n213493 m213494))
        (multiple_of n213493 m213494 1))))

; if else
(assert
  (forall ((n Int) (m Int) (n213493 Int) (m213494 Int))
    (=> (and (not (= n213493 0))
             ($multiple_of_if3133 n m n213493 m213494))
        ($multiple_of_if3134 n m n213493 m213494))))

; multiple_of precondition
(assert
  (forall ((n213495 Int) (m213496 Int) (n Int) (m Int))
    (=> (and ($multiple_of_if3134 n m n213495 m213496))
        ($multiple_of_pre (- n213495 m213496) m213496))))

; post multiple_of
(assert
  (forall ((n213495 Int) (n Int) (m213496 Int) (m Int) ($result213497 Int))
    (=> (and (multiple_of (- n213495 m213496) m213496 $result213497)
             ($multiple_of_if3134 n m n213495 m213496))
        (multiple_of n213495 m213496 $result213497))))

; is_prime_ precondition
(assert
  (forall ((n Int))
    (=> (and ($is_prime_pre n))
        ($is_prime__pre n (- n 1)))))

; post is_prime
(assert
  (forall ((n Int) ($result213498 Int))
    (=> (and (is_prime_ n (- n 1) $result213498)
             ($is_prime_pre n))
        (is_prime n $result213498))))

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
        ($is_prime__if3135 n m n m))))

; post is_prime_
(assert
  (forall ((n213499 Int) (m213500 Int) (n Int) (m Int))
    (=> (and (= n213499 2)
             ($is_prime__if3135 n m n213499 m213500))
        (is_prime_ n213499 m213500 1))))

; if else
(assert
  (forall ((n Int) (m Int) (n213499 Int) (m213500 Int))
    (=> (and (not (= n213499 2))
             ($is_prime__if3135 n m n213499 m213500))
        ($is_prime__if3136 n m n213499 m213500))))

; post is_prime_
(assert
  (forall ((n213501 Int) (m213502 Int) (n Int) (m Int))
    (=> (and (<= m213502 1)
             (> n213501 2)
             ($is_prime__if3136 n m n213501 m213502))
        (is_prime_ n213501 m213502 1))))

; multiple_of precondition
(assert
  (forall ((n213501 Int) (m213502 Int) (n Int) (m Int))
    (=> (and (not (<= m213502 1))
             (> n213501 2)
             ($is_prime__if3136 n m n213501 m213502))
        ($multiple_of_pre n213501 m213502))))

; post is_prime_
(assert
  (forall ((m Int) (m213502 Int) (n Int) ($result213503 Int) (n213501 Int))
    (=> (and (= $result213503 0)
             (multiple_of n213501 m213502 $result213503)
             (not (<= m213502 1))
             (> n213501 2)
             ($is_prime__if3136 n m n213501 m213502))
        (is_prime_ n213501 m213502 0))))

; if else
(assert
  (forall ((m Int) (m213502 Int) (n Int) ($result213503 Int) (n213501 Int))
    (=> (and (not (= $result213503 0))
             (multiple_of n213501 m213502 $result213503)
             (not (<= m213502 1))
             (> n213501 2)
             ($is_prime__if3136 n m n213501 m213502))
        ($is_prime__if3137 n m n213501 m213502))))

; is_prime_ precondition
(assert
  (forall ((n213504 Int) (m213505 Int) (n Int) (m Int))
    (=> (and ($is_prime__if3137 n m n213504 m213505))
        ($is_prime__pre n213504 (- m213505 1)))))

; post is_prime_
(assert
  (forall ((n Int) (m213505 Int) (n213504 Int) ($result213506 Int) (m Int))
    (=> (and (is_prime_ n213504 (- m213505 1) $result213506)
             ($is_prime__if3137 n m n213504 m213505))
        (is_prime_ n213504 m213505 $result213506))))

; if then
(assert
  (forall ((n Int) (m Int) (n213507 Int) (m213508 Int))
    (=> (and ($is_prime__if3138 n m n213507 m213508))
        ($is_prime__if3139 n m n213507 m213508))))

; if else
(assert
  (forall ((n Int) (m Int) (n213501 Int) (m213502 Int))
    (=> (and (not (> n213501 2))
             ($is_prime__if3136 n m n213501 m213502))
        ($is_prime__if3139 n m n213501 m213502))))

; post is_prime_
(assert
  (forall ((n213509 Int) (m213510 Int) (n Int) (m Int))
    (=> (and ($is_prime__if3139 n m n213509 m213510))
        (is_prime_ n213509 m213510 0))))

; if else
(assert
  (forall (($f22294 Int) ($int213511 Int) ($f12293 Int) ($result2292 Int) ($n2291 Int))
    (=> (and (not (or (< $n2291 1) (> $n2291 46340)))
             (= $n2291 $int213511)
             (<= (- 2147483648) $int213511)
             (<= $int213511 2147483647))
        ($main_if3140 $n2291 $result2292 $f12293 $f22294 $n2291 $result2292 $f12293 $f22294))))

; is_prime precondition
(assert
  (forall (($f12293213514 Int) ($n2291 Int) ($f22294 Int) ($n2291213512 Int) ($f12293 Int) ($result2292213513 Int) ($result2292 Int) ($f22294213515 Int))
    (=> (and ($main_if3140 $n2291 $result2292 $f12293 $f22294 $n2291213512 $result2292213513 $f12293213514 $f22294213515))
        ($is_prime_pre $n2291213512))))

; if else
(assert
  (forall (($f12293213514 Int) ($result213516 Int) ($n2291 Int) ($int213517 Int) ($f22294 Int) ($n2291213512 Int) ($f12293 Int) ($result2292213513 Int) ($result2292 Int) ($f22294213515 Int))
    (=> (and (not (or (< $f12293213514 1) (> $f12293213514 46340)))
             (= $f12293213514 $int213517)
             (<= (- 2147483648) $int213517)
             (<= $int213517 2147483647)
             (= $result2292213513 $result213516)
             (is_prime $n2291213512 $result213516)
             ($main_if3140 $n2291 $result2292 $f12293 $f22294 $n2291213512 $result2292213513 $f12293213514 $f22294213515))
        ($main_if3141 $n2291 $result2292 $f12293 $f22294 $n2291213512 $result2292213513 $f12293213514 $f22294213515))))

; if else
(assert
  (forall (($f22294 Int) ($f12293 Int) ($result2292213519 Int) ($f22294213521 Int) ($result2292 Int) ($f12293213520 Int) ($n2291 Int) ($n2291213518 Int) ($int213522 Int))
    (=> (and (not (or (< $f22294213521 1) (> $f22294213521 46340)))
             (= $f22294213521 $int213522)
             (<= (- 2147483648) $int213522)
             (<= $int213522 2147483647)
             ($main_if3141 $n2291 $result2292 $f12293 $f22294 $n2291213518 $result2292213519 $f12293213520 $f22294213521))
        ($main_if3142 $n2291 $result2292 $f12293 $f22294 $n2291213518 $result2292213519 $f12293213520 $f22294213521))))

; mult precondition
(assert
  (forall (($f22294 Int) ($f22294213526 Int) ($f12293 Int) ($n2291213523 Int) ($f12293213525 Int) ($result2292 Int) ($n2291 Int) ($result2292213524 Int))
    (=> (and (= $result2292213524 1)
             ($main_if3142 $n2291 $result2292 $f12293 $f22294 $n2291213523 $result2292213524 $f12293213525 $f22294213526))
        ($mult_pre $f12293213525 $f22294213526))))

; and left
(assert
  (forall (($f22294 Int) ($f22294213526 Int) ($f12293 Int) ($n2291213523 Int) ($f12293213525 Int) ($result2292 Int) ($n2291 Int) ($result2292213524 Int))
    (=> (and ($main_if3142 $n2291 $result2292 $f12293 $f22294 $n2291213523 $result2292213524 $f12293213525 $f22294213526))
        ($main_if3143 $n2291 $result2292 $f12293 $f22294 $n2291213523 $result2292213524 $f12293213525 $f22294213526))))

; and right
(assert
  (forall (($f22294 Int) ($f22294213526 Int) ($f12293 Int) ($result213527 Int) ($n2291213523 Int) ($f12293213525 Int) ($result2292 Int) ($n2291 Int) ($result2292213524 Int))
    (=> (and (mult $f12293213525 $f22294213526 $result213527)
             (= $result2292213524 1)
             ($main_if3142 $n2291 $result2292 $f12293 $f22294 $n2291213523 $result2292213524 $f12293213525 $f22294213526))
        ($main_if3143 $n2291 $result2292 $f12293 $f22294 $n2291213523 $result2292213524 $f12293213525 $f22294213526))))

; label ERROR
(assert
  (forall (($f22294 Int) ($f12293213530 Int) ($n2291213528 Int) ($result2292213529 Int) ($f12293 Int) ($result213527 Int) ($n2291213523 Int) ($f22294213531 Int) ($result2292 Int) ($n2291 Int) ($result2292213524 Int))
    (=> (and (= $result2292213524 1)
             (= $result213527 $n2291213523)
             (> $f12293213530 1)
             (> $f22294213531 1)
             ($main_if3143 $n2291 $result2292 $f12293 $f22294 $n2291213528 $result2292213529 $f12293213530 $f22294213531))
        ($main_ERROR $n2291 $result2292 $f12293 $f22294 $n2291213528 $result2292213529 $f12293213530 $f22294213531))))

; error
(assert
  (forall (($f22294 Int) ($f22294213535 Int) ($f12293213534 Int) ($n2291213532 Int) ($f12293 Int) ($n2291 Int) ($result2292213533 Int) ($result2292 Int))
    (=> (and ($main_ERROR $n2291 $result2292 $f12293 $f22294 $n2291213532 $result2292213533 $f12293213534 $f22294213535))
        false)))

(check-sat)
