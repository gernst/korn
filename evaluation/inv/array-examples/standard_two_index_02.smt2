(set-logic HORN)

(declare-fun $main_sum380 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv382 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if121 (Int) Bool)
(declare-fun $main_inv380 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum381 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum382 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv381 ((Array Int Int) (Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond5003 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond5003))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if121 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5004 Int))
    (=> (and ($__VERIFIER_assert_if121 cond5004))
        (__VERIFIER_assert cond5004))))

; loop entry $main_inv380
(assert
  (forall (($a460 (Array Int Int)) ($b461 (Array Int Int)) ($i462 Int) ($j463 Int))
    (=> (and (= $j463 0)
             (= $i462 0))
        ($main_inv380 $a460 $b461 $i462 $j463))))

; loop term $main_sum380
(assert
  (forall (($a4605005 (Array Int Int)) ($b4615006 (Array Int Int)) ($i4625007 Int) ($j4635008 Int))
    (=> (and (not (< $i4625007 100000))
             ($main_inv380 $a4605005 $b4615006 $i4625007 $j4635008))
        ($main_sum380 $a4605005 $b4615006 $i4625007 $j4635008))))

; forwards $main_inv380
(assert
  (forall (($a4605005 (Array Int Int)) ($j4635008 Int) ($int5009 Int) ($i4625007 Int) ($b4615006 (Array Int Int)))
    (=> (and (<= (- 2147483648) $int5009)
             (<= $int5009 2147483647)
             (< $i4625007 100000)
             ($main_inv380 $a4605005 $b4615006 $i4625007 $j4635008))
        ($main_inv380 $a4605005 (store $b4615006 $i4625007 $int5009) (+ $i4625007 1) $j4635008))))

; loop entry $main_inv381
(assert
  (forall (($a4605010 (Array Int Int)) ($b4615011 (Array Int Int)) ($j4635013 Int) ($i4625012 Int))
    (=> (and ($main_sum380 $a4605010 $b4615011 $i4625012 $j4635013))
        ($main_inv381 $a4605010 $b4615011 1 $j4635013))))

; loop term $main_sum381
(assert
  (forall (($a4605014 (Array Int Int)) ($b4615015 (Array Int Int)) ($i4625016 Int) ($j4635017 Int))
    (=> (and (not (< $i4625016 100000))
             ($main_inv381 $a4605014 $b4615015 $i4625016 $j4635017))
        ($main_sum381 $a4605014 $b4615015 $i4625016 $j4635017))))

; forwards $main_inv381
(assert
  (forall (($a4605014 (Array Int Int)) ($j4635017 Int) ($b4615015 (Array Int Int)) ($i4625016 Int))
    (=> (and (< $i4625016 100000)
             ($main_inv381 $a4605014 $b4615015 $i4625016 $j4635017))
        ($main_inv381 (store $a4605014 $j4635017 (select $b4615015 $i4625016)) $b4615015 (+ $i4625016 2) (+ $j4635017 1)))))

; loop entry $main_inv382
(assert
  (forall (($a4605018 (Array Int Int)) ($b4615019 (Array Int Int)) ($i4625020 Int) ($j4635021 Int))
    (=> (and ($main_sum381 $a4605018 $b4615019 $i4625020 $j4635021))
        ($main_inv382 $a4605018 $b4615019 1 0))))

; loop term $main_sum382
(assert
  (forall (($a4605022 (Array Int Int)) ($b4615023 (Array Int Int)) ($i4625024 Int) ($j4635025 Int))
    (=> (and (not (< $i4625024 100000))
             ($main_inv382 $a4605022 $b4615023 $i4625024 $j4635025))
        ($main_sum382 $a4605022 $b4615023 $i4625024 $j4635025))))

; __VERIFIER_assert precondition
(assert
  (forall (($a4605022 (Array Int Int)) ($j4635025 Int) ($b4615023 (Array Int Int)) ($i4625024 Int))
    (=> (and (< $i4625024 100000)
             ($main_inv382 $a4605022 $b4615023 $i4625024 $j4635025))
        ($__VERIFIER_assert_pre (ite (= (select $a4605022 $j4635025) (select $b4615023 (+ (* 2 $j4635025) 1))) 1 0)))))

; forwards $main_inv382
(assert
  (forall (($a4605022 (Array Int Int)) ($b4615023 (Array Int Int)) ($i4625024 Int) ($j4635025 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a4605022 $j4635025) (select $b4615023 (+ (* 2 $j4635025) 1))) 1 0))
             (< $i4625024 100000)
             ($main_inv382 $a4605022 $b4615023 $i4625024 $j4635025))
        ($main_inv382 $a4605022 $b4615023 (+ $i4625024 2) (+ $j4635025 1)))))

(check-sat)
