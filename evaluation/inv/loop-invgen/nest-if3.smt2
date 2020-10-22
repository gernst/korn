(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $assume_abort_if_not_if250 (Int) Bool)
(declare-fun $main_if252 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if251 (Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_if254 (Int Int Int Int) Bool)
(declare-fun $main_inv475 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_if253 (Int Int Int Int) Bool)
(declare-fun $main_inv474 (Int Int Int Int) Bool)
(declare-fun $main_sum475 (Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_if255 (Int Int Int Int) Bool)
(declare-fun $main_sum474 (Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if250 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond6382 Int))
    (=> (and ($assume_abort_if_not_if250 cond6382))
        (assume_abort_if_not cond6382))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond6383 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond6383))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if251 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6384 Int))
    (=> (and ($__VERIFIER_assert_if251 cond6384))
        (__VERIFIER_assert cond6384))))

; if else
(assert
  (forall (($i627 Int) ($k628 Int) ($int6385 Int) ($int6386 Int))
    (=> (and (> $int6386 0)
             (<= (- 2147483648) $int6386)
             (<= $int6386 2147483647)
             (<= (- 2147483648) $int6385)
             (<= $int6385 2147483647))
        ($main_if252 $i627 $k628 $int6385 $int6386))))

; if else
(assert
  (forall (($i6276387 Int) ($k6286388 Int) ($n6296389 Int) ($l6306390 Int))
    (=> (and (< $l6306390 1000000)
             ($main_if252 $i6276387 $k6286388 $n6296389 $l6306390))
        ($main_if253 $i6276387 $k6286388 $n6296389 $l6306390))))

; if else
(assert
  (forall (($i6276391 Int) ($k6286392 Int) ($n6296393 Int) ($l6306394 Int))
    (=> (and (< $n6296393 1000000)
             ($main_if253 $i6276391 $k6286392 $n6296393 $l6306394))
        ($main_if254 $i6276391 $k6286392 $n6296393 $l6306394))))

; loop entry $main_inv474
(assert
  (forall (($i6276395 Int) ($n6296397 Int) ($l6306398 Int) ($k6286396 Int))
    (=> (and ($main_if254 $i6276395 $k6286396 $n6296397 $l6306398))
        ($main_inv474 $i6276395 1 $n6296397 $l6306398))))

; loop term $main_sum474
(assert
  (forall (($i6276399 Int) ($k6286400 Int) ($n6296401 Int) ($l6306402 Int))
    (=> (and (not (< $k6286400 $n6296401))
             ($main_inv474 $i6276399 $k6286400 $n6296401 $l6306402))
        ($main_sum474 $i6276399 $k6286400 $n6296401 $l6306402))))

; loop entry $main_inv475
(assert
  (forall (($l6306402 Int) ($k6286400 Int) ($n6296401 Int) ($i6276399 Int))
    (=> (and (< $k6286400 $n6296401)
             ($main_inv474 $i6276399 $k6286400 $n6296401 $l6306402))
        ($main_inv475 $l6306402 $k6286400 $n6296401 $l6306402))))

; loop term $main_sum475
(assert
  (forall (($i6276403 Int) ($k6286404 Int) ($n6296405 Int) ($l6306406 Int))
    (=> (and (not (< $i6276403 $n6296405))
             ($main_inv475 $i6276403 $k6286404 $n6296405 $l6306406))
        ($main_sum475 $i6276403 $k6286404 $n6296405 $l6306406))))

; __VERIFIER_assert precondition
(assert
  (forall (($i6276403 Int) ($n6296405 Int) ($k6286404 Int) ($l6306406 Int))
    (=> (and (< $i6276403 $n6296405)
             ($main_inv475 $i6276403 $k6286404 $n6296405 $l6306406))
        ($__VERIFIER_assert_pre (ite (<= 1 $i6276403) 1 0)))))

; forwards $main_inv475
(assert
  (forall (($i6276403 Int) ($k6286404 Int) ($n6296405 Int) ($l6306406 Int))
    (=> (and (__VERIFIER_assert (ite (<= 1 $i6276403) 1 0))
             (< $i6276403 $n6296405)
             ($main_inv475 $i6276403 $k6286404 $n6296405 $l6306406))
        ($main_inv475 (+ $i6276403 1) $k6286404 $n6296405 $l6306406))))

; if then
(assert
  (forall (($k6286408 Int) ($l6306410 Int) ($n6296409 Int) ($i6276407 Int) ($int6411 Int))
    (=> (and (not (= $int6411 0))
             (<= (- 2147483648) $int6411)
             (<= $int6411 2147483647)
             ($main_sum475 $i6276407 $k6286408 $n6296409 $l6306410))
        ($main_if255 $i6276407 $k6286408 $n6296409 (+ $l6306410 1)))))

; if else
(assert
  (forall (($k6286408 Int) ($l6306410 Int) ($n6296409 Int) ($i6276407 Int) ($int6411 Int))
    (=> (and (= $int6411 0)
             (<= (- 2147483648) $int6411)
             (<= $int6411 2147483647)
             ($main_sum475 $i6276407 $k6286408 $n6296409 $l6306410))
        ($main_if255 $i6276407 $k6286408 $n6296409 $l6306410))))

; forwards $main_inv474
(assert
  (forall (($i6276412 Int) ($k6286413 Int) ($n6296414 Int) ($l6306415 Int))
    (=> (and ($main_if255 $i6276412 $k6286413 $n6296414 $l6306415))
        ($main_inv474 $i6276412 (+ $k6286413 1) $n6296414 $l6306415))))

(check-sat)
