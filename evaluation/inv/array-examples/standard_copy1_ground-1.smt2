(set-logic HORN)

(declare-fun $__VERIFIER_assert_if43 (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_inv91 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum91 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv90 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum90 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv89 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum89 ((Array Int Int) (Array Int Int) Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond1378 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond1378))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if43 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond1379 Int))
    (=> (and ($__VERIFIER_assert_if43 cond1379))
        (__VERIFIER_assert cond1379))))

; loop entry $main_inv89
(assert
  (forall (($a1154 (Array Int Int)) ($a2155 (Array Int Int)) ($i157 Int) ($x158 Int))
        ($main_inv89 $a1154 $a2155 0 $i157 $x158)))

; loop term $main_sum89
(assert
  (forall (($i1571383 Int) ($a21551381 (Array Int Int)) ($a11541380 (Array Int Int)) ($a1561382 Int) ($x1581384 Int))
    (=> (and (not (< $a1561382 100000))
             ($main_inv89 $a11541380 $a21551381 $a1561382 $i1571383 $x1581384))
        ($main_sum89 $a11541380 $a21551381 $a1561382 $i1571383 $x1581384))))

; forwards $main_inv89
(assert
  (forall (($i1571383 Int) ($a21551381 (Array Int Int)) ($a11541380 (Array Int Int)) ($int1385 Int) ($a1561382 Int) ($x1581384 Int))
    (=> (and (<= (- 2147483648) $int1385)
             (<= $int1385 2147483647)
             (< $a1561382 100000)
             ($main_inv89 $a11541380 $a21551381 $a1561382 $i1571383 $x1581384))
        ($main_inv89 (store $a11541380 $a1561382 $int1385) $a21551381 (+ $a1561382 1) $i1571383 $x1581384))))

; loop entry $main_inv90
(assert
  (forall (($a11541386 (Array Int Int)) ($x1581390 Int) ($a1561388 Int) ($i1571389 Int) ($a21551387 (Array Int Int)))
    (=> (and ($main_sum89 $a11541386 $a21551387 $a1561388 $i1571389 $x1581390))
        ($main_inv90 $a11541386 $a21551387 $a1561388 0 $x1581390))))

; loop term $main_sum90
(assert
  (forall (($i1571394 Int) ($x1581395 Int) ($a11541391 (Array Int Int)) ($a1561393 Int) ($a21551392 (Array Int Int)))
    (=> (and (not (< $i1571394 100000))
             ($main_inv90 $a11541391 $a21551392 $a1561393 $i1571394 $x1581395))
        ($main_sum90 $a11541391 $a21551392 $a1561393 $i1571394 $x1581395))))

; forwards $main_inv90
(assert
  (forall (($i1571394 Int) ($x1581395 Int) ($a11541391 (Array Int Int)) ($a1561393 Int) ($a21551392 (Array Int Int)))
    (=> (and (< $i1571394 100000)
             ($main_inv90 $a11541391 $a21551392 $a1561393 $i1571394 $x1581395))
        ($main_inv90 $a11541391 (store $a21551392 $i1571394 (select $a11541391 $i1571394)) $a1561393 (+ $i1571394 1) $x1581395))))

; loop entry $main_inv91
(assert
  (forall (($x1581400 Int) ($a1561398 Int) ($a21551397 (Array Int Int)) ($i1571399 Int) ($a11541396 (Array Int Int)))
    (=> (and ($main_sum90 $a11541396 $a21551397 $a1561398 $i1571399 $x1581400))
        ($main_inv91 $a11541396 $a21551397 $a1561398 $i1571399 0))))

; loop term $main_sum91
(assert
  (forall (($i1571404 Int) ($x1581405 Int) ($a1561403 Int) ($a21551402 (Array Int Int)) ($a11541401 (Array Int Int)))
    (=> (and (not (< $x1581405 100000))
             ($main_inv91 $a11541401 $a21551402 $a1561403 $i1571404 $x1581405))
        ($main_sum91 $a11541401 $a21551402 $a1561403 $i1571404 $x1581405))))

; __VERIFIER_assert precondition
(assert
  (forall (($i1571404 Int) ($x1581405 Int) ($a1561403 Int) ($a21551402 (Array Int Int)) ($a11541401 (Array Int Int)))
    (=> (and (< $x1581405 100000)
             ($main_inv91 $a11541401 $a21551402 $a1561403 $i1571404 $x1581405))
        ($__VERIFIER_assert_pre (ite (= (select $a11541401 $x1581405) (select $a21551402 $x1581405)) 1 0)))))

; forwards $main_inv91
(assert
  (forall (($i1571404 Int) ($x1581405 Int) ($a1561403 Int) ($a21551402 (Array Int Int)) ($a11541401 (Array Int Int)))
    (=> (and (__VERIFIER_assert (ite (= (select $a11541401 $x1581405) (select $a21551402 $x1581405)) 1 0))
             (< $x1581405 100000)
             ($main_inv91 $a11541401 $a21551402 $a1561403 $i1571404 $x1581405))
        ($main_inv91 $a11541401 $a21551402 $a1561403 $i1571404 (+ $x1581405 1)))))

(check-sat)
