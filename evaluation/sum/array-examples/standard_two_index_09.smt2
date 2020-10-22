(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv401 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if128 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv402 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum401 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum403 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv403 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum402 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond7510 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond7510))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if128 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond7511 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if128 cond cond7511))
        (__VERIFIER_assert cond7511))))

; loop entry $main_inv401
(assert
  (forall (($a488 (Array Int Int)) ($b489 (Array Int Int)) ($i490 Int) ($j491 Int))
    (=> (and (= $j491 0)
             (= $i490 0))
        ($main_inv401 $a488 $b489 $i490 $j491))))

; loop term $main_sum401
(assert
  (forall (($a4887512 (Array Int Int)) ($b4897513 (Array Int Int)) ($i4907514 Int) ($j4917515 Int))
    (=> (and (not (< $i4907514 100000)))
        ($main_sum401 $a4887512 $b4897513 $i4907514 $j4917515 $a4887512 $b4897513 $i4907514 $j4917515))))

; forwards $main_inv401
(assert
  (forall (($b4897513 (Array Int Int)) ($a4887512 (Array Int Int)) ($i4907514 Int) ($int7516 Int) ($j4917515 Int))
    (=> (and (<= (- 2147483648) $int7516)
             (<= $int7516 2147483647)
             (< $i4907514 100000)
             ($main_inv401 $a4887512 $b4897513 $i4907514 $j4917515))
        ($main_inv401 $a4887512 (store $b4897513 $i4907514 $int7516) (+ $i4907514 1) $j4917515))))

; backwards $main_sum401
(assert
  (forall (($j4917520 Int) ($b4897513 (Array Int Int)) ($i4907514 Int) ($a4887517 (Array Int Int)) ($b4897518 (Array Int Int)) ($int7516 Int) ($j4917515 Int) ($a4887512 (Array Int Int)) ($i4907519 Int))
    (=> (and ($main_sum401 $a4887512 (store $b4897513 $i4907514 $int7516) (+ $i4907514 1) $j4917515 $a4887517 $b4897518 $i4907519 $j4917520)
             (<= (- 2147483648) $int7516)
             (<= $int7516 2147483647)
             (< $i4907514 100000))
        ($main_sum401 $a4887512 $b4897513 $i4907514 $j4917515 $a4887517 $b4897518 $i4907519 $j4917520))))

; loop entry $main_inv402
(assert
  (forall (($a4887521 (Array Int Int)) ($i4907523 Int) ($a488 (Array Int Int)) ($b489 (Array Int Int)) ($b4897522 (Array Int Int)) ($i490 Int) ($j491 Int) ($j4917524 Int))
    (=> (and ($main_sum401 $a488 $b489 $i490 $j491 $a4887521 $b4897522 $i4907523 $j4917524)
             (= $j491 0)
             (= $i490 0))
        ($main_inv402 $a4887521 $b4897522 1 $j4917524))))

; loop term $main_sum402
(assert
  (forall (($a4887525 (Array Int Int)) ($b4897526 (Array Int Int)) ($i4907527 Int) ($j4917528 Int))
    (=> (and (not (< $i4907527 100000)))
        ($main_sum402 $a4887525 $b4897526 $i4907527 $j4917528 $a4887525 $b4897526 $i4907527 $j4917528))))

; forwards $main_inv402
(assert
  (forall (($a4887525 (Array Int Int)) ($j4917528 Int) ($b4897526 (Array Int Int)) ($i4907527 Int))
    (=> (and (< $i4907527 100000)
             ($main_inv402 $a4887525 $b4897526 $i4907527 $j4917528))
        ($main_inv402 (store $a4887525 $j4917528 (select $b4897526 $i4907527)) $b4897526 (+ $i4907527 9) (+ $j4917528 1)))))

; backwards $main_sum402
(assert
  (forall (($i4907531 Int) ($a4887529 (Array Int Int)) ($a4887525 (Array Int Int)) ($j4917528 Int) ($j4917532 Int) ($i4907527 Int) ($b4897526 (Array Int Int)) ($b4897530 (Array Int Int)))
    (=> (and ($main_sum402 (store $a4887525 $j4917528 (select $b4897526 $i4907527)) $b4897526 (+ $i4907527 9) (+ $j4917528 1) $a4887529 $b4897530 $i4907531 $j4917532)
             (< $i4907527 100000))
        ($main_sum402 $a4887525 $b4897526 $i4907527 $j4917528 $a4887529 $b4897530 $i4907531 $j4917532))))

; loop entry $main_inv403
(assert
  (forall (($a4887521 (Array Int Int)) ($i4907523 Int) ($j4917536 Int) ($b489 (Array Int Int)) ($i490 Int) ($j491 Int) ($j4917524 Int) ($i4907535 Int) ($a488 (Array Int Int)) ($a4887533 (Array Int Int)) ($b4897522 (Array Int Int)) ($b4897534 (Array Int Int)))
    (=> (and ($main_sum402 $a4887521 $b4897522 1 $j4917524 $a4887533 $b4897534 $i4907535 $j4917536)
             ($main_sum401 $a488 $b489 $i490 $j491 $a4887521 $b4897522 $i4907523 $j4917524)
             (= $j491 0)
             (= $i490 0))
        ($main_inv403 $a4887533 $b4897534 1 0))))

; loop term $main_sum403
(assert
  (forall (($a4887537 (Array Int Int)) ($b4897538 (Array Int Int)) ($i4907539 Int) ($j4917540 Int))
    (=> (and (not (< $i4907539 100000)))
        ($main_sum403 $a4887537 $b4897538 $i4907539 $j4917540 $a4887537 $b4897538 $i4907539 $j4917540))))

; __VERIFIER_assert precondition
(assert
  (forall (($a4887537 (Array Int Int)) ($j4917540 Int) ($b4897538 (Array Int Int)) ($i4907539 Int))
    (=> (and (< $i4907539 100000)
             ($main_inv403 $a4887537 $b4897538 $i4907539 $j4917540))
        ($__VERIFIER_assert_pre (ite (= (select $a4887537 $j4917540) (select $b4897538 (+ (* 9 $j4917540) 1))) 1 0)))))

; forwards $main_inv403
(assert
  (forall (($a4887537 (Array Int Int)) ($b4897538 (Array Int Int)) ($i4907539 Int) ($j4917540 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a4887537 $j4917540) (select $b4897538 (+ (* 9 $j4917540) 1))) 1 0))
             (< $i4907539 100000)
             ($main_inv403 $a4887537 $b4897538 $i4907539 $j4917540))
        ($main_inv403 $a4887537 $b4897538 (+ $i4907539 9) (+ $j4917540 1)))))

; backwards $main_sum403
(assert
  (forall (($i4907543 Int) ($a4887537 (Array Int Int)) ($i4907539 Int) ($j4917544 Int) ($b4897542 (Array Int Int)) ($a4887541 (Array Int Int)) ($j4917540 Int) ($b4897538 (Array Int Int)))
    (=> (and ($main_sum403 $a4887537 $b4897538 (+ $i4907539 9) (+ $j4917540 1) $a4887541 $b4897542 $i4907543 $j4917544)
             (__VERIFIER_assert (ite (= (select $a4887537 $j4917540) (select $b4897538 (+ (* 9 $j4917540) 1))) 1 0))
             (< $i4907539 100000))
        ($main_sum403 $a4887537 $b4897538 $i4907539 $j4917540 $a4887541 $b4897542 $i4907543 $j4917544))))

(check-sat)
