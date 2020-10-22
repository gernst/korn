(set-logic HORN)

(declare-fun $__VERIFIER_assert_if89 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv334 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum334 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_sum333 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv333 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum335 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_inv335 ((Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond6364 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond6364))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if89 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6365 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if89 cond cond6365))
        (__VERIFIER_assert cond6365))))

; loop entry $main_inv333
(assert
  (forall (($A384 (Array Int Int)) ($x386 Int))
        ($main_inv333 $A384 0 $x386)))

; loop term $main_sum333
(assert
  (forall (($A3846366 (Array Int Int)) ($i3856367 Int) ($x3866368 Int))
    (=> (and (not (< $i3856367 100000)))
        ($main_sum333 $A3846366 $i3856367 $x3866368 $A3846366 $i3856367 $x3866368))))

; forwards $main_inv333
(assert
  (forall (($A3846366 (Array Int Int)) ($i3856367 Int) ($int6369 Int) ($x3866368 Int))
    (=> (and (<= (- 2147483648) $int6369)
             (<= $int6369 2147483647)
             (< $i3856367 100000)
             ($main_inv333 $A3846366 $i3856367 $x3866368))
        ($main_inv333 (store $A3846366 $i3856367 $int6369) (+ $i3856367 1) $x3866368))))

; backwards $main_sum333
(assert
  (forall (($x3866372 Int) ($i3856371 Int) ($x3866368 Int) ($int6369 Int) ($A3846366 (Array Int Int)) ($A3846370 (Array Int Int)) ($i3856367 Int))
    (=> (and ($main_sum333 (store $A3846366 $i3856367 $int6369) (+ $i3856367 1) $x3866368 $A3846370 $i3856371 $x3866372)
             (<= (- 2147483648) $int6369)
             (<= $int6369 2147483647)
             (< $i3856367 100000))
        ($main_sum333 $A3846366 $i3856367 $x3866368 $A3846370 $i3856371 $x3866372))))

; loop entry $main_inv334
(assert
  (forall (($A384 (Array Int Int)) ($x386 Int) ($i3856374 Int) ($A3846373 (Array Int Int)) ($x3866375 Int))
    (=> (and ($main_sum333 $A384 0 $x386 $A3846373 $i3856374 $x3866375))
        ($main_inv334 $A3846373 0 $x3866375))))

; loop term $main_sum334
(assert
  (forall (($A3846376 (Array Int Int)) ($i3856377 Int) ($x3866378 Int))
    (=> (and (not (< $i3856377 (div 100000 2))))
        ($main_sum334 $A3846376 $i3856377 $x3866378 $A3846376 $i3856377 $x3866378))))

; forwards $main_inv334
(assert
  (forall (($A3846376 (Array Int Int)) ($i3856377 Int) ($x3866378 Int))
    (=> (and (< $i3856377 (div 100000 2))
             ($main_inv334 $A3846376 $i3856377 $x3866378))
        ($main_inv334 (store $A3846376 $i3856377 (select $A3846376 (- (- 100000 $i3856377) 1))) (+ $i3856377 1) $x3866378))))

; backwards $main_sum334
(assert
  (forall (($x3866378 Int) ($x3866381 Int) ($A3846376 (Array Int Int)) ($i3856380 Int) ($i3856377 Int) ($A3846379 (Array Int Int)))
    (=> (and ($main_sum334 (store $A3846376 $i3856377 (select $A3846376 (- (- 100000 $i3856377) 1))) (+ $i3856377 1) $x3866378 $A3846379 $i3856380 $x3866381)
             (< $i3856377 (div 100000 2)))
        ($main_sum334 $A3846376 $i3856377 $x3866378 $A3846379 $i3856380 $x3866381))))

; loop entry $main_inv335
(assert
  (forall (($A384 (Array Int Int)) ($i3856383 Int) ($x386 Int) ($i3856374 Int) ($A3846382 (Array Int Int)) ($A3846373 (Array Int Int)) ($x3866384 Int) ($x3866375 Int))
    (=> (and ($main_sum334 $A3846373 0 $x3866375 $A3846382 $i3856383 $x3866384)
             ($main_sum333 $A384 0 $x386 $A3846373 $i3856374 $x3866375))
        ($main_inv335 $A3846382 $i3856383 0))))

; loop term $main_sum335
(assert
  (forall (($A3846385 (Array Int Int)) ($i3856386 Int) ($x3866387 Int))
    (=> (and (not (< $x3866387 (div 100000 2))))
        ($main_sum335 $A3846385 $i3856386 $x3866387 $A3846385 $i3856386 $x3866387))))

; __VERIFIER_assert precondition
(assert
  (forall (($A3846385 (Array Int Int)) ($x3866387 Int) ($i3856386 Int))
    (=> (and (< $x3866387 (div 100000 2))
             ($main_inv335 $A3846385 $i3856386 $x3866387))
        ($__VERIFIER_assert_pre (ite (= (select $A3846385 $x3866387) (select $A3846385 (- (- 100000 $x3866387) 1))) 1 0)))))

; forwards $main_inv335
(assert
  (forall (($A3846385 (Array Int Int)) ($i3856386 Int) ($x3866387 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $A3846385 $x3866387) (select $A3846385 (- (- 100000 $x3866387) 1))) 1 0))
             (< $x3866387 (div 100000 2))
             ($main_inv335 $A3846385 $i3856386 $x3866387))
        ($main_inv335 $A3846385 $i3856386 (+ $x3866387 1)))))

; backwards $main_sum335
(assert
  (forall (($A3846385 (Array Int Int)) ($A3846388 (Array Int Int)) ($i3856386 Int) ($i3856389 Int) ($x3866390 Int) ($x3866387 Int))
    (=> (and ($main_sum335 $A3846385 $i3856386 (+ $x3866387 1) $A3846388 $i3856389 $x3866390)
             (__VERIFIER_assert (ite (= (select $A3846385 $x3866387) (select $A3846385 (- (- 100000 $x3866387) 1))) 1 0))
             (< $x3866387 (div 100000 2)))
        ($main_sum335 $A3846385 $i3856386 $x3866387 $A3846388 $i3856389 $x3866390))))

(check-sat)
