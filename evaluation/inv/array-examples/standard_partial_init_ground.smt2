(set-logic HORN)

(declare-fun $main_inv336 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum337 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv339 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum336 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv337 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum338 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if90 (Int) Bool)
(declare-fun $main_if91 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv338 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum339 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond4395 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond4395))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if90 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond4396 Int))
    (=> (and ($__VERIFIER_assert_if90 cond4396))
        (__VERIFIER_assert cond4396))))

; loop entry $main_inv336
(assert
  (forall (($B388 (Array Int Int)) ($j391 Int) ($A387 (Array Int Int)) ($x392 Int) ($C389 (Array Int Int)))
    (=> (and (= $j391 0))
        ($main_inv336 $A387 $B388 $C389 0 $j391 $x392))))

; loop term $main_sum336
(assert
  (forall (($i3904400 Int) ($B3884398 (Array Int Int)) ($x3924402 Int) ($A3874397 (Array Int Int)) ($C3894399 (Array Int Int)) ($j3914401 Int))
    (=> (and (not (< $i3904400 100000))
             ($main_inv336 $A3874397 $B3884398 $C3894399 $i3904400 $j3914401 $x3924402))
        ($main_sum336 $A3874397 $B3884398 $C3894399 $i3904400 $j3914401 $x3924402))))

; forwards $main_inv336
(assert
  (forall (($i3904400 Int) ($B3884398 (Array Int Int)) ($int4403 Int) ($x3924402 Int) ($int4404 Int) ($A3874397 (Array Int Int)) ($C3894399 (Array Int Int)) ($j3914401 Int))
    (=> (and (<= (- 2147483648) $int4404)
             (<= $int4404 2147483647)
             (<= (- 2147483648) $int4403)
             (<= $int4403 2147483647)
             (< $i3904400 100000)
             ($main_inv336 $A3874397 $B3884398 $C3894399 $i3904400 $j3914401 $x3924402))
        ($main_inv336 (store $A3874397 $i3904400 $int4403) (store $B3884398 $i3904400 $int4404) $C3894399 (+ $i3904400 1) $j3914401 $x3924402))))

; loop entry $main_inv337
(assert
  (forall (($B3884406 (Array Int Int)) ($C3894407 (Array Int Int)) ($A3874405 (Array Int Int)) ($j3914409 Int) ($i3904408 Int) ($x3924410 Int))
    (=> (and ($main_sum336 $A3874405 $B3884406 $C3894407 $i3904408 $j3914409 $x3924410))
        ($main_inv337 $A3874405 $B3884406 $C3894407 0 $j3914409 $x3924410))))

; loop term $main_sum337
(assert
  (forall (($C3894413 (Array Int Int)) ($A3874411 (Array Int Int)) ($i3904414 Int) ($j3914415 Int) ($B3884412 (Array Int Int)) ($x3924416 Int))
    (=> (and (not (< $i3904414 100000))
             ($main_inv337 $A3874411 $B3884412 $C3894413 $i3904414 $j3914415 $x3924416))
        ($main_sum337 $A3874411 $B3884412 $C3894413 $i3904414 $j3914415 $x3924416))))

; if then
(assert
  (forall (($C3894413 (Array Int Int)) ($A3874411 (Array Int Int)) ($i3904414 Int) ($j3914415 Int) ($B3884412 (Array Int Int)) ($x3924416 Int))
    (=> (and (= (select $A3874411 $i3904414) (select $B3884412 $i3904414))
             (< $i3904414 100000)
             ($main_inv337 $A3874411 $B3884412 $C3894413 $i3904414 $j3914415 $x3924416))
        ($main_if91 $A3874411 $B3884412 (store $C3894413 $j3914415 $i3904414) $i3904414 (+ $j3914415 1) $x3924416))))

; if else
(assert
  (forall (($C3894413 (Array Int Int)) ($A3874411 (Array Int Int)) ($i3904414 Int) ($j3914415 Int) ($B3884412 (Array Int Int)) ($x3924416 Int))
    (=> (and (not (= (select $A3874411 $i3904414) (select $B3884412 $i3904414)))
             (< $i3904414 100000)
             ($main_inv337 $A3874411 $B3884412 $C3894413 $i3904414 $j3914415 $x3924416))
        ($main_if91 $A3874411 $B3884412 $C3894413 $i3904414 $j3914415 $x3924416))))

; forwards $main_inv337
(assert
  (forall (($B3884418 (Array Int Int)) ($C3894419 (Array Int Int)) ($i3904420 Int) ($A3874417 (Array Int Int)) ($x3924422 Int) ($j3914421 Int))
    (=> (and ($main_if91 $A3874417 $B3884418 $C3894419 $i3904420 $j3914421 $x3924422))
        ($main_inv337 $A3874417 $B3884418 $C3894419 (+ $i3904420 1) $j3914421 $x3924422))))

; loop entry $main_inv338
(assert
  (forall (($x3924428 Int) ($i3904426 Int) ($C3894425 (Array Int Int)) ($A3874423 (Array Int Int)) ($j3914427 Int) ($B3884424 (Array Int Int)))
    (=> (and ($main_sum337 $A3874423 $B3884424 $C3894425 $i3904426 $j3914427 $x3924428))
        ($main_inv338 $A3874423 $B3884424 $C3894425 $i3904426 $j3914427 0))))

; loop term $main_sum338
(assert
  (forall (($x3924434 Int) ($A3874429 (Array Int Int)) ($i3904432 Int) ($B3884430 (Array Int Int)) ($j3914433 Int) ($C3894431 (Array Int Int)))
    (=> (and (not (< $x3924434 $j3914433))
             ($main_inv338 $A3874429 $B3884430 $C3894431 $i3904432 $j3914433 $x3924434))
        ($main_sum338 $A3874429 $B3884430 $C3894431 $i3904432 $j3914433 $x3924434))))

; __VERIFIER_assert precondition
(assert
  (forall (($x3924434 Int) ($A3874429 (Array Int Int)) ($i3904432 Int) ($B3884430 (Array Int Int)) ($j3914433 Int) ($C3894431 (Array Int Int)))
    (=> (and (< $x3924434 $j3914433)
             ($main_inv338 $A3874429 $B3884430 $C3894431 $i3904432 $j3914433 $x3924434))
        ($__VERIFIER_assert_pre (ite (<= (select $C3894431 $x3924434) (- (+ $x3924434 $i3904432) $j3914433)) 1 0)))))

; forwards $main_inv338
(assert
  (forall (($x3924434 Int) ($A3874429 (Array Int Int)) ($i3904432 Int) ($B3884430 (Array Int Int)) ($j3914433 Int) ($C3894431 (Array Int Int)))
    (=> (and (__VERIFIER_assert (ite (<= (select $C3894431 $x3924434) (- (+ $x3924434 $i3904432) $j3914433)) 1 0))
             (< $x3924434 $j3914433)
             ($main_inv338 $A3874429 $B3884430 $C3894431 $i3904432 $j3914433 $x3924434))
        ($main_inv338 $A3874429 $B3884430 $C3894431 $i3904432 $j3914433 (+ $x3924434 1)))))

; loop entry $main_inv339
(assert
  (forall (($j3914439 Int) ($i3904438 Int) ($B3884436 (Array Int Int)) ($x3924440 Int) ($C3894437 (Array Int Int)) ($A3874435 (Array Int Int)))
    (=> (and ($main_sum338 $A3874435 $B3884436 $C3894437 $i3904438 $j3914439 $x3924440))
        ($main_inv339 $A3874435 $B3884436 $C3894437 $i3904438 $j3914439 0))))

; loop term $main_sum339
(assert
  (forall (($x3924446 Int) ($j3914445 Int) ($A3874441 (Array Int Int)) ($C3894443 (Array Int Int)) ($B3884442 (Array Int Int)) ($i3904444 Int))
    (=> (and (not (< $x3924446 $j3914445))
             ($main_inv339 $A3874441 $B3884442 $C3894443 $i3904444 $j3914445 $x3924446))
        ($main_sum339 $A3874441 $B3884442 $C3894443 $i3904444 $j3914445 $x3924446))))

; __VERIFIER_assert precondition
(assert
  (forall (($x3924446 Int) ($j3914445 Int) ($A3874441 (Array Int Int)) ($C3894443 (Array Int Int)) ($B3884442 (Array Int Int)) ($i3904444 Int))
    (=> (and (< $x3924446 $j3914445)
             ($main_inv339 $A3874441 $B3884442 $C3894443 $i3904444 $j3914445 $x3924446))
        ($__VERIFIER_assert_pre (ite (>= (select $C3894443 $x3924446) $x3924446) 1 0)))))

; forwards $main_inv339
(assert
  (forall (($x3924446 Int) ($j3914445 Int) ($A3874441 (Array Int Int)) ($C3894443 (Array Int Int)) ($B3884442 (Array Int Int)) ($i3904444 Int))
    (=> (and (__VERIFIER_assert (ite (>= (select $C3894443 $x3924446) $x3924446) 1 0))
             (< $x3924446 $j3914445)
             ($main_inv339 $A3874441 $B3884442 $C3894443 $i3904444 $j3914445 $x3924446))
        ($main_inv339 $A3874441 $B3884442 $C3894443 $i3904444 $j3914445 (+ $x3924446 1)))))

(check-sat)
