(set-logic HORN)

(declare-fun $assume_abort_if_not_if604 (Int Int) Bool)
(declare-fun $main_if607 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if605 (Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $main_sum218 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_if608 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if606 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv218 (Int Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if604 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond15212 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if604 cond cond15212))
        (assume_abort_if_not cond15212))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond15213 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond15213))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if605 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond15214 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if605 cond cond15214))
        (__VERIFIER_assert cond15214))))

; if else
(assert
  (forall (($k598 Int) ($l600 Int) ($i597 Int) ($uint15216 Int) ($n596 Int) ($j599 Int))
    (=> (and (<= $uint15216 20000001)
             (<= 0 $uint15216)
             (<= $uint15216 4294967295)
             (= $l600 0))
        ($main_if606 $n596 $i597 $k598 $j599 $l600 $uint15216 $i597 $k598 $j599 $l600))))

; loop entry $main_inv218
(assert
  (forall (($j59915220 Int) ($k598 Int) ($l600 Int) ($i597 Int) ($k59815219 Int) ($n59615217 Int) ($i59715218 Int) ($n596 Int) ($j599 Int) ($l60015221 Int))
    (=> (and ($main_if606 $n596 $i597 $k598 $j599 $l600 $n59615217 $i59715218 $k59815219 $j59915220 $l60015221))
        ($main_inv218 $n59615217 0 0 0 0))))

; loop term $main_sum218
(assert
  (forall (($k59815224 Int) ($i59715223 Int) ($j59915225 Int) ($n59615222 Int) ($l60015226 Int))
    (=> (and (not (< $l60015226 $n59615222)))
        ($main_sum218 $n59615222 $i59715223 $k59815224 $j59915225 $l60015226 $n59615222 $i59715223 $k59815224 $j59915225 $l60015226))))

; if then
(assert
  (forall (($k59815224 Int) ($i59715223 Int) ($j59915225 Int) ($n59615222 Int) ($l60015226 Int))
    (=> (and (= (mod $l60015226 2) 0)
             (not (= (mod $l60015226 3) 0))
             (< $l60015226 $n59615222)
             ($main_inv218 $n59615222 $i59715223 $k59815224 $j59915225 $l60015226))
        ($main_if607 $n59615222 $i59715223 $k59815224 $j59915225 $l60015226 $n59615222 $i59715223 $k59815224 (+ $j59915225 1) $l60015226))))

; if else
(assert
  (forall (($k59815224 Int) ($i59715223 Int) ($j59915225 Int) ($n59615222 Int) ($l60015226 Int))
    (=> (and (not (= (mod $l60015226 2) 0))
             (not (= (mod $l60015226 3) 0))
             (< $l60015226 $n59615222)
             ($main_inv218 $n59615222 $i59715223 $k59815224 $j59915225 $l60015226))
        ($main_if607 $n59615222 $i59715223 $k59815224 $j59915225 $l60015226 $n59615222 $i59715223 (+ $k59815224 1) $j59915225 $l60015226))))

; if then
(assert
  (forall (($k59815224 Int) ($i59715223 Int) ($j59915225 Int) ($n59615222 Int) ($l60015226 Int))
    (=> (and (= (mod $l60015226 3) 0)
             (< $l60015226 $n59615222)
             ($main_inv218 $n59615222 $i59715223 $k59815224 $j59915225 $l60015226))
        ($main_if608 $n59615222 $i59715223 $k59815224 $j59915225 $l60015226 $n59615222 (+ $i59715223 1) $k59815224 $j59915225 $l60015226))))

; if else
(assert
  (forall (($k59815224 Int) ($k59815229 Int) ($i59715223 Int) ($n59615227 Int) ($n59615222 Int) ($l60015226 Int) ($j59915230 Int) ($i59715228 Int) ($j59915225 Int) ($l60015231 Int))
    (=> (and ($main_if607 $n59615222 $i59715223 $k59815224 $j59915225 $l60015226 $n59615227 $i59715228 $k59815229 $j59915230 $l60015231))
        ($main_if608 $n59615222 $i59715223 $k59815224 $j59915225 $l60015226 $n59615227 $i59715228 $k59815229 $j59915230 $l60015231))))

; forwards $main_inv218
(assert
  (forall (($k59815224 Int) ($k59815234 Int) ($i59715233 Int) ($i59715223 Int) ($j59915235 Int) ($l60015236 Int) ($n59615222 Int) ($l60015226 Int) ($j59915225 Int) ($n59615232 Int))
    (=> (and ($main_if608 $n59615222 $i59715223 $k59815224 $j59915225 $l60015226 $n59615232 $i59715233 $k59815234 $j59915235 $l60015236))
        ($main_inv218 $n59615232 $i59715233 $k59815234 $j59915235 (+ $l60015236 1)))))

; backwards $main_sum218
(assert
  (forall (($k59815224 Int) ($k59815234 Int) ($k59815239 Int) ($i59715233 Int) ($l60015241 Int) ($n59615237 Int) ($j59915235 Int) ($i59715238 Int) ($l60015236 Int) ($j59915240 Int) ($i59715223 Int) ($n59615222 Int) ($l60015226 Int) ($j59915225 Int) ($n59615232 Int))
    (=> (and ($main_sum218 $n59615232 $i59715233 $k59815234 $j59915235 (+ $l60015236 1) $n59615237 $i59715238 $k59815239 $j59915240 $l60015241)
             ($main_if608 $n59615222 $i59715223 $k59815224 $j59915225 $l60015226 $n59615232 $i59715233 $k59815234 $j59915235 $l60015236))
        ($main_sum218 $n59615222 $i59715223 $k59815224 $j59915225 $l60015226 $n59615237 $i59715238 $k59815239 $j59915240 $l60015241))))

; __VERIFIER_assert precondition
(assert
  (forall (($j59915220 Int) ($k598 Int) ($k59815244 Int) ($k59815219 Int) ($n59615217 Int) ($i59715218 Int) ($l600 Int) ($i59715243 Int) ($l60015246 Int) ($i597 Int) ($n59615242 Int) ($n596 Int) ($j599 Int) ($j59915245 Int) ($l60015221 Int))
    (=> (and ($main_sum218 $n59615217 0 0 0 0 $n59615242 $i59715243 $k59815244 $j59915245 $l60015246)
             ($main_if606 $n596 $i597 $k598 $j599 $l600 $n59615217 $i59715218 $k59815219 $j59915220 $l60015221))
        ($__VERIFIER_assert_pre (ite (= (+ (+ $i59715243 $j59915245) $k59815244) $l60015246) 1 0)))))

(check-sat)
