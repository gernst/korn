(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv407 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_inv409 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if130 (Int) Bool)
(declare-fun $main_sum407 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv408 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum409 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum408 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond5246 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond5246))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if130 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5247 Int))
    (=> (and ($__VERIFIER_assert_if130 cond5247))
        (__VERIFIER_assert cond5247))))

; loop entry $main_inv407
(assert
  (forall (($x500 Int) ($i499 Int) ($c498 (Array Int Int)) ($a496 (Array Int Int)) ($b497 (Array Int Int)))
    (=> (and (= $i499 0))
        ($main_inv407 $a496 $b497 $c498 0 $x500))))

; loop term $main_sum407
(assert
  (forall (($a4965248 (Array Int Int)) ($b4975249 (Array Int Int)) ($c4985250 (Array Int Int)) ($i4995251 Int) ($x5005252 Int))
    (=> (and (not (< $i4995251 100000))
             ($main_inv407 $a4965248 $b4975249 $c4985250 $i4995251 $x5005252))
        ($main_sum407 $a4965248 $b4975249 $c4985250 $i4995251 $x5005252))))

; forwards $main_inv407
(assert
  (forall (($a4965248 (Array Int Int)) ($b4975249 (Array Int Int)) ($c4985250 (Array Int Int)) ($i4995251 Int) ($int5254 Int) ($int5253 Int) ($x5005252 Int))
    (=> (and (<= (- 2147483648) $int5254)
             (<= $int5254 2147483647)
             (<= (- 2147483648) $int5253)
             (<= $int5253 2147483647)
             (< $i4995251 100000)
             ($main_inv407 $a4965248 $b4975249 $c4985250 $i4995251 $x5005252))
        ($main_inv407 (store $a4965248 $i4995251 $int5253) (store $b4975249 $i4995251 $int5254) $c4985250 (+ $i4995251 1) $x5005252))))

; loop entry $main_inv408
(assert
  (forall (($x5005259 Int) ($c4985257 (Array Int Int)) ($b4975256 (Array Int Int)) ($i4995258 Int) ($a4965255 (Array Int Int)))
    (=> (and ($main_sum407 $a4965255 $b4975256 $c4985257 $i4995258 $x5005259))
        ($main_inv408 $a4965255 $b4975256 $c4985257 0 $x5005259))))

; loop term $main_sum408
(assert
  (forall (($i4995263 Int) ($a4965260 (Array Int Int)) ($b4975261 (Array Int Int)) ($x5005264 Int) ($c4985262 (Array Int Int)))
    (=> (and (not (< $i4995263 100000))
             ($main_inv408 $a4965260 $b4975261 $c4985262 $i4995263 $x5005264))
        ($main_sum408 $a4965260 $b4975261 $c4985262 $i4995263 $x5005264))))

; forwards $main_inv408
(assert
  (forall (($i4995263 Int) ($a4965260 (Array Int Int)) ($b4975261 (Array Int Int)) ($x5005264 Int) ($c4985262 (Array Int Int)))
    (=> (and (< $i4995263 100000)
             ($main_inv408 $a4965260 $b4975261 $c4985262 $i4995263 $x5005264))
        ($main_inv408 $a4965260 $b4975261 (store $c4985262 $i4995263 (- (select $a4965260 $i4995263) (select $b4975261 $i4995263))) (+ $i4995263 1) $x5005264))))

; loop entry $main_inv409
(assert
  (forall (($b4975266 (Array Int Int)) ($c4985267 (Array Int Int)) ($x5005269 Int) ($i4995268 Int) ($a4965265 (Array Int Int)))
    (=> (and ($main_sum408 $a4965265 $b4975266 $c4985267 $i4995268 $x5005269))
        ($main_inv409 $a4965265 $b4975266 $c4985267 $i4995268 0))))

; loop term $main_sum409
(assert
  (forall (($b4975271 (Array Int Int)) ($i4995273 Int) ($x5005274 Int) ($c4985272 (Array Int Int)) ($a4965270 (Array Int Int)))
    (=> (and (not (< $x5005274 100000))
             ($main_inv409 $a4965270 $b4975271 $c4985272 $i4995273 $x5005274))
        ($main_sum409 $a4965270 $b4975271 $c4985272 $i4995273 $x5005274))))

; __VERIFIER_assert precondition
(assert
  (forall (($b4975271 (Array Int Int)) ($i4995273 Int) ($x5005274 Int) ($c4985272 (Array Int Int)) ($a4965270 (Array Int Int)))
    (=> (and (< $x5005274 100000)
             ($main_inv409 $a4965270 $b4975271 $c4985272 $i4995273 $x5005274))
        ($__VERIFIER_assert_pre (ite (= (select $c4985272 $x5005274) (- (select $a4965270 $x5005274) (select $b4975271 $x5005274))) 1 0)))))

; forwards $main_inv409
(assert
  (forall (($b4975271 (Array Int Int)) ($i4995273 Int) ($x5005274 Int) ($c4985272 (Array Int Int)) ($a4965270 (Array Int Int)))
    (=> (and (__VERIFIER_assert (ite (= (select $c4985272 $x5005274) (- (select $a4965270 $x5005274) (select $b4975271 $x5005274))) 1 0))
             (< $x5005274 100000)
             ($main_inv409 $a4965270 $b4975271 $c4985272 $i4995273 $x5005274))
        ($main_inv409 $a4965270 $b4975271 $c4985272 $i4995273 (+ $x5005274 1)))))

(check-sat)
