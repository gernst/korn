(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_if61 (Int) Bool)
(declare-fun $main_inv203 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum200 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv202 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum203 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum202 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv201 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv200 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum201 ((Array Int Int) (Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond3430 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond3430))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if61 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond3431 Int))
    (=> (and ($__VERIFIER_assert_if61 cond3431))
        (__VERIFIER_assert cond3431))))

; loop entry $main_inv200
(assert
  (forall (($a298 (Array Int Int)) ($b299 (Array Int Int)) ($i300 Int) ($x301 Int))
    (=> (and (= $i300 0))
        ($main_inv200 $a298 $b299 $i300 $x301))))

; loop term $main_sum200
(assert
  (forall (($a2983432 (Array Int Int)) ($b2993433 (Array Int Int)) ($i3003434 Int) ($x3013435 Int))
    (=> (and (not (< $i3003434 100000))
             ($main_inv200 $a2983432 $b2993433 $i3003434 $x3013435))
        ($main_sum200 $a2983432 $b2993433 $i3003434 $x3013435))))

; forwards $main_inv200
(assert
  (forall (($a2983432 (Array Int Int)) ($i3003434 Int) ($b2993433 (Array Int Int)) ($x3013435 Int))
    (=> (and (< $i3003434 100000)
             ($main_inv200 $a2983432 $b2993433 $i3003434 $x3013435))
        ($main_inv200 (store $a2983432 $i3003434 42) $b2993433 (+ $i3003434 1) $x3013435))))

; loop entry $main_inv201
(assert
  (forall (($a2983436 (Array Int Int)) ($b2993437 (Array Int Int)) ($x3013439 Int) ($i3003438 Int))
    (=> (and ($main_sum200 $a2983436 $b2993437 $i3003438 $x3013439))
        ($main_inv201 $a2983436 $b2993437 0 $x3013439))))

; loop term $main_sum201
(assert
  (forall (($a2983440 (Array Int Int)) ($b2993441 (Array Int Int)) ($i3003442 Int) ($x3013443 Int))
    (=> (and (not (< $i3003442 100000))
             ($main_inv201 $a2983440 $b2993441 $i3003442 $x3013443))
        ($main_sum201 $a2983440 $b2993441 $i3003442 $x3013443))))

; forwards $main_inv201
(assert
  (forall (($a2983440 (Array Int Int)) ($b2993441 (Array Int Int)) ($i3003442 Int) ($x3013443 Int))
    (=> (and (< $i3003442 100000)
             ($main_inv201 $a2983440 $b2993441 $i3003442 $x3013443))
        ($main_inv201 $a2983440 (store $b2993441 $i3003442 (select $a2983440 $i3003442)) (+ $i3003442 1) $x3013443))))

; loop entry $main_inv202
(assert
  (forall (($a2983444 (Array Int Int)) ($b2993445 (Array Int Int)) ($x3013447 Int) ($i3003446 Int))
    (=> (and ($main_sum201 $a2983444 $b2993445 $i3003446 $x3013447))
        ($main_inv202 $a2983444 $b2993445 0 $x3013447))))

; loop term $main_sum202
(assert
  (forall (($a2983448 (Array Int Int)) ($b2993449 (Array Int Int)) ($i3003450 Int) ($x3013451 Int))
    (=> (and (not (< $i3003450 100000))
             ($main_inv202 $a2983448 $b2993449 $i3003450 $x3013451))
        ($main_sum202 $a2983448 $b2993449 $i3003450 $x3013451))))

; forwards $main_inv202
(assert
  (forall (($a2983448 (Array Int Int)) ($b2993449 (Array Int Int)) ($i3003450 Int) ($x3013451 Int))
    (=> (and (< $i3003450 100000)
             ($main_inv202 $a2983448 $b2993449 $i3003450 $x3013451))
        ($main_inv202 $a2983448 (store $b2993449 $i3003450 (+ (select $b2993449 $i3003450) $i3003450)) (+ $i3003450 1) $x3013451))))

; loop entry $main_inv203
(assert
  (forall (($a2983452 (Array Int Int)) ($b2993453 (Array Int Int)) ($i3003454 Int) ($x3013455 Int))
    (=> (and ($main_sum202 $a2983452 $b2993453 $i3003454 $x3013455))
        ($main_inv203 $a2983452 $b2993453 $i3003454 0))))

; loop term $main_sum203
(assert
  (forall (($a2983456 (Array Int Int)) ($b2993457 (Array Int Int)) ($i3003458 Int) ($x3013459 Int))
    (=> (and (not (< $x3013459 100000))
             ($main_inv203 $a2983456 $b2993457 $i3003458 $x3013459))
        ($main_sum203 $a2983456 $b2993457 $i3003458 $x3013459))))

; __VERIFIER_assert precondition
(assert
  (forall (($b2993457 (Array Int Int)) ($x3013459 Int) ($a2983456 (Array Int Int)) ($i3003458 Int))
    (=> (and (< $x3013459 100000)
             ($main_inv203 $a2983456 $b2993457 $i3003458 $x3013459))
        ($__VERIFIER_assert_pre (ite (= (select $b2993457 $x3013459) (+ 42 $x3013459)) 1 0)))))

; forwards $main_inv203
(assert
  (forall (($a2983456 (Array Int Int)) ($b2993457 (Array Int Int)) ($i3003458 Int) ($x3013459 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $b2993457 $x3013459) (+ 42 $x3013459)) 1 0))
             (< $x3013459 100000)
             ($main_inv203 $a2983456 $b2993457 $i3003458 $x3013459))
        ($main_inv203 $a2983456 $b2993457 $i3003458 (+ $x3013459 1)))))

(check-sat)
