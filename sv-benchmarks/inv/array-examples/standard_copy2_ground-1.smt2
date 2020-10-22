(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv96 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum97 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv97 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum96 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv95 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv98 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum95 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if45 (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum98 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond1445 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond1445))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if45 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond1446 Int))
    (=> (and ($__VERIFIER_assert_if45 cond1446))
        (__VERIFIER_assert cond1446))))

; loop entry $main_inv95
(assert
  (forall (($a1164 (Array Int Int)) ($a2165 (Array Int Int)) ($a3166 (Array Int Int)) ($i168 Int) ($x169 Int))
        ($main_inv95 $a1164 $a2165 $a3166 0 $i168 $x169)))

; loop term $main_sum95
(assert
  (forall (($a31661449 (Array Int Int)) ($i1681451 Int) ($a21651448 (Array Int Int)) ($a11641447 (Array Int Int)) ($a1671450 Int) ($x1691452 Int))
    (=> (and (not (< $a1671450 100000))
             ($main_inv95 $a11641447 $a21651448 $a31661449 $a1671450 $i1681451 $x1691452))
        ($main_sum95 $a11641447 $a21651448 $a31661449 $a1671450 $i1681451 $x1691452))))

; forwards $main_inv95
(assert
  (forall (($int1454 Int) ($a31661449 (Array Int Int)) ($i1681451 Int) ($int1453 Int) ($a21651448 (Array Int Int)) ($a11641447 (Array Int Int)) ($a1671450 Int) ($x1691452 Int))
    (=> (and (<= (- 2147483648) $int1454)
             (<= $int1454 2147483647)
             (<= (- 2147483648) $int1453)
             (<= $int1453 2147483647)
             (< $a1671450 100000)
             ($main_inv95 $a11641447 $a21651448 $a31661449 $a1671450 $i1681451 $x1691452))
        ($main_inv95 (store $a11641447 $a1671450 $int1453) (store $a21651448 $a1671450 $int1454) $a31661449 (+ $a1671450 1) $i1681451 $x1691452))))

; loop entry $main_inv96
(assert
  (forall (($a21651456 (Array Int Int)) ($i1681459 Int) ($x1691460 Int) ($a31661457 (Array Int Int)) ($a1671458 Int) ($a11641455 (Array Int Int)))
    (=> (and ($main_sum95 $a11641455 $a21651456 $a31661457 $a1671458 $i1681459 $x1691460))
        ($main_inv96 $a11641455 $a21651456 $a31661457 $a1671458 0 $x1691460))))

; loop term $main_sum96
(assert
  (forall (($a1671464 Int) ($x1691466 Int) ($a21651462 (Array Int Int)) ($i1681465 Int) ($a11641461 (Array Int Int)) ($a31661463 (Array Int Int)))
    (=> (and (not (< $i1681465 100000))
             ($main_inv96 $a11641461 $a21651462 $a31661463 $a1671464 $i1681465 $x1691466))
        ($main_sum96 $a11641461 $a21651462 $a31661463 $a1671464 $i1681465 $x1691466))))

; forwards $main_inv96
(assert
  (forall (($a1671464 Int) ($x1691466 Int) ($a21651462 (Array Int Int)) ($i1681465 Int) ($a11641461 (Array Int Int)) ($a31661463 (Array Int Int)))
    (=> (and (< $i1681465 100000)
             ($main_inv96 $a11641461 $a21651462 $a31661463 $a1671464 $i1681465 $x1691466))
        ($main_inv96 $a11641461 $a21651462 (store $a31661463 $i1681465 (select $a11641461 $i1681465)) $a1671464 (+ $i1681465 1) $x1691466))))

; loop entry $main_inv97
(assert
  (forall (($x1691472 Int) ($a11641467 (Array Int Int)) ($a31661469 (Array Int Int)) ($a1671470 Int) ($a21651468 (Array Int Int)) ($i1681471 Int))
    (=> (and ($main_sum96 $a11641467 $a21651468 $a31661469 $a1671470 $i1681471 $x1691472))
        ($main_inv97 $a11641467 $a21651468 $a31661469 $a1671470 0 $x1691472))))

; loop term $main_sum97
(assert
  (forall (($a21651474 (Array Int Int)) ($a1671476 Int) ($a31661475 (Array Int Int)) ($x1691478 Int) ($a11641473 (Array Int Int)) ($i1681477 Int))
    (=> (and (not (< $i1681477 100000))
             ($main_inv97 $a11641473 $a21651474 $a31661475 $a1671476 $i1681477 $x1691478))
        ($main_sum97 $a11641473 $a21651474 $a31661475 $a1671476 $i1681477 $x1691478))))

; forwards $main_inv97
(assert
  (forall (($a21651474 (Array Int Int)) ($a1671476 Int) ($a31661475 (Array Int Int)) ($x1691478 Int) ($a11641473 (Array Int Int)) ($i1681477 Int))
    (=> (and (< $i1681477 100000)
             ($main_inv97 $a11641473 $a21651474 $a31661475 $a1671476 $i1681477 $x1691478))
        ($main_inv97 $a11641473 $a21651474 (store $a31661475 $i1681477 (select $a21651474 $i1681477)) $a1671476 (+ $i1681477 1) $x1691478))))

; loop entry $main_inv98
(assert
  (forall (($a21651480 (Array Int Int)) ($a31661481 (Array Int Int)) ($i1681483 Int) ($a1671482 Int) ($a11641479 (Array Int Int)) ($x1691484 Int))
    (=> (and ($main_sum97 $a11641479 $a21651480 $a31661481 $a1671482 $i1681483 $x1691484))
        ($main_inv98 $a11641479 $a21651480 $a31661481 $a1671482 $i1681483 0))))

; loop term $main_sum98
(assert
  (forall (($a31661487 (Array Int Int)) ($a11641485 (Array Int Int)) ($a1671488 Int) ($x1691490 Int) ($i1681489 Int) ($a21651486 (Array Int Int)))
    (=> (and (not (< $x1691490 100000))
             ($main_inv98 $a11641485 $a21651486 $a31661487 $a1671488 $i1681489 $x1691490))
        ($main_sum98 $a11641485 $a21651486 $a31661487 $a1671488 $i1681489 $x1691490))))

; __VERIFIER_assert precondition
(assert
  (forall (($a31661487 (Array Int Int)) ($a11641485 (Array Int Int)) ($a1671488 Int) ($x1691490 Int) ($i1681489 Int) ($a21651486 (Array Int Int)))
    (=> (and (< $x1691490 100000)
             ($main_inv98 $a11641485 $a21651486 $a31661487 $a1671488 $i1681489 $x1691490))
        ($__VERIFIER_assert_pre (ite (= (select $a11641485 $x1691490) (select $a31661487 $x1691490)) 1 0)))))

; forwards $main_inv98
(assert
  (forall (($a31661487 (Array Int Int)) ($a11641485 (Array Int Int)) ($a1671488 Int) ($x1691490 Int) ($i1681489 Int) ($a21651486 (Array Int Int)))
    (=> (and (__VERIFIER_assert (ite (= (select $a11641485 $x1691490) (select $a31661487 $x1691490)) 1 0))
             (< $x1691490 100000)
             ($main_inv98 $a11641485 $a21651486 $a31661487 $a1671488 $i1681489 $x1691490))
        ($main_inv98 $a11641485 $a21651486 $a31661487 $a1671488 $i1681489 (+ $x1691490 1)))))

(check-sat)
