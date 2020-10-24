(set-logic HORN)

(declare-fun $main_inv388 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum387 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv387 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv386 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum386 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if123 (Int Int) Bool)
(declare-fun $main_sum388 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond7315 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond7315))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if123 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond7316 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if123 cond cond7316))
        (__VERIFIER_assert cond7316))))

; loop entry $main_inv386
(assert
  (forall (($a468 (Array Int Int)) ($b469 (Array Int Int)) ($i470 Int) ($j471 Int))
    (=> (and (= $j471 0)
             (= $i470 0))
        ($main_inv386 $a468 $b469 $i470 $j471))))

; loop term $main_sum386
(assert
  (forall (($a4687317 (Array Int Int)) ($b4697318 (Array Int Int)) ($i4707319 Int) ($j4717320 Int))
    (=> (and (not (< $i4707319 100000)))
        ($main_sum386 $a4687317 $b4697318 $i4707319 $j4717320 $a4687317 $b4697318 $i4707319 $j4717320))))

; forwards $main_inv386
(assert
  (forall (($a4687317 (Array Int Int)) ($i4707319 Int) ($b4697318 (Array Int Int)) ($int7321 Int) ($j4717320 Int))
    (=> (and (<= (- 2147483648) $int7321)
             (<= $int7321 2147483647)
             (< $i4707319 100000)
             ($main_inv386 $a4687317 $b4697318 $i4707319 $j4717320))
        ($main_inv386 $a4687317 (store $b4697318 $i4707319 $int7321) (+ $i4707319 1) $j4717320))))

; backwards $main_sum386
(assert
  (forall (($b4697323 (Array Int Int)) ($a4687317 (Array Int Int)) ($i4707319 Int) ($b4697318 (Array Int Int)) ($j4717325 Int) ($int7321 Int) ($j4717320 Int) ($i4707324 Int) ($a4687322 (Array Int Int)))
    (=> (and ($main_sum386 $a4687317 (store $b4697318 $i4707319 $int7321) (+ $i4707319 1) $j4717320 $a4687322 $b4697323 $i4707324 $j4717325)
             (<= (- 2147483648) $int7321)
             (<= $int7321 2147483647)
             (< $i4707319 100000))
        ($main_sum386 $a4687317 $b4697318 $i4707319 $j4717320 $a4687322 $b4697323 $i4707324 $j4717325))))

; loop entry $main_inv387
(assert
  (forall (($i470 Int) ($a468 (Array Int Int)) ($j4717329 Int) ($j471 Int) ($a4687326 (Array Int Int)) ($b4697327 (Array Int Int)) ($i4707328 Int) ($b469 (Array Int Int)))
    (=> (and ($main_sum386 $a468 $b469 $i470 $j471 $a4687326 $b4697327 $i4707328 $j4717329)
             (= $j471 0)
             (= $i470 0))
        ($main_inv387 $a4687326 $b4697327 1 $j4717329))))

; loop term $main_sum387
(assert
  (forall (($a4687330 (Array Int Int)) ($b4697331 (Array Int Int)) ($i4707332 Int) ($j4717333 Int))
    (=> (and (not (< $i4707332 100000)))
        ($main_sum387 $a4687330 $b4697331 $i4707332 $j4717333 $a4687330 $b4697331 $i4707332 $j4717333))))

; forwards $main_inv387
(assert
  (forall (($a4687330 (Array Int Int)) ($j4717333 Int) ($b4697331 (Array Int Int)) ($i4707332 Int))
    (=> (and (< $i4707332 100000)
             ($main_inv387 $a4687330 $b4697331 $i4707332 $j4717333))
        ($main_inv387 (store $a4687330 $j4717333 (select $b4697331 $i4707332)) $b4697331 (+ $i4707332 4) (+ $j4717333 1)))))

; backwards $main_sum387
(assert
  (forall (($j4717333 Int) ($a4687330 (Array Int Int)) ($b4697331 (Array Int Int)) ($b4697335 (Array Int Int)) ($i4707332 Int) ($a4687334 (Array Int Int)) ($i4707336 Int) ($j4717337 Int))
    (=> (and ($main_sum387 (store $a4687330 $j4717333 (select $b4697331 $i4707332)) $b4697331 (+ $i4707332 4) (+ $j4717333 1) $a4687334 $b4697335 $i4707336 $j4717337)
             (< $i4707332 100000))
        ($main_sum387 $a4687330 $b4697331 $i4707332 $j4717333 $a4687334 $b4697335 $i4707336 $j4717337))))

; loop entry $main_inv388
(assert
  (forall (($i470 Int) ($a468 (Array Int Int)) ($b4697339 (Array Int Int)) ($j4717329 Int) ($j471 Int) ($a4687326 (Array Int Int)) ($b4697327 (Array Int Int)) ($a4687338 (Array Int Int)) ($i4707328 Int) ($i4707340 Int) ($b469 (Array Int Int)) ($j4717341 Int))
    (=> (and ($main_sum387 $a4687326 $b4697327 1 $j4717329 $a4687338 $b4697339 $i4707340 $j4717341)
             ($main_sum386 $a468 $b469 $i470 $j471 $a4687326 $b4697327 $i4707328 $j4717329)
             (= $j471 0)
             (= $i470 0))
        ($main_inv388 $a4687338 $b4697339 1 0))))

; loop term $main_sum388
(assert
  (forall (($a4687342 (Array Int Int)) ($b4697343 (Array Int Int)) ($i4707344 Int) ($j4717345 Int))
    (=> (and (not (< $i4707344 100000)))
        ($main_sum388 $a4687342 $b4697343 $i4707344 $j4717345 $a4687342 $b4697343 $i4707344 $j4717345))))

; __VERIFIER_assert precondition
(assert
  (forall (($a4687342 (Array Int Int)) ($j4717345 Int) ($b4697343 (Array Int Int)) ($i4707344 Int))
    (=> (and (< $i4707344 100000)
             ($main_inv388 $a4687342 $b4697343 $i4707344 $j4717345))
        ($__VERIFIER_assert_pre (ite (= (select $a4687342 $j4717345) (select $b4697343 (+ (* 4 $j4717345) 1))) 1 0)))))

; forwards $main_inv388
(assert
  (forall (($a4687342 (Array Int Int)) ($b4697343 (Array Int Int)) ($i4707344 Int) ($j4717345 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a4687342 $j4717345) (select $b4697343 (+ (* 4 $j4717345) 1))) 1 0))
             (< $i4707344 100000)
             ($main_inv388 $a4687342 $b4697343 $i4707344 $j4717345))
        ($main_inv388 $a4687342 $b4697343 (+ $i4707344 4) (+ $j4717345 1)))))

; backwards $main_sum388
(assert
  (forall (($b4697343 (Array Int Int)) ($i4707348 Int) ($a4687342 (Array Int Int)) ($a4687346 (Array Int Int)) ($j4717345 Int) ($j4717349 Int) ($i4707344 Int) ($b4697347 (Array Int Int)))
    (=> (and ($main_sum388 $a4687342 $b4697343 (+ $i4707344 4) (+ $j4717345 1) $a4687346 $b4697347 $i4707348 $j4717349)
             (__VERIFIER_assert (ite (= (select $a4687342 $j4717345) (select $b4697343 (+ (* 4 $j4717345) 1))) 1 0))
             (< $i4707344 100000))
        ($main_sum388 $a4687342 $b4697343 $i4707344 $j4717345 $a4687346 $b4697347 $i4707348 $j4717349))))

(check-sat)
