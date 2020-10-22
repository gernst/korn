(set-logic HORN)

(declare-fun $main_if84 ((Array Int Int) Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv325 ((Array Int Int) Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum326 ((Array Int Int) Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv326 ((Array Int Int) Int Int Int Int) Bool)
(declare-fun $main_sum324 ((Array Int Int) Int Int Int Int) Bool)
(declare-fun $main_sum325 ((Array Int Int) Int Int Int Int) Bool)
(declare-fun $main_inv324 ((Array Int Int) Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if83 (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond4267 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond4267))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if83 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond4268 Int))
    (=> (and ($__VERIFIER_assert_if83 cond4268))
        (__VERIFIER_assert cond4268))))

; loop entry $main_inv324
(assert
  (forall (($x374 Int) ($max371 Int) ($i373 Int) ($j372 Int) ($a370 (Array Int Int)))
    (=> (and (= $j372 0)
             (= $max371 0))
        ($main_inv324 $a370 $max371 $j372 $i373 $x374))))

; loop term $main_sum324
(assert
  (forall (($a3704269 (Array Int Int)) ($i3734272 Int) ($x3744273 Int) ($max3714270 Int) ($j3724271 Int))
    (=> (and (not (< $j3724271 100000))
             ($main_inv324 $a3704269 $max3714270 $j3724271 $i3734272 $x3744273))
        ($main_sum324 $a3704269 $max3714270 $j3724271 $i3734272 $x3744273))))

; forwards $main_inv324
(assert
  (forall (($a3704269 (Array Int Int)) ($i3734272 Int) ($x3744273 Int) ($int4274 Int) ($max3714270 Int) ($j3724271 Int))
    (=> (and (<= (- 2147483648) $int4274)
             (<= $int4274 2147483647)
             (< $j3724271 100000)
             ($main_inv324 $a3704269 $max3714270 $j3724271 $i3734272 $x3744273))
        ($main_inv324 (store $a3704269 $j3724271 $int4274) $max3714270 (+ $j3724271 1) $i3734272 $x3744273))))

; loop entry $main_inv325
(assert
  (forall (($a3704275 (Array Int Int)) ($i3734278 Int) ($x3744279 Int) ($max3714276 Int) ($j3724277 Int))
    (=> (and (= $i3734278 0)
             ($main_sum324 $a3704275 $max3714276 $j3724277 $i3734278 $x3744279))
        ($main_inv325 $a3704275 $max3714276 $j3724277 $i3734278 $x3744279))))

; loop term $main_sum325
(assert
  (forall (($max3714281 Int) ($j3724282 Int) ($i3734283 Int) ($a3704280 (Array Int Int)) ($x3744284 Int))
    (=> (and (not (< $i3734283 100000))
             ($main_inv325 $a3704280 $max3714281 $j3724282 $i3734283 $x3744284))
        ($main_sum325 $a3704280 $max3714281 $j3724282 $i3734283 $x3744284))))

; if then
(assert
  (forall (($max3714281 Int) ($j3724282 Int) ($i3734283 Int) ($a3704280 (Array Int Int)) ($x3744284 Int))
    (=> (and (> (select $a3704280 $i3734283) $max3714281)
             (< $i3734283 100000)
             ($main_inv325 $a3704280 $max3714281 $j3724282 $i3734283 $x3744284))
        ($main_if84 $a3704280 (select $a3704280 $i3734283) $j3724282 $i3734283 $x3744284))))

; if else
(assert
  (forall (($max3714281 Int) ($j3724282 Int) ($i3734283 Int) ($a3704280 (Array Int Int)) ($x3744284 Int))
    (=> (and (not (> (select $a3704280 $i3734283) $max3714281))
             (< $i3734283 100000)
             ($main_inv325 $a3704280 $max3714281 $j3724282 $i3734283 $x3744284))
        ($main_if84 $a3704280 $max3714281 $j3724282 $i3734283 $x3744284))))

; forwards $main_inv325
(assert
  (forall (($max3714286 Int) ($j3724287 Int) ($a3704285 (Array Int Int)) ($i3734288 Int) ($x3744289 Int))
    (=> (and ($main_if84 $a3704285 $max3714286 $j3724287 $i3734288 $x3744289))
        ($main_inv325 $a3704285 $max3714286 $j3724287 (+ $i3734288 1) $x3744289))))

; loop entry $main_inv326
(assert
  (forall (($max3714291 Int) ($i3734293 Int) ($j3724292 Int) ($x3744294 Int) ($a3704290 (Array Int Int)))
    (=> (and ($main_sum325 $a3704290 $max3714291 $j3724292 $i3734293 $x3744294))
        ($main_inv326 $a3704290 $max3714291 $j3724292 $i3734293 0))))

; loop term $main_sum326
(assert
  (forall (($a3704295 (Array Int Int)) ($j3724297 Int) ($x3744299 Int) ($i3734298 Int) ($max3714296 Int))
    (=> (and (not (< $x3744299 100000))
             ($main_inv326 $a3704295 $max3714296 $j3724297 $i3734298 $x3744299))
        ($main_sum326 $a3704295 $max3714296 $j3724297 $i3734298 $x3744299))))

; __VERIFIER_assert precondition
(assert
  (forall (($a3704295 (Array Int Int)) ($j3724297 Int) ($x3744299 Int) ($i3734298 Int) ($max3714296 Int))
    (=> (and (< $x3744299 100000)
             ($main_inv326 $a3704295 $max3714296 $j3724297 $i3734298 $x3744299))
        ($__VERIFIER_assert_pre (ite (<= (select $a3704295 $x3744299) $max3714296) 1 0)))))

; forwards $main_inv326
(assert
  (forall (($a3704295 (Array Int Int)) ($j3724297 Int) ($x3744299 Int) ($i3734298 Int) ($max3714296 Int))
    (=> (and (__VERIFIER_assert (ite (<= (select $a3704295 $x3744299) $max3714296) 1 0))
             (< $x3744299 100000)
             ($main_inv326 $a3704295 $max3714296 $j3724297 $i3734298 $x3744299))
        ($main_inv326 $a3704295 $max3714296 $j3724297 $i3734298 (+ $x3744299 1)))))

(check-sat)
