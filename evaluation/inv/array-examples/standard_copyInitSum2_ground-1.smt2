(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum196 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv196 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum199 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv197 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum197 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv198 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv199 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum198 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if60 (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond3396 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond3396))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if60 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond3397 Int))
    (=> (and ($__VERIFIER_assert_if60 cond3397))
        (__VERIFIER_assert cond3397))))

; loop entry $main_inv196
(assert
  (forall (($a294 (Array Int Int)) ($b295 (Array Int Int)) ($i296 Int) ($x297 Int))
    (=> (and (= $i296 0))
        ($main_inv196 $a294 $b295 $i296 $x297))))

; loop term $main_sum196
(assert
  (forall (($a2943398 (Array Int Int)) ($b2953399 (Array Int Int)) ($i2963400 Int) ($x2973401 Int))
    (=> (and (not (< $i2963400 100000))
             ($main_inv196 $a2943398 $b2953399 $i2963400 $x2973401))
        ($main_sum196 $a2943398 $b2953399 $i2963400 $x2973401))))

; forwards $main_inv196
(assert
  (forall (($a2943398 (Array Int Int)) ($i2963400 Int) ($b2953399 (Array Int Int)) ($x2973401 Int))
    (=> (and (< $i2963400 100000)
             ($main_inv196 $a2943398 $b2953399 $i2963400 $x2973401))
        ($main_inv196 (store $a2943398 $i2963400 42) $b2953399 (+ $i2963400 1) $x2973401))))

; loop entry $main_inv197
(assert
  (forall (($a2943402 (Array Int Int)) ($b2953403 (Array Int Int)) ($x2973405 Int) ($i2963404 Int))
    (=> (and ($main_sum196 $a2943402 $b2953403 $i2963404 $x2973405))
        ($main_inv197 $a2943402 $b2953403 0 $x2973405))))

; loop term $main_sum197
(assert
  (forall (($a2943406 (Array Int Int)) ($b2953407 (Array Int Int)) ($i2963408 Int) ($x2973409 Int))
    (=> (and (not (< $i2963408 100000))
             ($main_inv197 $a2943406 $b2953407 $i2963408 $x2973409))
        ($main_sum197 $a2943406 $b2953407 $i2963408 $x2973409))))

; forwards $main_inv197
(assert
  (forall (($a2943406 (Array Int Int)) ($b2953407 (Array Int Int)) ($i2963408 Int) ($x2973409 Int))
    (=> (and (< $i2963408 100000)
             ($main_inv197 $a2943406 $b2953407 $i2963408 $x2973409))
        ($main_inv197 $a2943406 (store $b2953407 $i2963408 (select $a2943406 $i2963408)) (+ $i2963408 1) $x2973409))))

; loop entry $main_inv198
(assert
  (forall (($a2943410 (Array Int Int)) ($b2953411 (Array Int Int)) ($x2973413 Int) ($i2963412 Int))
    (=> (and ($main_sum197 $a2943410 $b2953411 $i2963412 $x2973413))
        ($main_inv198 $a2943410 $b2953411 0 $x2973413))))

; loop term $main_sum198
(assert
  (forall (($a2943414 (Array Int Int)) ($b2953415 (Array Int Int)) ($i2963416 Int) ($x2973417 Int))
    (=> (and (not (< $i2963416 100000))
             ($main_inv198 $a2943414 $b2953415 $i2963416 $x2973417))
        ($main_sum198 $a2943414 $b2953415 $i2963416 $x2973417))))

; forwards $main_inv198
(assert
  (forall (($a2943414 (Array Int Int)) ($i2963416 Int) ($b2953415 (Array Int Int)) ($x2973417 Int))
    (=> (and (< $i2963416 100000)
             ($main_inv198 $a2943414 $b2953415 $i2963416 $x2973417))
        ($main_inv198 (store $a2943414 $i2963416 (+ (select $b2953415 $i2963416) $i2963416)) $b2953415 (+ $i2963416 1) $x2973417))))

; loop entry $main_inv199
(assert
  (forall (($a2943418 (Array Int Int)) ($b2953419 (Array Int Int)) ($i2963420 Int) ($x2973421 Int))
    (=> (and ($main_sum198 $a2943418 $b2953419 $i2963420 $x2973421))
        ($main_inv199 $a2943418 $b2953419 $i2963420 0))))

; loop term $main_sum199
(assert
  (forall (($a2943422 (Array Int Int)) ($b2953423 (Array Int Int)) ($i2963424 Int) ($x2973425 Int))
    (=> (and (not (< $x2973425 100000))
             ($main_inv199 $a2943422 $b2953423 $i2963424 $x2973425))
        ($main_sum199 $a2943422 $b2953423 $i2963424 $x2973425))))

; __VERIFIER_assert precondition
(assert
  (forall (($b2953423 (Array Int Int)) ($x2973425 Int) ($a2943422 (Array Int Int)) ($i2963424 Int))
    (=> (and (< $x2973425 100000)
             ($main_inv199 $a2943422 $b2953423 $i2963424 $x2973425))
        ($__VERIFIER_assert_pre (ite (= (select $b2953423 $x2973425) (+ 42 $x2973425)) 1 0)))))

; forwards $main_inv199
(assert
  (forall (($a2943422 (Array Int Int)) ($b2953423 (Array Int Int)) ($i2963424 Int) ($x2973425 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $b2953423 $x2973425) (+ 42 $x2973425)) 1 0))
             (< $x2973425 100000)
             ($main_inv199 $a2943422 $b2953423 $i2963424 $x2973425))
        ($main_inv199 $a2943422 $b2953423 $i2963424 (+ $x2973425 1)))))

(check-sat)
