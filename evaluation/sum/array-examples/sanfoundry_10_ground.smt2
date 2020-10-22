(set-logic HORN)

(declare-fun $main_if16 (Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int (Array Int Int) Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum17 (Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int (Array Int Int) Int) Bool)
(declare-fun $main_sum15 (Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int (Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_if14 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum16 (Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int (Array Int Int) Int) Bool)
(declare-fun $main_inv15 (Int Int Int Int Int (Array Int Int) Int) Bool)
(declare-fun $main_inv17 (Int Int Int Int Int (Array Int Int) Int) Bool)
(declare-fun $main_inv16 (Int Int Int Int Int (Array Int Int) Int) Bool)
(declare-fun $main_if17 (Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int (Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv18 (Int Int Int Int Int (Array Int Int) Int) Bool)
(declare-fun $main_if15 (Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int (Array Int Int) Int) Bool)
(declare-fun $main_sum18 (Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int (Array Int Int) Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond220 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond220))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if14 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond221 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if14 cond cond221))
        (__VERIFIER_assert cond221))))

; loop entry $main_inv15
(assert
  (forall (($pos29 Int) ($x33 Int) ($found31 Int) ($vectorx32 (Array Int Int)) ($int222 Int) ($n28 Int) ($element30 Int))
    (=> (and (= $found31 0)
             (= $element30 $int222)
             (<= (- 2147483648) $int222)
             (<= $int222 2147483647)
             (= $n28 100000))
        ($main_inv15 0 $n28 $pos29 $element30 $found31 $vectorx32 $x33))))

; loop term $main_sum15
(assert
  (forall (($i27223 Int) ($n28224 Int) ($element30226 Int) ($pos29225 Int) ($x33229 Int) ($found31227 Int) ($vectorx32228 (Array Int Int)))
    (=> (and (not (< $i27223 $n28224)))
        ($main_sum15 $i27223 $n28224 $pos29225 $element30226 $found31227 $vectorx32228 $x33229 $i27223 $n28224 $pos29225 $element30226 $found31227 $vectorx32228 $x33229))))

; forwards $main_inv15
(assert
  (forall (($i27223 Int) ($n28224 Int) ($element30226 Int) ($int230 Int) ($pos29225 Int) ($x33229 Int) ($found31227 Int) ($vectorx32228 (Array Int Int)))
    (=> (and (<= (- 2147483648) $int230)
             (<= $int230 2147483647)
             (< $i27223 $n28224)
             ($main_inv15 $i27223 $n28224 $pos29225 $element30226 $found31227 $vectorx32228 $x33229))
        ($main_inv15 (+ $i27223 1) $n28224 $pos29225 $element30226 $found31227 (store $vectorx32228 $i27223 $int230) $x33229))))

; backwards $main_sum15
(assert
  (forall (($i27223 Int) ($n28224 Int) ($element30226 Int) ($x33237 Int) ($int230 Int) ($pos29225 Int) ($x33229 Int) ($element30234 Int) ($found31235 Int) ($found31227 Int) ($vectorx32236 (Array Int Int)) ($n28232 Int) ($vectorx32228 (Array Int Int)) ($i27231 Int) ($pos29233 Int))
    (=> (and ($main_sum15 (+ $i27223 1) $n28224 $pos29225 $element30226 $found31227 (store $vectorx32228 $i27223 $int230) $x33229 $i27231 $n28232 $pos29233 $element30234 $found31235 $vectorx32236 $x33237)
             (<= (- 2147483648) $int230)
             (<= $int230 2147483647)
             (< $i27223 $n28224))
        ($main_sum15 $i27223 $n28224 $pos29225 $element30226 $found31227 $vectorx32228 $x33229 $i27231 $n28232 $pos29233 $element30234 $found31235 $vectorx32236 $x33237))))

; loop entry $main_inv16
(assert
  (forall (($pos29 Int) ($x33 Int) ($found31242 Int) ($element30241 Int) ($n28239 Int) ($i27238 Int) ($pos29240 Int) ($found31 Int) ($vectorx32 (Array Int Int)) ($vectorx32243 (Array Int Int)) ($int222 Int) ($n28 Int) ($x33244 Int) ($element30 Int))
    (=> (and ($main_sum15 0 $n28 $pos29 $element30 $found31 $vectorx32 $x33 $i27238 $n28239 $pos29240 $element30241 $found31242 $vectorx32243 $x33244)
             (= $found31 0)
             (= $element30 $int222)
             (<= (- 2147483648) $int222)
             (<= $int222 2147483647)
             (= $n28 100000))
        ($main_inv16 0 $n28239 $pos29240 $element30241 $found31242 $vectorx32243 $x33244))))

; loop term $main_sum16
(assert
  (forall (($pos29247 Int) ($x33251 Int) ($found31249 Int) ($n28246 Int) ($vectorx32250 (Array Int Int)) ($i27245 Int) ($element30248 Int))
    (=> (and (not (and (< $i27245 $n28246) (= $found31249 0))))
        ($main_sum16 $i27245 $n28246 $pos29247 $element30248 $found31249 $vectorx32250 $x33251 $i27245 $n28246 $pos29247 $element30248 $found31249 $vectorx32250 $x33251))))

; if then
(assert
  (forall (($pos29247 Int) ($x33251 Int) ($found31249 Int) ($n28246 Int) ($vectorx32250 (Array Int Int)) ($i27245 Int) ($element30248 Int))
    (=> (and (= (select $vectorx32250 $i27245) $element30248)
             (< $i27245 $n28246)
             (= $found31249 0)
             ($main_inv16 $i27245 $n28246 $pos29247 $element30248 $found31249 $vectorx32250 $x33251))
        ($main_if15 $i27245 $n28246 $pos29247 $element30248 $found31249 $vectorx32250 $x33251 $i27245 $n28246 $i27245 $element30248 1 $vectorx32250 $x33251))))

; if else
(assert
  (forall (($pos29247 Int) ($x33251 Int) ($found31249 Int) ($n28246 Int) ($vectorx32250 (Array Int Int)) ($i27245 Int) ($element30248 Int))
    (=> (and (not (= (select $vectorx32250 $i27245) $element30248))
             (< $i27245 $n28246)
             (= $found31249 0)
             ($main_inv16 $i27245 $n28246 $pos29247 $element30248 $found31249 $vectorx32250 $x33251))
        ($main_if15 $i27245 $n28246 $pos29247 $element30248 $found31249 $vectorx32250 $x33251 $i27245 $n28246 $pos29247 $element30248 $found31249 $vectorx32250 $x33251))))

; forwards $main_inv16
(assert
  (forall (($found31256 Int) ($pos29247 Int) ($x33251 Int) ($found31249 Int) ($x33258 Int) ($n28246 Int) ($vectorx32250 (Array Int Int)) ($i27252 Int) ($n28253 Int) ($vectorx32257 (Array Int Int)) ($i27245 Int) ($element30248 Int) ($element30255 Int) ($pos29254 Int))
    (=> (and ($main_if15 $i27245 $n28246 $pos29247 $element30248 $found31249 $vectorx32250 $x33251 $i27252 $n28253 $pos29254 $element30255 $found31256 $vectorx32257 $x33258))
        ($main_inv16 (+ $i27252 1) $n28253 $pos29254 $element30255 $found31256 $vectorx32257 $x33258))))

; backwards $main_sum16
(assert
  (forall (($n28260 Int) ($x33265 Int) ($i27259 Int) ($found31256 Int) ($found31249 Int) ($x33258 Int) ($n28246 Int) ($vectorx32250 (Array Int Int)) ($i27252 Int) ($n28253 Int) ($vectorx32264 (Array Int Int)) ($vectorx32257 (Array Int Int)) ($found31263 Int) ($element30262 Int) ($pos29247 Int) ($x33251 Int) ($pos29261 Int) ($i27245 Int) ($element30248 Int) ($element30255 Int) ($pos29254 Int))
    (=> (and ($main_sum16 (+ $i27252 1) $n28253 $pos29254 $element30255 $found31256 $vectorx32257 $x33258 $i27259 $n28260 $pos29261 $element30262 $found31263 $vectorx32264 $x33265)
             ($main_if15 $i27245 $n28246 $pos29247 $element30248 $found31249 $vectorx32250 $x33251 $i27252 $n28253 $pos29254 $element30255 $found31256 $vectorx32257 $x33258))
        ($main_sum16 $i27245 $n28246 $pos29247 $element30248 $found31249 $vectorx32250 $x33251 $i27259 $n28260 $pos29261 $element30262 $found31263 $vectorx32264 $x33265))))

; loop entry $main_inv17
(assert
  (forall (($pos29268 Int) ($vectorx32271 (Array Int Int)) ($x33 Int) ($found31242 Int) ($x33272 Int) ($element30241 Int) ($n28239 Int) ($i27238 Int) ($pos29240 Int) ($found31 Int) ($vectorx32 (Array Int Int)) ($i27266 Int) ($int222 Int) ($n28 Int) ($x33244 Int) ($pos29 Int) ($n28267 Int) ($vectorx32243 (Array Int Int)) ($found31270 Int) ($element30269 Int) ($element30 Int))
    (=> (and (not (= $found31270 0))
             ($main_sum16 0 $n28239 $pos29240 $element30241 $found31242 $vectorx32243 $x33244 $i27266 $n28267 $pos29268 $element30269 $found31270 $vectorx32271 $x33272)
             ($main_sum15 0 $n28 $pos29 $element30 $found31 $vectorx32 $x33 $i27238 $n28239 $pos29240 $element30241 $found31242 $vectorx32243 $x33244)
             (= $found31 0)
             (= $element30 $int222)
             (<= (- 2147483648) $int222)
             (<= $int222 2147483647)
             (= $n28 100000))
        ($main_inv17 $pos29268 $n28267 $pos29268 $element30269 $found31270 $vectorx32271 $x33272))))

; loop term $main_sum17
(assert
  (forall (($i27273 Int) ($vectorx32278 (Array Int Int)) ($pos29275 Int) ($n28274 Int) ($element30276 Int) ($found31277 Int) ($x33279 Int))
    (=> (and (not (< $i27273 (- $n28274 1))))
        ($main_sum17 $i27273 $n28274 $pos29275 $element30276 $found31277 $vectorx32278 $x33279 $i27273 $n28274 $pos29275 $element30276 $found31277 $vectorx32278 $x33279))))

; forwards $main_inv17
(assert
  (forall (($i27273 Int) ($vectorx32278 (Array Int Int)) ($pos29275 Int) ($n28274 Int) ($element30276 Int) ($found31277 Int) ($x33279 Int))
    (=> (and (< $i27273 (- $n28274 1))
             ($main_inv17 $i27273 $n28274 $pos29275 $element30276 $found31277 $vectorx32278 $x33279))
        ($main_inv17 (+ $i27273 1) $n28274 $pos29275 $element30276 $found31277 (store $vectorx32278 $i27273 (select $vectorx32278 (+ $i27273 1))) $x33279))))

; backwards $main_sum17
(assert
  (forall (($pos29275 Int) ($n28274 Int) ($element30276 Int) ($x33286 Int) ($i27280 Int) ($n28281 Int) ($i27273 Int) ($pos29282 Int) ($vectorx32285 (Array Int Int)) ($vectorx32278 (Array Int Int)) ($found31284 Int) ($element30283 Int) ($found31277 Int) ($x33279 Int))
    (=> (and ($main_sum17 (+ $i27273 1) $n28274 $pos29275 $element30276 $found31277 (store $vectorx32278 $i27273 (select $vectorx32278 (+ $i27273 1))) $x33279 $i27280 $n28281 $pos29282 $element30283 $found31284 $vectorx32285 $x33286)
             (< $i27273 (- $n28274 1)))
        ($main_sum17 $i27273 $n28274 $pos29275 $element30276 $found31277 $vectorx32278 $x33279 $i27280 $n28281 $pos29282 $element30283 $found31284 $vectorx32285 $x33286))))

; if then
(assert
  (forall (($pos29289 Int) ($pos29268 Int) ($vectorx32271 (Array Int Int)) ($found31242 Int) ($x33272 Int) ($element30241 Int) ($n28239 Int) ($n28288 Int) ($i27238 Int) ($pos29240 Int) ($found31 Int) ($i27266 Int) ($int222 Int) ($n28 Int) ($pos29 Int) ($n28267 Int) ($x33 Int) ($i27287 Int) ($found31291 Int) ($vectorx32 (Array Int Int)) ($element30290 Int) ($vectorx32243 (Array Int Int)) ($found31270 Int) ($x33293 Int) ($i27 Int) ($x33244 Int) ($vectorx32292 (Array Int Int)) ($element30269 Int) ($element30 Int))
    (=> (and ($main_sum17 $pos29268 $n28267 $pos29268 $element30269 $found31270 $vectorx32271 $x33272 $i27287 $n28288 $pos29289 $element30290 $found31291 $vectorx32292 $x33293)
             (not (= $found31270 0))
             ($main_sum16 0 $n28239 $pos29240 $element30241 $found31242 $vectorx32243 $x33244 $i27266 $n28267 $pos29268 $element30269 $found31270 $vectorx32271 $x33272)
             ($main_sum15 0 $n28 $pos29 $element30 $found31 $vectorx32 $x33 $i27238 $n28239 $pos29240 $element30241 $found31242 $vectorx32243 $x33244)
             (= $found31 0)
             (= $element30 $int222)
             (<= (- 2147483648) $int222)
             (<= $int222 2147483647)
             (= $n28 100000))
        ($main_if16 $i27 $n28 $pos29 $element30 $found31 $vectorx32 $x33 $i27287 $n28288 $pos29289 $element30290 $found31291 $vectorx32292 $x33293))))

; if else
(assert
  (forall (($pos29268 Int) ($vectorx32271 (Array Int Int)) ($x33 Int) ($found31242 Int) ($x33272 Int) ($element30241 Int) ($n28239 Int) ($i27238 Int) ($pos29240 Int) ($found31 Int) ($vectorx32 (Array Int Int)) ($i27266 Int) ($i27 Int) ($int222 Int) ($n28 Int) ($x33244 Int) ($pos29 Int) ($n28267 Int) ($vectorx32243 (Array Int Int)) ($found31270 Int) ($element30269 Int) ($element30 Int))
    (=> (and (= $found31270 0)
             ($main_sum16 0 $n28239 $pos29240 $element30241 $found31242 $vectorx32243 $x33244 $i27266 $n28267 $pos29268 $element30269 $found31270 $vectorx32271 $x33272)
             ($main_sum15 0 $n28 $pos29 $element30 $found31 $vectorx32 $x33 $i27238 $n28239 $pos29240 $element30241 $found31242 $vectorx32243 $x33244)
             (= $found31 0)
             (= $element30 $int222)
             (<= (- 2147483648) $int222)
             (<= $int222 2147483647)
             (= $n28 100000))
        ($main_if16 $i27 $n28 $pos29 $element30 $found31 $vectorx32 $x33 $i27266 $n28267 $pos29268 $element30269 $found31270 $vectorx32271 $x33272))))

; loop entry $main_inv18
(assert
  (forall (($x33 Int) ($i27294 Int) ($n28295 Int) ($found31 Int) ($vectorx32 (Array Int Int)) ($pos29296 Int) ($vectorx32299 (Array Int Int)) ($element30 Int) ($pos29 Int) ($element30297 Int) ($i27 Int) ($x33300 Int) ($found31298 Int) ($n28 Int))
    (=> (and (not (= $found31298 0))
             ($main_if16 $i27 $n28 $pos29 $element30 $found31 $vectorx32 $x33 $i27294 $n28295 $pos29296 $element30297 $found31298 $vectorx32299 $x33300))
        ($main_inv18 $i27294 $n28295 $pos29296 $element30297 $found31298 $vectorx32299 0))))

; loop term $main_sum18
(assert
  (forall (($pos29303 Int) ($n28302 Int) ($found31305 Int) ($x33307 Int) ($vectorx32306 (Array Int Int)) ($i27301 Int) ($element30304 Int))
    (=> (and (not (< $x33307 $pos29303)))
        ($main_sum18 $i27301 $n28302 $pos29303 $element30304 $found31305 $vectorx32306 $x33307 $i27301 $n28302 $pos29303 $element30304 $found31305 $vectorx32306 $x33307))))

; __VERIFIER_assert precondition
(assert
  (forall (($pos29303 Int) ($n28302 Int) ($found31305 Int) ($x33307 Int) ($vectorx32306 (Array Int Int)) ($i27301 Int) ($element30304 Int))
    (=> (and (< $x33307 $pos29303)
             ($main_inv18 $i27301 $n28302 $pos29303 $element30304 $found31305 $vectorx32306 $x33307))
        ($__VERIFIER_assert_pre (ite (not (= (select $vectorx32306 $x33307) $element30304)) 1 0)))))

; forwards $main_inv18
(assert
  (forall (($pos29303 Int) ($n28302 Int) ($found31305 Int) ($x33307 Int) ($vectorx32306 (Array Int Int)) ($i27301 Int) ($element30304 Int))
    (=> (and (__VERIFIER_assert (ite (not (= (select $vectorx32306 $x33307) $element30304)) 1 0))
             (< $x33307 $pos29303)
             ($main_inv18 $i27301 $n28302 $pos29303 $element30304 $found31305 $vectorx32306 $x33307))
        ($main_inv18 $i27301 $n28302 $pos29303 $element30304 $found31305 $vectorx32306 (+ $x33307 1)))))

; backwards $main_sum18
(assert
  (forall (($pos29303 Int) ($i27308 Int) ($n28309 Int) ($n28302 Int) ($element30311 Int) ($found31305 Int) ($x33307 Int) ($vectorx32306 (Array Int Int)) ($pos29310 Int) ($found31312 Int) ($x33314 Int) ($vectorx32313 (Array Int Int)) ($i27301 Int) ($element30304 Int))
    (=> (and ($main_sum18 $i27301 $n28302 $pos29303 $element30304 $found31305 $vectorx32306 (+ $x33307 1) $i27308 $n28309 $pos29310 $element30311 $found31312 $vectorx32313 $x33314)
             (__VERIFIER_assert (ite (not (= (select $vectorx32306 $x33307) $element30304)) 1 0))
             (< $x33307 $pos29303))
        ($main_sum18 $i27301 $n28302 $pos29303 $element30304 $found31305 $vectorx32306 $x33307 $i27308 $n28309 $pos29310 $element30311 $found31312 $vectorx32313 $x33314))))

; if then
(assert
  (forall (($x33 Int) ($i27294 Int) ($vectorx32320 (Array Int Int)) ($n28295 Int) ($n28316 Int) ($found31 Int) ($vectorx32 (Array Int Int)) ($pos29296 Int) ($i27315 Int) ($vectorx32299 (Array Int Int)) ($element30 Int) ($pos29 Int) ($element30297 Int) ($found31319 Int) ($x33321 Int) ($element30318 Int) ($pos29317 Int) ($i27 Int) ($x33300 Int) ($found31298 Int) ($n28 Int))
    (=> (and ($main_sum18 $i27294 $n28295 $pos29296 $element30297 $found31298 $vectorx32299 0 $i27315 $n28316 $pos29317 $element30318 $found31319 $vectorx32320 $x33321)
             (not (= $found31298 0))
             ($main_if16 $i27 $n28 $pos29 $element30 $found31 $vectorx32 $x33 $i27294 $n28295 $pos29296 $element30297 $found31298 $vectorx32299 $x33300))
        ($main_if17 $i27 $n28 $pos29 $element30 $found31 $vectorx32 $x33 $i27315 $n28316 $pos29317 $element30318 $found31319 $vectorx32320 $x33321))))

; if else
(assert
  (forall (($x33 Int) ($i27294 Int) ($n28295 Int) ($found31 Int) ($vectorx32 (Array Int Int)) ($pos29296 Int) ($vectorx32299 (Array Int Int)) ($element30 Int) ($pos29 Int) ($element30297 Int) ($i27 Int) ($x33300 Int) ($found31298 Int) ($n28 Int))
    (=> (and (= $found31298 0)
             ($main_if16 $i27 $n28 $pos29 $element30 $found31 $vectorx32 $x33 $i27294 $n28295 $pos29296 $element30297 $found31298 $vectorx32299 $x33300))
        ($main_if17 $i27 $n28 $pos29 $element30 $found31 $vectorx32 $x33 $i27294 $n28295 $pos29296 $element30297 $found31298 $vectorx32299 $x33300))))

(check-sat)
