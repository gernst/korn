(set-logic HORN)

(declare-fun $main_inv226 ((Array Int Int) Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum229 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum226 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_sum228 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_sum227 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_if69 (Int Int) Bool)
(declare-fun $main_inv227 ((Array Int Int) Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv228 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv229 ((Array Int Int) Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond5305 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond5305))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if69 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5306 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if69 cond cond5306))
        (__VERIFIER_assert cond5306))))

; loop entry $main_inv226
(assert
  (forall (($a328 (Array Int Int)) ($i329 Int) ($x330 Int))
    (=> (and (= $i329 0))
        ($main_inv226 $a328 $i329 $x330))))

; loop term $main_sum226
(assert
  (forall (($a3285307 (Array Int Int)) ($i3295308 Int) ($x3305309 Int))
    (=> (and (not (< $i3295308 100000)))
        ($main_sum226 $a3285307 $i3295308 $x3305309 $a3285307 $i3295308 $x3305309))))

; forwards $main_inv226
(assert
  (forall (($a3285307 (Array Int Int)) ($i3295308 Int) ($x3305309 Int))
    (=> (and (< $i3295308 100000)
             ($main_inv226 $a3285307 $i3295308 $x3305309))
        ($main_inv226 (store $a3285307 $i3295308 42) (+ $i3295308 1) $x3305309))))

; backwards $main_sum226
(assert
  (forall (($a3285307 (Array Int Int)) ($x3305312 Int) ($x3305309 Int) ($i3295311 Int) ($i3295308 Int) ($a3285310 (Array Int Int)))
    (=> (and ($main_sum226 (store $a3285307 $i3295308 42) (+ $i3295308 1) $x3305309 $a3285310 $i3295311 $x3305312)
             (< $i3295308 100000))
        ($main_sum226 $a3285307 $i3295308 $x3305309 $a3285310 $i3295311 $x3305312))))

; loop entry $main_inv227
(assert
  (forall (($a328 (Array Int Int)) ($i329 Int) ($x330 Int) ($x3305315 Int) ($a3285313 (Array Int Int)) ($i3295314 Int))
    (=> (and ($main_sum226 $a328 $i329 $x330 $a3285313 $i3295314 $x3305315)
             (= $i329 0))
        ($main_inv227 $a3285313 0 $x3305315))))

; loop term $main_sum227
(assert
  (forall (($a3285316 (Array Int Int)) ($i3295317 Int) ($x3305318 Int))
    (=> (and (not (< $i3295317 100000)))
        ($main_sum227 $a3285316 $i3295317 $x3305318 $a3285316 $i3295317 $x3305318))))

; forwards $main_inv227
(assert
  (forall (($a3285316 (Array Int Int)) ($i3295317 Int) ($x3305318 Int))
    (=> (and (< $i3295317 100000)
             ($main_inv227 $a3285316 $i3295317 $x3305318))
        ($main_inv227 (store $a3285316 $i3295317 43) (+ $i3295317 1) $x3305318))))

; backwards $main_sum227
(assert
  (forall (($i3295317 Int) ($a3285319 (Array Int Int)) ($x3305318 Int) ($i3295320 Int) ($a3285316 (Array Int Int)) ($x3305321 Int))
    (=> (and ($main_sum227 (store $a3285316 $i3295317 43) (+ $i3295317 1) $x3305318 $a3285319 $i3295320 $x3305321)
             (< $i3295317 100000))
        ($main_sum227 $a3285316 $i3295317 $x3305318 $a3285319 $i3295320 $x3305321))))

; loop entry $main_inv228
(assert
  (forall (($a328 (Array Int Int)) ($i3295323 Int) ($i329 Int) ($x3305324 Int) ($a3285322 (Array Int Int)) ($x330 Int) ($x3305315 Int) ($a3285313 (Array Int Int)) ($i3295314 Int))
    (=> (and ($main_sum227 $a3285313 0 $x3305315 $a3285322 $i3295323 $x3305324)
             ($main_sum226 $a328 $i329 $x330 $a3285313 $i3295314 $x3305315)
             (= $i329 0))
        ($main_inv228 $a3285322 0 $x3305324))))

; loop term $main_sum228
(assert
  (forall (($a3285325 (Array Int Int)) ($i3295326 Int) ($x3305327 Int))
    (=> (and (not (< $i3295326 100000)))
        ($main_sum228 $a3285325 $i3295326 $x3305327 $a3285325 $i3295326 $x3305327))))

; forwards $main_inv228
(assert
  (forall (($a3285325 (Array Int Int)) ($i3295326 Int) ($x3305327 Int))
    (=> (and (< $i3295326 100000)
             ($main_inv228 $a3285325 $i3295326 $x3305327))
        ($main_inv228 (store $a3285325 $i3295326 44) (+ $i3295326 1) $x3305327))))

; backwards $main_sum228
(assert
  (forall (($a3285325 (Array Int Int)) ($x3305330 Int) ($i3295326 Int) ($x3305327 Int) ($a3285328 (Array Int Int)) ($i3295329 Int))
    (=> (and ($main_sum228 (store $a3285325 $i3295326 44) (+ $i3295326 1) $x3305327 $a3285328 $i3295329 $x3305330)
             (< $i3295326 100000))
        ($main_sum228 $a3285325 $i3295326 $x3305327 $a3285328 $i3295329 $x3305330))))

; loop entry $main_inv229
(assert
  (forall (($a328 (Array Int Int)) ($i3295323 Int) ($i329 Int) ($x3305324 Int) ($a3285322 (Array Int Int)) ($i3295332 Int) ($a3285331 (Array Int Int)) ($x3305333 Int) ($x330 Int) ($x3305315 Int) ($a3285313 (Array Int Int)) ($i3295314 Int))
    (=> (and ($main_sum228 $a3285322 0 $x3305324 $a3285331 $i3295332 $x3305333)
             ($main_sum227 $a3285313 0 $x3305315 $a3285322 $i3295323 $x3305324)
             ($main_sum226 $a328 $i329 $x330 $a3285313 $i3295314 $x3305315)
             (= $i329 0))
        ($main_inv229 $a3285331 $i3295332 0))))

; loop term $main_sum229
(assert
  (forall (($a3285334 (Array Int Int)) ($i3295335 Int) ($x3305336 Int))
    (=> (and (not (< $x3305336 100000)))
        ($main_sum229 $a3285334 $i3295335 $x3305336 $a3285334 $i3295335 $x3305336))))

; __VERIFIER_assert precondition
(assert
  (forall (($a3285334 (Array Int Int)) ($x3305336 Int) ($i3295335 Int))
    (=> (and (< $x3305336 100000)
             ($main_inv229 $a3285334 $i3295335 $x3305336))
        ($__VERIFIER_assert_pre (ite (= (select $a3285334 $x3305336) 43) 1 0)))))

; forwards $main_inv229
(assert
  (forall (($a3285334 (Array Int Int)) ($i3295335 Int) ($x3305336 Int))
    (=> (and (__VERIFIER_assert (ite (= (select $a3285334 $x3305336) 43) 1 0))
             (< $x3305336 100000)
             ($main_inv229 $a3285334 $i3295335 $x3305336))
        ($main_inv229 $a3285334 $i3295335 (+ $x3305336 1)))))

; backwards $main_sum229
(assert
  (forall (($a3285337 (Array Int Int)) ($x3305339 Int) ($i3295338 Int) ($a3285334 (Array Int Int)) ($x3305336 Int) ($i3295335 Int))
    (=> (and ($main_sum229 $a3285334 $i3295335 (+ $x3305336 1) $a3285337 $i3295338 $x3305339)
             (__VERIFIER_assert (ite (= (select $a3285334 $x3305336) 43) 1 0))
             (< $x3305336 100000))
        ($main_sum229 $a3285334 $i3295335 $x3305336 $a3285337 $i3295338 $x3305339))))

(check-sat)
