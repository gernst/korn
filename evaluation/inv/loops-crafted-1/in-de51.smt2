(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv157 (Int Int Int Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_sum155 (Int Int Int Int) Bool)
(declare-fun $main_inv156 (Int Int Int Int) Bool)
(declare-fun $main_sum158 (Int Int Int Int) Bool)
(declare-fun $main_sum154 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if550 (Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $main_inv158 (Int Int Int Int) Bool)
(declare-fun $main_inv155 (Int Int Int Int) Bool)
(declare-fun $main_sum157 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum156 (Int Int Int Int) Bool)
(declare-fun $main_inv154 (Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13442 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13442))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if550 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13443 Int))
    (=> (and ($__VERIFIER_assert_if550 cond13443))
        (__VERIFIER_assert cond13443))))

; loop entry $main_inv154
(assert
  (forall (($y511 Int) ($x510 Int) ($uint13444 Int) ($z512 Int) ($n509 Int))
    (=> (and (= $y511 0)
             (= $x510 $n509)
             (= $n509 $uint13444)
             (<= 0 $uint13444)
             (<= $uint13444 4294967295))
        ($main_inv154 $n509 $x510 $y511 $z512))))

; loop term $main_sum154
(assert
  (forall (($n50913445 Int) ($x51013446 Int) ($y51113447 Int) ($z51213448 Int))
    (=> (and (not (> $x51013446 0))
             ($main_inv154 $n50913445 $x51013446 $y51113447 $z51213448))
        ($main_sum154 $n50913445 $x51013446 $y51113447 $z51213448))))

; forwards $main_inv154
(assert
  (forall (($n50913445 Int) ($x51013446 Int) ($y51113447 Int) ($z51213448 Int))
    (=> (and (> $x51013446 0)
             ($main_inv154 $n50913445 $x51013446 $y51113447 $z51213448))
        ($main_inv154 $n50913445 (- $x51013446 1) (+ $y51113447 1) $z51213448))))

; loop entry $main_inv155
(assert
  (forall (($n50913449 Int) ($x51013450 Int) ($y51113451 Int) ($z51213452 Int))
    (=> (and ($main_sum154 $n50913449 $x51013450 $y51113451 $z51213452))
        ($main_inv155 $n50913449 $x51013450 $y51113451 $y51113451))))

; loop term $main_sum155
(assert
  (forall (($n50913453 Int) ($x51013454 Int) ($y51113455 Int) ($z51213456 Int))
    (=> (and (not (> $z51213456 0))
             ($main_inv155 $n50913453 $x51013454 $y51113455 $z51213456))
        ($main_sum155 $n50913453 $x51013454 $y51113455 $z51213456))))

; forwards $main_inv155
(assert
  (forall (($n50913453 Int) ($x51013454 Int) ($y51113455 Int) ($z51213456 Int))
    (=> (and (> $z51213456 0)
             ($main_inv155 $n50913453 $x51013454 $y51113455 $z51213456))
        ($main_inv155 $n50913453 (+ $x51013454 1) $y51113455 (- $z51213456 1)))))

; loop entry $main_inv156
(assert
  (forall (($n50913457 Int) ($x51013458 Int) ($y51113459 Int) ($z51213460 Int))
    (=> (and ($main_sum155 $n50913457 $x51013458 $y51113459 $z51213460))
        ($main_inv156 $n50913457 $x51013458 $y51113459 $z51213460))))

; loop term $main_sum156
(assert
  (forall (($n50913461 Int) ($x51013462 Int) ($y51113463 Int) ($z51213464 Int))
    (=> (and (not (> $y51113463 0))
             ($main_inv156 $n50913461 $x51013462 $y51113463 $z51213464))
        ($main_sum156 $n50913461 $x51013462 $y51113463 $z51213464))))

; forwards $main_inv156
(assert
  (forall (($n50913461 Int) ($x51013462 Int) ($y51113463 Int) ($z51213464 Int))
    (=> (and (> $y51113463 0)
             ($main_inv156 $n50913461 $x51013462 $y51113463 $z51213464))
        ($main_inv156 $n50913461 $x51013462 (- $y51113463 1) (+ $z51213464 1)))))

; loop entry $main_inv157
(assert
  (forall (($n50913465 Int) ($x51013466 Int) ($y51113467 Int) ($z51213468 Int))
    (=> (and ($main_sum156 $n50913465 $x51013466 $y51113467 $z51213468))
        ($main_inv157 $n50913465 $x51013466 $y51113467 $z51213468))))

; loop term $main_sum157
(assert
  (forall (($n50913469 Int) ($x51013470 Int) ($y51113471 Int) ($z51213472 Int))
    (=> (and (not (> $x51013470 0))
             ($main_inv157 $n50913469 $x51013470 $y51113471 $z51213472))
        ($main_sum157 $n50913469 $x51013470 $y51113471 $z51213472))))

; forwards $main_inv157
(assert
  (forall (($n50913469 Int) ($x51013470 Int) ($y51113471 Int) ($z51213472 Int))
    (=> (and (> $x51013470 0)
             ($main_inv157 $n50913469 $x51013470 $y51113471 $z51213472))
        ($main_inv157 $n50913469 (- $x51013470 1) (+ $y51113471 1) $z51213472))))

; loop entry $main_inv158
(assert
  (forall (($n50913473 Int) ($x51013474 Int) ($y51113475 Int) ($z51213476 Int))
    (=> (and ($main_sum157 $n50913473 $x51013474 $y51113475 $z51213476))
        ($main_inv158 $n50913473 $x51013474 $y51113475 $z51213476))))

; loop term $main_sum158
(assert
  (forall (($n50913477 Int) ($x51013478 Int) ($y51113479 Int) ($z51213480 Int))
    (=> (and (not (> $z51213480 0))
             ($main_inv158 $n50913477 $x51013478 $y51113479 $z51213480))
        ($main_sum158 $n50913477 $x51013478 $y51113479 $z51213480))))

; forwards $main_inv158
(assert
  (forall (($n50913477 Int) ($x51013478 Int) ($y51113479 Int) ($z51213480 Int))
    (=> (and (> $z51213480 0)
             ($main_inv158 $n50913477 $x51013478 $y51113479 $z51213480))
        ($main_inv158 $n50913477 (+ $x51013478 1) $y51113479 (- $z51213480 1)))))

; __VERIFIER_assert precondition
(assert
  (forall (($x51013482 Int) ($n50913481 Int) ($y51113483 Int) ($z51213484 Int))
    (=> (and ($main_sum158 $n50913481 $x51013482 $y51113483 $z51213484))
        ($__VERIFIER_assert_pre (ite (= $x51013482 $n50913481) 1 0)))))

(check-sat)
