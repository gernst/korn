(set-logic HORN)

(declare-fun $main_if543 (Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_sum137 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if541 (Int) Bool)
(declare-fun $main_inv137 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $assume_abort_if_not_if540 (Int) Bool)
(declare-fun $main_if544 (Int Int Int Int) Bool)
(declare-fun $main_if542 (Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if540 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond13274 Int))
    (=> (and ($assume_abort_if_not_if540 cond13274))
        (assume_abort_if_not cond13274))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13275 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13275))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if541 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13276 Int))
    (=> (and ($__VERIFIER_assert_if541 cond13276))
        (__VERIFIER_assert cond13276))))

; if else
(assert
  (forall (($uint13278 Int) ($i486 Int) ($k487 Int) ($j488 Int))
    (=> (and (<= $uint13278 20000001)
             (<= 0 $uint13278)
             (<= $uint13278 4294967295))
        ($main_if542 $uint13278 $i486 $k487 $j488))))

; loop entry $main_inv137
(assert
  (forall (($n48513279 Int) ($i48613280 Int) ($k48713281 Int) ($j48813282 Int))
    (=> (and ($main_if542 $n48513279 $i48613280 $k48713281 $j48813282))
        ($main_inv137 $n48513279 0 0 0))))

; loop term $main_sum137
(assert
  (forall (($n48513283 Int) ($i48613284 Int) ($k48713285 Int) ($j48813286 Int))
    (=> (and (not (< $i48613284 $n48513283))
             ($main_inv137 $n48513283 $i48613284 $k48713285 $j48813286))
        ($main_sum137 $n48513283 $i48613284 $k48713285 $j48813286))))

; if then
(assert
  (forall (($n48513283 Int) ($i48613284 Int) ($k48713285 Int) ($j48813286 Int))
    (=> (and (not (= (mod (+ $i48613284 3) 2) 0))
             (< $i48613284 $n48513283)
             ($main_inv137 $n48513283 $i48613284 $k48713285 $j48813286))
        ($main_if543 $n48513283 (+ $i48613284 3) $k48713285 (+ $j48813286 3)))))

; if else
(assert
  (forall (($n48513283 Int) ($i48613284 Int) ($k48713285 Int) ($j48813286 Int))
    (=> (and (= (mod (+ $i48613284 3) 2) 0)
             (< $i48613284 $n48513283)
             ($main_inv137 $n48513283 $i48613284 $k48713285 $j48813286))
        ($main_if543 $n48513283 (+ $i48613284 3) (+ $k48713285 3) $j48813286))))

; __VERIFIER_assert precondition
(assert
  (forall (($i48613288 Int) ($j48813290 Int) ($n48513287 Int) ($k48713289 Int))
    (=> (and (> $n48513287 0)
             ($main_if543 $n48513287 $i48613288 $k48713289 $j48813290))
        ($__VERIFIER_assert_pre (ite (<= (div $i48613288 2) $j48813290) 1 0)))))

; if then
(assert
  (forall (($n48513287 Int) ($i48613288 Int) ($k48713289 Int) ($j48813290 Int))
    (=> (and (__VERIFIER_assert (ite (<= (div $i48613288 2) $j48813290) 1 0))
             (> $n48513287 0)
             ($main_if543 $n48513287 $i48613288 $k48713289 $j48813290))
        ($main_if544 $n48513287 $i48613288 $k48713289 $j48813290))))

; if else
(assert
  (forall (($n48513287 Int) ($i48613288 Int) ($k48713289 Int) ($j48813290 Int))
    (=> (and (not (> $n48513287 0))
             ($main_if543 $n48513287 $i48613288 $k48713289 $j48813290))
        ($main_if544 $n48513287 $i48613288 $k48713289 $j48813290))))

; forwards $main_inv137
(assert
  (forall (($n48513291 Int) ($i48613292 Int) ($k48713293 Int) ($j48813294 Int))
    (=> (and ($main_if544 $n48513291 $i48613292 $k48713293 $j48813294))
        ($main_inv137 $n48513291 $i48613292 $k48713293 $j48813294))))

(check-sat)
