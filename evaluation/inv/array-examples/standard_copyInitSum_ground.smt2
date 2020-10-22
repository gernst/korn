(set-logic HORN)

(declare-fun $main_sum209 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv209 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_if63 (Int) Bool)
(declare-fun $main_inv210 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv212 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum210 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum211 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv211 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum212 ((Array Int Int) (Array Int Int) Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond3506 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond3506))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if63 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond3507 Int))
    (=> (and ($__VERIFIER_assert_if63 cond3507))
        (__VERIFIER_assert cond3507))))

; loop entry $main_inv209
(assert
  (forall (($x310 Int) ($i309 Int) ($int3508 Int) ($a306 (Array Int Int)) ($b307 (Array Int Int)) ($incr308 Int))
    (=> (and (= $i309 0)
             (= $incr308 $int3508)
             (<= (- 2147483648) $int3508)
             (<= $int3508 2147483647))
        ($main_inv209 $a306 $b307 $incr308 $i309 $x310))))

; loop term $main_sum209
(assert
  (forall (($x3103513 Int) ($b3073510 (Array Int Int)) ($incr3083511 Int) ($i3093512 Int) ($a3063509 (Array Int Int)))
    (=> (and (not (< $i3093512 100000))
             ($main_inv209 $a3063509 $b3073510 $incr3083511 $i3093512 $x3103513))
        ($main_sum209 $a3063509 $b3073510 $incr3083511 $i3093512 $x3103513))))

; forwards $main_inv209
(assert
  (forall (($x3103513 Int) ($b3073510 (Array Int Int)) ($incr3083511 Int) ($i3093512 Int) ($a3063509 (Array Int Int)))
    (=> (and (< $i3093512 100000)
             ($main_inv209 $a3063509 $b3073510 $incr3083511 $i3093512 $x3103513))
        ($main_inv209 (store $a3063509 $i3093512 42) $b3073510 $incr3083511 (+ $i3093512 1) $x3103513))))

; loop entry $main_inv210
(assert
  (forall (($x3103518 Int) ($a3063514 (Array Int Int)) ($b3073515 (Array Int Int)) ($i3093517 Int) ($incr3083516 Int))
    (=> (and ($main_sum209 $a3063514 $b3073515 $incr3083516 $i3093517 $x3103518))
        ($main_inv210 $a3063514 $b3073515 $incr3083516 0 $x3103518))))

; loop term $main_sum210
(assert
  (forall (($a3063519 (Array Int Int)) ($b3073520 (Array Int Int)) ($x3103523 Int) ($incr3083521 Int) ($i3093522 Int))
    (=> (and (not (< $i3093522 100000))
             ($main_inv210 $a3063519 $b3073520 $incr3083521 $i3093522 $x3103523))
        ($main_sum210 $a3063519 $b3073520 $incr3083521 $i3093522 $x3103523))))

; forwards $main_inv210
(assert
  (forall (($a3063519 (Array Int Int)) ($b3073520 (Array Int Int)) ($x3103523 Int) ($incr3083521 Int) ($i3093522 Int))
    (=> (and (< $i3093522 100000)
             ($main_inv210 $a3063519 $b3073520 $incr3083521 $i3093522 $x3103523))
        ($main_inv210 $a3063519 (store $b3073520 $i3093522 (select $a3063519 $i3093522)) $incr3083521 (+ $i3093522 1) $x3103523))))

; loop entry $main_inv211
(assert
  (forall (($b3073525 (Array Int Int)) ($a3063524 (Array Int Int)) ($x3103528 Int) ($i3093527 Int) ($incr3083526 Int))
    (=> (and ($main_sum210 $a3063524 $b3073525 $incr3083526 $i3093527 $x3103528))
        ($main_inv211 $a3063524 $b3073525 $incr3083526 0 $x3103528))))

; loop term $main_sum211
(assert
  (forall (($x3103533 Int) ($i3093532 Int) ($b3073530 (Array Int Int)) ($a3063529 (Array Int Int)) ($incr3083531 Int))
    (=> (and (not (< $i3093532 100000))
             ($main_inv211 $a3063529 $b3073530 $incr3083531 $i3093532 $x3103533))
        ($main_sum211 $a3063529 $b3073530 $incr3083531 $i3093532 $x3103533))))

; forwards $main_inv211
(assert
  (forall (($x3103533 Int) ($i3093532 Int) ($b3073530 (Array Int Int)) ($a3063529 (Array Int Int)) ($incr3083531 Int))
    (=> (and (< $i3093532 100000)
             ($main_inv211 $a3063529 $b3073530 $incr3083531 $i3093532 $x3103533))
        ($main_inv211 $a3063529 (store $b3073530 $i3093532 (+ (select $b3073530 $i3093532) $incr3083531)) $incr3083531 (+ $i3093532 1) $x3103533))))

; loop entry $main_inv212
(assert
  (forall (($incr3083536 Int) ($i3093537 Int) ($x3103538 Int) ($b3073535 (Array Int Int)) ($a3063534 (Array Int Int)))
    (=> (and ($main_sum211 $a3063534 $b3073535 $incr3083536 $i3093537 $x3103538))
        ($main_inv212 $a3063534 $b3073535 $incr3083536 $i3093537 0))))

; loop term $main_sum212
(assert
  (forall (($b3073540 (Array Int Int)) ($x3103543 Int) ($i3093542 Int) ($incr3083541 Int) ($a3063539 (Array Int Int)))
    (=> (and (not (< $x3103543 100000))
             ($main_inv212 $a3063539 $b3073540 $incr3083541 $i3093542 $x3103543))
        ($main_sum212 $a3063539 $b3073540 $incr3083541 $i3093542 $x3103543))))

; __VERIFIER_assert precondition
(assert
  (forall (($b3073540 (Array Int Int)) ($x3103543 Int) ($i3093542 Int) ($incr3083541 Int) ($a3063539 (Array Int Int)))
    (=> (and (< $x3103543 100000)
             ($main_inv212 $a3063539 $b3073540 $incr3083541 $i3093542 $x3103543))
        ($__VERIFIER_assert_pre (ite (= (select $b3073540 $x3103543) (+ 42 $incr3083541)) 1 0)))))

; forwards $main_inv212
(assert
  (forall (($b3073540 (Array Int Int)) ($x3103543 Int) ($i3093542 Int) ($incr3083541 Int) ($a3063539 (Array Int Int)))
    (=> (and (__VERIFIER_assert (ite (= (select $b3073540 $x3103543) (+ 42 $incr3083541)) 1 0))
             (< $x3103543 100000)
             ($main_inv212 $a3063539 $b3073540 $incr3083541 $i3093542 $x3103543))
        ($main_inv212 $a3063539 $b3073540 $incr3083541 $i3093542 (+ $x3103543 1)))))

(check-sat)
