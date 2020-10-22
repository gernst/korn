(set-logic HORN)

(declare-fun $assume_abort_if_not_if615 (Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum220 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if619 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if617 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if618 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv220 (Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if621 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $__VERIFIER_assert_if616 (Int Int) Bool)
(declare-fun $main_if620 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if615 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond15294 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if615 cond cond15294))
        (assume_abort_if_not cond15294))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond15295 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond15295))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if616 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond15296 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if616 cond cond15296))
        (__VERIFIER_assert cond15296))))

; if else
(assert
  (forall (($v4613 Int) ($j610 Int) ($v3612 Int) ($int15298 Int) ($k609 Int) ($l611 Int) ($n607 Int) ($i608 Int))
    (=> (and (<= $int15298 20000001)
             (<= (- 2147483648) $int15298)
             (<= $int15298 2147483647)
             (= $v4613 0)
             (= $v3612 0)
             (= $l611 0)
             (= $j610 0)
             (= $k609 0)
             (= $i608 0)
             (= $n607 0))
        ($main_if617 $n607 $i608 $k609 $j610 $l611 $v3612 $v4613 $int15298 $i608 $k609 $j610 $l611 $v3612 $v4613))))

; loop entry $main_inv220
(assert
  (forall (($v4613 Int) ($i60815300 Int) ($j610 Int) ($l61115303 Int) ($k60915301 Int) ($n60715299 Int) ($v461315305 Int) ($v3612 Int) ($l611 Int) ($j61015302 Int) ($n607 Int) ($i608 Int) ($v361215304 Int) ($k609 Int))
    (=> (and ($main_if617 $n607 $i608 $k609 $j610 $l611 $v3612 $v4613 $n60715299 $i60815300 $k60915301 $j61015302 $l61115303 $v361215304 $v461315305))
        ($main_inv220 $n60715299 $i60815300 $k60915301 $j61015302 $l61115303 $v361215304 $v461315305))))

; loop term $main_sum220
(assert
  (forall (($v361215311 Int) ($l61115310 Int) ($i60815307 Int) ($j61015309 Int) ($n60715306 Int) ($v461315312 Int) ($k60915308 Int))
    (=> (and (not (< $l61115310 $n60715306)))
        ($main_sum220 $n60715306 $i60815307 $k60915308 $j61015309 $l61115310 $v361215311 $v461315312 $n60715306 $i60815307 $k60915308 $j61015309 $l61115310 $v361215311 $v461315312))))

; if then
(assert
  (forall (($v361215311 Int) ($l61115310 Int) ($i60815307 Int) ($j61015309 Int) ($n60715306 Int) ($v461315312 Int) ($k60915308 Int))
    (=> (and (= (mod $l61115310 2) 0)
             (not (= (mod $l61115310 3) 0))
             (not (= (mod $l61115310 4) 0))
             (not (= (mod $l61115310 5) 0))
             (< $l61115310 $n60715306)
             ($main_inv220 $n60715306 $i60815307 $k60915308 $j61015309 $l61115310 $v361215311 $v461315312))
        ($main_if618 $n60715306 $i60815307 $k60915308 $j61015309 $l61115310 $v361215311 $v461315312 $n60715306 $i60815307 $k60915308 (+ $j61015309 1) $l61115310 $v361215311 $v461315312))))

; if else
(assert
  (forall (($v361215311 Int) ($l61115310 Int) ($i60815307 Int) ($j61015309 Int) ($n60715306 Int) ($v461315312 Int) ($k60915308 Int))
    (=> (and (not (= (mod $l61115310 2) 0))
             (not (= (mod $l61115310 3) 0))
             (not (= (mod $l61115310 4) 0))
             (not (= (mod $l61115310 5) 0))
             (< $l61115310 $n60715306)
             ($main_inv220 $n60715306 $i60815307 $k60915308 $j61015309 $l61115310 $v361215311 $v461315312))
        ($main_if618 $n60715306 $i60815307 $k60915308 $j61015309 $l61115310 $v361215311 $v461315312 $n60715306 $i60815307 (+ $k60915308 1) $j61015309 $l61115310 $v361215311 $v461315312))))

; if then
(assert
  (forall (($v361215311 Int) ($l61115310 Int) ($i60815307 Int) ($j61015309 Int) ($n60715306 Int) ($v461315312 Int) ($k60915308 Int))
    (=> (and (= (mod $l61115310 3) 0)
             (not (= (mod $l61115310 4) 0))
             (not (= (mod $l61115310 5) 0))
             (< $l61115310 $n60715306)
             ($main_inv220 $n60715306 $i60815307 $k60915308 $j61015309 $l61115310 $v361215311 $v461315312))
        ($main_if619 $n60715306 $i60815307 $k60915308 $j61015309 $l61115310 $v361215311 $v461315312 $n60715306 (+ $i60815307 1) $k60915308 $j61015309 $l61115310 $v361215311 $v461315312))))

; if else
(assert
  (forall (($v361215311 Int) ($k60915315 Int) ($l61115310 Int) ($i60815307 Int) ($j61015309 Int) ($n60715313 Int) ($n60715306 Int) ($v461315312 Int) ($k60915308 Int) ($v461315319 Int) ($j61015316 Int) ($i60815314 Int) ($l61115317 Int) ($v361215318 Int))
    (=> (and ($main_if618 $n60715306 $i60815307 $k60915308 $j61015309 $l61115310 $v361215311 $v461315312 $n60715313 $i60815314 $k60915315 $j61015316 $l61115317 $v361215318 $v461315319))
        ($main_if619 $n60715306 $i60815307 $k60915308 $j61015309 $l61115310 $v361215311 $v461315312 $n60715313 $i60815314 $k60915315 $j61015316 $l61115317 $v361215318 $v461315319))))

; if then
(assert
  (forall (($v361215311 Int) ($l61115310 Int) ($i60815307 Int) ($j61015309 Int) ($n60715306 Int) ($v461315312 Int) ($k60915308 Int))
    (=> (and (= (mod $l61115310 4) 0)
             (not (= (mod $l61115310 5) 0))
             (< $l61115310 $n60715306)
             ($main_inv220 $n60715306 $i60815307 $k60915308 $j61015309 $l61115310 $v361215311 $v461315312))
        ($main_if620 $n60715306 $i60815307 $k60915308 $j61015309 $l61115310 $v361215311 $v461315312 $n60715306 $i60815307 $k60915308 $j61015309 $l61115310 $v361215311 (+ $v461315312 1)))))

; if else
(assert
  (forall (($l61115324 Int) ($l61115310 Int) ($v361215325 Int) ($i60815307 Int) ($i60815321 Int) ($j61015323 Int) ($j61015309 Int) ($n60715306 Int) ($v461315312 Int) ($v461315326 Int) ($v361215311 Int) ($k60915322 Int) ($k60915308 Int) ($n60715320 Int))
    (=> (and ($main_if619 $n60715306 $i60815307 $k60915308 $j61015309 $l61115310 $v361215311 $v461315312 $n60715320 $i60815321 $k60915322 $j61015323 $l61115324 $v361215325 $v461315326))
        ($main_if620 $n60715306 $i60815307 $k60915308 $j61015309 $l61115310 $v361215311 $v461315312 $n60715320 $i60815321 $k60915322 $j61015323 $l61115324 $v361215325 $v461315326))))

; if then
(assert
  (forall (($v361215311 Int) ($l61115310 Int) ($i60815307 Int) ($j61015309 Int) ($n60715306 Int) ($v461315312 Int) ($k60915308 Int))
    (=> (and (= (mod $l61115310 5) 0)
             (< $l61115310 $n60715306)
             ($main_inv220 $n60715306 $i60815307 $k60915308 $j61015309 $l61115310 $v361215311 $v461315312))
        ($main_if621 $n60715306 $i60815307 $k60915308 $j61015309 $l61115310 $v361215311 $v461315312 $n60715306 $i60815307 $k60915308 $j61015309 $l61115310 (+ $v361215311 1) $v461315312))))

; if else
(assert
  (forall (($v361215311 Int) ($v361215332 Int) ($l61115310 Int) ($i60815307 Int) ($n60715327 Int) ($j61015309 Int) ($n60715306 Int) ($k60915308 Int) ($j61015330 Int) ($v461315333 Int) ($l61115331 Int) ($v461315312 Int) ($k60915329 Int) ($i60815328 Int))
    (=> (and ($main_if620 $n60715306 $i60815307 $k60915308 $j61015309 $l61115310 $v361215311 $v461315312 $n60715327 $i60815328 $k60915329 $j61015330 $l61115331 $v361215332 $v461315333))
        ($main_if621 $n60715306 $i60815307 $k60915308 $j61015309 $l61115310 $v361215311 $v461315312 $n60715327 $i60815328 $k60915329 $j61015330 $l61115331 $v361215332 $v461315333))))

; forwards $main_inv220
(assert
  (forall (($i60815335 Int) ($k60915336 Int) ($l61115310 Int) ($i60815307 Int) ($j61015309 Int) ($v461315312 Int) ($v361215339 Int) ($n60715334 Int) ($v361215311 Int) ($l61115338 Int) ($j61015337 Int) ($n60715306 Int) ($k60915308 Int) ($v461315340 Int))
    (=> (and ($main_if621 $n60715306 $i60815307 $k60915308 $j61015309 $l61115310 $v361215311 $v461315312 $n60715334 $i60815335 $k60915336 $j61015337 $l61115338 $v361215339 $v461315340))
        ($main_inv220 $n60715334 $i60815335 $k60915336 $j61015337 (+ $l61115338 1) $v361215339 $v461315340))))

; backwards $main_sum220
(assert
  (forall (($v461315347 Int) ($k60915343 Int) ($i60815335 Int) ($k60915336 Int) ($i60815307 Int) ($j61015309 Int) ($v361215339 Int) ($n60715341 Int) ($v361215311 Int) ($l61115338 Int) ($l61115310 Int) ($j61015344 Int) ($v361215346 Int) ($j61015337 Int) ($n60715306 Int) ($i60815342 Int) ($v461315312 Int) ($k60915308 Int) ($v461315340 Int) ($n60715334 Int) ($l61115345 Int))
    (=> (and ($main_sum220 $n60715334 $i60815335 $k60915336 $j61015337 (+ $l61115338 1) $v361215339 $v461315340 $n60715341 $i60815342 $k60915343 $j61015344 $l61115345 $v361215346 $v461315347)
             ($main_if621 $n60715306 $i60815307 $k60915308 $j61015309 $l61115310 $v361215311 $v461315312 $n60715334 $i60815335 $k60915336 $j61015337 $l61115338 $v361215339 $v461315340))
        ($main_sum220 $n60715306 $i60815307 $k60915308 $j61015309 $l61115310 $v361215311 $v461315312 $n60715341 $i60815342 $k60915343 $j61015344 $l61115345 $v361215346 $v461315347))))

; __VERIFIER_assert precondition
(assert
  (forall (($v4613 Int) ($v361215353 Int) ($i60815300 Int) ($j610 Int) ($l61115303 Int) ($k60915301 Int) ($n60715299 Int) ($j61015351 Int) ($v461315305 Int) ($v3612 Int) ($v461315354 Int) ($j61015302 Int) ($k60915350 Int) ($n607 Int) ($i608 Int) ($v361215304 Int) ($k609 Int) ($l61115352 Int) ($i60815349 Int) ($n60715348 Int) ($l611 Int))
    (=> (and ($main_sum220 $n60715299 $i60815300 $k60915301 $j61015302 $l61115303 $v361215304 $v461315305 $n60715348 $i60815349 $k60915350 $j61015351 $l61115352 $v361215353 $v461315354)
             ($main_if617 $n607 $i608 $k609 $j610 $l611 $v3612 $v4613 $n60715299 $i60815300 $k60915301 $j61015302 $l61115303 $v361215304 $v461315305))
        ($__VERIFIER_assert_pre (ite (= (+ (+ (+ (+ $i60815349 $j61015351) $k60915350) $v461315354) $v361215353) $l61115352) 1 0)))))

(check-sat)
