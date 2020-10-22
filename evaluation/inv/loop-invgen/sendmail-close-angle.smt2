(set-logic HORN)

(declare-fun $main_inv477 (Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum477 (Int Int Int Int Int) Bool)
(declare-fun $main_if264 (Int Int Int Int Int) Bool)
(declare-fun $main_if262 (Int Int Int Int Int) Bool)
(declare-fun $main_if261 (Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if260 (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_END (Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_if259 (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_if263 (Int Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_out (Int Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if259 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond6448 Int))
    (=> (and ($assume_abort_if_not_if259 cond6448))
        (assume_abort_if_not cond6448))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond6449 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond6449))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if260 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6450 Int))
    (=> (and ($__VERIFIER_assert_if260 cond6450))
        (__VERIFIER_assert cond6450))))

; goto END
(assert
  (forall (($inlen638 Int) ($buf640 Int) ($bufferlen639 Int) ($buflim641 Int) ($int6452 Int) ($int6451 Int) ($in637 Int))
    (=> (and (not (> $bufferlen639 1))
             (= $bufferlen639 $int6452)
             (<= (- 2147483648) $int6452)
             (<= $int6452 2147483647)
             (= $inlen638 $int6451)
             (<= (- 2147483648) $int6451)
             (<= $int6451 2147483647))
        ($main_END $in637 $inlen638 $bufferlen639 $buf640 $buflim641))))

; if then
(assert
  (forall (($inlen638 Int) ($buf640 Int) ($bufferlen639 Int) ($buflim641 Int) ($int6452 Int) ($int6451 Int) ($in637 Int))
    (=> (and (> $bufferlen639 1)
             (= $bufferlen639 $int6452)
             (<= (- 2147483648) $int6452)
             (<= $int6452 2147483647)
             (= $inlen638 $int6451)
             (<= (- 2147483648) $int6451)
             (<= $int6451 2147483647))
        ($main_if261 $in637 $inlen638 $bufferlen639 $buf640 $buflim641))))

; goto END
(assert
  (forall (($in6376453 Int) ($inlen6386454 Int) ($buflim6416457 Int) ($buf6406456 Int) ($bufferlen6396455 Int))
    (=> (and (not (> $inlen6386454 0))
             ($main_if261 $in6376453 $inlen6386454 $bufferlen6396455 $buf6406456 $buflim6416457))
        ($main_END $in6376453 $inlen6386454 $bufferlen6396455 $buf6406456 $buflim6416457))))

; if then
(assert
  (forall (($in6376453 Int) ($inlen6386454 Int) ($buflim6416457 Int) ($buf6406456 Int) ($bufferlen6396455 Int))
    (=> (and (> $inlen6386454 0)
             ($main_if261 $in6376453 $inlen6386454 $bufferlen6396455 $buf6406456 $buflim6416457))
        ($main_if262 $in6376453 $inlen6386454 $bufferlen6396455 $buf6406456 $buflim6416457))))

; goto END
(assert
  (forall (($inlen6386459 Int) ($in6376458 Int) ($bufferlen6396460 Int) ($buflim6416462 Int) ($buf6406461 Int))
    (=> (and (not (< $bufferlen6396460 $inlen6386459))
             ($main_if262 $in6376458 $inlen6386459 $bufferlen6396460 $buf6406461 $buflim6416462))
        ($main_END $in6376458 $inlen6386459 $bufferlen6396460 $buf6406461 $buflim6416462))))

; if then
(assert
  (forall (($inlen6386459 Int) ($in6376458 Int) ($bufferlen6396460 Int) ($buflim6416462 Int) ($buf6406461 Int))
    (=> (and (< $bufferlen6396460 $inlen6386459)
             ($main_if262 $in6376458 $inlen6386459 $bufferlen6396460 $buf6406461 $buflim6416462))
        ($main_if263 $in6376458 $inlen6386459 $bufferlen6396460 $buf6406461 $buflim6416462))))

; loop entry $main_inv477
(assert
  (forall (($buf6406466 Int) ($in6376463 Int) ($inlen6386464 Int) ($buflim6416467 Int) ($bufferlen6396465 Int))
    (=> (and ($main_if263 $in6376463 $inlen6386464 $bufferlen6396465 $buf6406466 $buflim6416467))
        ($main_inv477 0 $inlen6386464 $bufferlen6396465 0 (- $bufferlen6396465 2)))))

; loop term $main_sum477
(assert
  (forall (($buflim6416472 Int) ($int6473 Int) ($inlen6386469 Int) ($bufferlen6396470 Int) ($buf6406471 Int) ($in6376468 Int))
    (=> (and (= $int6473 0)
             (<= (- 2147483648) $int6473)
             (<= $int6473 2147483647)
             ($main_inv477 $in6376468 $inlen6386469 $bufferlen6396470 $buf6406471 $buflim6416472))
        ($main_sum477 $in6376468 $inlen6386469 $bufferlen6396470 $buf6406471 $buflim6416472))))

; break $main_sum477
(assert
  (forall (($buflim6416472 Int) ($int6473 Int) ($inlen6386469 Int) ($bufferlen6396470 Int) ($buf6406471 Int) ($in6376468 Int))
    (=> (and (= $buf6406471 $buflim6416472)
             (not (= $int6473 0))
             (<= (- 2147483648) $int6473)
             (<= $int6473 2147483647)
             ($main_inv477 $in6376468 $inlen6386469 $bufferlen6396470 $buf6406471 $buflim6416472))
        ($main_sum477 $in6376468 $inlen6386469 $bufferlen6396470 $buf6406471 $buflim6416472))))

; if else
(assert
  (forall (($buflim6416472 Int) ($int6473 Int) ($inlen6386469 Int) ($bufferlen6396470 Int) ($buf6406471 Int) ($in6376468 Int))
    (=> (and (not (= $buf6406471 $buflim6416472))
             (not (= $int6473 0))
             (<= (- 2147483648) $int6473)
             (<= $int6473 2147483647)
             ($main_inv477 $in6376468 $inlen6386469 $bufferlen6396470 $buf6406471 $buflim6416472))
        ($main_if264 $in6376468 $inlen6386469 $bufferlen6396470 $buf6406471 $buflim6416472))))

; __VERIFIER_assert precondition
(assert
  (forall (($in6376474 Int) ($inlen6386475 Int) ($buf6406477 Int) ($bufferlen6396476 Int) ($buflim6416478 Int))
    (=> (and ($main_if264 $in6376474 $inlen6386475 $bufferlen6396476 $buf6406477 $buflim6416478))
        ($__VERIFIER_assert_pre (ite (<= 0 $buf6406477) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($in6376474 Int) ($inlen6386475 Int) ($buf6406477 Int) ($bufferlen6396476 Int) ($buflim6416478 Int))
    (=> (and (__VERIFIER_assert (ite (<= 0 $buf6406477) 1 0))
             ($main_if264 $in6376474 $inlen6386475 $bufferlen6396476 $buf6406477 $buflim6416478))
        ($__VERIFIER_assert_pre (ite (< $buf6406477 $bufferlen6396476) 1 0)))))

; label out
(assert
  (forall (($in6376474 Int) ($inlen6386475 Int) ($buf6406477 Int) ($bufferlen6396476 Int) ($buflim6416478 Int))
    (=> (and (__VERIFIER_assert (ite (< $buf6406477 $bufferlen6396476) 1 0))
             (__VERIFIER_assert (ite (<= 0 $buf6406477) 1 0))
             ($main_if264 $in6376474 $inlen6386475 $bufferlen6396476 $buf6406477 $buflim6416478))
        ($main_out $in6376474 $inlen6386475 $bufferlen6396476 (+ $buf6406477 1) $buflim6416478))))

; __VERIFIER_assert precondition
(assert
  (forall (($bufferlen6396481 Int) ($inlen6386480 Int) ($buflim6416483 Int) ($in6376479 Int) ($buf6406482 Int))
    (=> (and ($main_out $in6376479 $inlen6386480 $bufferlen6396481 $buf6406482 $buflim6416483))
        ($__VERIFIER_assert_pre (ite (<= 0 (+ $in6376479 1)) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($bufferlen6396481 Int) ($inlen6386480 Int) ($buflim6416483 Int) ($in6376479 Int) ($buf6406482 Int))
    (=> (and (__VERIFIER_assert (ite (<= 0 (+ $in6376479 1)) 1 0))
             ($main_out $in6376479 $inlen6386480 $bufferlen6396481 $buf6406482 $buflim6416483))
        ($__VERIFIER_assert_pre (ite (< (+ $in6376479 1) $inlen6386480) 1 0)))))

; forwards $main_inv477
(assert
  (forall (($bufferlen6396481 Int) ($inlen6386480 Int) ($buflim6416483 Int) ($in6376479 Int) ($buf6406482 Int))
    (=> (and (__VERIFIER_assert (ite (< (+ $in6376479 1) $inlen6386480) 1 0))
             (__VERIFIER_assert (ite (<= 0 (+ $in6376479 1)) 1 0))
             ($main_out $in6376479 $inlen6386480 $bufferlen6396481 $buf6406482 $buflim6416483))
        ($main_inv477 (+ $in6376479 1) $inlen6386480 $bufferlen6396481 $buf6406482 $buflim6416483))))

; __VERIFIER_assert precondition
(assert
  (forall (($bufferlen6396486 Int) ($inlen6386485 Int) ($buf6406487 Int) ($in6376484 Int) ($buflim6416488 Int))
    (=> (and ($main_sum477 $in6376484 $inlen6386485 $bufferlen6396486 $buf6406487 $buflim6416488))
        ($__VERIFIER_assert_pre (ite (<= 0 $buf6406487) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($bufferlen6396486 Int) ($inlen6386485 Int) ($buf6406487 Int) ($in6376484 Int) ($buflim6416488 Int))
    (=> (and (__VERIFIER_assert (ite (<= 0 $buf6406487) 1 0))
             ($main_sum477 $in6376484 $inlen6386485 $bufferlen6396486 $buf6406487 $buflim6416488))
        ($__VERIFIER_assert_pre (ite (< $buf6406487 $bufferlen6396486) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($bufferlen6396486 Int) ($inlen6386485 Int) ($buf6406487 Int) ($in6376484 Int) ($buflim6416488 Int))
    (=> (and (__VERIFIER_assert (ite (< $buf6406487 $bufferlen6396486) 1 0))
             (__VERIFIER_assert (ite (<= 0 $buf6406487) 1 0))
             ($main_sum477 $in6376484 $inlen6386485 $bufferlen6396486 $buf6406487 $buflim6416488))
        ($__VERIFIER_assert_pre (ite (<= 0 (+ $buf6406487 1)) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($bufferlen6396486 Int) ($inlen6386485 Int) ($buf6406487 Int) ($in6376484 Int) ($buflim6416488 Int))
    (=> (and (__VERIFIER_assert (ite (<= 0 (+ $buf6406487 1)) 1 0))
             (__VERIFIER_assert (ite (< $buf6406487 $bufferlen6396486) 1 0))
             (__VERIFIER_assert (ite (<= 0 $buf6406487) 1 0))
             ($main_sum477 $in6376484 $inlen6386485 $bufferlen6396486 $buf6406487 $buflim6416488))
        ($__VERIFIER_assert_pre (ite (< (+ $buf6406487 1) $bufferlen6396486) 1 0)))))

; label END
(assert
  (forall (($bufferlen6396486 Int) ($inlen6386485 Int) ($buf6406487 Int) ($in6376484 Int) ($buflim6416488 Int))
    (=> (and (__VERIFIER_assert (ite (< (+ $buf6406487 1) $bufferlen6396486) 1 0))
             (__VERIFIER_assert (ite (<= 0 (+ $buf6406487 1)) 1 0))
             (__VERIFIER_assert (ite (< $buf6406487 $bufferlen6396486) 1 0))
             (__VERIFIER_assert (ite (<= 0 $buf6406487) 1 0))
             ($main_sum477 $in6376484 $inlen6386485 $bufferlen6396486 $buf6406487 $buflim6416488))
        ($main_END $in6376484 $inlen6386485 $bufferlen6396486 (+ (+ $buf6406487 1) 1) $buflim6416488))))

(check-sat)
