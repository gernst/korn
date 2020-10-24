(set-logic HORN)

(declare-fun $__VERIFIER_assert_if136 (Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv414 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_if137 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_sum415 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_if139 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_if140 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_inv415 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $main_if138 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum414 (Int (Array Int Int) (Array Int Int) (Array Int Int) Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond5313 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond5313))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if136 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond5314 Int))
    (=> (and ($__VERIFIER_assert_if136 cond5314))
        (__VERIFIER_assert cond5314))))

; loop entry $main_inv414
(assert
  (forall (($a507 (Array Int Int)) ($b508 (Array Int Int)) ($c509 (Array Int Int)) ($q510 Int))
        ($main_inv414 0 $a507 $b508 $c509 $q510)))

; loop term $main_sum414
(assert
  (forall (($a5075316 (Array Int Int)) ($b5085317 (Array Int Int)) ($c5095318 (Array Int Int)) ($i5065315 Int) ($q5105319 Int))
    (=> (and (not (< $i5065315 100000))
             ($main_inv414 $i5065315 $a5075316 $b5085317 $c5095318 $q5105319))
        ($main_sum414 $i5065315 $a5075316 $b5085317 $c5095318 $q5105319))))

; if then
(assert
  (forall (($int5320 Int) ($a5075316 (Array Int Int)) ($b5085317 (Array Int Int)) ($c5095318 (Array Int Int)) ($i5065315 Int) ($q5105319 Int))
    (=> (and (= $q5105319 0)
             (= $q5105319 $int5320)
             (<= (- 2147483648) $int5320)
             (<= $int5320 2147483647)
             (< $i5065315 100000)
             ($main_inv414 $i5065315 $a5075316 $b5085317 $c5095318 $q5105319))
        ($main_if137 $i5065315 (store (store $a5075316 $i5065315 0) $i5065315 1) (store $b5085317 $i5065315 (mod $i5065315 2)) $c5095318 $q5105319))))

; if else
(assert
  (forall (($int5320 Int) ($a5075316 (Array Int Int)) ($b5085317 (Array Int Int)) ($c5095318 (Array Int Int)) ($i5065315 Int) ($q5105319 Int))
    (=> (and (not (= $q5105319 0))
             (= $q5105319 $int5320)
             (<= (- 2147483648) $int5320)
             (<= $int5320 2147483647)
             (< $i5065315 100000)
             ($main_inv414 $i5065315 $a5075316 $b5085317 $c5095318 $q5105319))
        ($main_if137 $i5065315 (store $a5075316 $i5065315 0) $b5085317 $c5095318 $q5105319))))

; if then
(assert
  (forall (($q5105325 Int) ($b5085323 (Array Int Int)) ($a5075322 (Array Int Int)) ($i5065321 Int) ($c5095324 (Array Int Int)))
    (=> (and (= (select $b5085323 $i5065321) 0)
             (not (= (select $a5075322 $i5065321) 0))
             ($main_if137 $i5065321 $a5075322 $b5085323 $c5095324 $q5105325))
        ($main_if138 $i5065321 $a5075322 $b5085323 (store $c5095324 $i5065321 0) $q5105325))))

; if else
(assert
  (forall (($q5105325 Int) ($b5085323 (Array Int Int)) ($a5075322 (Array Int Int)) ($i5065321 Int) ($c5095324 (Array Int Int)))
    (=> (and (not (= (select $b5085323 $i5065321) 0))
             (not (= (select $a5075322 $i5065321) 0))
             ($main_if137 $i5065321 $a5075322 $b5085323 $c5095324 $q5105325))
        ($main_if138 $i5065321 $a5075322 $b5085323 (store $c5095324 $i5065321 1) $q5105325))))

; if then
(assert
  (forall (($b5085328 (Array Int Int)) ($q5105330 Int) ($i5065326 Int) ($a5075327 (Array Int Int)) ($c5095329 (Array Int Int)))
    (=> (and ($main_if138 $i5065326 $a5075327 $b5085328 $c5095329 $q5105330))
        ($main_if139 $i5065326 $a5075327 $b5085328 $c5095329 $q5105330))))

; if else
(assert
  (forall (($q5105325 Int) ($b5085323 (Array Int Int)) ($a5075322 (Array Int Int)) ($i5065321 Int) ($c5095324 (Array Int Int)))
    (=> (and (= (select $a5075322 $i5065321) 0)
             ($main_if137 $i5065321 $a5075322 $b5085323 $c5095324 $q5105325))
        ($main_if139 $i5065321 $a5075322 $b5085323 $c5095324 $q5105325))))

; forwards $main_inv414
(assert
  (forall (($c5095334 (Array Int Int)) ($a5075332 (Array Int Int)) ($b5085333 (Array Int Int)) ($q5105335 Int) ($i5065331 Int))
    (=> (and ($main_if139 $i5065331 $a5075332 $b5085333 $c5095334 $q5105335))
        ($main_inv414 (+ $i5065331 1) $a5075332 $b5085333 $c5095334 $q5105335))))

; loop entry $main_inv415
(assert
  (forall (($b5085338 (Array Int Int)) ($a5075337 (Array Int Int)) ($c5095339 (Array Int Int)) ($q5105340 Int) ($i5065336 Int))
    (=> (and ($main_sum414 $i5065336 $a5075337 $b5085338 $c5095339 $q5105340))
        ($main_inv415 0 (store $a5075337 15000 1) $b5085338 $c5095339 $q5105340))))

; loop term $main_sum415
(assert
  (forall (($b5085343 (Array Int Int)) ($q5105345 Int) ($c5095344 (Array Int Int)) ($a5075342 (Array Int Int)) ($i5065341 Int))
    (=> (and (not (< $i5065341 100000))
             ($main_inv415 $i5065341 $a5075342 $b5085343 $c5095344 $q5105345))
        ($main_sum415 $i5065341 $a5075342 $b5085343 $c5095344 $q5105345))))

; __VERIFIER_assert precondition
(assert
  (forall (($b5085343 (Array Int Int)) ($q5105345 Int) ($c5095344 (Array Int Int)) ($a5075342 (Array Int Int)) ($i5065341 Int))
    (=> (and (= $i5065341 15000)
             (< $i5065341 100000)
             ($main_inv415 $i5065341 $a5075342 $b5085343 $c5095344 $q5105345))
        ($__VERIFIER_assert_pre (ite (not (= (select $a5075342 $i5065341) 1)) 1 0)))))

; if then
(assert
  (forall (($b5085343 (Array Int Int)) ($q5105345 Int) ($c5095344 (Array Int Int)) ($a5075342 (Array Int Int)) ($i5065341 Int))
    (=> (and (__VERIFIER_assert (ite (not (= (select $a5075342 $i5065341) 1)) 1 0))
             (= $i5065341 15000)
             (< $i5065341 100000)
             ($main_inv415 $i5065341 $a5075342 $b5085343 $c5095344 $q5105345))
        ($main_if140 $i5065341 $a5075342 $b5085343 $c5095344 $q5105345))))

; if else
(assert
  (forall (($b5085343 (Array Int Int)) ($q5105345 Int) ($c5095344 (Array Int Int)) ($a5075342 (Array Int Int)) ($i5065341 Int))
    (=> (and (not (= $i5065341 15000))
             (< $i5065341 100000)
             ($main_inv415 $i5065341 $a5075342 $b5085343 $c5095344 $q5105345))
        ($main_if140 $i5065341 $a5075342 $b5085343 $c5095344 $q5105345))))

; forwards $main_inv415
(assert
  (forall (($a5075347 (Array Int Int)) ($i5065346 Int) ($c5095349 (Array Int Int)) ($q5105350 Int) ($b5085348 (Array Int Int)))
    (=> (and ($main_if140 $i5065346 $a5075347 $b5085348 $c5095349 $q5105350))
        ($main_inv415 (+ $i5065346 1) $a5075347 $b5085348 $c5095349 $q5105350))))

(check-sat)
