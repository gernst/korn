(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_sum145 (Int Int Int Int) Bool)
(declare-fun $main_inv145 (Int Int Int Int) Bool)
(declare-fun $main_sum143 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_if547 (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv143 (Int Int Int Int) Bool)
(declare-fun $main_inv144 (Int Int Int Int) Bool)
(declare-fun $main_sum144 (Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13345 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13345))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if547 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13346 Int))
    (=> (and ($__VERIFIER_assert_if547 cond13346))
        (__VERIFIER_assert cond13346))))

; loop entry $main_inv143
(assert
  (forall (($z500 Int) ($y499 Int) ($uint13347 Int) ($x498 Int) ($n497 Int))
    (=> (and (= $y499 0)
             (= $x498 $n497)
             (= $n497 $uint13347)
             (<= 0 $uint13347)
             (<= $uint13347 4294967295))
        ($main_inv143 $n497 $x498 $y499 $z500))))

; loop term $main_sum143
(assert
  (forall (($n49713348 Int) ($x49813349 Int) ($y49913350 Int) ($z50013351 Int))
    (=> (and (not (> $x49813349 0))
             ($main_inv143 $n49713348 $x49813349 $y49913350 $z50013351))
        ($main_sum143 $n49713348 $x49813349 $y49913350 $z50013351))))

; forwards $main_inv143
(assert
  (forall (($n49713348 Int) ($x49813349 Int) ($y49913350 Int) ($z50013351 Int))
    (=> (and (> $x49813349 0)
             ($main_inv143 $n49713348 $x49813349 $y49913350 $z50013351))
        ($main_inv143 $n49713348 (- $x49813349 1) (+ $y49913350 1) $z50013351))))

; loop entry $main_inv144
(assert
  (forall (($n49713352 Int) ($x49813353 Int) ($y49913354 Int) ($z50013355 Int))
    (=> (and ($main_sum143 $n49713352 $x49813353 $y49913354 $z50013355))
        ($main_inv144 $n49713352 $x49813353 $y49913354 $y49913354))))

; loop term $main_sum144
(assert
  (forall (($n49713356 Int) ($x49813357 Int) ($y49913358 Int) ($z50013359 Int))
    (=> (and (not (> $z50013359 0))
             ($main_inv144 $n49713356 $x49813357 $y49913358 $z50013359))
        ($main_sum144 $n49713356 $x49813357 $y49913358 $z50013359))))

; forwards $main_inv144
(assert
  (forall (($n49713356 Int) ($x49813357 Int) ($y49913358 Int) ($z50013359 Int))
    (=> (and (> $z50013359 0)
             ($main_inv144 $n49713356 $x49813357 $y49913358 $z50013359))
        ($main_inv144 $n49713356 (+ $x49813357 1) $y49913358 (- $z50013359 1)))))

; loop entry $main_inv145
(assert
  (forall (($n49713360 Int) ($x49813361 Int) ($y49913362 Int) ($z50013363 Int))
    (=> (and ($main_sum144 $n49713360 $x49813361 $y49913362 $z50013363))
        ($main_inv145 $n49713360 $x49813361 $y49913362 $z50013363))))

; loop term $main_sum145
(assert
  (forall (($n49713364 Int) ($x49813365 Int) ($y49913366 Int) ($z50013367 Int))
    (=> (and (not (> $y49913366 0))
             ($main_inv145 $n49713364 $x49813365 $y49913366 $z50013367))
        ($main_sum145 $n49713364 $x49813365 $y49913366 $z50013367))))

; forwards $main_inv145
(assert
  (forall (($n49713364 Int) ($x49813365 Int) ($y49913366 Int) ($z50013367 Int))
    (=> (and (> $y49913366 0)
             ($main_inv145 $n49713364 $x49813365 $y49913366 $z50013367))
        ($main_inv145 $n49713364 (- $x49813365 1) (- $y49913366 1) $z50013367))))

; __VERIFIER_assert precondition
(assert
  (forall (($x49813369 Int) ($n49713368 Int) ($y49913370 Int) ($z50013371 Int))
    (=> (and ($main_sum145 $n49713368 $x49813369 $y49913370 $z50013371))
        ($__VERIFIER_assert_pre (ite (= $x49813369 0) 1 0)))))

(check-sat)
