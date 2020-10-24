(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum381 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if121 (Int Int) Bool)
(declare-fun $main_sum382 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum380 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv382 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv380 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv381 ((Array Int Int) (Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond7237 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond7237))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if121 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond7238 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if121 cond cond7238))
        (__VERIFIER_assert cond7238))))

; loop entry $main_inv380
(assert
  (forall (($a460 (Array Int Int)) ($b461 (Array Int Int)) ($i462 Int) ($j463 Int))
    (=> (and (= $j463 0)
             (= $i462 0))
        ($main_inv380 $a460 $b461 $i462 $j463))))

; loop term $main_sum380
(assert
  (forall (($a4607239 (Array Int Int)) ($b4617240 (Array Int Int)) ($i4627241 Int) ($j4637242 Int))
    (=> (and (not (< $i4627241 100000)))
        ($main_sum380 $a4607239 $b4617240 $i4627241 $j4637242 $a4607239 $b4617240 $i4627241 $j4637242))))

; forwards $main_inv380
(assert
  (forall (($i4627241 Int) ($j4637242 Int) ($a4607239 (Array Int Int)) ($b4617240 (Array Int Int)) ($int7243 Int))
    (=> (and (<= (- 2147483648) $int7243)
             (<= $int7243 2147483647)
             (< $i4627241 100000)
             ($main_inv380 $a4607239 $b4617240 $i4627241 $j4637242))
        ($main_inv380 $a4607239 (store $b4617240 $i4627241 $int7243) (+ $i4627241 1) $j4637242))))

; backwards $main_sum380
(assert
  (forall (($i4627241 Int) ($i4627246 Int) ($b4617245 (Array Int Int)) ($j4637242 Int) ($j4637247 Int) ($a4607239 (Array Int Int)) ($a4607244 (Array Int Int)) ($b4617240 (Array Int Int)) ($int7243 Int))
    (=> (and ($main_sum380 $a4607239 (store $b4617240 $i4627241 $int7243) (+ $i4627241 1) $j4637242 $a4607244 $b4617245 $i4627246 $j4637247)
             (<= (- 2147483648) $int7243)
             (<= $int7243 2147483647)
             (< $i4627241 100000))
        ($main_sum380 $a4607239 $b4617240 $i4627241 $j4637242 $a4607244 $b4617245 $i4627246 $j4637247))))

; loop entry $main_inv381
(assert
  (forall (($j4637251 Int) ($b4617249 (Array Int Int)) ($j463 Int) ($a4607248 (Array Int Int)) ($b461 (Array Int Int)) ($i462 Int) ($a460 (Array Int Int)) ($i4627250 Int))
    (=> (and ($main_sum380 $a460 $b461 $i462 $j463 $a4607248 $b4617249 $i4627250 $j4637251)
             (= $j463 0)
             (= $i462 0))
        ($main_inv381 $a4607248 $b4617249 1 $j4637251))))

; loop term $main_sum381
(assert
  (forall (($a4607252 (Array Int Int)) ($b4617253 (Array Int Int)) ($i4627254 Int) ($j4637255 Int))
    (=> (and (not (< $i4627254 100000)))
        ($main_sum381 $a4607252 $b4617253 $i4627254 $j4637255 $a4607252 $b4617253 $i4627254 $j4637255))))

; forwards $main_inv381
(assert
  (forall (($a4607252 (Array Int Int)) ($j4637255 Int) ($b4617253 (Array Int Int)) ($i4627254 Int))
    (=> (and (< $i4627254 100000)
             ($main_inv381 $a4607252 $b4617253 $i4627254 $j4637255))
        ($main_inv381 (store $a4607252 $j4637255 (select $b4617253 $i4627254)) $b4617253 (+ $i4627254 2) (+ $j4637255 1)))))

; backwards $main_sum381
(assert
  (forall (($a4607252 (Array Int Int)) ($j4637255 Int) ($i4627254 Int) ($a4607256 (Array Int Int)) ($b4617257 (Array Int Int)) ($j4637259 Int) ($b4617253 (Array Int Int)) ($i4627258 Int))
    (=> (and ($main_sum381 (store $a4607252 $j4637255 (select $b4617253 $i4627254)) $b4617253 (+ $i4627254 2) (+ $j4637255 1) $a4607256 $b4617257 $i4627258 $j4637259)
             (< $i4627254 100000))
        ($main_sum381 $a4607252 $b4617253 $i4627254 $j4637255 $a4607256 $b4617257 $i4627258 $j4637259))))

; loop entry $main_inv382
(assert
  (forall (($j4637251 Int) ($j463 Int) ($a4607248 (Array Int Int)) ($a4607260 (Array Int Int)) ($b461 (Array Int Int)) ($a460 (Array Int Int)) ($i4627250 Int) ($i4627262 Int) ($b4617261 (Array Int Int)) ($b4617249 (Array Int Int)) ($j4637263 Int) ($i462 Int))
    (=> (and ($main_sum381 $a4607248 $b4617249 1 $j4637251 $a4607260 $b4617261 $i4627262 $j4637263)
             ($main_sum380 $a460 $b461 $i462 $j463 $a4607248 $b4617249 $i4627250 $j4637251)
             (= $j463 0)
             (= $i462 0))
        ($main_inv382 $a4607260 $b4617261 1 0))))

; loop term $main_sum382
(assert
  (forall (($a4607264 (Array Int Int)) ($b4617265 (Array Int Int)) ($i4627266 Int) ($j4637267 Int))
    (=> (and (not (< $i4627266 100000)))
        ($main_sum382 $a4607264 $b4617265 $i4627266 $j4637267 $a4607264 $b4617265 $i4627266 $j4637267))))

; __VERIFIER_assert precondition
(assert
  (forall (($a4607264 (Array Int Int)) ($j4637267 Int) ($b4617265 (Array Int Int)) ($i4627266 Int))
    (=> (and (< $i4627266 100000)
             ($main_inv382 $a4607264 $b4617265 $i4627266 $j4637267))
        ($__VERIFIER_assert_pre (ite (= (select $a4607264 $j4637267) (select $b4617265 (+ (* 2 $j4637267) 1))) 1 0)))))

; forwards $main_inv382
(assert
  (forall (($a4607264 (Array Int Int)) ($b4617265 (Array Int Int)) ($i4627266 Int) ($j4637267 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a4607264 $j4637267) (select $b4617265 (+ (* 2 $j4637267) 1))) 1 0))
             (< $i4627266 100000)
             ($main_inv382 $a4607264 $b4617265 $i4627266 $j4637267))
        ($main_inv382 $a4607264 $b4617265 (+ $i4627266 2) (+ $j4637267 1)))))

; backwards $main_sum382
(assert
  (forall (($i4627266 Int) ($b4617269 (Array Int Int)) ($a4607268 (Array Int Int)) ($b4617265 (Array Int Int)) ($a4607264 (Array Int Int)) ($j4637271 Int) ($i4627270 Int) ($j4637267 Int))
    (=> (and ($main_sum382 $a4607264 $b4617265 (+ $i4627266 2) (+ $j4637267 1) $a4607268 $b4617269 $i4627270 $j4637271)
             (__VERIFIER_assert (ite (= (select $a4607264 $j4637267) (select $b4617265 (+ (* 2 $j4637267) 1))) 1 0))
             (< $i4627266 100000))
        ($main_sum382 $a4607264 $b4617265 $i4627266 $j4637267 $a4607268 $b4617269 $i4627270 $j4637271))))

(check-sat)
