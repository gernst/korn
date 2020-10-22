(set-logic HORN)

(declare-fun $main_sum33 ((Array Int Int) Int Int Int) Bool)
(declare-fun $main_if17 ((Array Int Int) Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv32 ((Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_inv33 ((Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum34 ((Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if16 (Int) Bool)
(declare-fun $main_sum32 ((Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv34 ((Array Int Int) Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond458 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond458))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if16 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond459 Int))
    (=> (and ($__VERIFIER_assert_if16 cond459))
        (__VERIFIER_assert cond459))))

; loop entry $main_inv32
(assert
  (forall (($array82 (Array Int Int)) ($largest84 Int) ($x85 Int))
        ($main_inv32 $array82 0 $largest84 $x85)))

; loop term $main_sum32
(assert
  (forall (($array82460 (Array Int Int)) ($i83461 Int) ($largest84462 Int) ($x85463 Int))
    (=> (and (not (< $i83461 100000))
             ($main_inv32 $array82460 $i83461 $largest84462 $x85463))
        ($main_sum32 $array82460 $i83461 $largest84462 $x85463))))

; forwards $main_inv32
(assert
  (forall (($x85463 Int) ($i83461 Int) ($array82460 (Array Int Int)) ($largest84462 Int) ($int464 Int))
    (=> (and (<= (- 2147483648) $int464)
             (<= $int464 2147483647)
             (< $i83461 100000)
             ($main_inv32 $array82460 $i83461 $largest84462 $x85463))
        ($main_inv32 (store $array82460 $i83461 $int464) (+ $i83461 1) $largest84462 $x85463))))

; loop entry $main_inv33
(assert
  (forall (($array82465 (Array Int Int)) ($largest84467 Int) ($x85468 Int) ($i83466 Int))
    (=> (and (= $largest84467 (select $array82465 0))
             ($main_sum32 $array82465 $i83466 $largest84467 $x85468))
        ($main_inv33 $array82465 1 $largest84467 $x85468))))

; loop term $main_sum33
(assert
  (forall (($array82469 (Array Int Int)) ($i83470 Int) ($largest84471 Int) ($x85472 Int))
    (=> (and (not (< $i83470 100000))
             ($main_inv33 $array82469 $i83470 $largest84471 $x85472))
        ($main_sum33 $array82469 $i83470 $largest84471 $x85472))))

; if then
(assert
  (forall (($array82469 (Array Int Int)) ($i83470 Int) ($x85472 Int) ($largest84471 Int))
    (=> (and (< $largest84471 (select $array82469 $i83470))
             (< $i83470 100000)
             ($main_inv33 $array82469 $i83470 $largest84471 $x85472))
        ($main_if17 $array82469 $i83470 (select $array82469 $i83470) $x85472))))

; if else
(assert
  (forall (($array82469 (Array Int Int)) ($i83470 Int) ($largest84471 Int) ($x85472 Int))
    (=> (and (not (< $largest84471 (select $array82469 $i83470)))
             (< $i83470 100000)
             ($main_inv33 $array82469 $i83470 $largest84471 $x85472))
        ($main_if17 $array82469 $i83470 $largest84471 $x85472))))

; forwards $main_inv33
(assert
  (forall (($array82473 (Array Int Int)) ($i83474 Int) ($largest84475 Int) ($x85476 Int))
    (=> (and ($main_if17 $array82473 $i83474 $largest84475 $x85476))
        ($main_inv33 $array82473 (+ $i83474 1) $largest84475 $x85476))))

; loop entry $main_inv34
(assert
  (forall (($array82477 (Array Int Int)) ($i83478 Int) ($largest84479 Int) ($x85480 Int))
    (=> (and ($main_sum33 $array82477 $i83478 $largest84479 $x85480))
        ($main_inv34 $array82477 $i83478 $largest84479 0))))

; loop term $main_sum34
(assert
  (forall (($array82481 (Array Int Int)) ($i83482 Int) ($largest84483 Int) ($x85484 Int))
    (=> (and (not (< $x85484 100000))
             ($main_inv34 $array82481 $i83482 $largest84483 $x85484))
        ($main_sum34 $array82481 $i83482 $largest84483 $x85484))))

; __VERIFIER_assert precondition
(assert
  (forall (($largest84483 Int) ($array82481 (Array Int Int)) ($x85484 Int) ($i83482 Int))
    (=> (and (< $x85484 100000)
             ($main_inv34 $array82481 $i83482 $largest84483 $x85484))
        ($__VERIFIER_assert_pre (ite (>= $largest84483 (select $array82481 $x85484)) 1 0)))))

; forwards $main_inv34
(assert
  (forall (($array82481 (Array Int Int)) ($i83482 Int) ($largest84483 Int) ($x85484 Int))
    (=> (and (__VERIFIER_assert (ite (>= $largest84483 (select $array82481 $x85484)) 1 0))
             (< $x85484 100000)
             ($main_inv34 $array82481 $i83482 $largest84483 $x85484))
        ($main_inv34 $array82481 $i83482 $largest84483 (+ $x85484 1)))))

(check-sat)
