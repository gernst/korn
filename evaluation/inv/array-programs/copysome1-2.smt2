(set-logic HORN)

(declare-fun $main_inv423 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum421 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv422 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_if150 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum422 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv421 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_if151 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if149 (Int) Bool)
(declare-fun $main_sum423 ((Array Int Int) (Array Int Int) Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond5443 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond5443))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if149 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5444 Int))
    (=> (and ($__VERIFIER_assert_if149 cond5444))
        (__VERIFIER_assert cond5444))))

; loop entry $main_inv421
(assert
  (forall (($a1521 (Array Int Int)) ($a2522 (Array Int Int)) ($x525 Int))
        ($main_inv421 $a1521 $a2522 0 150000 $x525)))

; loop term $main_sum421
(assert
  (forall (($x5255449 Int) ($a15215445 (Array Int Int)) ($i5235447 Int) ($z5245448 Int) ($a25225446 (Array Int Int)))
    (=> (and (not (< $i5235447 200000))
             ($main_inv421 $a15215445 $a25225446 $i5235447 $z5245448 $x5255449))
        ($main_sum421 $a15215445 $a25225446 $i5235447 $z5245448 $x5255449))))

; forwards $main_inv421
(assert
  (forall (($a15215445 (Array Int Int)) ($int5450 Int) ($i5235447 Int) ($z5245448 Int) ($a25225446 (Array Int Int)) ($int5451 Int) ($x5255449 Int))
    (=> (and (<= (- 2147483648) $int5451)
             (<= $int5451 2147483647)
             (<= (- 2147483648) $int5450)
             (<= $int5450 2147483647)
             (< $i5235447 200000)
             ($main_inv421 $a15215445 $a25225446 $i5235447 $z5245448 $x5255449))
        ($main_inv421 (store $a15215445 $i5235447 $int5450) (store $a25225446 $i5235447 $int5451) (+ $i5235447 1) $z5245448 $x5255449))))

; loop entry $main_inv422
(assert
  (forall (($z5245455 Int) ($a15215452 (Array Int Int)) ($x5255456 Int) ($i5235454 Int) ($a25225453 (Array Int Int)))
    (=> (and ($main_sum421 $a15215452 $a25225453 $i5235454 $z5245455 $x5255456))
        ($main_inv422 $a15215452 $a25225453 0 $z5245455 $x5255456))))

; loop term $main_sum422
(assert
  (forall (($i5235459 Int) ($z5245460 Int) ($x5255461 Int) ($a15215457 (Array Int Int)) ($a25225458 (Array Int Int)))
    (=> (and (not (< $i5235459 200000))
             ($main_inv422 $a15215457 $a25225458 $i5235459 $z5245460 $x5255461))
        ($main_sum422 $a15215457 $a25225458 $i5235459 $z5245460 $x5255461))))

; if then
(assert
  (forall (($i5235459 Int) ($z5245460 Int) ($x5255461 Int) ($a15215457 (Array Int Int)) ($a25225458 (Array Int Int)))
    (=> (and (not (= $i5235459 $z5245460))
             (< $i5235459 200000)
             ($main_inv422 $a15215457 $a25225458 $i5235459 $z5245460 $x5255461))
        ($main_if150 $a15215457 (store $a25225458 $i5235459 (select $a15215457 $i5235459)) $i5235459 $z5245460 $x5255461))))

; if else
(assert
  (forall (($i5235459 Int) ($z5245460 Int) ($x5255461 Int) ($a15215457 (Array Int Int)) ($a25225458 (Array Int Int)))
    (=> (and (= $i5235459 $z5245460)
             (< $i5235459 200000)
             ($main_inv422 $a15215457 $a25225458 $i5235459 $z5245460 $x5255461))
        ($main_if150 $a15215457 $a25225458 $i5235459 $z5245460 $x5255461))))

; forwards $main_inv422
(assert
  (forall (($i5235464 Int) ($a25225463 (Array Int Int)) ($a15215462 (Array Int Int)) ($z5245465 Int) ($x5255466 Int))
    (=> (and ($main_if150 $a15215462 $a25225463 $i5235464 $z5245465 $x5255466))
        ($main_inv422 $a15215462 $a25225463 (+ $i5235464 1) $z5245465 $x5255466))))

; loop entry $main_inv423
(assert
  (forall (($a25225468 (Array Int Int)) ($x5255471 Int) ($a15215467 (Array Int Int)) ($i5235469 Int) ($z5245470 Int))
    (=> (and ($main_sum422 $a15215467 $a25225468 $i5235469 $z5245470 $x5255471))
        ($main_inv423 $a15215467 $a25225468 $i5235469 150001 0))))

; loop term $main_sum423
(assert
  (forall (($a25225473 (Array Int Int)) ($z5245475 Int) ($i5235474 Int) ($a15215472 (Array Int Int)) ($x5255476 Int))
    (=> (and (not (< $x5255476 200000))
             ($main_inv423 $a15215472 $a25225473 $i5235474 $z5245475 $x5255476))
        ($main_sum423 $a15215472 $a25225473 $i5235474 $z5245475 $x5255476))))

; __VERIFIER_assert precondition
(assert
  (forall (($a25225473 (Array Int Int)) ($z5245475 Int) ($i5235474 Int) ($a15215472 (Array Int Int)) ($x5255476 Int))
    (=> (and (not (= $x5255476 $z5245475))
             (< $x5255476 200000)
             ($main_inv423 $a15215472 $a25225473 $i5235474 $z5245475 $x5255476))
        ($__VERIFIER_assert_pre (ite (= (select $a15215472 $x5255476) (select $a25225473 $x5255476)) 1 0)))))

; if then
(assert
  (forall (($a25225473 (Array Int Int)) ($z5245475 Int) ($i5235474 Int) ($a15215472 (Array Int Int)) ($x5255476 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a15215472 $x5255476) (select $a25225473 $x5255476)) 1 0))
             (not (= $x5255476 $z5245475))
             (< $x5255476 200000)
             ($main_inv423 $a15215472 $a25225473 $i5235474 $z5245475 $x5255476))
        ($main_if151 $a15215472 $a25225473 $i5235474 $z5245475 $x5255476))))

; if else
(assert
  (forall (($a25225473 (Array Int Int)) ($z5245475 Int) ($i5235474 Int) ($a15215472 (Array Int Int)) ($x5255476 Int))
    (=> (and (= $x5255476 $z5245475)
             (< $x5255476 200000)
             ($main_inv423 $a15215472 $a25225473 $i5235474 $z5245475 $x5255476))
        ($main_if151 $a15215472 $a25225473 $i5235474 $z5245475 $x5255476))))

; forwards $main_inv423
(assert
  (forall (($a15215477 (Array Int Int)) ($z5245480 Int) ($i5235479 Int) ($x5255481 Int) ($a25225478 (Array Int Int)))
    (=> (and ($main_if151 $a15215477 $a25225478 $i5235479 $z5245480 $x5255481))
        ($main_inv423 $a15215477 $a25225478 $i5235479 $z5245480 (+ $x5255481 1)))))

(check-sat)
