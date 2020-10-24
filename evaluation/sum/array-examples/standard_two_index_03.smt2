(set-logic HORN)

(declare-fun $__VERIFIER_assert_if122 (Int Int) Bool)
(declare-fun $main_inv385 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_sum384 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv383 ((Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum385 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum383 ((Array Int Int) (Array Int Int) Int Int (Array Int Int) (Array Int Int) Int Int) Bool)
(declare-fun $main_inv384 ((Array Int Int) (Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond7276 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond7276))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if122 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond7277 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if122 cond cond7277))
        (__VERIFIER_assert cond7277))))

; loop entry $main_inv383
(assert
  (forall (($a464 (Array Int Int)) ($b465 (Array Int Int)) ($i466 Int) ($j467 Int))
    (=> (and (= $j467 0)
             (= $i466 0))
        ($main_inv383 $a464 $b465 $i466 $j467))))

; loop term $main_sum383
(assert
  (forall (($a4647278 (Array Int Int)) ($b4657279 (Array Int Int)) ($i4667280 Int) ($j4677281 Int))
    (=> (and (not (< $i4667280 10000)))
        ($main_sum383 $a4647278 $b4657279 $i4667280 $j4677281 $a4647278 $b4657279 $i4667280 $j4677281))))

; forwards $main_inv383
(assert
  (forall (($int7282 Int) ($b4657279 (Array Int Int)) ($j4677281 Int) ($i4667280 Int) ($a4647278 (Array Int Int)))
    (=> (and (<= (- 2147483648) $int7282)
             (<= $int7282 2147483647)
             (< $i4667280 10000)
             ($main_inv383 $a4647278 $b4657279 $i4667280 $j4677281))
        ($main_inv383 $a4647278 (store $b4657279 $i4667280 $int7282) (+ $i4667280 1) $j4677281))))

; backwards $main_sum383
(assert
  (forall (($int7282 Int) ($j4677286 Int) ($b4657279 (Array Int Int)) ($i4667285 Int) ($b4657284 (Array Int Int)) ($j4677281 Int) ($i4667280 Int) ($a4647283 (Array Int Int)) ($a4647278 (Array Int Int)))
    (=> (and ($main_sum383 $a4647278 (store $b4657279 $i4667280 $int7282) (+ $i4667280 1) $j4677281 $a4647283 $b4657284 $i4667285 $j4677286)
             (<= (- 2147483648) $int7282)
             (<= $int7282 2147483647)
             (< $i4667280 10000))
        ($main_sum383 $a4647278 $b4657279 $i4667280 $j4677281 $a4647283 $b4657284 $i4667285 $j4677286))))

; loop entry $main_inv384
(assert
  (forall (($j467 Int) ($i4667289 Int) ($a4647287 (Array Int Int)) ($j4677290 Int) ($i466 Int) ($b465 (Array Int Int)) ($b4657288 (Array Int Int)) ($a464 (Array Int Int)))
    (=> (and ($main_sum383 $a464 $b465 $i466 $j467 $a4647287 $b4657288 $i4667289 $j4677290)
             (= $j467 0)
             (= $i466 0))
        ($main_inv384 $a4647287 $b4657288 1 $j4677290))))

; loop term $main_sum384
(assert
  (forall (($a4647291 (Array Int Int)) ($b4657292 (Array Int Int)) ($i4667293 Int) ($j4677294 Int))
    (=> (and (not (< $i4667293 10000)))
        ($main_sum384 $a4647291 $b4657292 $i4667293 $j4677294 $a4647291 $b4657292 $i4667293 $j4677294))))

; forwards $main_inv384
(assert
  (forall (($a4647291 (Array Int Int)) ($j4677294 Int) ($b4657292 (Array Int Int)) ($i4667293 Int))
    (=> (and (< $i4667293 10000)
             ($main_inv384 $a4647291 $b4657292 $i4667293 $j4677294))
        ($main_inv384 (store $a4647291 $j4677294 (select $b4657292 $i4667293)) $b4657292 (+ $i4667293 3) (+ $j4677294 1)))))

; backwards $main_sum384
(assert
  (forall (($j4677298 Int) ($j4677294 Int) ($a4647291 (Array Int Int)) ($i4667293 Int) ($i4667297 Int) ($b4657296 (Array Int Int)) ($a4647295 (Array Int Int)) ($b4657292 (Array Int Int)))
    (=> (and ($main_sum384 (store $a4647291 $j4677294 (select $b4657292 $i4667293)) $b4657292 (+ $i4667293 3) (+ $j4677294 1) $a4647295 $b4657296 $i4667297 $j4677298)
             (< $i4667293 10000))
        ($main_sum384 $a4647291 $b4657292 $i4667293 $j4677294 $a4647295 $b4657296 $i4667297 $j4677298))))

; loop entry $main_inv385
(assert
  (forall (($j467 Int) ($i4667289 Int) ($a4647287 (Array Int Int)) ($i4667301 Int) ($j4677302 Int) ($a4647299 (Array Int Int)) ($b4657300 (Array Int Int)) ($j4677290 Int) ($i466 Int) ($b465 (Array Int Int)) ($b4657288 (Array Int Int)) ($a464 (Array Int Int)))
    (=> (and ($main_sum384 $a4647287 $b4657288 1 $j4677290 $a4647299 $b4657300 $i4667301 $j4677302)
             ($main_sum383 $a464 $b465 $i466 $j467 $a4647287 $b4657288 $i4667289 $j4677290)
             (= $j467 0)
             (= $i466 0))
        ($main_inv385 $a4647299 $b4657300 1 0))))

; loop term $main_sum385
(assert
  (forall (($a4647303 (Array Int Int)) ($b4657304 (Array Int Int)) ($i4667305 Int) ($j4677306 Int))
    (=> (and (not (< $i4667305 10000)))
        ($main_sum385 $a4647303 $b4657304 $i4667305 $j4677306 $a4647303 $b4657304 $i4667305 $j4677306))))

; __VERIFIER_assert precondition
(assert
  (forall (($a4647303 (Array Int Int)) ($j4677306 Int) ($b4657304 (Array Int Int)) ($i4667305 Int))
    (=> (and (< $i4667305 10000)
             ($main_inv385 $a4647303 $b4657304 $i4667305 $j4677306))
        ($__VERIFIER_assert_pre (ite (= (select $a4647303 $j4677306) (select $b4657304 (+ (* 3 $j4677306) 1))) 1 0)))))

; forwards $main_inv385
(assert
  (forall (($a4647303 (Array Int Int)) ($b4657304 (Array Int Int)) ($i4667305 Int) ($j4677306 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a4647303 $j4677306) (select $b4657304 (+ (* 3 $j4677306) 1))) 1 0))
             (< $i4667305 10000)
             ($main_inv385 $a4647303 $b4657304 $i4667305 $j4677306))
        ($main_inv385 $a4647303 $b4657304 (+ $i4667305 3) (+ $j4677306 1)))))

; backwards $main_sum385
(assert
  (forall (($i4667305 Int) ($b4657308 (Array Int Int)) ($b4657304 (Array Int Int)) ($a4647303 (Array Int Int)) ($j4677310 Int) ($j4677306 Int) ($a4647307 (Array Int Int)) ($i4667309 Int))
    (=> (and ($main_sum385 $a4647303 $b4657304 (+ $i4667305 3) (+ $j4677306 1) $a4647307 $b4657308 $i4667309 $j4677310)
             (__VERIFIER_assert (ite (= (select $a4647303 $j4677306) (select $b4657304 (+ (* 3 $j4677306) 1))) 1 0))
             (< $i4667305 10000))
        ($main_sum385 $a4647303 $b4657304 $i4667305 $j4677306 $a4647307 $b4657308 $i4667309 $j4677310))))

(check-sat)
