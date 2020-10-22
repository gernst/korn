(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_if611 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if612 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $assume_abort_if_not_if609 (Int Int) Bool)
(declare-fun $main_sum219 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if610 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv219 (Int Int Int Int Int Int) Bool)
(declare-fun $main_if614 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if613 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if609 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond15247 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if609 cond cond15247))
        (assume_abort_if_not cond15247))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond15248 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond15248))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if610 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond15249 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if610 cond cond15249))
        (__VERIFIER_assert cond15249))))

; if else
(assert
  (forall (($uint15251 Int) ($v4606 Int) ($l605 Int) ($j604 Int) ($i602 Int) ($k603 Int) ($n601 Int))
    (=> (and (<= $uint15251 20000001)
             (<= 0 $uint15251)
             (<= $uint15251 4294967295)
             (= $v4606 0)
             (= $l605 0)
             (= $j604 0)
             (= $k603 0)
             (= $i602 0)
             (= $n601 0))
        ($main_if611 $n601 $i602 $k603 $j604 $l605 $v4606 $uint15251 $i602 $k603 $j604 $l605 $v4606))))

; loop entry $main_inv219
(assert
  (forall (($i60215253 Int) ($v4606 Int) ($n60115252 Int) ($l60515256 Int) ($l605 Int) ($k60315254 Int) ($v460615257 Int) ($j60415255 Int) ($j604 Int) ($i602 Int) ($k603 Int) ($n601 Int))
    (=> (and ($main_if611 $n601 $i602 $k603 $j604 $l605 $v4606 $n60115252 $i60215253 $k60315254 $j60415255 $l60515256 $v460615257))
        ($main_inv219 $n60115252 $i60215253 $k60315254 $j60415255 $l60515256 $v460615257))))

; loop term $main_sum219
(assert
  (forall (($i60215259 Int) ($l60515262 Int) ($n60115258 Int) ($j60415261 Int) ($k60315260 Int) ($v460615263 Int))
    (=> (and (not (< $l60515262 $n60115258)))
        ($main_sum219 $n60115258 $i60215259 $k60315260 $j60415261 $l60515262 $v460615263 $n60115258 $i60215259 $k60315260 $j60415261 $l60515262 $v460615263))))

; if then
(assert
  (forall (($i60215259 Int) ($l60515262 Int) ($n60115258 Int) ($j60415261 Int) ($k60315260 Int) ($v460615263 Int))
    (=> (and (= (mod $l60515262 2) 0)
             (not (= (mod $l60515262 3) 0))
             (not (= (mod $l60515262 4) 0))
             (< $l60515262 $n60115258)
             ($main_inv219 $n60115258 $i60215259 $k60315260 $j60415261 $l60515262 $v460615263))
        ($main_if612 $n60115258 $i60215259 $k60315260 $j60415261 $l60515262 $v460615263 $n60115258 $i60215259 $k60315260 (+ $j60415261 1) $l60515262 $v460615263))))

; if else
(assert
  (forall (($i60215259 Int) ($l60515262 Int) ($n60115258 Int) ($j60415261 Int) ($k60315260 Int) ($v460615263 Int))
    (=> (and (not (= (mod $l60515262 2) 0))
             (not (= (mod $l60515262 3) 0))
             (not (= (mod $l60515262 4) 0))
             (< $l60515262 $n60115258)
             ($main_inv219 $n60115258 $i60215259 $k60315260 $j60415261 $l60515262 $v460615263))
        ($main_if612 $n60115258 $i60215259 $k60315260 $j60415261 $l60515262 $v460615263 $n60115258 $i60215259 (+ $k60315260 1) $j60415261 $l60515262 $v460615263))))

; if then
(assert
  (forall (($i60215259 Int) ($l60515262 Int) ($n60115258 Int) ($j60415261 Int) ($k60315260 Int) ($v460615263 Int))
    (=> (and (= (mod $l60515262 3) 0)
             (not (= (mod $l60515262 4) 0))
             (< $l60515262 $n60115258)
             ($main_inv219 $n60115258 $i60215259 $k60315260 $j60415261 $l60515262 $v460615263))
        ($main_if613 $n60115258 $i60215259 $k60315260 $j60415261 $l60515262 $v460615263 $n60115258 (+ $i60215259 1) $k60315260 $j60415261 $l60515262 $v460615263))))

; if else
(assert
  (forall (($i60215259 Int) ($l60515262 Int) ($i60215265 Int) ($n60115258 Int) ($k60315260 Int) ($k60315266 Int) ($v460615263 Int) ($n60115264 Int) ($v460615269 Int) ($j60415261 Int) ($l60515268 Int) ($j60415267 Int))
    (=> (and ($main_if612 $n60115258 $i60215259 $k60315260 $j60415261 $l60515262 $v460615263 $n60115264 $i60215265 $k60315266 $j60415267 $l60515268 $v460615269))
        ($main_if613 $n60115258 $i60215259 $k60315260 $j60415261 $l60515262 $v460615263 $n60115264 $i60215265 $k60315266 $j60415267 $l60515268 $v460615269))))

; if then
(assert
  (forall (($i60215259 Int) ($l60515262 Int) ($n60115258 Int) ($j60415261 Int) ($k60315260 Int) ($v460615263 Int))
    (=> (and (= (mod $l60515262 4) 0)
             (< $l60515262 $n60115258)
             ($main_inv219 $n60115258 $i60215259 $k60315260 $j60415261 $l60515262 $v460615263))
        ($main_if614 $n60115258 $i60215259 $k60315260 $j60415261 $l60515262 $v460615263 $n60115258 $i60215259 $k60315260 $j60415261 $l60515262 (+ $v460615263 1)))))

; if else
(assert
  (forall (($v460615275 Int) ($i60215259 Int) ($n60115270 Int) ($i60215271 Int) ($n60115258 Int) ($k60315260 Int) ($j60415273 Int) ($v460615263 Int) ($l60515262 Int) ($l60515274 Int) ($k60315272 Int) ($j60415261 Int))
    (=> (and ($main_if613 $n60115258 $i60215259 $k60315260 $j60415261 $l60515262 $v460615263 $n60115270 $i60215271 $k60315272 $j60415273 $l60515274 $v460615275))
        ($main_if614 $n60115258 $i60215259 $k60315260 $j60415261 $l60515262 $v460615263 $n60115270 $i60215271 $k60315272 $j60415273 $l60515274 $v460615275))))

; forwards $main_inv219
(assert
  (forall (($i60215259 Int) ($j60415279 Int) ($l60515262 Int) ($k60315278 Int) ($n60115276 Int) ($n60115258 Int) ($j60415261 Int) ($v460615281 Int) ($i60215277 Int) ($v460615263 Int) ($k60315260 Int) ($l60515280 Int))
    (=> (and ($main_if614 $n60115258 $i60215259 $k60315260 $j60415261 $l60515262 $v460615263 $n60115276 $i60215277 $k60315278 $j60415279 $l60515280 $v460615281))
        ($main_inv219 $n60115276 $i60215277 $k60315278 $j60415279 (+ $l60515280 1) $v460615281))))

; backwards $main_sum219
(assert
  (forall (($i60215259 Int) ($j60415279 Int) ($i60215283 Int) ($k60315278 Int) ($n60115276 Int) ($n60115258 Int) ($j60415261 Int) ($l60515286 Int) ($v460615281 Int) ($k60315284 Int) ($i60215277 Int) ($j60415285 Int) ($v460615263 Int) ($v460615287 Int) ($l60515262 Int) ($n60115282 Int) ($k60315260 Int) ($l60515280 Int))
    (=> (and ($main_sum219 $n60115276 $i60215277 $k60315278 $j60415279 (+ $l60515280 1) $v460615281 $n60115282 $i60215283 $k60315284 $j60415285 $l60515286 $v460615287)
             ($main_if614 $n60115258 $i60215259 $k60315260 $j60415261 $l60515262 $v460615263 $n60115276 $i60215277 $k60315278 $j60415279 $l60515280 $v460615281))
        ($main_sum219 $n60115258 $i60215259 $k60315260 $j60415261 $l60515262 $v460615263 $n60115282 $i60215283 $k60315284 $j60415285 $l60515286 $v460615287))))

; __VERIFIER_assert precondition
(assert
  (forall (($n60115252 Int) ($l60515256 Int) ($k60315290 Int) ($k60315254 Int) ($j60415291 Int) ($v460615257 Int) ($j60415255 Int) ($v460615293 Int) ($i60215253 Int) ($l60515292 Int) ($v4606 Int) ($i60215289 Int) ($j604 Int) ($i602 Int) ($n60115288 Int) ($l605 Int) ($k603 Int) ($n601 Int))
    (=> (and ($main_sum219 $n60115252 $i60215253 $k60315254 $j60415255 $l60515256 $v460615257 $n60115288 $i60215289 $k60315290 $j60415291 $l60515292 $v460615293)
             ($main_if611 $n601 $i602 $k603 $j604 $l605 $v4606 $n60115252 $i60215253 $k60315254 $j60415255 $l60515256 $v460615257))
        ($__VERIFIER_assert_pre (ite (= (+ (+ (+ $i60215289 $j60415291) $k60315290) $v460615293) $l60515292) 1 0)))))

(check-sat)
