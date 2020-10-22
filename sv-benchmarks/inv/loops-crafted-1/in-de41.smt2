(set-logic HORN)

(declare-fun $main_inv147 (Int Int Int Int) Bool)
(declare-fun $main_inv148 (Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $main_sum147 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_inv149 (Int Int Int Int) Bool)
(declare-fun $main_sum149 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv146 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if548 (Int) Bool)
(declare-fun $main_sum146 (Int Int Int Int) Bool)
(declare-fun $main_sum148 (Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13372 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13372))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if548 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13373 Int))
    (=> (and ($__VERIFIER_assert_if548 cond13373))
        (__VERIFIER_assert cond13373))))

; loop entry $main_inv146
(assert
  (forall (($z504 Int) ($y503 Int) ($n501 Int) ($uint13374 Int) ($x502 Int))
    (=> (and (= $y503 0)
             (= $x502 $n501)
             (= $n501 $uint13374)
             (<= 0 $uint13374)
             (<= $uint13374 4294967295))
        ($main_inv146 $n501 $x502 $y503 $z504))))

; loop term $main_sum146
(assert
  (forall (($n50113375 Int) ($x50213376 Int) ($y50313377 Int) ($z50413378 Int))
    (=> (and (not (> $x50213376 0))
             ($main_inv146 $n50113375 $x50213376 $y50313377 $z50413378))
        ($main_sum146 $n50113375 $x50213376 $y50313377 $z50413378))))

; forwards $main_inv146
(assert
  (forall (($n50113375 Int) ($x50213376 Int) ($y50313377 Int) ($z50413378 Int))
    (=> (and (> $x50213376 0)
             ($main_inv146 $n50113375 $x50213376 $y50313377 $z50413378))
        ($main_inv146 $n50113375 (- $x50213376 1) (+ $y50313377 1) $z50413378))))

; loop entry $main_inv147
(assert
  (forall (($n50113379 Int) ($x50213380 Int) ($y50313381 Int) ($z50413382 Int))
    (=> (and ($main_sum146 $n50113379 $x50213380 $y50313381 $z50413382))
        ($main_inv147 $n50113379 $x50213380 $y50313381 $y50313381))))

; loop term $main_sum147
(assert
  (forall (($n50113383 Int) ($x50213384 Int) ($y50313385 Int) ($z50413386 Int))
    (=> (and (not (> $z50413386 0))
             ($main_inv147 $n50113383 $x50213384 $y50313385 $z50413386))
        ($main_sum147 $n50113383 $x50213384 $y50313385 $z50413386))))

; forwards $main_inv147
(assert
  (forall (($n50113383 Int) ($x50213384 Int) ($y50313385 Int) ($z50413386 Int))
    (=> (and (> $z50413386 0)
             ($main_inv147 $n50113383 $x50213384 $y50313385 $z50413386))
        ($main_inv147 $n50113383 (+ $x50213384 1) $y50313385 (- $z50413386 1)))))

; loop entry $main_inv148
(assert
  (forall (($n50113387 Int) ($x50213388 Int) ($y50313389 Int) ($z50413390 Int))
    (=> (and ($main_sum147 $n50113387 $x50213388 $y50313389 $z50413390))
        ($main_inv148 $n50113387 $x50213388 $y50313389 $z50413390))))

; loop term $main_sum148
(assert
  (forall (($n50113391 Int) ($x50213392 Int) ($y50313393 Int) ($z50413394 Int))
    (=> (and (not (> $y50313393 0))
             ($main_inv148 $n50113391 $x50213392 $y50313393 $z50413394))
        ($main_sum148 $n50113391 $x50213392 $y50313393 $z50413394))))

; forwards $main_inv148
(assert
  (forall (($n50113391 Int) ($x50213392 Int) ($y50313393 Int) ($z50413394 Int))
    (=> (and (> $y50313393 0)
             ($main_inv148 $n50113391 $x50213392 $y50313393 $z50413394))
        ($main_inv148 $n50113391 $x50213392 (- $y50313393 1) (+ $z50413394 1)))))

; loop entry $main_inv149
(assert
  (forall (($n50113395 Int) ($x50213396 Int) ($y50313397 Int) ($z50413398 Int))
    (=> (and ($main_sum148 $n50113395 $x50213396 $y50313397 $z50413398))
        ($main_inv149 $n50113395 $x50213396 $y50313397 $z50413398))))

; loop term $main_sum149
(assert
  (forall (($n50113399 Int) ($x50213400 Int) ($y50313401 Int) ($z50413402 Int))
    (=> (and (not (> $x50213400 0))
             ($main_inv149 $n50113399 $x50213400 $y50313401 $z50413402))
        ($main_sum149 $n50113399 $x50213400 $y50313401 $z50413402))))

; forwards $main_inv149
(assert
  (forall (($n50113399 Int) ($x50213400 Int) ($y50313401 Int) ($z50413402 Int))
    (=> (and (> $x50213400 0)
             ($main_inv149 $n50113399 $x50213400 $y50313401 $z50413402))
        ($main_inv149 $n50113399 (- $x50213400 1) (+ $y50313401 1) $z50413402))))

; __VERIFIER_assert precondition
(assert
  (forall (($y50313405 Int) ($n50113403 Int) ($x50213404 Int) ($z50413406 Int))
    (=> (and ($main_sum149 $n50113403 $x50213404 $y50313405 $z50413406))
        ($__VERIFIER_assert_pre (ite (= $y50313405 $n50113403) 1 0)))))

(check-sat)
