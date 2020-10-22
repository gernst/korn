(set-logic HORN)

(declare-fun $__VERIFIER_assert_if706 (Int) Bool)
(declare-fun $main_inv272 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $__VERIFIER_nondet_bool_pre () Bool)
(declare-fun __VERIFIER_nondet_bool (Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $main_sum272 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if708 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_if707 (Int Int Int Int Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond15292 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15292))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if706 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond15293 Int))
    (=> (and ($__VERIFIER_assert_if706 cond15293))
        (__VERIFIER_assert cond15293))))

; loop entry $main_inv272
(assert
  (forall (($uint15296 Int) ($c1759 Int) ($d1756 Int) ($uint15294 Int) ($c2760 Int) ($bool15298 Int) ($uint15295 Int) ($bool15297 Int) ($x1753 Int) ($x3755 Int) ($d3758 Int) ($d2757 Int) ($x2754 Int))
    (=> (and (= $c2760 $bool15298)
             (or (= $bool15298 0) (= $bool15298 1))
             (= $c1759 $bool15297)
             (or (= $bool15297 0) (= $bool15297 1))
             (= $d3758 1)
             (= $d2757 1)
             (= $d1756 1)
             (= $x3755 $uint15296)
             (<= 0 $uint15296)
             (<= $uint15296 4294967295)
             (= $x2754 $uint15295)
             (<= 0 $uint15295)
             (<= $uint15295 4294967295)
             (= $x1753 $uint15294)
             (<= 0 $uint15294)
             (<= $uint15294 4294967295))
        ($main_inv272 $x1753 $x2754 $x3755 $d1756 $d2757 $d3758 $c1759 $c2760))))

; loop term $main_sum272
(assert
  (forall (($x275415300 Int) ($c175915305 Int) ($d275715303 Int) ($x175315299 Int) ($d375815304 Int) ($d175615302 Int) ($x375515301 Int) ($c276015306 Int))
    (=> (and (not (and (and (> $x175315299 0) (> $x275415300 0)) (> $x375515301 0)))
             ($main_inv272 $x175315299 $x275415300 $x375515301 $d175615302 $d275715303 $d375815304 $c175915305 $c276015306))
        ($main_sum272 $x175315299 $x275415300 $x375515301 $d175615302 $d275715303 $d375815304 $c175915305 $c276015306))))

; if then
(assert
  (forall (($x275415300 Int) ($c175915305 Int) ($d275715303 Int) ($x175315299 Int) ($d375815304 Int) ($d175615302 Int) ($x375515301 Int) ($c276015306 Int))
    (=> (and (not (= $c276015306 0))
             (= $c175915305 0)
             (> $x175315299 0)
             (> $x275415300 0)
             (> $x375515301 0)
             ($main_inv272 $x175315299 $x275415300 $x375515301 $d175615302 $d275715303 $d375815304 $c175915305 $c276015306))
        ($main_if707 $x175315299 (- $x275415300 $d275715303) $x375515301 $d175615302 $d275715303 $d375815304 $c175915305 $c276015306))))

; if else
(assert
  (forall (($x275415300 Int) ($c175915305 Int) ($d275715303 Int) ($x175315299 Int) ($d375815304 Int) ($d175615302 Int) ($x375515301 Int) ($c276015306 Int))
    (=> (and (= $c276015306 0)
             (= $c175915305 0)
             (> $x175315299 0)
             (> $x275415300 0)
             (> $x375515301 0)
             ($main_inv272 $x175315299 $x275415300 $x375515301 $d175615302 $d275715303 $d375815304 $c175915305 $c276015306))
        ($main_if707 $x175315299 $x275415300 (- $x375515301 $d375815304) $d175615302 $d275715303 $d375815304 $c175915305 $c276015306))))

; if then
(assert
  (forall (($x275415300 Int) ($c175915305 Int) ($d275715303 Int) ($x175315299 Int) ($d375815304 Int) ($d175615302 Int) ($x375515301 Int) ($c276015306 Int))
    (=> (and (not (= $c175915305 0))
             (> $x175315299 0)
             (> $x275415300 0)
             (> $x375515301 0)
             ($main_inv272 $x175315299 $x275415300 $x375515301 $d175615302 $d275715303 $d375815304 $c175915305 $c276015306))
        ($main_if708 (- $x175315299 $d175615302) $x275415300 $x375515301 $d175615302 $d275715303 $d375815304 $c175915305 $c276015306))))

; if else
(assert
  (forall (($d175615310 Int) ($c276015314 Int) ($x275415308 Int) ($x375515309 Int) ($x175315307 Int) ($d375815312 Int) ($d275715311 Int) ($c175915313 Int))
    (=> (and ($main_if707 $x175315307 $x275415308 $x375515309 $d175615310 $d275715311 $d375815312 $c175915313 $c276015314))
        ($main_if708 $x175315307 $x275415308 $x375515309 $d175615310 $d275715311 $d375815312 $c175915313 $c276015314))))

; forwards $main_inv272
(assert
  (forall (($c276015322 Int) ($x175315315 Int) ($d275715319 Int) ($bool15323 Int) ($x275415316 Int) ($d375815320 Int) ($x375515317 Int) ($d175615318 Int) ($c175915321 Int) ($bool15324 Int))
    (=> (and (or (= $bool15324 0) (= $bool15324 1))
             (or (= $bool15323 0) (= $bool15323 1))
             ($main_if708 $x175315315 $x275415316 $x375515317 $d175615318 $d275715319 $d375815320 $c175915321 $c276015322))
        ($main_inv272 $x175315315 $x275415316 $x375515317 $d175615318 $d275715319 $d375815320 $bool15323 $bool15324))))

; __VERIFIER_assert precondition
(assert
  (forall (($d275715329 Int) ($d375815330 Int) ($d175615328 Int) ($c175915331 Int) ($c276015332 Int) ($x175315325 Int) ($x375515327 Int) ($x275415326 Int))
    (=> (and ($main_sum272 $x175315325 $x275415326 $x375515327 $d175615328 $d275715329 $d375815330 $c175915331 $c276015332))
        ($__VERIFIER_assert_pre (ite (and (and (= $x175315325 0) (= $x275415326 0)) (= $x375515327 0)) 1 0)))))

(check-sat)
