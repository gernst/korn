(set-logic HORN)

(declare-fun $main_sum534 (Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $assume_abort_if_not_if393 (Int) Bool)
(declare-fun $main_if395 (Int Int Int Int Int) Bool)
(declare-fun $main_inv534 (Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_nondet_unsigned_int (Int) Bool)
(declare-fun $main_if396 (Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_if397 (Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if394 (Int) Bool)
(declare-fun $main_sum533 (Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_unsigned_int_pre () Bool)
(declare-fun $main_inv533 (Int Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if393 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond7348 Int))
    (=> (and ($assume_abort_if_not_if393 cond7348))
        (assume_abort_if_not cond7348))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond7349 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond7349))
        false)))

; if then
(assert
  (forall ((cond7349 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond7349))
        ($__VERIFIER_assert_if394 cond7349))))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if394 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond7350 Int))
    (=> (and ($__VERIFIER_assert_if394 cond7350))
        (__VERIFIER_assert cond7350))))

; loop entry $main_inv533
(assert
  (forall (($int7351 Int))
    (=> (and (<= 0 $int7351)
             (<= $int7351 4294967295))
        ($main_inv533 $int7351 1 0 $int7351 1))))

; loop term $main_sum533
(assert
  (forall (($b7757356 Int) ($q7737354 Int) ($A7717352 Int) ($B7727353 Int) ($r7747355 Int))
    (=> (and (= 1 0)
             ($main_inv533 $A7717352 $B7727353 $q7737354 $r7747355 $b7757356))
        ($main_sum533 $A7717352 $B7727353 $q7737354 $r7747355 $b7757356))))

; break $main_sum533
(assert
  (forall (($b7757356 Int) ($q7737354 Int) ($A7717352 Int) ($B7727353 Int) ($r7747355 Int))
    (=> (and (not (>= $r7747355 $b7757356))
             (not (= 1 0))
             ($main_inv533 $A7717352 $B7727353 $q7737354 $r7747355 $b7757356))
        ($main_sum533 $A7717352 $B7727353 $q7737354 $r7747355 $b7757356))))

; if else
(assert
  (forall (($b7757356 Int) ($q7737354 Int) ($A7717352 Int) ($B7727353 Int) ($r7747355 Int))
    (=> (and (>= $r7747355 $b7757356)
             (not (= 1 0))
             ($main_inv533 $A7717352 $B7727353 $q7737354 $r7747355 $b7757356))
        ($main_if395 $A7717352 $B7727353 $q7737354 $r7747355 $b7757356))))

; forwards $main_inv533
(assert
  (forall (($q7737359 Int) ($b7757361 Int) ($A7717357 Int) ($r7747360 Int) ($B7727358 Int))
    (=> (and ($main_if395 $A7717357 $B7727358 $q7737359 $r7747360 $b7757361))
        ($main_inv533 $A7717357 $B7727358 $q7737359 $r7747360 (* 2 $b7757361)))))

; loop entry $main_inv534
(assert
  (forall (($A7717362 Int) ($b7757366 Int) ($r7747365 Int) ($B7727363 Int) ($q7737364 Int))
    (=> (and ($main_sum533 $A7717362 $B7727363 $q7737364 $r7747365 $b7757366))
        ($main_inv534 $A7717362 $B7727363 $q7737364 $r7747365 $b7757366))))

; loop term $main_sum534
(assert
  (forall (($r7747370 Int) ($B7727368 Int) ($b7757371 Int) ($q7737369 Int) ($A7717367 Int))
    (=> (and (= 1 0)
             ($main_inv534 $A7717367 $B7727368 $q7737369 $r7747370 $b7757371))
        ($main_sum534 $A7717367 $B7727368 $q7737369 $r7747370 $b7757371))))

; __VERIFIER_assert precondition
(assert
  (forall (($r7747370 Int) ($B7727368 Int) ($b7757371 Int) ($q7737369 Int) ($A7717367 Int))
    (=> (and (not (= 1 0))
             ($main_inv534 $A7717367 $B7727368 $q7737369 $r7747370 $b7757371))
        ($__VERIFIER_assert_pre (ite (= $A7717367 (+ (* $q7737369 $b7757371) $r7747370)) 1 0)))))

; break $main_sum534
(assert
  (forall (($r7747370 Int) ($B7727368 Int) ($b7757371 Int) ($q7737369 Int) ($A7717367 Int))
    (=> (and (= $b7757371 $B7727368)
             (__VERIFIER_assert (ite (= $A7717367 (+ (* $q7737369 $b7757371) $r7747370)) 1 0))
             (not (= 1 0))
             ($main_inv534 $A7717367 $B7727368 $q7737369 $r7747370 $b7757371))
        ($main_sum534 $A7717367 $B7727368 $q7737369 $r7747370 $b7757371))))

; if else
(assert
  (forall (($r7747370 Int) ($B7727368 Int) ($b7757371 Int) ($q7737369 Int) ($A7717367 Int))
    (=> (and (not (= $b7757371 $B7727368))
             (__VERIFIER_assert (ite (= $A7717367 (+ (* $q7737369 $b7757371) $r7747370)) 1 0))
             (not (= 1 0))
             ($main_inv534 $A7717367 $B7727368 $q7737369 $r7747370 $b7757371))
        ($main_if396 $A7717367 $B7727368 $q7737369 $r7747370 $b7757371))))

; if then
(assert
  (forall (($q7737374 Int) ($r7747375 Int) ($B7727373 Int) ($b7757376 Int) ($A7717372 Int))
    (=> (and (>= $r7747375 (div $b7757376 2))
             ($main_if396 $A7717372 $B7727373 $q7737374 $r7747375 $b7757376))
        ($main_if397 $A7717372 $B7727373 (+ (* 2 $q7737374) 1) (- $r7747375 (div $b7757376 2)) (div $b7757376 2)))))

; if else
(assert
  (forall (($q7737374 Int) ($r7747375 Int) ($B7727373 Int) ($b7757376 Int) ($A7717372 Int))
    (=> (and (not (>= $r7747375 (div $b7757376 2)))
             ($main_if396 $A7717372 $B7727373 $q7737374 $r7747375 $b7757376))
        ($main_if397 $A7717372 $B7727373 (* 2 $q7737374) $r7747375 (div $b7757376 2)))))

; forwards $main_inv534
(assert
  (forall (($b7757381 Int) ($B7727378 Int) ($q7737379 Int) ($r7747380 Int) ($A7717377 Int))
    (=> (and ($main_if397 $A7717377 $B7727378 $q7737379 $r7747380 $b7757381))
        ($main_inv534 $A7717377 $B7727378 $q7737379 $r7747380 $b7757381))))

; __VERIFIER_assert precondition
(assert
  (forall (($r7747385 Int) ($B7727383 Int) ($q7737384 Int) ($A7717382 Int) ($b7757386 Int))
    (=> (and ($main_sum534 $A7717382 $B7727383 $q7737384 $r7747385 $b7757386))
        ($__VERIFIER_assert_pre (ite (= $A7717382 (+ (* $q7737384 $b7757386) $r7747385)) 1 0)))))

(check-sat)
