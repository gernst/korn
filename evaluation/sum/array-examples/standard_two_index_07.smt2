(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv396 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if126 (Int Int) Bool)
(declare-fun $main_sum397 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum395 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv395 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum396 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv397 ((Array Int Int) (Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond7432 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond7432))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if126 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond7433 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if126 cond cond7433))
        (__VERIFIER_assert cond7433))))

; loop entry $main_inv395
(assert
  (forall (($a480 (Array Int Int)) ($b481 (Array Int Int)) ($i482 Int) ($j483 Int))
    (=> (and (= $j483 0)
             (= $i482 0))
        ($main_inv395 $a480 $b481 $i482 $j483))))

; loop term $main_sum395
(assert
  (forall (($a4807434 (Array Int Int)) ($b4817435 (Array Int Int)) ($i4827436 Int) ($j4837437 Int))
    (=> (and (not (< $i4827436 100000)))
        ($main_sum395 $a4807434 $b4817435 $i4827436 $j4837437 $a4807434 $b4817435 $i4827436 $j4837437))))

; forwards $main_inv395
(assert
  (forall (($b4817435 (Array Int Int)) ($i4827436 Int) ($int7438 Int) ($j4837437 Int) ($a4807434 (Array Int Int)))
    (=> (and (<= (- 2147483648) $int7438)
             (<= $int7438 2147483647)
             (< $i4827436 100000)
             ($main_inv395 $a4807434 $b4817435 $i4827436 $j4837437))
        ($main_inv395 $a4807434 (store $b4817435 $i4827436 $int7438) (+ $i4827436 1) $j4837437))))

; backwards $main_sum395
(assert
  (forall (($j4837442 Int) ($b4817435 (Array Int Int)) ($a4807439 (Array Int Int)) ($j4837437 Int) ($a4807434 (Array Int Int)) ($b4817440 (Array Int Int)) ($i4827436 Int) ($int7438 Int) ($i4827441 Int))
    (=> (and ($main_sum395 $a4807434 (store $b4817435 $i4827436 $int7438) (+ $i4827436 1) $j4837437 $a4807439 $b4817440 $i4827441 $j4837442)
             (<= (- 2147483648) $int7438)
             (<= $int7438 2147483647)
             (< $i4827436 100000))
        ($main_sum395 $a4807434 $b4817435 $i4827436 $j4837437 $a4807439 $b4817440 $i4827441 $j4837442))))

; loop entry $main_inv396
(assert
  (forall (($i4827445 Int) ($a480 (Array Int Int)) ($j483 Int) ($a4807443 (Array Int Int)) ($i482 Int) ($b481 (Array Int Int)) ($j4837446 Int) ($b4817444 (Array Int Int)))
    (=> (and ($main_sum395 $a480 $b481 $i482 $j483 $a4807443 $b4817444 $i4827445 $j4837446)
             (= $j483 0)
             (= $i482 0))
        ($main_inv396 $a4807443 $b4817444 1 $j4837446))))

; loop term $main_sum396
(assert
  (forall (($a4807447 (Array Int Int)) ($b4817448 (Array Int Int)) ($i4827449 Int) ($j4837450 Int))
    (=> (and (not (< $i4827449 100000)))
        ($main_sum396 $a4807447 $b4817448 $i4827449 $j4837450 $a4807447 $b4817448 $i4827449 $j4837450))))

; forwards $main_inv396
(assert
  (forall (($a4807447 (Array Int Int)) ($j4837450 Int) ($b4817448 (Array Int Int)) ($i4827449 Int))
    (=> (and (< $i4827449 100000)
             ($main_inv396 $a4807447 $b4817448 $i4827449 $j4837450))
        ($main_inv396 (store $a4807447 $j4837450 (select $b4817448 $i4827449)) $b4817448 (+ $i4827449 7) (+ $j4837450 1)))))

; backwards $main_sum396
(assert
  (forall (($b4817448 (Array Int Int)) ($i4827453 Int) ($a4807447 (Array Int Int)) ($b4817452 (Array Int Int)) ($i4827449 Int) ($j4837454 Int) ($a4807451 (Array Int Int)) ($j4837450 Int))
    (=> (and ($main_sum396 (store $a4807447 $j4837450 (select $b4817448 $i4827449)) $b4817448 (+ $i4827449 7) (+ $j4837450 1) $a4807451 $b4817452 $i4827453 $j4837454)
             (< $i4827449 100000))
        ($main_sum396 $a4807447 $b4817448 $i4827449 $j4837450 $a4807451 $b4817452 $i4827453 $j4837454))))

; loop entry $main_inv397
(assert
  (forall (($i4827445 Int) ($a480 (Array Int Int)) ($j483 Int) ($a4807443 (Array Int Int)) ($a4807455 (Array Int Int)) ($i4827457 Int) ($b4817456 (Array Int Int)) ($i482 Int) ($j4837458 Int) ($b481 (Array Int Int)) ($j4837446 Int) ($b4817444 (Array Int Int)))
    (=> (and ($main_sum396 $a4807443 $b4817444 1 $j4837446 $a4807455 $b4817456 $i4827457 $j4837458)
             ($main_sum395 $a480 $b481 $i482 $j483 $a4807443 $b4817444 $i4827445 $j4837446)
             (= $j483 0)
             (= $i482 0))
        ($main_inv397 $a4807455 $b4817456 1 0))))

; loop term $main_sum397
(assert
  (forall (($a4807459 (Array Int Int)) ($b4817460 (Array Int Int)) ($i4827461 Int) ($j4837462 Int))
    (=> (and (not (< $i4827461 100000)))
        ($main_sum397 $a4807459 $b4817460 $i4827461 $j4837462 $a4807459 $b4817460 $i4827461 $j4837462))))

; __VERIFIER_assert precondition
(assert
  (forall (($a4807459 (Array Int Int)) ($j4837462 Int) ($b4817460 (Array Int Int)) ($i4827461 Int))
    (=> (and (< $i4827461 100000)
             ($main_inv397 $a4807459 $b4817460 $i4827461 $j4837462))
        ($__VERIFIER_assert_pre (ite (= (select $a4807459 $j4837462) (select $b4817460 (+ (* 7 $j4837462) 1))) 1 0)))))

; forwards $main_inv397
(assert
  (forall (($a4807459 (Array Int Int)) ($b4817460 (Array Int Int)) ($i4827461 Int) ($j4837462 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a4807459 $j4837462) (select $b4817460 (+ (* 7 $j4837462) 1))) 1 0))
             (< $i4827461 100000)
             ($main_inv397 $a4807459 $b4817460 $i4827461 $j4837462))
        ($main_inv397 $a4807459 $b4817460 (+ $i4827461 7) (+ $j4837462 1)))))

; backwards $main_sum397
(assert
  (forall (($i4827465 Int) ($a4807463 (Array Int Int)) ($a4807459 (Array Int Int)) ($j4837466 Int) ($b4817464 (Array Int Int)) ($b4817460 (Array Int Int)) ($i4827461 Int) ($j4837462 Int))
    (=> (and ($main_sum397 $a4807459 $b4817460 (+ $i4827461 7) (+ $j4837462 1) $a4807463 $b4817464 $i4827465 $j4837466)
             (__VERIFIER_assert (ite (= (select $a4807459 $j4837462) (select $b4817460 (+ (* 7 $j4837462) 1))) 1 0))
             (< $i4827461 100000))
        ($main_sum397 $a4807459 $b4817460 $i4827461 $j4837462 $a4807463 $b4817464 $i4827465 $j4837466))))

(check-sat)
