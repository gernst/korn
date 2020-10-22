(set-logic HORN)

(declare-fun $main_sum22 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum20 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_inv20 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $__VERIFIER_assert_if18 (Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $main_inv19 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum24 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv24 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum19 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv23 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum23 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum21 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv22 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv21 (Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond238 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond238))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if18 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond239 Int))
    (=> (and ($__VERIFIER_assert_if18 cond239))
        (__VERIFIER_assert cond239))))

; loop entry $main_inv19
(assert
  (forall (($B39 (Array Int (Array Int Int))) ($n37 Int) ($m36 Int) ($A38 (Array Int (Array Int Int))) ($C40 (Array Int (Array Int Int))))
    (=> (and (= $n37 1500)
             (= $m36 1000))
        ($main_inv19 0 0 $m36 $n37 $A38 $B39 $C40))))

; loop term $main_sum19
(assert
  (forall (($n37243 Int) ($C40246 (Array Int (Array Int Int))) ($B39245 (Array Int (Array Int Int))) ($A38244 (Array Int (Array Int Int))) ($i34240 Int) ($m36242 Int) ($j35241 Int))
    (=> (and (not (< $i34240 $m36242))
             ($main_inv19 $i34240 $j35241 $m36242 $n37243 $A38244 $B39245 $C40246))
        ($main_sum19 $i34240 $j35241 $m36242 $n37243 $A38244 $B39245 $C40246))))

; loop entry $main_inv20
(assert
  (forall (($n37243 Int) ($C40246 (Array Int (Array Int Int))) ($B39245 (Array Int (Array Int Int))) ($A38244 (Array Int (Array Int Int))) ($i34240 Int) ($m36242 Int) ($j35241 Int))
    (=> (and (< $i34240 $m36242)
             ($main_inv19 $i34240 $j35241 $m36242 $n37243 $A38244 $B39245 $C40246))
        ($main_inv20 $i34240 0 $m36242 $n37243 $A38244 $B39245 $C40246))))

; loop term $main_sum20
(assert
  (forall (($B39252 (Array Int (Array Int Int))) ($C40253 (Array Int (Array Int Int))) ($m36249 Int) ($i34247 Int) ($n37250 Int) ($j35248 Int) ($A38251 (Array Int (Array Int Int))))
    (=> (and (not (< $j35248 $n37250))
             ($main_inv20 $i34247 $j35248 $m36249 $n37250 $A38251 $B39252 $C40253))
        ($main_sum20 $i34247 $j35248 $m36249 $n37250 $A38251 $B39252 $C40253))))

; forwards $main_inv20
(assert
  (forall (($B39252 (Array Int (Array Int Int))) ($C40253 (Array Int (Array Int Int))) ($uint254 Int) ($m36249 Int) ($i34247 Int) ($n37250 Int) ($uint255 Int) ($j35248 Int) ($A38251 (Array Int (Array Int Int))))
    (=> (and (<= 0 $uint255)
             (<= $uint255 4294967295)
             (<= 0 $uint254)
             (<= $uint254 4294967295)
             (< $j35248 $n37250)
             ($main_inv20 $i34247 $j35248 $m36249 $n37250 $A38251 $B39252 $C40253))
        ($main_inv20 $i34247 (+ $j35248 1) $m36249 $n37250 (store $A38251 $i34247 (store (select $A38251 $i34247) $j35248 $uint254)) (store $B39252 $i34247 (store (select $B39252 $i34247) $j35248 $uint255)) $C40253))))

; forwards $main_inv19
(assert
  (forall (($C40262 (Array Int (Array Int Int))) ($n37259 Int) ($j35257 Int) ($m36258 Int) ($i34256 Int) ($A38260 (Array Int (Array Int Int))) ($B39261 (Array Int (Array Int Int))))
    (=> (and ($main_sum20 $i34256 $j35257 $m36258 $n37259 $A38260 $B39261 $C40262))
        ($main_inv19 (+ $i34256 1) $j35257 $m36258 $n37259 $A38260 $B39261 $C40262))))

; loop entry $main_inv21
(assert
  (forall (($A38267 (Array Int (Array Int Int))) ($n37266 Int) ($j35264 Int) ($C40269 (Array Int (Array Int Int))) ($i34263 Int) ($B39268 (Array Int (Array Int Int))) ($m36265 Int))
    (=> (and ($main_sum19 $i34263 $j35264 $m36265 $n37266 $A38267 $B39268 $C40269))
        ($main_inv21 0 0 $m36265 $n37266 $A38267 $B39268 $C40269))))

; loop term $main_sum21
(assert
  (forall (($A38274 (Array Int (Array Int Int))) ($n37273 Int) ($C40276 (Array Int (Array Int Int))) ($j35271 Int) ($m36272 Int) ($B39275 (Array Int (Array Int Int))) ($i34270 Int))
    (=> (and (not (< $i34270 $m36272))
             ($main_inv21 $i34270 $j35271 $m36272 $n37273 $A38274 $B39275 $C40276))
        ($main_sum21 $i34270 $j35271 $m36272 $n37273 $A38274 $B39275 $C40276))))

; loop entry $main_inv22
(assert
  (forall (($A38274 (Array Int (Array Int Int))) ($n37273 Int) ($C40276 (Array Int (Array Int Int))) ($j35271 Int) ($m36272 Int) ($B39275 (Array Int (Array Int Int))) ($i34270 Int))
    (=> (and (< $i34270 $m36272)
             ($main_inv21 $i34270 $j35271 $m36272 $n37273 $A38274 $B39275 $C40276))
        ($main_inv22 $i34270 0 $m36272 $n37273 $A38274 $B39275 $C40276))))

; loop term $main_sum22
(assert
  (forall (($i34277 Int) ($n37280 Int) ($A38281 (Array Int (Array Int Int))) ($C40283 (Array Int (Array Int Int))) ($m36279 Int) ($B39282 (Array Int (Array Int Int))) ($j35278 Int))
    (=> (and (not (< $j35278 $n37280))
             ($main_inv22 $i34277 $j35278 $m36279 $n37280 $A38281 $B39282 $C40283))
        ($main_sum22 $i34277 $j35278 $m36279 $n37280 $A38281 $B39282 $C40283))))

; forwards $main_inv22
(assert
  (forall (($i34277 Int) ($n37280 Int) ($A38281 (Array Int (Array Int Int))) ($C40283 (Array Int (Array Int Int))) ($m36279 Int) ($B39282 (Array Int (Array Int Int))) ($j35278 Int))
    (=> (and (< $j35278 $n37280)
             ($main_inv22 $i34277 $j35278 $m36279 $n37280 $A38281 $B39282 $C40283))
        ($main_inv22 $i34277 (+ $j35278 1) $m36279 $n37280 $A38281 $B39282 (store $C40283 $i34277 (store (select $C40283 $i34277) $j35278 (+ (select (select $A38281 $i34277) $j35278) (select (select $B39282 $i34277) $j35278))))))))

; forwards $main_inv21
(assert
  (forall (($n37287 Int) ($j35285 Int) ($B39289 (Array Int (Array Int Int))) ($A38288 (Array Int (Array Int Int))) ($i34284 Int) ($C40290 (Array Int (Array Int Int))) ($m36286 Int))
    (=> (and ($main_sum22 $i34284 $j35285 $m36286 $n37287 $A38288 $B39289 $C40290))
        ($main_inv21 (+ $i34284 1) $j35285 $m36286 $n37287 $A38288 $B39289 $C40290))))

; loop entry $main_inv23
(assert
  (forall (($B39296 (Array Int (Array Int Int))) ($j35292 Int) ($n37294 Int) ($A38295 (Array Int (Array Int Int))) ($i34291 Int) ($C40297 (Array Int (Array Int Int))) ($m36293 Int))
    (=> (and ($main_sum21 $i34291 $j35292 $m36293 $n37294 $A38295 $B39296 $C40297))
        ($main_inv23 0 0 $m36293 $n37294 $A38295 $B39296 $C40297))))

; loop term $main_sum23
(assert
  (forall (($n37301 Int) ($B39303 (Array Int (Array Int Int))) ($m36300 Int) ($A38302 (Array Int (Array Int Int))) ($j35299 Int) ($C40304 (Array Int (Array Int Int))) ($i34298 Int))
    (=> (and (not (< $i34298 $m36300))
             ($main_inv23 $i34298 $j35299 $m36300 $n37301 $A38302 $B39303 $C40304))
        ($main_sum23 $i34298 $j35299 $m36300 $n37301 $A38302 $B39303 $C40304))))

; loop entry $main_inv24
(assert
  (forall (($n37301 Int) ($B39303 (Array Int (Array Int Int))) ($m36300 Int) ($A38302 (Array Int (Array Int Int))) ($j35299 Int) ($C40304 (Array Int (Array Int Int))) ($i34298 Int))
    (=> (and (< $i34298 $m36300)
             ($main_inv23 $i34298 $j35299 $m36300 $n37301 $A38302 $B39303 $C40304))
        ($main_inv24 $i34298 0 $m36300 $n37301 $A38302 $B39303 $C40304))))

; loop term $main_sum24
(assert
  (forall (($B39310 (Array Int (Array Int Int))) ($n37308 Int) ($A38309 (Array Int (Array Int Int))) ($j35306 Int) ($m36307 Int) ($i34305 Int) ($C40311 (Array Int (Array Int Int))))
    (=> (and (not (< $j35306 $n37308))
             ($main_inv24 $i34305 $j35306 $m36307 $n37308 $A38309 $B39310 $C40311))
        ($main_sum24 $i34305 $j35306 $m36307 $n37308 $A38309 $B39310 $C40311))))

; __VERIFIER_assert precondition
(assert
  (forall (($B39310 (Array Int (Array Int Int))) ($n37308 Int) ($A38309 (Array Int (Array Int Int))) ($j35306 Int) ($m36307 Int) ($i34305 Int) ($C40311 (Array Int (Array Int Int))))
    (=> (and (< $j35306 $n37308)
             ($main_inv24 $i34305 $j35306 $m36307 $n37308 $A38309 $B39310 $C40311))
        ($__VERIFIER_assert_pre (ite (= (select (select $C40311 $i34305) $j35306) (+ (select (select $A38309 $i34305) $j35306) (select (select $B39310 $i34305) $j35306))) 1 0)))))

; forwards $main_inv24
(assert
  (forall (($B39310 (Array Int (Array Int Int))) ($n37308 Int) ($A38309 (Array Int (Array Int Int))) ($j35306 Int) ($m36307 Int) ($i34305 Int) ($C40311 (Array Int (Array Int Int))))
    (=> (and (__VERIFIER_assert (ite (= (select (select $C40311 $i34305) $j35306) (+ (select (select $A38309 $i34305) $j35306) (select (select $B39310 $i34305) $j35306))) 1 0))
             (< $j35306 $n37308)
             ($main_inv24 $i34305 $j35306 $m36307 $n37308 $A38309 $B39310 $C40311))
        ($main_inv24 $i34305 (+ $j35306 1) $m36307 $n37308 $A38309 $B39310 $C40311))))

; forwards $main_inv23
(assert
  (forall (($A38316 (Array Int (Array Int Int))) ($m36314 Int) ($j35313 Int) ($B39317 (Array Int (Array Int Int))) ($i34312 Int) ($C40318 (Array Int (Array Int Int))) ($n37315 Int))
    (=> (and ($main_sum24 $i34312 $j35313 $m36314 $n37315 $A38316 $B39317 $C40318))
        ($main_inv23 (+ $i34312 1) $j35313 $m36314 $n37315 $A38316 $B39317 $C40318))))

(check-sat)
