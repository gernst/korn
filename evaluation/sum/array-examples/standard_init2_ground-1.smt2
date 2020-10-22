(set-logic HORN)

(declare-fun $main_inv222 ((Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv220 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv221 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum220 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_sum222 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum221 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if67 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond5247 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond5247))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if67 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5248 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if67 cond cond5248))
        (__VERIFIER_assert cond5248))))

; loop entry $main_inv220
(assert
  (forall (($a322 (Array Int Int)) ($i323 Int) ($x324 Int))
    (=> (and (= $i323 0))
        ($main_inv220 $a322 $i323 $x324))))

; loop term $main_sum220
(assert
  (forall (($a3225249 (Array Int Int)) ($i3235250 Int) ($x3245251 Int))
    (=> (and (not (< $i3235250 100000)))
        ($main_sum220 $a3225249 $i3235250 $x3245251 $a3225249 $i3235250 $x3245251))))

; forwards $main_inv220
(assert
  (forall (($a3225249 (Array Int Int)) ($i3235250 Int) ($x3245251 Int))
    (=> (and (< $i3235250 100000)
             ($main_inv220 $a3225249 $i3235250 $x3245251))
        ($main_inv220 (store $a3225249 $i3235250 42) (+ $i3235250 1) $x3245251))))

; backwards $main_sum220
(assert
  (forall (($a3225252 (Array Int Int)) ($x3245254 Int) ($a3225249 (Array Int Int)) ($x3245251 Int) ($i3235253 Int) ($i3235250 Int))
    (=> (and ($main_sum220 (store $a3225249 $i3235250 42) (+ $i3235250 1) $x3245251 $a3225252 $i3235253 $x3245254)
             (< $i3235250 100000))
        ($main_sum220 $a3225249 $i3235250 $x3245251 $a3225252 $i3235253 $x3245254))))

; loop entry $main_inv221
(assert
  (forall (($i323 Int) ($a322 (Array Int Int)) ($i3235256 Int) ($a3225255 (Array Int Int)) ($x324 Int) ($x3245257 Int))
    (=> (and ($main_sum220 $a322 $i323 $x324 $a3225255 $i3235256 $x3245257)
             (= $i323 0))
        ($main_inv221 $a3225255 0 $x3245257))))

; loop term $main_sum221
(assert
  (forall (($a3225258 (Array Int Int)) ($i3235259 Int) ($x3245260 Int))
    (=> (and (not (< $i3235259 100000)))
        ($main_sum221 $a3225258 $i3235259 $x3245260 $a3225258 $i3235259 $x3245260))))

; forwards $main_inv221
(assert
  (forall (($a3225258 (Array Int Int)) ($i3235259 Int) ($x3245260 Int))
    (=> (and (< $i3235259 100000)
             ($main_inv221 $a3225258 $i3235259 $x3245260))
        ($main_inv221 (store $a3225258 $i3235259 43) (+ $i3235259 1) $x3245260))))

; backwards $main_sum221
(assert
  (forall (($a3225258 (Array Int Int)) ($x3245260 Int) ($a3225261 (Array Int Int)) ($i3235262 Int) ($x3245263 Int) ($i3235259 Int))
    (=> (and ($main_sum221 (store $a3225258 $i3235259 43) (+ $i3235259 1) $x3245260 $a3225261 $i3235262 $x3245263)
             (< $i3235259 100000))
        ($main_sum221 $a3225258 $i3235259 $x3245260 $a3225261 $i3235262 $x3245263))))

; loop entry $main_inv222
(assert
  (forall (($i3235265 Int) ($i323 Int) ($a322 (Array Int Int)) ($i3235256 Int) ($a3225255 (Array Int Int)) ($a3225264 (Array Int Int)) ($x3245266 Int) ($x324 Int) ($x3245257 Int))
    (=> (and ($main_sum221 $a3225255 0 $x3245257 $a3225264 $i3235265 $x3245266)
             ($main_sum220 $a322 $i323 $x324 $a3225255 $i3235256 $x3245257)
             (= $i323 0))
        ($main_inv222 $a3225264 $i3235265 0))))

; loop term $main_sum222
(assert
  (forall (($a3225267 (Array Int Int)) ($i3235268 Int) ($x3245269 Int))
    (=> (and (not (< $x3245269 100000)))
        ($main_sum222 $a3225267 $i3235268 $x3245269 $a3225267 $i3235268 $x3245269))))

; __VERIFIER_assert precondition
(assert
  (forall (($a3225267 (Array Int Int)) ($x3245269 Int) ($i3235268 Int))
    (=> (and (< $x3245269 100000)
             ($main_inv222 $a3225267 $i3235268 $x3245269))
        ($__VERIFIER_assert_pre (ite (= (select $a3225267 $x3245269) 42) 1 0)))))

; forwards $main_inv222
(assert
  (forall (($a3225267 (Array Int Int)) ($i3235268 Int) ($x3245269 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a3225267 $x3245269) 42) 1 0))
             (< $x3245269 100000)
             ($main_inv222 $a3225267 $i3235268 $x3245269))
        ($main_inv222 $a3225267 $i3235268 (+ $x3245269 1)))))

; backwards $main_sum222
(assert
  (forall (($i3235268 Int) ($a3225267 (Array Int Int)) ($x3245272 Int) ($a3225270 (Array Int Int)) ($x3245269 Int) ($i3235271 Int))
    (=> (and ($main_sum222 $a3225267 $i3235268 (+ $x3245269 1) $a3225270 $i3235271 $x3245272)
             (__VERIFIER_assert (ite (= (select $a3225267 $x3245269) 42) 1 0))
             (< $x3245269 100000))
        ($main_sum222 $a3225267 $i3235268 $x3245269 $a3225270 $i3235271 $x3245272))))

(check-sat)
