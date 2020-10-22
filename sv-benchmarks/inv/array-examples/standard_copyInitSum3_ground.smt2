(set-logic HORN)

(declare-fun $__VERIFIER_assert_if62 (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv205 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv204 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv206 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum204 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum205 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum208 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum207 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv208 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum206 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv207 ((Array Int Int) (Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond3464 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond3464))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if62 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond3465 Int))
    (=> (and ($__VERIFIER_assert_if62 cond3465))
        (__VERIFIER_assert cond3465))))

; loop entry $main_inv204
(assert
  (forall (($a302 (Array Int Int)) ($b303 (Array Int Int)) ($i304 Int) ($x305 Int))
    (=> (and (= $i304 0))
        ($main_inv204 $a302 $b303 $i304 $x305))))

; loop term $main_sum204
(assert
  (forall (($a3023466 (Array Int Int)) ($b3033467 (Array Int Int)) ($i3043468 Int) ($x3053469 Int))
    (=> (and (not (< $i3043468 100000))
             ($main_inv204 $a3023466 $b3033467 $i3043468 $x3053469))
        ($main_sum204 $a3023466 $b3033467 $i3043468 $x3053469))))

; forwards $main_inv204
(assert
  (forall (($a3023466 (Array Int Int)) ($i3043468 Int) ($b3033467 (Array Int Int)) ($x3053469 Int))
    (=> (and (< $i3043468 100000)
             ($main_inv204 $a3023466 $b3033467 $i3043468 $x3053469))
        ($main_inv204 (store $a3023466 $i3043468 42) $b3033467 (+ $i3043468 1) $x3053469))))

; loop entry $main_inv205
(assert
  (forall (($a3023470 (Array Int Int)) ($b3033471 (Array Int Int)) ($x3053473 Int) ($i3043472 Int))
    (=> (and ($main_sum204 $a3023470 $b3033471 $i3043472 $x3053473))
        ($main_inv205 $a3023470 $b3033471 0 $x3053473))))

; loop term $main_sum205
(assert
  (forall (($a3023474 (Array Int Int)) ($b3033475 (Array Int Int)) ($i3043476 Int) ($x3053477 Int))
    (=> (and (not (< $i3043476 100000))
             ($main_inv205 $a3023474 $b3033475 $i3043476 $x3053477))
        ($main_sum205 $a3023474 $b3033475 $i3043476 $x3053477))))

; forwards $main_inv205
(assert
  (forall (($a3023474 (Array Int Int)) ($b3033475 (Array Int Int)) ($i3043476 Int) ($x3053477 Int))
    (=> (and (< $i3043476 100000)
             ($main_inv205 $a3023474 $b3033475 $i3043476 $x3053477))
        ($main_inv205 $a3023474 (store $b3033475 $i3043476 (select $a3023474 $i3043476)) (+ $i3043476 1) $x3053477))))

; loop entry $main_inv206
(assert
  (forall (($a3023478 (Array Int Int)) ($b3033479 (Array Int Int)) ($x3053481 Int) ($i3043480 Int))
    (=> (and ($main_sum205 $a3023478 $b3033479 $i3043480 $x3053481))
        ($main_inv206 $a3023478 $b3033479 0 $x3053481))))

; loop term $main_sum206
(assert
  (forall (($a3023482 (Array Int Int)) ($b3033483 (Array Int Int)) ($i3043484 Int) ($x3053485 Int))
    (=> (and (not (< $i3043484 100000))
             ($main_inv206 $a3023482 $b3033483 $i3043484 $x3053485))
        ($main_sum206 $a3023482 $b3033483 $i3043484 $x3053485))))

; forwards $main_inv206
(assert
  (forall (($a3023482 (Array Int Int)) ($b3033483 (Array Int Int)) ($i3043484 Int) ($x3053485 Int))
    (=> (and (< $i3043484 100000)
             ($main_inv206 $a3023482 $b3033483 $i3043484 $x3053485))
        ($main_inv206 $a3023482 (store $b3033483 $i3043484 (+ (select $b3033483 $i3043484) $i3043484)) (+ $i3043484 1) $x3053485))))

; loop entry $main_inv207
(assert
  (forall (($a3023486 (Array Int Int)) ($b3033487 (Array Int Int)) ($x3053489 Int) ($i3043488 Int))
    (=> (and ($main_sum206 $a3023486 $b3033487 $i3043488 $x3053489))
        ($main_inv207 $a3023486 $b3033487 0 $x3053489))))

; loop term $main_sum207
(assert
  (forall (($a3023490 (Array Int Int)) ($b3033491 (Array Int Int)) ($i3043492 Int) ($x3053493 Int))
    (=> (and (not (< $i3043492 100000))
             ($main_inv207 $a3023490 $b3033491 $i3043492 $x3053493))
        ($main_sum207 $a3023490 $b3033491 $i3043492 $x3053493))))

; forwards $main_inv207
(assert
  (forall (($a3023490 (Array Int Int)) ($b3033491 (Array Int Int)) ($i3043492 Int) ($x3053493 Int))
    (=> (and (< $i3043492 100000)
             ($main_inv207 $a3023490 $b3033491 $i3043492 $x3053493))
        ($main_inv207 $a3023490 (store $b3033491 $i3043492 (- (select $b3033491 $i3043492) (select $a3023490 $i3043492))) (+ $i3043492 1) $x3053493))))

; loop entry $main_inv208
(assert
  (forall (($a3023494 (Array Int Int)) ($b3033495 (Array Int Int)) ($i3043496 Int) ($x3053497 Int))
    (=> (and ($main_sum207 $a3023494 $b3033495 $i3043496 $x3053497))
        ($main_inv208 $a3023494 $b3033495 $i3043496 0))))

; loop term $main_sum208
(assert
  (forall (($a3023498 (Array Int Int)) ($b3033499 (Array Int Int)) ($i3043500 Int) ($x3053501 Int))
    (=> (and (not (< $x3053501 100000))
             ($main_inv208 $a3023498 $b3033499 $i3043500 $x3053501))
        ($main_sum208 $a3023498 $b3033499 $i3043500 $x3053501))))

; __VERIFIER_assert precondition
(assert
  (forall (($b3033499 (Array Int Int)) ($x3053501 Int) ($a3023498 (Array Int Int)) ($i3043500 Int))
    (=> (and (< $x3053501 100000)
             ($main_inv208 $a3023498 $b3033499 $i3043500 $x3053501))
        ($__VERIFIER_assert_pre (ite (= (select $b3033499 $x3053501) $x3053501) 1 0)))))

; forwards $main_inv208
(assert
  (forall (($a3023498 (Array Int Int)) ($b3033499 (Array Int Int)) ($i3043500 Int) ($x3053501 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $b3033499 $x3053501) $x3053501) 1 0))
             (< $x3053501 100000)
             ($main_inv208 $a3023498 $b3033499 $i3043500 $x3053501))
        ($main_inv208 $a3023498 $b3033499 $i3043500 (+ $x3053501 1)))))

(check-sat)
