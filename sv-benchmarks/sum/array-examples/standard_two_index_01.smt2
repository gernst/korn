(set-logic HORN)

(declare-fun $main_inv379 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum377 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if120 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum379 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv378 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv377 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum378 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond7198 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond7198))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if120 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond7199 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if120 cond cond7199))
        (__VERIFIER_assert cond7199))))

; loop entry $main_inv377
(assert
  (forall (($a456 (Array Int Int)) ($b457 (Array Int Int)) ($i458 Int) ($j459 Int))
    (=> (and (= $j459 0)
             (= $i458 0))
        ($main_inv377 $a456 $b457 $i458 $j459))))

; loop term $main_sum377
(assert
  (forall (($a4567200 (Array Int Int)) ($b4577201 (Array Int Int)) ($i4587202 Int) ($j4597203 Int))
    (=> (and (not (< $i4587202 10000)))
        ($main_sum377 $a4567200 $b4577201 $i4587202 $j4597203 $a4567200 $b4577201 $i4587202 $j4597203))))

; forwards $main_inv377
(assert
  (forall (($b4577201 (Array Int Int)) ($a4567200 (Array Int Int)) ($int7204 Int) ($j4597203 Int) ($i4587202 Int))
    (=> (and (<= (- 2147483648) $int7204)
             (<= $int7204 2147483647)
             (< $i4587202 10000)
             ($main_inv377 $a4567200 $b4577201 $i4587202 $j4597203))
        ($main_inv377 $a4567200 (store $b4577201 $i4587202 $int7204) (+ $i4587202 1) $j4597203))))

; backwards $main_sum377
(assert
  (forall (($j4597208 Int) ($b4577201 (Array Int Int)) ($a4567205 (Array Int Int)) ($a4567200 (Array Int Int)) ($int7204 Int) ($i4587202 Int) ($i4587207 Int) ($j4597203 Int) ($b4577206 (Array Int Int)))
    (=> (and ($main_sum377 $a4567200 (store $b4577201 $i4587202 $int7204) (+ $i4587202 1) $j4597203 $a4567205 $b4577206 $i4587207 $j4597208)
             (<= (- 2147483648) $int7204)
             (<= $int7204 2147483647)
             (< $i4587202 10000))
        ($main_sum377 $a4567200 $b4577201 $i4587202 $j4597203 $a4567205 $b4577206 $i4587207 $j4597208))))

; loop entry $main_inv378
(assert
  (forall (($b457 (Array Int Int)) ($b4577210 (Array Int Int)) ($i458 Int) ($j4597212 Int) ($a456 (Array Int Int)) ($i4587211 Int) ($a4567209 (Array Int Int)) ($j459 Int))
    (=> (and ($main_sum377 $a456 $b457 $i458 $j459 $a4567209 $b4577210 $i4587211 $j4597212)
             (= $j459 0)
             (= $i458 0))
        ($main_inv378 $a4567209 $b4577210 0 $j4597212))))

; loop term $main_sum378
(assert
  (forall (($a4567213 (Array Int Int)) ($b4577214 (Array Int Int)) ($i4587215 Int) ($j4597216 Int))
    (=> (and (not (< $i4587215 10000)))
        ($main_sum378 $a4567213 $b4577214 $i4587215 $j4597216 $a4567213 $b4577214 $i4587215 $j4597216))))

; forwards $main_inv378
(assert
  (forall (($a4567213 (Array Int Int)) ($j4597216 Int) ($b4577214 (Array Int Int)) ($i4587215 Int))
    (=> (and (< $i4587215 10000)
             ($main_inv378 $a4567213 $b4577214 $i4587215 $j4597216))
        ($main_inv378 (store $a4567213 $j4597216 (select $b4577214 $i4587215)) $b4577214 (+ $i4587215 1) (+ $j4597216 1)))))

; backwards $main_sum378
(assert
  (forall (($j4597220 Int) ($a4567213 (Array Int Int)) ($i4587219 Int) ($b4577218 (Array Int Int)) ($j4597216 Int) ($a4567217 (Array Int Int)) ($b4577214 (Array Int Int)) ($i4587215 Int))
    (=> (and ($main_sum378 (store $a4567213 $j4597216 (select $b4577214 $i4587215)) $b4577214 (+ $i4587215 1) (+ $j4597216 1) $a4567217 $b4577218 $i4587219 $j4597220)
             (< $i4587215 10000))
        ($main_sum378 $a4567213 $b4577214 $i4587215 $j4597216 $a4567217 $b4577218 $i4587219 $j4597220))))

; loop entry $main_inv379
(assert
  (forall (($b457 (Array Int Int)) ($a4567221 (Array Int Int)) ($i458 Int) ($j4597212 Int) ($a456 (Array Int Int)) ($i4587223 Int) ($i4587211 Int) ($a4567209 (Array Int Int)) ($b4577222 (Array Int Int)) ($j459 Int) ($j4597224 Int) ($b4577210 (Array Int Int)))
    (=> (and ($main_sum378 $a4567209 $b4577210 0 $j4597212 $a4567221 $b4577222 $i4587223 $j4597224)
             ($main_sum377 $a456 $b457 $i458 $j459 $a4567209 $b4577210 $i4587211 $j4597212)
             (= $j459 0)
             (= $i458 0))
        ($main_inv379 $a4567221 $b4577222 0 0))))

; loop term $main_sum379
(assert
  (forall (($a4567225 (Array Int Int)) ($b4577226 (Array Int Int)) ($i4587227 Int) ($j4597228 Int))
    (=> (and (not (< $i4587227 10000)))
        ($main_sum379 $a4567225 $b4577226 $i4587227 $j4597228 $a4567225 $b4577226 $i4587227 $j4597228))))

; __VERIFIER_assert precondition
(assert
  (forall (($a4567225 (Array Int Int)) ($j4597228 Int) ($b4577226 (Array Int Int)) ($i4587227 Int))
    (=> (and (< $i4587227 10000)
             ($main_inv379 $a4567225 $b4577226 $i4587227 $j4597228))
        ($__VERIFIER_assert_pre (ite (= (select $a4567225 $j4597228) (select $b4577226 $j4597228)) 1 0)))))

; forwards $main_inv379
(assert
  (forall (($a4567225 (Array Int Int)) ($b4577226 (Array Int Int)) ($i4587227 Int) ($j4597228 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a4567225 $j4597228) (select $b4577226 $j4597228)) 1 0))
             (< $i4587227 10000)
             ($main_inv379 $a4567225 $b4577226 $i4587227 $j4597228))
        ($main_inv379 $a4567225 $b4577226 (+ $i4587227 1) (+ $j4597228 1)))))

; backwards $main_sum379
(assert
  (forall (($a4567225 (Array Int Int)) ($b4577230 (Array Int Int)) ($i4587231 Int) ($j4597228 Int) ($a4567229 (Array Int Int)) ($j4597232 Int) ($b4577226 (Array Int Int)) ($i4587227 Int))
    (=> (and ($main_sum379 $a4567225 $b4577226 (+ $i4587227 1) (+ $j4597228 1) $a4567229 $b4577230 $i4587231 $j4597232)
             (__VERIFIER_assert (ite (= (select $a4567225 $j4597228) (select $b4577226 $j4597228)) 1 0))
             (< $i4587227 10000))
        ($main_sum379 $a4567225 $b4577226 $i4587227 $j4597228 $a4567229 $b4577230 $i4587231 $j4597232))))

(check-sat)
