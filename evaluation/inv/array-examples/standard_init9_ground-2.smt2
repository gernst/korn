(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv321 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv315 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum316 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum322 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv319 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv314 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv318 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum323 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if82 (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv320 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv322 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum320 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum317 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv316 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv317 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum321 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum314 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv323 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum318 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum315 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum319 ((Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond4205 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond4205))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if82 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond4206 Int))
    (=> (and ($__VERIFIER_assert_if82 cond4206))
        (__VERIFIER_assert cond4206))))

; loop entry $main_inv314
(assert
  (forall (($a367 (Array Int Int)) ($i368 Int) ($x369 Int))
    (=> (and (= $i368 0))
        ($main_inv314 $a367 $i368 $x369))))

; loop term $main_sum314
(assert
  (forall (($a3674207 (Array Int Int)) ($i3684208 Int) ($x3694209 Int))
    (=> (and (not (< $i3684208 100000))
             ($main_inv314 $a3674207 $i3684208 $x3694209))
        ($main_sum314 $a3674207 $i3684208 $x3694209))))

; forwards $main_inv314
(assert
  (forall (($a3674207 (Array Int Int)) ($i3684208 Int) ($x3694209 Int))
    (=> (and (< $i3684208 100000)
             ($main_inv314 $a3674207 $i3684208 $x3694209))
        ($main_inv314 (store $a3674207 $i3684208 42) (+ $i3684208 1) $x3694209))))

; loop entry $main_inv315
(assert
  (forall (($a3674210 (Array Int Int)) ($x3694212 Int) ($i3684211 Int))
    (=> (and ($main_sum314 $a3674210 $i3684211 $x3694212))
        ($main_inv315 $a3674210 0 $x3694212))))

; loop term $main_sum315
(assert
  (forall (($a3674213 (Array Int Int)) ($i3684214 Int) ($x3694215 Int))
    (=> (and (not (< $i3684214 100000))
             ($main_inv315 $a3674213 $i3684214 $x3694215))
        ($main_sum315 $a3674213 $i3684214 $x3694215))))

; forwards $main_inv315
(assert
  (forall (($a3674213 (Array Int Int)) ($i3684214 Int) ($x3694215 Int))
    (=> (and (< $i3684214 100000)
             ($main_inv315 $a3674213 $i3684214 $x3694215))
        ($main_inv315 (store $a3674213 $i3684214 43) (+ $i3684214 1) $x3694215))))

; loop entry $main_inv316
(assert
  (forall (($a3674216 (Array Int Int)) ($x3694218 Int) ($i3684217 Int))
    (=> (and ($main_sum315 $a3674216 $i3684217 $x3694218))
        ($main_inv316 $a3674216 0 $x3694218))))

; loop term $main_sum316
(assert
  (forall (($a3674219 (Array Int Int)) ($i3684220 Int) ($x3694221 Int))
    (=> (and (not (< $i3684220 100000))
             ($main_inv316 $a3674219 $i3684220 $x3694221))
        ($main_sum316 $a3674219 $i3684220 $x3694221))))

; forwards $main_inv316
(assert
  (forall (($a3674219 (Array Int Int)) ($i3684220 Int) ($x3694221 Int))
    (=> (and (< $i3684220 100000)
             ($main_inv316 $a3674219 $i3684220 $x3694221))
        ($main_inv316 (store $a3674219 $i3684220 44) (+ $i3684220 1) $x3694221))))

; loop entry $main_inv317
(assert
  (forall (($a3674222 (Array Int Int)) ($x3694224 Int) ($i3684223 Int))
    (=> (and ($main_sum316 $a3674222 $i3684223 $x3694224))
        ($main_inv317 $a3674222 0 $x3694224))))

; loop term $main_sum317
(assert
  (forall (($a3674225 (Array Int Int)) ($i3684226 Int) ($x3694227 Int))
    (=> (and (not (< $i3684226 100000))
             ($main_inv317 $a3674225 $i3684226 $x3694227))
        ($main_sum317 $a3674225 $i3684226 $x3694227))))

; forwards $main_inv317
(assert
  (forall (($a3674225 (Array Int Int)) ($i3684226 Int) ($x3694227 Int))
    (=> (and (< $i3684226 100000)
             ($main_inv317 $a3674225 $i3684226 $x3694227))
        ($main_inv317 (store $a3674225 $i3684226 45) (+ $i3684226 1) $x3694227))))

; loop entry $main_inv318
(assert
  (forall (($a3674228 (Array Int Int)) ($x3694230 Int) ($i3684229 Int))
    (=> (and ($main_sum317 $a3674228 $i3684229 $x3694230))
        ($main_inv318 $a3674228 0 $x3694230))))

; loop term $main_sum318
(assert
  (forall (($a3674231 (Array Int Int)) ($i3684232 Int) ($x3694233 Int))
    (=> (and (not (< $i3684232 100000))
             ($main_inv318 $a3674231 $i3684232 $x3694233))
        ($main_sum318 $a3674231 $i3684232 $x3694233))))

; forwards $main_inv318
(assert
  (forall (($a3674231 (Array Int Int)) ($i3684232 Int) ($x3694233 Int))
    (=> (and (< $i3684232 100000)
             ($main_inv318 $a3674231 $i3684232 $x3694233))
        ($main_inv318 (store $a3674231 $i3684232 46) (+ $i3684232 1) $x3694233))))

; loop entry $main_inv319
(assert
  (forall (($a3674234 (Array Int Int)) ($x3694236 Int) ($i3684235 Int))
    (=> (and ($main_sum318 $a3674234 $i3684235 $x3694236))
        ($main_inv319 $a3674234 0 $x3694236))))

; loop term $main_sum319
(assert
  (forall (($a3674237 (Array Int Int)) ($i3684238 Int) ($x3694239 Int))
    (=> (and (not (< $i3684238 100000))
             ($main_inv319 $a3674237 $i3684238 $x3694239))
        ($main_sum319 $a3674237 $i3684238 $x3694239))))

; forwards $main_inv319
(assert
  (forall (($a3674237 (Array Int Int)) ($i3684238 Int) ($x3694239 Int))
    (=> (and (< $i3684238 100000)
             ($main_inv319 $a3674237 $i3684238 $x3694239))
        ($main_inv319 (store $a3674237 $i3684238 47) (+ $i3684238 1) $x3694239))))

; loop entry $main_inv320
(assert
  (forall (($a3674240 (Array Int Int)) ($x3694242 Int) ($i3684241 Int))
    (=> (and ($main_sum319 $a3674240 $i3684241 $x3694242))
        ($main_inv320 $a3674240 0 $x3694242))))

; loop term $main_sum320
(assert
  (forall (($a3674243 (Array Int Int)) ($i3684244 Int) ($x3694245 Int))
    (=> (and (not (< $i3684244 100000))
             ($main_inv320 $a3674243 $i3684244 $x3694245))
        ($main_sum320 $a3674243 $i3684244 $x3694245))))

; forwards $main_inv320
(assert
  (forall (($a3674243 (Array Int Int)) ($i3684244 Int) ($x3694245 Int))
    (=> (and (< $i3684244 100000)
             ($main_inv320 $a3674243 $i3684244 $x3694245))
        ($main_inv320 (store $a3674243 $i3684244 48) (+ $i3684244 1) $x3694245))))

; loop entry $main_inv321
(assert
  (forall (($a3674246 (Array Int Int)) ($x3694248 Int) ($i3684247 Int))
    (=> (and ($main_sum320 $a3674246 $i3684247 $x3694248))
        ($main_inv321 $a3674246 0 $x3694248))))

; loop term $main_sum321
(assert
  (forall (($a3674249 (Array Int Int)) ($i3684250 Int) ($x3694251 Int))
    (=> (and (not (< $i3684250 100000))
             ($main_inv321 $a3674249 $i3684250 $x3694251))
        ($main_sum321 $a3674249 $i3684250 $x3694251))))

; forwards $main_inv321
(assert
  (forall (($a3674249 (Array Int Int)) ($i3684250 Int) ($x3694251 Int))
    (=> (and (< $i3684250 100000)
             ($main_inv321 $a3674249 $i3684250 $x3694251))
        ($main_inv321 (store $a3674249 $i3684250 49) (+ $i3684250 1) $x3694251))))

; loop entry $main_inv322
(assert
  (forall (($a3674252 (Array Int Int)) ($x3694254 Int) ($i3684253 Int))
    (=> (and ($main_sum321 $a3674252 $i3684253 $x3694254))
        ($main_inv322 $a3674252 0 $x3694254))))

; loop term $main_sum322
(assert
  (forall (($a3674255 (Array Int Int)) ($i3684256 Int) ($x3694257 Int))
    (=> (and (not (< $i3684256 100000))
             ($main_inv322 $a3674255 $i3684256 $x3694257))
        ($main_sum322 $a3674255 $i3684256 $x3694257))))

; forwards $main_inv322
(assert
  (forall (($a3674255 (Array Int Int)) ($i3684256 Int) ($x3694257 Int))
    (=> (and (< $i3684256 100000)
             ($main_inv322 $a3674255 $i3684256 $x3694257))
        ($main_inv322 (store $a3674255 $i3684256 50) (+ $i3684256 1) $x3694257))))

; loop entry $main_inv323
(assert
  (forall (($a3674258 (Array Int Int)) ($i3684259 Int) ($x3694260 Int))
    (=> (and ($main_sum322 $a3674258 $i3684259 $x3694260))
        ($main_inv323 $a3674258 $i3684259 0))))

; loop term $main_sum323
(assert
  (forall (($a3674261 (Array Int Int)) ($i3684262 Int) ($x3694263 Int))
    (=> (and (not (< $x3694263 100000))
             ($main_inv323 $a3674261 $i3684262 $x3694263))
        ($main_sum323 $a3674261 $i3684262 $x3694263))))

; __VERIFIER_assert precondition
(assert
  (forall (($a3674261 (Array Int Int)) ($x3694263 Int) ($i3684262 Int))
    (=> (and (< $x3694263 100000)
             ($main_inv323 $a3674261 $i3684262 $x3694263))
        ($__VERIFIER_assert_pre (ite (= (select $a3674261 $x3694263) 50) 1 0)))))

; forwards $main_inv323
(assert
  (forall (($a3674261 (Array Int Int)) ($i3684262 Int) ($x3694263 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a3674261 $x3694263) 50) 1 0))
             (< $x3694263 100000)
             ($main_inv323 $a3674261 $i3684262 $x3694263))
        ($main_inv323 $a3674261 $i3684262 (+ $x3694263 1)))))

(check-sat)
