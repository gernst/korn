(set-logic HORN)

(declare-fun $main_sum214 ((Array Int Int) Int Int Int Int) Bool)
(declare-fun $main_inv213 ((Array Int Int) Int Int Int Int) Bool)
(declare-fun $main_sum213 ((Array Int Int) Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_inv215 ((Array Int Int) Int Int Int Int) Bool)
(declare-fun $main_sum215 ((Array Int Int) Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if64 (Int) Bool)
(declare-fun $main_inv214 ((Array Int Int) Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond3549 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond3549))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if64 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond3550 Int))
    (=> (and ($__VERIFIER_assert_if64 cond3550))
        (__VERIFIER_assert cond3550))))

; loop entry $main_inv213
(assert
  (forall (($a311 (Array Int Int)) ($x315 Int) ($i313 Int) ($int3551 Int) ($e312 Int))
    (=> (and (= $i313 0)
             (= $e312 $int3551)
             (<= (- 2147483648) $int3551)
             (<= $int3551 2147483647))
        ($main_inv213 $a311 $e312 $i313 0 $x315))))

; loop term $main_sum213
(assert
  (forall (($i3133554 Int) ($a3113552 (Array Int Int)) ($e3123553 Int) ($x3153556 Int) ($j3143555 Int))
    (=> (and (not (< $j3143555 100000))
             ($main_inv213 $a3113552 $e3123553 $i3133554 $j3143555 $x3153556))
        ($main_sum213 $a3113552 $e3123553 $i3133554 $j3143555 $x3153556))))

; forwards $main_inv213
(assert
  (forall (($i3133554 Int) ($e3123553 Int) ($x3153556 Int) ($j3143555 Int) ($a3113552 (Array Int Int)) ($int3557 Int))
    (=> (and (<= (- 2147483648) $int3557)
             (<= $int3557 2147483647)
             (< $j3143555 100000)
             ($main_inv213 $a3113552 $e3123553 $i3133554 $j3143555 $x3153556))
        ($main_inv213 (store $a3113552 $j3143555 $int3557) $e3123553 $i3133554 (+ $j3143555 1) $x3153556))))

; loop entry $main_inv214
(assert
  (forall (($e3123559 Int) ($a3113558 (Array Int Int)) ($j3143561 Int) ($i3133560 Int) ($x3153562 Int))
    (=> (and ($main_sum213 $a3113558 $e3123559 $i3133560 $j3143561 $x3153562))
        ($main_inv214 $a3113558 $e3123559 $i3133560 $j3143561 $x3153562))))

; loop term $main_sum214
(assert
  (forall (($i3133565 Int) ($x3153567 Int) ($j3143566 Int) ($a3113563 (Array Int Int)) ($e3123564 Int))
    (=> (and (not (and (< $i3133565 100000) (not (= (select $a3113563 $i3133565) $e3123564))))
             ($main_inv214 $a3113563 $e3123564 $i3133565 $j3143566 $x3153567))
        ($main_sum214 $a3113563 $e3123564 $i3133565 $j3143566 $x3153567))))

; forwards $main_inv214
(assert
  (forall (($i3133565 Int) ($x3153567 Int) ($j3143566 Int) ($a3113563 (Array Int Int)) ($e3123564 Int))
    (=> (and (< $i3133565 100000)
             (not (= (select $a3113563 $i3133565) $e3123564))
             ($main_inv214 $a3113563 $e3123564 $i3133565 $j3143566 $x3153567))
        ($main_inv214 $a3113563 $e3123564 (+ $i3133565 1) $j3143566 $x3153567))))

; loop entry $main_inv215
(assert
  (forall (($x3153572 Int) ($j3143571 Int) ($a3113568 (Array Int Int)) ($e3123569 Int) ($i3133570 Int))
    (=> (and ($main_sum214 $a3113568 $e3123569 $i3133570 $j3143571 $x3153572))
        ($main_inv215 $a3113568 $e3123569 $i3133570 $j3143571 0))))

; loop term $main_sum215
(assert
  (forall (($x3153577 Int) ($e3123574 Int) ($j3143576 Int) ($i3133575 Int) ($a3113573 (Array Int Int)))
    (=> (and (not (< $x3153577 $i3133575))
             ($main_inv215 $a3113573 $e3123574 $i3133575 $j3143576 $x3153577))
        ($main_sum215 $a3113573 $e3123574 $i3133575 $j3143576 $x3153577))))

; __VERIFIER_assert precondition
(assert
  (forall (($x3153577 Int) ($e3123574 Int) ($j3143576 Int) ($i3133575 Int) ($a3113573 (Array Int Int)))
    (=> (and (< $x3153577 $i3133575)
             ($main_inv215 $a3113573 $e3123574 $i3133575 $j3143576 $x3153577))
        ($__VERIFIER_assert_pre (ite (not (= (select $a3113573 $x3153577) $e3123574)) 1 0)))))

; forwards $main_inv215
(assert
  (forall (($x3153577 Int) ($e3123574 Int) ($j3143576 Int) ($i3133575 Int) ($a3113573 (Array Int Int)))
    (=> (and (__VERIFIER_assert (ite (not (= (select $a3113573 $x3153577) $e3123574)) 1 0))
             (< $x3153577 $i3133575)
             ($main_inv215 $a3113573 $e3123574 $i3133575 $j3143576 $x3153577))
        ($main_inv215 $a3113573 $e3123574 $i3133575 $j3143576 (+ $x3153577 1)))))

(check-sat)
