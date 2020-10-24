(set-logic HORN)

(declare-fun $main_inv140 (Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum142 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum140 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $main_sum141 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv142 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv141 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if546 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond14197 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond14197))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if546 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14198 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if546 cond cond14198))
        (__VERIFIER_assert cond14198))))

; loop entry $main_inv140
(assert
  (forall (($y495 Int) ($uint14199 Int) ($x494 Int) ($z496 Int) ($n493 Int))
    (=> (and (= $y495 0)
             (= $x494 $n493)
             (= $n493 $uint14199)
             (<= 0 $uint14199)
             (<= $uint14199 4294967295))
        ($main_inv140 $n493 $x494 $y495 $z496))))

; loop term $main_sum140
(assert
  (forall (($n49314200 Int) ($x49414201 Int) ($y49514202 Int) ($z49614203 Int))
    (=> (and (not (> $x49414201 0)))
        ($main_sum140 $n49314200 $x49414201 $y49514202 $z49614203 $n49314200 $x49414201 $y49514202 $z49614203))))

; forwards $main_inv140
(assert
  (forall (($n49314200 Int) ($x49414201 Int) ($y49514202 Int) ($z49614203 Int))
    (=> (and (> $x49414201 0)
             ($main_inv140 $n49314200 $x49414201 $y49514202 $z49614203))
        ($main_inv140 $n49314200 (- $x49414201 1) (+ $y49514202 1) $z49614203))))

; backwards $main_sum140
(assert
  (forall (($y49514206 Int) ($y49514202 Int) ($z49614203 Int) ($n49314200 Int) ($x49414205 Int) ($z49614207 Int) ($n49314204 Int) ($x49414201 Int))
    (=> (and ($main_sum140 $n49314200 (- $x49414201 1) (+ $y49514202 1) $z49614203 $n49314204 $x49414205 $y49514206 $z49614207)
             (> $x49414201 0))
        ($main_sum140 $n49314200 $x49414201 $y49514202 $z49614203 $n49314204 $x49414205 $y49514206 $z49614207))))

; loop entry $main_inv141
(assert
  (forall (($y495 Int) ($uint14199 Int) ($z49614211 Int) ($y49514210 Int) ($x494 Int) ($x49414209 Int) ($n49314208 Int) ($z496 Int) ($n493 Int))
    (=> (and ($main_sum140 $n493 $x494 $y495 $z496 $n49314208 $x49414209 $y49514210 $z49614211)
             (= $y495 0)
             (= $x494 $n493)
             (= $n493 $uint14199)
             (<= 0 $uint14199)
             (<= $uint14199 4294967295))
        ($main_inv141 $n49314208 $x49414209 $y49514210 $y49514210))))

; loop term $main_sum141
(assert
  (forall (($n49314212 Int) ($x49414213 Int) ($y49514214 Int) ($z49614215 Int))
    (=> (and (not (> $z49614215 0)))
        ($main_sum141 $n49314212 $x49414213 $y49514214 $z49614215 $n49314212 $x49414213 $y49514214 $z49614215))))

; forwards $main_inv141
(assert
  (forall (($n49314212 Int) ($x49414213 Int) ($y49514214 Int) ($z49614215 Int))
    (=> (and (> $z49614215 0)
             ($main_inv141 $n49314212 $x49414213 $y49514214 $z49614215))
        ($main_inv141 $n49314212 (+ $x49414213 1) $y49514214 (- $z49614215 1)))))

; backwards $main_sum141
(assert
  (forall (($x49414213 Int) ($n49314216 Int) ($n49314212 Int) ($z49614219 Int) ($z49614215 Int) ($x49414217 Int) ($y49514214 Int) ($y49514218 Int))
    (=> (and ($main_sum141 $n49314212 (+ $x49414213 1) $y49514214 (- $z49614215 1) $n49314216 $x49414217 $y49514218 $z49614219)
             (> $z49614215 0))
        ($main_sum141 $n49314212 $x49414213 $y49514214 $z49614215 $n49314216 $x49414217 $y49514218 $z49614219))))

; loop entry $main_inv142
(assert
  (forall (($z49614223 Int) ($y495 Int) ($uint14199 Int) ($z49614211 Int) ($y49514210 Int) ($x494 Int) ($n49314220 Int) ($y49514222 Int) ($x49414209 Int) ($n49314208 Int) ($x49414221 Int) ($z496 Int) ($n493 Int))
    (=> (and ($main_sum141 $n49314208 $x49414209 $y49514210 $y49514210 $n49314220 $x49414221 $y49514222 $z49614223)
             ($main_sum140 $n493 $x494 $y495 $z496 $n49314208 $x49414209 $y49514210 $z49614211)
             (= $y495 0)
             (= $x494 $n493)
             (= $n493 $uint14199)
             (<= 0 $uint14199)
             (<= $uint14199 4294967295))
        ($main_inv142 $n49314220 $x49414221 $y49514222 $z49614223))))

; loop term $main_sum142
(assert
  (forall (($n49314224 Int) ($x49414225 Int) ($y49514226 Int) ($z49614227 Int))
    (=> (and (not (> $y49514226 0)))
        ($main_sum142 $n49314224 $x49414225 $y49514226 $z49614227 $n49314224 $x49414225 $y49514226 $z49614227))))

; forwards $main_inv142
(assert
  (forall (($n49314224 Int) ($x49414225 Int) ($y49514226 Int) ($z49614227 Int))
    (=> (and (> $y49514226 0)
             ($main_inv142 $n49314224 $x49414225 $y49514226 $z49614227))
        ($main_inv142 $n49314224 $x49414225 (- $y49514226 1) (+ $z49614227 1)))))

; backwards $main_sum142
(assert
  (forall (($y49514226 Int) ($z49614231 Int) ($x49414229 Int) ($n49314228 Int) ($x49414225 Int) ($y49514230 Int) ($n49314224 Int) ($z49614227 Int))
    (=> (and ($main_sum142 $n49314224 $x49414225 (- $y49514226 1) (+ $z49614227 1) $n49314228 $x49414229 $y49514230 $z49614231)
             (> $y49514226 0))
        ($main_sum142 $n49314224 $x49414225 $y49514226 $z49614227 $n49314228 $x49414229 $y49514230 $z49614231))))

; __VERIFIER_assert precondition
(assert
  (forall (($y495 Int) ($uint14199 Int) ($z49614211 Int) ($x494 Int) ($x49414233 Int) ($y49514222 Int) ($x49414209 Int) ($n49314208 Int) ($z49614235 Int) ($z49614223 Int) ($x49414221 Int) ($z496 Int) ($n493 Int) ($y49514234 Int) ($y49514210 Int) ($n49314220 Int) ($n49314232 Int))
    (=> (and ($main_sum142 $n49314220 $x49414221 $y49514222 $z49614223 $n49314232 $x49414233 $y49514234 $z49614235)
             ($main_sum141 $n49314208 $x49414209 $y49514210 $y49514210 $n49314220 $x49414221 $y49514222 $z49614223)
             ($main_sum140 $n493 $x494 $y495 $z496 $n49314208 $x49414209 $y49514210 $z49614211)
             (= $y495 0)
             (= $x494 $n493)
             (= $n493 $uint14199)
             (<= 0 $uint14199)
             (<= $uint14199 4294967295))
        ($__VERIFIER_assert_pre (ite (= $z49614235 $n49314232) 1 0)))))

(check-sat)
