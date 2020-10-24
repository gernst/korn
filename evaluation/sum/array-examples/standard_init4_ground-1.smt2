(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum238 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_sum234 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv236 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if71 (Int Int) Bool)
(declare-fun $main_inv235 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum235 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_inv238 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv234 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum236 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_sum237 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_inv237 ((Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond5381 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond5381))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if71 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5382 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if71 cond cond5382))
        (__VERIFIER_assert cond5382))))

; loop entry $main_inv234
(assert
  (forall (($a334 (Array Int Int)) ($i335 Int) ($x336 Int))
    (=> (and (= $i335 0))
        ($main_inv234 $a334 $i335 $x336))))

; loop term $main_sum234
(assert
  (forall (($a3345383 (Array Int Int)) ($i3355384 Int) ($x3365385 Int))
    (=> (and (not (< $i3355384 100000)))
        ($main_sum234 $a3345383 $i3355384 $x3365385 $a3345383 $i3355384 $x3365385))))

; forwards $main_inv234
(assert
  (forall (($a3345383 (Array Int Int)) ($i3355384 Int) ($x3365385 Int))
    (=> (and (< $i3355384 100000)
             ($main_inv234 $a3345383 $i3355384 $x3365385))
        ($main_inv234 (store $a3345383 $i3355384 42) (+ $i3355384 1) $x3365385))))

; backwards $main_sum234
(assert
  (forall (($a3345383 (Array Int Int)) ($i3355384 Int) ($i3355387 Int) ($x3365385 Int) ($a3345386 (Array Int Int)) ($x3365388 Int))
    (=> (and ($main_sum234 (store $a3345383 $i3355384 42) (+ $i3355384 1) $x3365385 $a3345386 $i3355387 $x3365388)
             (< $i3355384 100000))
        ($main_sum234 $a3345383 $i3355384 $x3365385 $a3345386 $i3355387 $x3365388))))

; loop entry $main_inv235
(assert
  (forall (($i335 Int) ($a3345389 (Array Int Int)) ($i3355390 Int) ($x336 Int) ($x3365391 Int) ($a334 (Array Int Int)))
    (=> (and ($main_sum234 $a334 $i335 $x336 $a3345389 $i3355390 $x3365391)
             (= $i335 0))
        ($main_inv235 $a3345389 0 $x3365391))))

; loop term $main_sum235
(assert
  (forall (($a3345392 (Array Int Int)) ($i3355393 Int) ($x3365394 Int))
    (=> (and (not (< $i3355393 100000)))
        ($main_sum235 $a3345392 $i3355393 $x3365394 $a3345392 $i3355393 $x3365394))))

; forwards $main_inv235
(assert
  (forall (($a3345392 (Array Int Int)) ($i3355393 Int) ($x3365394 Int))
    (=> (and (< $i3355393 100000)
             ($main_inv235 $a3345392 $i3355393 $x3365394))
        ($main_inv235 (store $a3345392 $i3355393 43) (+ $i3355393 1) $x3365394))))

; backwards $main_sum235
(assert
  (forall (($i3355396 Int) ($x3365397 Int) ($x3365394 Int) ($i3355393 Int) ($a3345395 (Array Int Int)) ($a3345392 (Array Int Int)))
    (=> (and ($main_sum235 (store $a3345392 $i3355393 43) (+ $i3355393 1) $x3365394 $a3345395 $i3355396 $x3365397)
             (< $i3355393 100000))
        ($main_sum235 $a3345392 $i3355393 $x3365394 $a3345395 $i3355396 $x3365397))))

; loop entry $main_inv236
(assert
  (forall (($i335 Int) ($i3355390 Int) ($x336 Int) ($x3365391 Int) ($i3355399 Int) ($a3345389 (Array Int Int)) ($x3365400 Int) ($a334 (Array Int Int)) ($a3345398 (Array Int Int)))
    (=> (and ($main_sum235 $a3345389 0 $x3365391 $a3345398 $i3355399 $x3365400)
             ($main_sum234 $a334 $i335 $x336 $a3345389 $i3355390 $x3365391)
             (= $i335 0))
        ($main_inv236 $a3345398 0 $x3365400))))

; loop term $main_sum236
(assert
  (forall (($a3345401 (Array Int Int)) ($i3355402 Int) ($x3365403 Int))
    (=> (and (not (< $i3355402 100000)))
        ($main_sum236 $a3345401 $i3355402 $x3365403 $a3345401 $i3355402 $x3365403))))

; forwards $main_inv236
(assert
  (forall (($a3345401 (Array Int Int)) ($i3355402 Int) ($x3365403 Int))
    (=> (and (< $i3355402 100000)
             ($main_inv236 $a3345401 $i3355402 $x3365403))
        ($main_inv236 (store $a3345401 $i3355402 44) (+ $i3355402 1) $x3365403))))

; backwards $main_sum236
(assert
  (forall (($a3345404 (Array Int Int)) ($a3345401 (Array Int Int)) ($x3365406 Int) ($i3355402 Int) ($x3365403 Int) ($i3355405 Int))
    (=> (and ($main_sum236 (store $a3345401 $i3355402 44) (+ $i3355402 1) $x3365403 $a3345404 $i3355405 $x3365406)
             (< $i3355402 100000))
        ($main_sum236 $a3345401 $i3355402 $x3365403 $a3345404 $i3355405 $x3365406))))

; loop entry $main_inv237
(assert
  (forall (($x3365409 Int) ($i335 Int) ($i3355390 Int) ($x336 Int) ($x3365391 Int) ($i3355399 Int) ($i3355408 Int) ($a3345389 (Array Int Int)) ($x3365400 Int) ($a334 (Array Int Int)) ($a3345398 (Array Int Int)) ($a3345407 (Array Int Int)))
    (=> (and ($main_sum236 $a3345398 0 $x3365400 $a3345407 $i3355408 $x3365409)
             ($main_sum235 $a3345389 0 $x3365391 $a3345398 $i3355399 $x3365400)
             ($main_sum234 $a334 $i335 $x336 $a3345389 $i3355390 $x3365391)
             (= $i335 0))
        ($main_inv237 $a3345407 0 $x3365409))))

; loop term $main_sum237
(assert
  (forall (($a3345410 (Array Int Int)) ($i3355411 Int) ($x3365412 Int))
    (=> (and (not (< $i3355411 100000)))
        ($main_sum237 $a3345410 $i3355411 $x3365412 $a3345410 $i3355411 $x3365412))))

; forwards $main_inv237
(assert
  (forall (($a3345410 (Array Int Int)) ($i3355411 Int) ($x3365412 Int))
    (=> (and (< $i3355411 100000)
             ($main_inv237 $a3345410 $i3355411 $x3365412))
        ($main_inv237 (store $a3345410 $i3355411 45) (+ $i3355411 1) $x3365412))))

; backwards $main_sum237
(assert
  (forall (($a3345413 (Array Int Int)) ($a3345410 (Array Int Int)) ($x3365412 Int) ($i3355414 Int) ($i3355411 Int) ($x3365415 Int))
    (=> (and ($main_sum237 (store $a3345410 $i3355411 45) (+ $i3355411 1) $x3365412 $a3345413 $i3355414 $x3365415)
             (< $i3355411 100000))
        ($main_sum237 $a3345410 $i3355411 $x3365412 $a3345413 $i3355414 $x3365415))))

; loop entry $main_inv238
(assert
  (forall (($x3365409 Int) ($i335 Int) ($x3365418 Int) ($i3355417 Int) ($a3345416 (Array Int Int)) ($i3355390 Int) ($x336 Int) ($x3365391 Int) ($i3355399 Int) ($i3355408 Int) ($a3345389 (Array Int Int)) ($x3365400 Int) ($a334 (Array Int Int)) ($a3345398 (Array Int Int)) ($a3345407 (Array Int Int)))
    (=> (and ($main_sum237 $a3345407 0 $x3365409 $a3345416 $i3355417 $x3365418)
             ($main_sum236 $a3345398 0 $x3365400 $a3345407 $i3355408 $x3365409)
             ($main_sum235 $a3345389 0 $x3365391 $a3345398 $i3355399 $x3365400)
             ($main_sum234 $a334 $i335 $x336 $a3345389 $i3355390 $x3365391)
             (= $i335 0))
        ($main_inv238 $a3345416 $i3355417 0))))

; loop term $main_sum238
(assert
  (forall (($a3345419 (Array Int Int)) ($i3355420 Int) ($x3365421 Int))
    (=> (and (not (< $x3365421 100000)))
        ($main_sum238 $a3345419 $i3355420 $x3365421 $a3345419 $i3355420 $x3365421))))

; __VERIFIER_assert precondition
(assert
  (forall (($a3345419 (Array Int Int)) ($x3365421 Int) ($i3355420 Int))
    (=> (and (< $x3365421 100000)
             ($main_inv238 $a3345419 $i3355420 $x3365421))
        ($__VERIFIER_assert_pre (ite (= (select $a3345419 $x3365421) 46) 1 0)))))

; forwards $main_inv238
(assert
  (forall (($a3345419 (Array Int Int)) ($i3355420 Int) ($x3365421 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a3345419 $x3365421) 46) 1 0))
             (< $x3365421 100000)
             ($main_inv238 $a3345419 $i3355420 $x3365421))
        ($main_inv238 $a3345419 $i3355420 (+ $x3365421 1)))))

; backwards $main_sum238
(assert
  (forall (($a3345422 (Array Int Int)) ($i3355423 Int) ($i3355420 Int) ($x3365424 Int) ($a3345419 (Array Int Int)) ($x3365421 Int))
    (=> (and ($main_sum238 $a3345419 $i3355420 (+ $x3365421 1) $a3345422 $i3355423 $x3365424)
             (__VERIFIER_assert (ite (= (select $a3345419 $x3365421) 46) 1 0))
             (< $x3365421 100000))
        ($main_sum238 $a3345419 $i3355420 $x3365421 $a3345422 $i3355423 $x3365424))))

(check-sat)
