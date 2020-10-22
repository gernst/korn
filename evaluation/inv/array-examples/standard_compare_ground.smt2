(set-logic HORN)

(declare-fun $main_inv84 ((Array Int Int) (Array Int Int) Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum84 ((Array Int Int) (Array Int Int) Int Int Int Int) Bool)
(declare-fun $main_inv83 ((Array Int Int) (Array Int Int) Int Int Int Int) Bool)
(declare-fun $main_if38 ((Array Int Int) (Array Int Int) Int Int Int Int) Bool)
(declare-fun $main_if39 ((Array Int Int) (Array Int Int) Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if37 (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv82 ((Array Int Int) (Array Int Int) Int Int Int Int) Bool)
(declare-fun $main_sum82 ((Array Int Int) (Array Int Int) Int Int Int Int) Bool)
(declare-fun $main_sum83 ((Array Int Int) (Array Int Int) Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond1252 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond1252))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if37 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond1253 Int))
    (=> (and ($__VERIFIER_assert_if37 cond1253))
        (__VERIFIER_assert cond1253))))

; loop entry $main_inv82
(assert
  (forall (($rv145 Int) ($x146 Int) ($j143 Int) ($a141 (Array Int Int)) ($i144 Int) ($b142 (Array Int Int)))
    (=> (and (= $j143 0))
        ($main_inv82 $a141 $b142 $j143 $i144 $rv145 $x146))))

; loop term $main_sum82
(assert
  (forall (($x1461259 Int) ($rv1451258 Int) ($a1411254 (Array Int Int)) ($b1421255 (Array Int Int)) ($j1431256 Int) ($i1441257 Int))
    (=> (and (not (< $j1431256 100000))
             ($main_inv82 $a1411254 $b1421255 $j1431256 $i1441257 $rv1451258 $x1461259))
        ($main_sum82 $a1411254 $b1421255 $j1431256 $i1441257 $rv1451258 $x1461259))))

; forwards $main_inv82
(assert
  (forall (($x1461259 Int) ($int1260 Int) ($rv1451258 Int) ($a1411254 (Array Int Int)) ($int1261 Int) ($b1421255 (Array Int Int)) ($j1431256 Int) ($i1441257 Int))
    (=> (and (<= (- 2147483648) $int1261)
             (<= $int1261 2147483647)
             (<= (- 2147483648) $int1260)
             (<= $int1260 2147483647)
             (< $j1431256 100000)
             ($main_inv82 $a1411254 $b1421255 $j1431256 $i1441257 $rv1451258 $x1461259))
        ($main_inv82 (store $a1411254 $j1431256 $int1260) (store $b1421255 $j1431256 $int1261) (+ $j1431256 1) $i1441257 $rv1451258 $x1461259))))

; loop entry $main_inv83
(assert
  (forall (($rv1451266 Int) ($a1411262 (Array Int Int)) ($x1461267 Int) ($b1421263 (Array Int Int)) ($i1441265 Int) ($j1431264 Int))
    (=> (and (= $rv1451266 1)
             (= $i1441265 0)
             ($main_sum82 $a1411262 $b1421263 $j1431264 $i1441265 $rv1451266 $x1461267))
        ($main_inv83 $a1411262 $b1421263 $j1431264 $i1441265 $rv1451266 $x1461267))))

; loop term $main_sum83
(assert
  (forall (($a1411268 (Array Int Int)) ($x1461273 Int) ($i1441271 Int) ($j1431270 Int) ($b1421269 (Array Int Int)) ($rv1451272 Int))
    (=> (and (not (< $i1441271 100000))
             ($main_inv83 $a1411268 $b1421269 $j1431270 $i1441271 $rv1451272 $x1461273))
        ($main_sum83 $a1411268 $b1421269 $j1431270 $i1441271 $rv1451272 $x1461273))))

; if then
(assert
  (forall (($a1411268 (Array Int Int)) ($x1461273 Int) ($i1441271 Int) ($j1431270 Int) ($b1421269 (Array Int Int)) ($rv1451272 Int))
    (=> (and (not (= (select $a1411268 $i1441271) (select $b1421269 $i1441271)))
             (< $i1441271 100000)
             ($main_inv83 $a1411268 $b1421269 $j1431270 $i1441271 $rv1451272 $x1461273))
        ($main_if38 $a1411268 $b1421269 $j1431270 $i1441271 0 $x1461273))))

; if else
(assert
  (forall (($a1411268 (Array Int Int)) ($x1461273 Int) ($i1441271 Int) ($j1431270 Int) ($b1421269 (Array Int Int)) ($rv1451272 Int))
    (=> (and (= (select $a1411268 $i1441271) (select $b1421269 $i1441271))
             (< $i1441271 100000)
             ($main_inv83 $a1411268 $b1421269 $j1431270 $i1441271 $rv1451272 $x1461273))
        ($main_if38 $a1411268 $b1421269 $j1431270 $i1441271 $rv1451272 $x1461273))))

; forwards $main_inv83
(assert
  (forall (($j1431276 Int) ($rv1451278 Int) ($x1461279 Int) ($i1441277 Int) ($b1421275 (Array Int Int)) ($a1411274 (Array Int Int)))
    (=> (and ($main_if38 $a1411274 $b1421275 $j1431276 $i1441277 $rv1451278 $x1461279))
        ($main_inv83 $a1411274 $b1421275 $j1431276 (+ $i1441277 1) $rv1451278 $x1461279))))

; loop entry $main_inv84
(assert
  (forall (($i1441283 Int) ($j1431282 Int) ($x1461285 Int) ($a1411280 (Array Int Int)) ($b1421281 (Array Int Int)) ($rv1451284 Int))
    (=> (and (not (= $rv1451284 0))
             ($main_sum83 $a1411280 $b1421281 $j1431282 $i1441283 $rv1451284 $x1461285))
        ($main_inv84 $a1411280 $b1421281 $j1431282 $i1441283 $rv1451284 0))))

; loop term $main_sum84
(assert
  (forall (($b1421287 (Array Int Int)) ($i1441289 Int) ($x1461291 Int) ($j1431288 Int) ($a1411286 (Array Int Int)) ($rv1451290 Int))
    (=> (and (not (< $x1461291 100000))
             ($main_inv84 $a1411286 $b1421287 $j1431288 $i1441289 $rv1451290 $x1461291))
        ($main_sum84 $a1411286 $b1421287 $j1431288 $i1441289 $rv1451290 $x1461291))))

; __VERIFIER_assert precondition
(assert
  (forall (($b1421287 (Array Int Int)) ($i1441289 Int) ($x1461291 Int) ($j1431288 Int) ($a1411286 (Array Int Int)) ($rv1451290 Int))
    (=> (and (< $x1461291 100000)
             ($main_inv84 $a1411286 $b1421287 $j1431288 $i1441289 $rv1451290 $x1461291))
        ($__VERIFIER_assert_pre (ite (= (select $a1411286 $x1461291) (select $b1421287 $x1461291)) 1 0)))))

; forwards $main_inv84
(assert
  (forall (($b1421287 (Array Int Int)) ($i1441289 Int) ($x1461291 Int) ($j1431288 Int) ($a1411286 (Array Int Int)) ($rv1451290 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a1411286 $x1461291) (select $b1421287 $x1461291)) 1 0))
             (< $x1461291 100000)
             ($main_inv84 $a1411286 $b1421287 $j1431288 $i1441289 $rv1451290 $x1461291))
        ($main_inv84 $a1411286 $b1421287 $j1431288 $i1441289 $rv1451290 (+ $x1461291 1)))))

; if then
(assert
  (forall (($a1411292 (Array Int Int)) ($j1431294 Int) ($rv1451296 Int) ($x1461297 Int) ($i1441295 Int) ($b1421293 (Array Int Int)))
    (=> (and ($main_sum84 $a1411292 $b1421293 $j1431294 $i1441295 $rv1451296 $x1461297))
        ($main_if39 $a1411292 $b1421293 $j1431294 $i1441295 $rv1451296 $x1461297))))

; if else
(assert
  (forall (($i1441283 Int) ($j1431282 Int) ($x1461285 Int) ($a1411280 (Array Int Int)) ($b1421281 (Array Int Int)) ($rv1451284 Int))
    (=> (and (= $rv1451284 0)
             ($main_sum83 $a1411280 $b1421281 $j1431282 $i1441283 $rv1451284 $x1461285))
        ($main_if39 $a1411280 $b1421281 $j1431282 $i1441283 $rv1451284 $x1461285))))

(check-sat)
