(set-logic HORN)

(declare-fun printOdd (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $printOdd_pre (Int) Bool)
(declare-fun $printEven_pre (Int) Bool)
(declare-fun $main_inv31 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv29 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum29 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum30 ((Array Int Int) Int Int) Bool)
(declare-fun $main_if15 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_if13 (Int) Bool)
(declare-fun $main_if14 ((Array Int Int) Int Int) Bool)
(declare-fun printEven (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum31 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv30 ((Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond430 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond430))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if13 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond431 Int))
    (=> (and ($__VERIFIER_assert_if13 cond431))
        (__VERIFIER_assert cond431))))

; __VERIFIER_assert precondition
(assert
  (forall ((i Int))
    (=> (and ($printEven_pre i))
        ($__VERIFIER_assert_pre (ite (= (mod i 2) 0) 1 0)))))

; post printEven
(assert
  (forall ((i Int))
    (=> (and (__VERIFIER_assert (ite (= (mod i 2) 0) 1 0))
             ($printEven_pre i))
        (printEven i))))

; __VERIFIER_assert precondition
(assert
  (forall ((i Int))
    (=> (and ($printOdd_pre i))
        ($__VERIFIER_assert_pre (ite (not (= (mod i 2) 0)) 1 0)))))

; post printOdd
(assert
  (forall ((i Int))
    (=> (and (__VERIFIER_assert (ite (not (= (mod i 2) 0)) 1 0))
             ($printOdd_pre i))
        (printOdd i))))

; loop entry $main_inv29
(assert
  (forall (($array79 (Array Int Int)) ($num81 Int) ($int432 Int))
    (=> (and (= $num81 $int432)
             (<= (- 2147483648) $int432)
             (<= $int432 2147483647))
        ($main_inv29 $array79 0 $num81))))

; loop term $main_sum29
(assert
  (forall (($array79433 (Array Int Int)) ($i80434 Int) ($num81435 Int))
    (=> (and (not (< $i80434 $num81435))
             ($main_inv29 $array79433 $i80434 $num81435))
        ($main_sum29 $array79433 $i80434 $num81435))))

; forwards $main_inv29
(assert
  (forall (($array79433 (Array Int Int)) ($i80434 Int) ($int436 Int) ($num81435 Int))
    (=> (and (<= (- 2147483648) $int436)
             (<= $int436 2147483647)
             (< $i80434 $num81435)
             ($main_inv29 $array79433 $i80434 $num81435))
        ($main_inv29 (store $array79433 $i80434 $int436) (+ $i80434 1) $num81435))))

; loop entry $main_inv30
(assert
  (forall (($array79437 (Array Int Int)) ($num81439 Int) ($i80438 Int))
    (=> (and ($main_sum29 $array79437 $i80438 $num81439))
        ($main_inv30 $array79437 0 $num81439))))

; loop term $main_sum30
(assert
  (forall (($array79440 (Array Int Int)) ($i80441 Int) ($num81442 Int))
    (=> (and (not (< $i80441 $num81442))
             ($main_inv30 $array79440 $i80441 $num81442))
        ($main_sum30 $array79440 $i80441 $num81442))))

; printEven precondition
(assert
  (forall (($array79440 (Array Int Int)) ($i80441 Int) ($num81442 Int))
    (=> (and (= (mod (select $array79440 $i80441) 2) 0)
             (< $i80441 $num81442)
             ($main_inv30 $array79440 $i80441 $num81442))
        ($printEven_pre (select $array79440 $i80441)))))

; if then
(assert
  (forall (($array79440 (Array Int Int)) ($i80441 Int) ($num81442 Int))
    (=> (and (printEven (select $array79440 $i80441))
             (= (mod (select $array79440 $i80441) 2) 0)
             (< $i80441 $num81442)
             ($main_inv30 $array79440 $i80441 $num81442))
        ($main_if14 $array79440 $i80441 $num81442))))

; if else
(assert
  (forall (($array79440 (Array Int Int)) ($i80441 Int) ($num81442 Int))
    (=> (and (not (= (mod (select $array79440 $i80441) 2) 0))
             (< $i80441 $num81442)
             ($main_inv30 $array79440 $i80441 $num81442))
        ($main_if14 $array79440 $i80441 $num81442))))

; forwards $main_inv30
(assert
  (forall (($array79443 (Array Int Int)) ($i80444 Int) ($num81445 Int))
    (=> (and ($main_if14 $array79443 $i80444 $num81445))
        ($main_inv30 $array79443 (+ $i80444 1) $num81445))))

; loop entry $main_inv31
(assert
  (forall (($array79446 (Array Int Int)) ($num81448 Int) ($i80447 Int))
    (=> (and ($main_sum30 $array79446 $i80447 $num81448))
        ($main_inv31 $array79446 0 $num81448))))

; loop term $main_sum31
(assert
  (forall (($array79449 (Array Int Int)) ($i80450 Int) ($num81451 Int))
    (=> (and (not (< $i80450 $num81451))
             ($main_inv31 $array79449 $i80450 $num81451))
        ($main_sum31 $array79449 $i80450 $num81451))))

; printOdd precondition
(assert
  (forall (($array79449 (Array Int Int)) ($i80450 Int) ($num81451 Int))
    (=> (and (not (= (mod (select $array79449 $i80450) 2) 0))
             (< $i80450 $num81451)
             ($main_inv31 $array79449 $i80450 $num81451))
        ($printOdd_pre (select $array79449 $i80450)))))

; if then
(assert
  (forall (($array79449 (Array Int Int)) ($i80450 Int) ($num81451 Int))
    (=> (and (printOdd (select $array79449 $i80450))
             (not (= (mod (select $array79449 $i80450) 2) 0))
             (< $i80450 $num81451)
             ($main_inv31 $array79449 $i80450 $num81451))
        ($main_if15 $array79449 $i80450 $num81451))))

; if else
(assert
  (forall (($array79449 (Array Int Int)) ($i80450 Int) ($num81451 Int))
    (=> (and (= (mod (select $array79449 $i80450) 2) 0)
             (< $i80450 $num81451)
             ($main_inv31 $array79449 $i80450 $num81451))
        ($main_if15 $array79449 $i80450 $num81451))))

; forwards $main_inv31
(assert
  (forall (($array79452 (Array Int Int)) ($i80453 Int) ($num81454 Int))
    (=> (and ($main_if15 $array79452 $i80453 $num81454))
        ($main_inv31 $array79452 (+ $i80453 1) $num81454))))

(check-sat)
