(set-logic HORN)

(declare-fun $main_sum333 ((Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_inv334 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv333 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if89 (Int) Bool)
(declare-fun $main_sum334 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv335 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum335 ((Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond4374 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond4374))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if89 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond4375 Int))
    (=> (and ($__VERIFIER_assert_if89 cond4375))
        (__VERIFIER_assert cond4375))))

; loop entry $main_inv333
(assert
  (forall (($A384 (Array Int Int)) ($x386 Int))
        ($main_inv333 $A384 0 $x386)))

; loop term $main_sum333
(assert
  (forall (($A3844376 (Array Int Int)) ($i3854377 Int) ($x3864378 Int))
    (=> (and (not (< $i3854377 100000))
             ($main_inv333 $A3844376 $i3854377 $x3864378))
        ($main_sum333 $A3844376 $i3854377 $x3864378))))

; forwards $main_inv333
(assert
  (forall (($A3844376 (Array Int Int)) ($i3854377 Int) ($int4379 Int) ($x3864378 Int))
    (=> (and (<= (- 2147483648) $int4379)
             (<= $int4379 2147483647)
             (< $i3854377 100000)
             ($main_inv333 $A3844376 $i3854377 $x3864378))
        ($main_inv333 (store $A3844376 $i3854377 $int4379) (+ $i3854377 1) $x3864378))))

; loop entry $main_inv334
(assert
  (forall (($A3844380 (Array Int Int)) ($x3864382 Int) ($i3854381 Int))
    (=> (and ($main_sum333 $A3844380 $i3854381 $x3864382))
        ($main_inv334 $A3844380 0 $x3864382))))

; loop term $main_sum334
(assert
  (forall (($A3844383 (Array Int Int)) ($i3854384 Int) ($x3864385 Int))
    (=> (and (not (< $i3854384 (div 100000 2)))
             ($main_inv334 $A3844383 $i3854384 $x3864385))
        ($main_sum334 $A3844383 $i3854384 $x3864385))))

; forwards $main_inv334
(assert
  (forall (($A3844383 (Array Int Int)) ($i3854384 Int) ($x3864385 Int))
    (=> (and (< $i3854384 (div 100000 2))
             ($main_inv334 $A3844383 $i3854384 $x3864385))
        ($main_inv334 (store $A3844383 $i3854384 (select $A3844383 (- (- 100000 $i3854384) 1))) (+ $i3854384 1) $x3864385))))

; loop entry $main_inv335
(assert
  (forall (($A3844386 (Array Int Int)) ($i3854387 Int) ($x3864388 Int))
    (=> (and ($main_sum334 $A3844386 $i3854387 $x3864388))
        ($main_inv335 $A3844386 $i3854387 0))))

; loop term $main_sum335
(assert
  (forall (($A3844389 (Array Int Int)) ($i3854390 Int) ($x3864391 Int))
    (=> (and (not (< $x3864391 (div 100000 2)))
             ($main_inv335 $A3844389 $i3854390 $x3864391))
        ($main_sum335 $A3844389 $i3854390 $x3864391))))

; __VERIFIER_assert precondition
(assert
  (forall (($A3844389 (Array Int Int)) ($x3864391 Int) ($i3854390 Int))
    (=> (and (< $x3864391 (div 100000 2))
             ($main_inv335 $A3844389 $i3854390 $x3864391))
        ($__VERIFIER_assert_pre (ite (= (select $A3844389 $x3864391) (select $A3844389 (- (- 100000 $x3864391) 1))) 1 0)))))

; forwards $main_inv335
(assert
  (forall (($A3844389 (Array Int Int)) ($i3854390 Int) ($x3864391 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $A3844389 $x3864391) (select $A3844389 (- (- 100000 $x3864391) 1))) 1 0))
             (< $x3864391 (div 100000 2))
             ($main_inv335 $A3844389 $i3854390 $x3864391))
        ($main_inv335 $A3844389 $i3854390 (+ $x3864391 1)))))

(check-sat)
