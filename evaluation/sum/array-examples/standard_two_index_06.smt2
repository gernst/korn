(set-logic HORN)

(declare-fun $main_sum393 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv394 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv392 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum392 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv393 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum394 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if125 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond7393 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond7393))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if125 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond7394 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if125 cond cond7394))
        (__VERIFIER_assert cond7394))))

; loop entry $main_inv392
(assert
  (forall (($a476 (Array Int Int)) ($b477 (Array Int Int)) ($i478 Int) ($j479 Int))
    (=> (and (= $j479 0)
             (= $i478 0))
        ($main_inv392 $a476 $b477 $i478 $j479))))

; loop term $main_sum392
(assert
  (forall (($a4767395 (Array Int Int)) ($b4777396 (Array Int Int)) ($i4787397 Int) ($j4797398 Int))
    (=> (and (not (< $i4787397 10000)))
        ($main_sum392 $a4767395 $b4777396 $i4787397 $j4797398 $a4767395 $b4777396 $i4787397 $j4797398))))

; forwards $main_inv392
(assert
  (forall (($int7399 Int) ($a4767395 (Array Int Int)) ($b4777396 (Array Int Int)) ($i4787397 Int) ($j4797398 Int))
    (=> (and (<= (- 2147483648) $int7399)
             (<= $int7399 2147483647)
             (< $i4787397 10000)
             ($main_inv392 $a4767395 $b4777396 $i4787397 $j4797398))
        ($main_inv392 $a4767395 (store $b4777396 $i4787397 $int7399) (+ $i4787397 1) $j4797398))))

; backwards $main_sum392
(assert
  (forall (($int7399 Int) ($a4767395 (Array Int Int)) ($a4767400 (Array Int Int)) ($i4787402 Int) ($j4797403 Int) ($b4777401 (Array Int Int)) ($b4777396 (Array Int Int)) ($i4787397 Int) ($j4797398 Int))
    (=> (and ($main_sum392 $a4767395 (store $b4777396 $i4787397 $int7399) (+ $i4787397 1) $j4797398 $a4767400 $b4777401 $i4787402 $j4797403)
             (<= (- 2147483648) $int7399)
             (<= $int7399 2147483647)
             (< $i4787397 10000))
        ($main_sum392 $a4767395 $b4777396 $i4787397 $j4797398 $a4767400 $b4777401 $i4787402 $j4797403))))

; loop entry $main_inv393
(assert
  (forall (($a476 (Array Int Int)) ($b4777405 (Array Int Int)) ($j4797407 Int) ($i4787406 Int) ($i478 Int) ($b477 (Array Int Int)) ($j479 Int) ($a4767404 (Array Int Int)))
    (=> (and ($main_sum392 $a476 $b477 $i478 $j479 $a4767404 $b4777405 $i4787406 $j4797407)
             (= $j479 0)
             (= $i478 0))
        ($main_inv393 $a4767404 $b4777405 1 $j4797407))))

; loop term $main_sum393
(assert
  (forall (($a4767408 (Array Int Int)) ($b4777409 (Array Int Int)) ($i4787410 Int) ($j4797411 Int))
    (=> (and (not (< $i4787410 10000)))
        ($main_sum393 $a4767408 $b4777409 $i4787410 $j4797411 $a4767408 $b4777409 $i4787410 $j4797411))))

; forwards $main_inv393
(assert
  (forall (($a4767408 (Array Int Int)) ($j4797411 Int) ($b4777409 (Array Int Int)) ($i4787410 Int))
    (=> (and (< $i4787410 10000)
             ($main_inv393 $a4767408 $b4777409 $i4787410 $j4797411))
        ($main_inv393 (store $a4767408 $j4797411 (select $b4777409 $i4787410)) $b4777409 (+ $i4787410 6) (+ $j4797411 1)))))

; backwards $main_sum393
(assert
  (forall (($b4777413 (Array Int Int)) ($i4787410 Int) ($j4797411 Int) ($i4787414 Int) ($b4777409 (Array Int Int)) ($j4797415 Int) ($a4767412 (Array Int Int)) ($a4767408 (Array Int Int)))
    (=> (and ($main_sum393 (store $a4767408 $j4797411 (select $b4777409 $i4787410)) $b4777409 (+ $i4787410 6) (+ $j4797411 1) $a4767412 $b4777413 $i4787414 $j4797415)
             (< $i4787410 10000))
        ($main_sum393 $a4767408 $b4777409 $i4787410 $j4797411 $a4767412 $b4777413 $i4787414 $j4797415))))

; loop entry $main_inv394
(assert
  (forall (($i4787418 Int) ($a476 (Array Int Int)) ($a4767416 (Array Int Int)) ($b4777405 (Array Int Int)) ($i478 Int) ($b477 (Array Int Int)) ($j479 Int) ($a4767404 (Array Int Int)) ($j4797419 Int) ($j4797407 Int) ($i4787406 Int) ($b4777417 (Array Int Int)))
    (=> (and ($main_sum393 $a4767404 $b4777405 1 $j4797407 $a4767416 $b4777417 $i4787418 $j4797419)
             ($main_sum392 $a476 $b477 $i478 $j479 $a4767404 $b4777405 $i4787406 $j4797407)
             (= $j479 0)
             (= $i478 0))
        ($main_inv394 $a4767416 $b4777417 1 0))))

; loop term $main_sum394
(assert
  (forall (($a4767420 (Array Int Int)) ($b4777421 (Array Int Int)) ($i4787422 Int) ($j4797423 Int))
    (=> (and (not (< $i4787422 10000)))
        ($main_sum394 $a4767420 $b4777421 $i4787422 $j4797423 $a4767420 $b4777421 $i4787422 $j4797423))))

; __VERIFIER_assert precondition
(assert
  (forall (($a4767420 (Array Int Int)) ($j4797423 Int) ($b4777421 (Array Int Int)) ($i4787422 Int))
    (=> (and (< $i4787422 10000)
             ($main_inv394 $a4767420 $b4777421 $i4787422 $j4797423))
        ($__VERIFIER_assert_pre (ite (= (select $a4767420 $j4797423) (select $b4777421 (+ (* 6 $j4797423) 1))) 1 0)))))

; forwards $main_inv394
(assert
  (forall (($a4767420 (Array Int Int)) ($b4777421 (Array Int Int)) ($i4787422 Int) ($j4797423 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a4767420 $j4797423) (select $b4777421 (+ (* 6 $j4797423) 1))) 1 0))
             (< $i4787422 10000)
             ($main_inv394 $a4767420 $b4777421 $i4787422 $j4797423))
        ($main_inv394 $a4767420 $b4777421 (+ $i4787422 6) (+ $j4797423 1)))))

; backwards $main_sum394
(assert
  (forall (($j4797427 Int) ($i4787422 Int) ($b4777425 (Array Int Int)) ($b4777421 (Array Int Int)) ($i4787426 Int) ($j4797423 Int) ($a4767424 (Array Int Int)) ($a4767420 (Array Int Int)))
    (=> (and ($main_sum394 $a4767420 $b4777421 (+ $i4787422 6) (+ $j4797423 1) $a4767424 $b4777425 $i4787426 $j4797427)
             (__VERIFIER_assert (ite (= (select $a4767420 $j4797423) (select $b4777421 (+ (* 6 $j4797423) 1))) 1 0))
             (< $i4787422 10000))
        ($main_sum394 $a4767420 $b4777421 $i4787422 $j4797423 $a4767424 $b4777425 $i4787426 $j4797427))))

(check-sat)
