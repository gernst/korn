(set-logic HORN)

(declare-fun $main_inv328 ((Array Int Int) Int Int Int Int) Bool)
(declare-fun $main_sum328 ((Array Int Int) Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_if86 ((Array Int Int) Int Int Int Int) Bool)
(declare-fun $main_sum329 ((Array Int Int) Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum327 ((Array Int Int) Int Int Int Int) Bool)
(declare-fun $main_inv329 ((Array Int Int) Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv327 ((Array Int Int) Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if85 (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond4305 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond4305))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if85 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond4306 Int))
    (=> (and ($__VERIFIER_assert_if85 cond4306))
        (__VERIFIER_assert cond4306))))

; loop entry $main_inv327
(assert
  (forall (($j377 Int) ($a375 (Array Int Int)) ($min376 Int) ($x379 Int) ($i378 Int))
    (=> (and (= $j377 0)
             (= $min376 0))
        ($main_inv327 $a375 $min376 $j377 $i378 $x379))))

; loop term $main_sum327
(assert
  (forall (($a3754307 (Array Int Int)) ($min3764308 Int) ($x3794311 Int) ($j3774309 Int) ($i3784310 Int))
    (=> (and (not (< $j3774309 100000))
             ($main_inv327 $a3754307 $min3764308 $j3774309 $i3784310 $x3794311))
        ($main_sum327 $a3754307 $min3764308 $j3774309 $i3784310 $x3794311))))

; forwards $main_inv327
(assert
  (forall (($a3754307 (Array Int Int)) ($min3764308 Int) ($x3794311 Int) ($j3774309 Int) ($int4312 Int) ($i3784310 Int))
    (=> (and (<= (- 2147483648) $int4312)
             (<= $int4312 2147483647)
             (< $j3774309 100000)
             ($main_inv327 $a3754307 $min3764308 $j3774309 $i3784310 $x3794311))
        ($main_inv327 (store $a3754307 $j3774309 $int4312) $min3764308 (+ $j3774309 1) $i3784310 $x3794311))))

; loop entry $main_inv328
(assert
  (forall (($a3754313 (Array Int Int)) ($j3774315 Int) ($i3784316 Int) ($x3794317 Int) ($min3764314 Int))
    (=> (and (= $i3784316 0)
             ($main_sum327 $a3754313 $min3764314 $j3774315 $i3784316 $x3794317))
        ($main_inv328 $a3754313 $min3764314 $j3774315 $i3784316 $x3794317))))

; loop term $main_sum328
(assert
  (forall (($min3764319 Int) ($a3754318 (Array Int Int)) ($i3784321 Int) ($x3794322 Int) ($j3774320 Int))
    (=> (and (not (< $i3784321 100000))
             ($main_inv328 $a3754318 $min3764319 $j3774320 $i3784321 $x3794322))
        ($main_sum328 $a3754318 $min3764319 $j3774320 $i3784321 $x3794322))))

; if then
(assert
  (forall (($min3764319 Int) ($a3754318 (Array Int Int)) ($i3784321 Int) ($x3794322 Int) ($j3774320 Int))
    (=> (and (< (select $a3754318 $i3784321) $min3764319)
             (< $i3784321 100000)
             ($main_inv328 $a3754318 $min3764319 $j3774320 $i3784321 $x3794322))
        ($main_if86 $a3754318 (select $a3754318 $i3784321) $j3774320 $i3784321 $x3794322))))

; if else
(assert
  (forall (($min3764319 Int) ($a3754318 (Array Int Int)) ($i3784321 Int) ($x3794322 Int) ($j3774320 Int))
    (=> (and (not (< (select $a3754318 $i3784321) $min3764319))
             (< $i3784321 100000)
             ($main_inv328 $a3754318 $min3764319 $j3774320 $i3784321 $x3794322))
        ($main_if86 $a3754318 $min3764319 $j3774320 $i3784321 $x3794322))))

; forwards $main_inv328
(assert
  (forall (($min3764324 Int) ($x3794327 Int) ($j3774325 Int) ($i3784326 Int) ($a3754323 (Array Int Int)))
    (=> (and ($main_if86 $a3754323 $min3764324 $j3774325 $i3784326 $x3794327))
        ($main_inv328 $a3754323 $min3764324 $j3774325 (+ $i3784326 1) $x3794327))))

; loop entry $main_inv329
(assert
  (forall (($j3774330 Int) ($x3794332 Int) ($min3764329 Int) ($a3754328 (Array Int Int)) ($i3784331 Int))
    (=> (and ($main_sum328 $a3754328 $min3764329 $j3774330 $i3784331 $x3794332))
        ($main_inv329 $a3754328 $min3764329 $j3774330 $i3784331 0))))

; loop term $main_sum329
(assert
  (forall (($i3784336 Int) ($a3754333 (Array Int Int)) ($x3794337 Int) ($min3764334 Int) ($j3774335 Int))
    (=> (and (not (< $x3794337 100000))
             ($main_inv329 $a3754333 $min3764334 $j3774335 $i3784336 $x3794337))
        ($main_sum329 $a3754333 $min3764334 $j3774335 $i3784336 $x3794337))))

; __VERIFIER_assert precondition
(assert
  (forall (($i3784336 Int) ($a3754333 (Array Int Int)) ($x3794337 Int) ($min3764334 Int) ($j3774335 Int))
    (=> (and (< $x3794337 100000)
             ($main_inv329 $a3754333 $min3764334 $j3774335 $i3784336 $x3794337))
        ($__VERIFIER_assert_pre (ite (> (select $a3754333 $x3794337) $min3764334) 1 0)))))

; forwards $main_inv329
(assert
  (forall (($i3784336 Int) ($a3754333 (Array Int Int)) ($x3794337 Int) ($min3764334 Int) ($j3774335 Int))
    (=> (and (__VERIFIER_assert (ite (> (select $a3754333 $x3794337) $min3764334) 1 0))
             (< $x3794337 100000)
             ($main_inv329 $a3754333 $min3764334 $j3774335 $i3784336 $x3794337))
        ($main_inv329 $a3754333 $min3764334 $j3774335 $i3784336 (+ $x3794337 1)))))

(check-sat)
