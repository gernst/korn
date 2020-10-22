(set-logic HORN)

(declare-fun $main_sum470 (Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $assume_abort_if_not_if239 (Int) Bool)
(declare-fun $main_if243 (Int Int Int Int) Bool)
(declare-fun $main_sum468 (Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_if241 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_END (Int Int Int Int) Bool)
(declare-fun $main_inv468 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv470 (Int Int Int Int) Bool)
(declare-fun $main_sum469 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if240 (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_if242 (Int Int Int Int) Bool)
(declare-fun $main_inv469 (Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if239 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond6263 Int))
    (=> (and ($assume_abort_if_not_if239 cond6263))
        (assume_abort_if_not cond6263))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond6264 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond6264))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if240 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6265 Int))
    (=> (and ($__VERIFIER_assert_if240 cond6265))
        (__VERIFIER_assert cond6265))))

; if else
(assert
  (forall (($i617 Int) ($j618 Int) ($int6266 Int) ($int6267 Int))
    (=> (and (< $int6267 1000000)
             (<= (- 2147483648) $int6267)
             (<= $int6267 2147483647)
             (<= (- 2147483648) $int6266)
             (<= $int6266 2147483647))
        ($main_if241 $i617 $j618 $int6266 $int6267))))

; goto END
(assert
  (forall (($i6176268 Int) ($j6186269 Int) ($k6196270 Int) ($n6206271 Int))
    (=> (and (not (= $k6196270 $n6206271))
             ($main_if241 $i6176268 $j6186269 $k6196270 $n6206271))
        ($main_END $i6176268 $j6186269 $k6196270 $n6206271))))

; if then
(assert
  (forall (($i6176268 Int) ($j6186269 Int) ($k6196270 Int) ($n6206271 Int))
    (=> (and (= $k6196270 $n6206271)
             ($main_if241 $i6176268 $j6186269 $k6196270 $n6206271))
        ($main_if242 $i6176268 $j6186269 $k6196270 $n6206271))))

; loop entry $main_inv468
(assert
  (forall (($j6186273 Int) ($k6196274 Int) ($n6206275 Int) ($i6176272 Int))
    (=> (and ($main_if242 $i6176272 $j6186273 $k6196274 $n6206275))
        ($main_inv468 0 $j6186273 $k6196274 $n6206275))))

; loop term $main_sum468
(assert
  (forall (($i6176276 Int) ($j6186277 Int) ($k6196278 Int) ($n6206279 Int))
    (=> (and (not (< $i6176276 $n6206279))
             ($main_inv468 $i6176276 $j6186277 $k6196278 $n6206279))
        ($main_sum468 $i6176276 $j6186277 $k6196278 $n6206279))))

; loop entry $main_inv469
(assert
  (forall (($i6176276 Int) ($k6196278 Int) ($n6206279 Int) ($j6186277 Int))
    (=> (and (< $i6176276 $n6206279)
             ($main_inv468 $i6176276 $j6186277 $k6196278 $n6206279))
        ($main_inv469 $i6176276 (* 2 $i6176276) $k6196278 $n6206279))))

; loop term $main_sum469
(assert
  (forall (($i6176280 Int) ($j6186281 Int) ($k6196282 Int) ($n6206283 Int))
    (=> (and (not (< $j6186281 $n6206283))
             ($main_inv469 $i6176280 $j6186281 $k6196282 $n6206283))
        ($main_sum469 $i6176280 $j6186281 $k6196282 $n6206283))))

; loop entry $main_inv470
(assert
  (forall (($i6176280 Int) ($k6196282 Int) ($int6284 Int) ($j6186281 Int) ($n6206283 Int))
    (=> (and (not (= $int6284 0))
             (<= (- 2147483648) $int6284)
             (<= $int6284 2147483647)
             (< $j6186281 $n6206283)
             ($main_inv469 $i6176280 $j6186281 $k6196282 $n6206283))
        ($main_inv470 $i6176280 $j6186281 $j6186281 $n6206283))))

; loop term $main_sum470
(assert
  (forall (($i6176285 Int) ($j6186286 Int) ($k6196287 Int) ($n6206288 Int))
    (=> (and (not (< $k6196287 $n6206288))
             ($main_inv470 $i6176285 $j6186286 $k6196287 $n6206288))
        ($main_sum470 $i6176285 $j6186286 $k6196287 $n6206288))))

; __VERIFIER_assert precondition
(assert
  (forall (($k6196287 Int) ($i6176285 Int) ($n6206288 Int) ($j6186286 Int))
    (=> (and (< $k6196287 $n6206288)
             ($main_inv470 $i6176285 $j6186286 $k6196287 $n6206288))
        ($__VERIFIER_assert_pre (ite (>= $k6196287 (* 2 $i6176285)) 1 0)))))

; forwards $main_inv470
(assert
  (forall (($i6176285 Int) ($j6186286 Int) ($k6196287 Int) ($n6206288 Int))
    (=> (and (__VERIFIER_assert (ite (>= $k6196287 (* 2 $i6176285)) 1 0))
             (< $k6196287 $n6206288)
             ($main_inv470 $i6176285 $j6186286 $k6196287 $n6206288))
        ($main_inv470 $i6176285 $j6186286 (+ $k6196287 1) $n6206288))))

; __VERIFIER_assert precondition
(assert
  (forall (($i6176280 Int) ($k6196282 Int) ($int6284 Int) ($j6186281 Int) ($n6206283 Int))
    (=> (and (= $int6284 0)
             (<= (- 2147483648) $int6284)
             (<= $int6284 2147483647)
             (< $j6186281 $n6206283)
             ($main_inv469 $i6176280 $j6186281 $k6196282 $n6206283))
        ($__VERIFIER_assert_pre (ite (>= $k6196282 $n6206283) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($i6176280 Int) ($k6196282 Int) ($int6284 Int) ($j6186281 Int) ($n6206283 Int))
    (=> (and (__VERIFIER_assert (ite (>= $k6196282 $n6206283) 1 0))
             (= $int6284 0)
             (<= (- 2147483648) $int6284)
             (<= $int6284 2147483647)
             (< $j6186281 $n6206283)
             ($main_inv469 $i6176280 $j6186281 $k6196282 $n6206283))
        ($__VERIFIER_assert_pre (ite (<= $k6196282 $n6206283) 1 0)))))

; if then
(assert
  (forall (($i6176289 Int) ($j6186290 Int) ($k6196291 Int) ($n6206292 Int))
    (=> (and ($main_sum470 $i6176289 $j6186290 $k6196291 $n6206292))
        ($main_if243 $i6176289 $j6186290 $k6196291 $n6206292))))

; if else
(assert
  (forall (($i6176280 Int) ($k6196282 Int) ($int6284 Int) ($j6186281 Int) ($n6206283 Int))
    (=> (and (__VERIFIER_assert (ite (<= $k6196282 $n6206283) 1 0))
             (__VERIFIER_assert (ite (>= $k6196282 $n6206283) 1 0))
             (= $int6284 0)
             (<= (- 2147483648) $int6284)
             (<= $int6284 2147483647)
             (< $j6186281 $n6206283)
             ($main_inv469 $i6176280 $j6186281 $k6196282 $n6206283))
        ($main_if243 $i6176280 $j6186281 $k6196282 $n6206283))))

; forwards $main_inv469
(assert
  (forall (($i6176293 Int) ($j6186294 Int) ($k6196295 Int) ($n6206296 Int))
    (=> (and ($main_if243 $i6176293 $j6186294 $k6196295 $n6206296))
        ($main_inv469 $i6176293 (+ $j6186294 1) $k6196295 $n6206296))))

; forwards $main_inv468
(assert
  (forall (($i6176297 Int) ($j6186298 Int) ($k6196299 Int) ($n6206300 Int))
    (=> (and ($main_sum469 $i6176297 $j6186298 $k6196299 $n6206300))
        ($main_inv468 (+ $i6176297 1) $j6186298 $k6196299 $n6206300))))

; label END
(assert
  (forall (($i6176301 Int) ($j6186302 Int) ($k6196303 Int) ($n6206304 Int))
    (=> (and ($main_sum468 $i6176301 $j6186302 $k6196303 $n6206304))
        ($main_END $i6176301 $j6186302 $k6196303 $n6206304))))

(check-sat)
