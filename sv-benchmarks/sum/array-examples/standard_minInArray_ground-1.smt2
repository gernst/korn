(set-logic HORN)

(declare-fun $main_inv328 ((Array Int Int) Int Int Int Int) Bool)
(declare-fun $main_if86 ((Array Int Int) Int Int Int Int (Array Int Int) Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv329 ((Array Int Int) Int Int Int Int) Bool)
(declare-fun $main_sum327 ((Array Int Int) Int Int Int Int (Array Int Int) Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum328 ((Array Int Int) Int Int Int Int (Array Int Int) Int Int Int Int) Bool)
(declare-fun $main_sum329 ((Array Int Int) Int Int Int Int (Array Int Int) Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if85 (Int Int) Bool)
(declare-fun $main_inv327 ((Array Int Int) Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond6268 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond6268))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if85 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6269 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if85 cond cond6269))
        (__VERIFIER_assert cond6269))))

; loop entry $main_inv327
(assert
  (forall (($j377 Int) ($a375 (Array Int Int)) ($min376 Int) ($x379 Int) ($i378 Int))
    (=> (and (= $j377 0)
             (= $min376 0))
        ($main_inv327 $a375 $min376 $j377 $i378 $x379))))

; loop term $main_sum327
(assert
  (forall (($j3776272 Int) ($min3766271 Int) ($i3786273 Int) ($x3796274 Int) ($a3756270 (Array Int Int)))
    (=> (and (not (< $j3776272 100000)))
        ($main_sum327 $a3756270 $min3766271 $j3776272 $i3786273 $x3796274 $a3756270 $min3766271 $j3776272 $i3786273 $x3796274))))

; forwards $main_inv327
(assert
  (forall (($j3776272 Int) ($int6275 Int) ($min3766271 Int) ($i3786273 Int) ($x3796274 Int) ($a3756270 (Array Int Int)))
    (=> (and (<= (- 2147483648) $int6275)
             (<= $int6275 2147483647)
             (< $j3776272 100000)
             ($main_inv327 $a3756270 $min3766271 $j3776272 $i3786273 $x3796274))
        ($main_inv327 (store $a3756270 $j3776272 $int6275) $min3766271 (+ $j3776272 1) $i3786273 $x3796274))))

; backwards $main_sum327
(assert
  (forall (($j3776272 Int) ($j3776278 Int) ($int6275 Int) ($min3766271 Int) ($x3796280 Int) ($a3756276 (Array Int Int)) ($a3756270 (Array Int Int)) ($min3766277 Int) ($i3786273 Int) ($x3796274 Int) ($i3786279 Int))
    (=> (and ($main_sum327 (store $a3756270 $j3776272 $int6275) $min3766271 (+ $j3776272 1) $i3786273 $x3796274 $a3756276 $min3766277 $j3776278 $i3786279 $x3796280)
             (<= (- 2147483648) $int6275)
             (<= $int6275 2147483647)
             (< $j3776272 100000))
        ($main_sum327 $a3756270 $min3766271 $j3776272 $i3786273 $x3796274 $a3756276 $min3766277 $j3776278 $i3786279 $x3796280))))

; loop entry $main_inv328
(assert
  (forall (($j377 Int) ($a375 (Array Int Int)) ($i3786284 Int) ($min376 Int) ($min3766282 Int) ($x3796285 Int) ($x379 Int) ($i378 Int) ($a3756281 (Array Int Int)) ($j3776283 Int))
    (=> (and (= $i3786284 0)
             ($main_sum327 $a375 $min376 $j377 $i378 $x379 $a3756281 $min3766282 $j3776283 $i3786284 $x3796285)
             (= $j377 0)
             (= $min376 0))
        ($main_inv328 $a3756281 $min3766282 $j3776283 $i3786284 $x3796285))))

; loop term $main_sum328
(assert
  (forall (($a3756286 (Array Int Int)) ($j3776288 Int) ($min3766287 Int) ($i3786289 Int) ($x3796290 Int))
    (=> (and (not (< $i3786289 100000)))
        ($main_sum328 $a3756286 $min3766287 $j3776288 $i3786289 $x3796290 $a3756286 $min3766287 $j3776288 $i3786289 $x3796290))))

; if then
(assert
  (forall (($a3756286 (Array Int Int)) ($j3776288 Int) ($min3766287 Int) ($i3786289 Int) ($x3796290 Int))
    (=> (and (< (select $a3756286 $i3786289) $min3766287)
             (< $i3786289 100000)
             ($main_inv328 $a3756286 $min3766287 $j3776288 $i3786289 $x3796290))
        ($main_if86 $a3756286 $min3766287 $j3776288 $i3786289 $x3796290 $a3756286 (select $a3756286 $i3786289) $j3776288 $i3786289 $x3796290))))

; if else
(assert
  (forall (($a3756286 (Array Int Int)) ($j3776288 Int) ($min3766287 Int) ($i3786289 Int) ($x3796290 Int))
    (=> (and (not (< (select $a3756286 $i3786289) $min3766287))
             (< $i3786289 100000)
             ($main_inv328 $a3756286 $min3766287 $j3776288 $i3786289 $x3796290))
        ($main_if86 $a3756286 $min3766287 $j3776288 $i3786289 $x3796290 $a3756286 $min3766287 $j3776288 $i3786289 $x3796290))))

; forwards $main_inv328
(assert
  (forall (($x3796295 Int) ($a3756286 (Array Int Int)) ($min3766287 Int) ($j3776293 Int) ($i3786294 Int) ($i3786289 Int) ($x3796290 Int) ($a3756291 (Array Int Int)) ($min3766292 Int) ($j3776288 Int))
    (=> (and ($main_if86 $a3756286 $min3766287 $j3776288 $i3786289 $x3796290 $a3756291 $min3766292 $j3776293 $i3786294 $x3796295))
        ($main_inv328 $a3756291 $min3766292 $j3776293 (+ $i3786294 1) $x3796295))))

; backwards $main_sum328
(assert
  (forall (($x3796295 Int) ($a3756286 (Array Int Int)) ($min3766287 Int) ($j3776293 Int) ($i3786294 Int) ($i3786289 Int) ($x3796290 Int) ($i3786299 Int) ($min3766297 Int) ($j3776298 Int) ($a3756296 (Array Int Int)) ($min3766292 Int) ($j3776288 Int) ($x3796300 Int) ($a3756291 (Array Int Int)))
    (=> (and ($main_sum328 $a3756291 $min3766292 $j3776293 (+ $i3786294 1) $x3796295 $a3756296 $min3766297 $j3776298 $i3786299 $x3796300)
             ($main_if86 $a3756286 $min3766287 $j3776288 $i3786289 $x3796290 $a3756291 $min3766292 $j3776293 $i3786294 $x3796295))
        ($main_sum328 $a3756286 $min3766287 $j3776288 $i3786289 $x3796290 $a3756296 $min3766297 $j3776298 $i3786299 $x3796300))))

; loop entry $main_inv329
(assert
  (forall (($j377 Int) ($min376 Int) ($a3756301 (Array Int Int)) ($min3766282 Int) ($x3796285 Int) ($min3766302 Int) ($a375 (Array Int Int)) ($i3786304 Int) ($i3786284 Int) ($x3796305 Int) ($i378 Int) ($x379 Int) ($j3776303 Int) ($a3756281 (Array Int Int)) ($j3776283 Int))
    (=> (and ($main_sum328 $a3756281 $min3766282 $j3776283 $i3786284 $x3796285 $a3756301 $min3766302 $j3776303 $i3786304 $x3796305)
             (= $i3786284 0)
             ($main_sum327 $a375 $min376 $j377 $i378 $x379 $a3756281 $min3766282 $j3776283 $i3786284 $x3796285)
             (= $j377 0)
             (= $min376 0))
        ($main_inv329 $a3756301 $min3766302 $j3776303 $i3786304 0))))

; loop term $main_sum329
(assert
  (forall (($a3756306 (Array Int Int)) ($j3776308 Int) ($i3786309 Int) ($min3766307 Int) ($x3796310 Int))
    (=> (and (not (< $x3796310 100000)))
        ($main_sum329 $a3756306 $min3766307 $j3776308 $i3786309 $x3796310 $a3756306 $min3766307 $j3776308 $i3786309 $x3796310))))

; __VERIFIER_assert precondition
(assert
  (forall (($a3756306 (Array Int Int)) ($j3776308 Int) ($i3786309 Int) ($min3766307 Int) ($x3796310 Int))
    (=> (and (< $x3796310 100000)
             ($main_inv329 $a3756306 $min3766307 $j3776308 $i3786309 $x3796310))
        ($__VERIFIER_assert_pre (ite (> (select $a3756306 $x3796310) $min3766307) 1 0)))))

; forwards $main_inv329
(assert
  (forall (($a3756306 (Array Int Int)) ($j3776308 Int) ($i3786309 Int) ($min3766307 Int) ($x3796310 Int))
    (=> (and (__VERIFIER_assert (ite (> (select $a3756306 $x3796310) $min3766307) 1 0))
             (< $x3796310 100000)
             ($main_inv329 $a3756306 $min3766307 $j3776308 $i3786309 $x3796310))
        ($main_inv329 $a3756306 $min3766307 $j3776308 $i3786309 (+ $x3796310 1)))))

; backwards $main_sum329
(assert
  (forall (($a3756306 (Array Int Int)) ($min3766312 Int) ($a3756311 (Array Int Int)) ($i3786309 Int) ($i3786314 Int) ($j3776308 Int) ($j3776313 Int) ($x3796310 Int) ($x3796315 Int) ($min3766307 Int))
    (=> (and ($main_sum329 $a3756306 $min3766307 $j3776308 $i3786309 (+ $x3796310 1) $a3756311 $min3766312 $j3776313 $i3786314 $x3796315)
             (__VERIFIER_assert (ite (> (select $a3756306 $x3796310) $min3766307) 1 0))
             (< $x3796310 100000))
        ($main_sum329 $a3756306 $min3766307 $j3776308 $i3786309 $x3796310 $a3756311 $min3766312 $j3776313 $i3786314 $x3796315))))

(check-sat)
