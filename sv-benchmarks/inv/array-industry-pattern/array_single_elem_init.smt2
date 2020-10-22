(set-logic HORN)

(declare-fun $main_if144 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv416 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_inv417 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_if143 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_if142 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_if145 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if141 (Int) Bool)
(declare-fun $main_sum417 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_sum416 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond5356 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond5356))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if141 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5357 Int))
    (=> (and ($__VERIFIER_assert_if141 cond5357))
        (__VERIFIER_assert cond5357))))

; loop entry $main_inv416
(assert
  (forall (($a512 (Array Int Int)) ($b513 (Array Int Int)) ($c514 (Array Int Int)) ($q515 Int))
        ($main_inv416 0 $a512 $b513 $c514 $q515)))

; loop term $main_sum416
(assert
  (forall (($a5125359 (Array Int Int)) ($b5135360 (Array Int Int)) ($i5115358 Int) ($q5155362 Int) ($c5145361 (Array Int Int)))
    (=> (and (not (< $i5115358 100000))
             ($main_inv416 $i5115358 $a5125359 $b5135360 $c5145361 $q5155362))
        ($main_sum416 $i5115358 $a5125359 $b5135360 $c5145361 $q5155362))))

; if then
(assert
  (forall (($a5125359 (Array Int Int)) ($b5135360 (Array Int Int)) ($int5363 Int) ($i5115358 Int) ($q5155362 Int) ($c5145361 (Array Int Int)))
    (=> (and (= $q5155362 0)
             (= $q5155362 $int5363)
             (<= (- 2147483648) $int5363)
             (<= $int5363 2147483647)
             (< $i5115358 100000)
             ($main_inv416 $i5115358 $a5125359 $b5135360 $c5145361 $q5155362))
        ($main_if142 $i5115358 (store (store $a5125359 $i5115358 0) $i5115358 1) (store $b5135360 $i5115358 (mod $i5115358 2)) $c5145361 $q5155362))))

; if else
(assert
  (forall (($a5125359 (Array Int Int)) ($b5135360 (Array Int Int)) ($int5363 Int) ($i5115358 Int) ($q5155362 Int) ($c5145361 (Array Int Int)))
    (=> (and (not (= $q5155362 0))
             (= $q5155362 $int5363)
             (<= (- 2147483648) $int5363)
             (<= $int5363 2147483647)
             (< $i5115358 100000)
             ($main_inv416 $i5115358 $a5125359 $b5135360 $c5145361 $q5155362))
        ($main_if142 $i5115358 (store $a5125359 $i5115358 0) $b5135360 $c5145361 $q5155362))))

; if then
(assert
  (forall (($i5115364 Int) ($q5155368 Int) ($b5135366 (Array Int Int)) ($a5125365 (Array Int Int)) ($c5145367 (Array Int Int)))
    (=> (and (= (select $b5135366 $i5115364) 0)
             (not (= (select $a5125365 $i5115364) 0))
             ($main_if142 $i5115364 $a5125365 $b5135366 $c5145367 $q5155368))
        ($main_if143 $i5115364 $a5125365 $b5135366 (store $c5145367 $i5115364 0) $q5155368))))

; if else
(assert
  (forall (($i5115364 Int) ($q5155368 Int) ($b5135366 (Array Int Int)) ($a5125365 (Array Int Int)) ($c5145367 (Array Int Int)))
    (=> (and (not (= (select $b5135366 $i5115364) 0))
             (not (= (select $a5125365 $i5115364) 0))
             ($main_if142 $i5115364 $a5125365 $b5135366 $c5145367 $q5155368))
        ($main_if143 $i5115364 $a5125365 $b5135366 (store $c5145367 $i5115364 1) $q5155368))))

; if then
(assert
  (forall (($i5115369 Int) ($q5155373 Int) ($b5135371 (Array Int Int)) ($c5145372 (Array Int Int)) ($a5125370 (Array Int Int)))
    (=> (and ($main_if143 $i5115369 $a5125370 $b5135371 $c5145372 $q5155373))
        ($main_if144 $i5115369 $a5125370 $b5135371 $c5145372 $q5155373))))

; if else
(assert
  (forall (($i5115364 Int) ($q5155368 Int) ($b5135366 (Array Int Int)) ($a5125365 (Array Int Int)) ($c5145367 (Array Int Int)))
    (=> (and (= (select $a5125365 $i5115364) 0)
             ($main_if142 $i5115364 $a5125365 $b5135366 $c5145367 $q5155368))
        ($main_if144 $i5115364 $a5125365 $b5135366 $c5145367 $q5155368))))

; forwards $main_inv416
(assert
  (forall (($i5115374 Int) ($a5125375 (Array Int Int)) ($b5135376 (Array Int Int)) ($c5145377 (Array Int Int)) ($q5155378 Int))
    (=> (and ($main_if144 $i5115374 $a5125375 $b5135376 $c5145377 $q5155378))
        ($main_inv416 (+ $i5115374 1) $a5125375 $b5135376 $c5145377 $q5155378))))

; loop entry $main_inv417
(assert
  (forall (($c5145382 (Array Int Int)) ($b5135381 (Array Int Int)) ($q5155383 Int) ($a5125380 (Array Int Int)) ($i5115379 Int))
    (=> (and ($main_sum416 $i5115379 $a5125380 $b5135381 $c5145382 $q5155383))
        ($main_inv417 0 (store $a5125380 15000 1) $b5135381 $c5145382 $q5155383))))

; loop term $main_sum417
(assert
  (forall (($b5135386 (Array Int Int)) ($c5145387 (Array Int Int)) ($i5115384 Int) ($a5125385 (Array Int Int)) ($q5155388 Int))
    (=> (and (not (< $i5115384 100000))
             ($main_inv417 $i5115384 $a5125385 $b5135386 $c5145387 $q5155388))
        ($main_sum417 $i5115384 $a5125385 $b5135386 $c5145387 $q5155388))))

; __VERIFIER_assert precondition
(assert
  (forall (($b5135386 (Array Int Int)) ($c5145387 (Array Int Int)) ($i5115384 Int) ($a5125385 (Array Int Int)) ($q5155388 Int))
    (=> (and (= $i5115384 15000)
             (< $i5115384 100000)
             ($main_inv417 $i5115384 $a5125385 $b5135386 $c5145387 $q5155388))
        ($__VERIFIER_assert_pre (ite (= (select $c5145387 $i5115384) 0) 1 0)))))

; if then
(assert
  (forall (($b5135386 (Array Int Int)) ($c5145387 (Array Int Int)) ($i5115384 Int) ($a5125385 (Array Int Int)) ($q5155388 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $c5145387 $i5115384) 0) 1 0))
             (= $i5115384 15000)
             (< $i5115384 100000)
             ($main_inv417 $i5115384 $a5125385 $b5135386 $c5145387 $q5155388))
        ($main_if145 $i5115384 $a5125385 $b5135386 $c5145387 $q5155388))))

; if else
(assert
  (forall (($b5135386 (Array Int Int)) ($c5145387 (Array Int Int)) ($i5115384 Int) ($a5125385 (Array Int Int)) ($q5155388 Int))
    (=> (and (not (= $i5115384 15000))
             (< $i5115384 100000)
             ($main_inv417 $i5115384 $a5125385 $b5135386 $c5145387 $q5155388))
        ($main_if145 $i5115384 $a5125385 $b5135386 $c5145387 $q5155388))))

; forwards $main_inv417
(assert
  (forall (($q5155393 Int) ($b5135391 (Array Int Int)) ($c5145392 (Array Int Int)) ($i5115389 Int) ($a5125390 (Array Int Int)))
    (=> (and ($main_if145 $i5115389 $a5125390 $b5135391 $c5145392 $q5155393))
        ($main_inv417 (+ $i5115389 1) $a5125390 $b5135391 $c5145392 $q5155393))))

(check-sat)
