(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_sum145 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv145 (Int Int Int Int) Bool)
(declare-fun $main_sum143 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $__VERIFIER_assert_if547 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv143 (Int Int Int Int) Bool)
(declare-fun $main_inv144 (Int Int Int Int) Bool)
(declare-fun $main_sum144 (Int Int Int Int Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond14236 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond14236))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if547 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14237 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if547 cond cond14237))
        (__VERIFIER_assert cond14237))))

; loop entry $main_inv143
(assert
  (forall (($z500 Int) ($y499 Int) ($uint14238 Int) ($x498 Int) ($n497 Int))
    (=> (and (= $y499 0)
             (= $x498 $n497)
             (= $n497 $uint14238)
             (<= 0 $uint14238)
             (<= $uint14238 4294967295))
        ($main_inv143 $n497 $x498 $y499 $z500))))

; loop term $main_sum143
(assert
  (forall (($n49714239 Int) ($x49814240 Int) ($y49914241 Int) ($z50014242 Int))
    (=> (and (not (> $x49814240 0)))
        ($main_sum143 $n49714239 $x49814240 $y49914241 $z50014242 $n49714239 $x49814240 $y49914241 $z50014242))))

; forwards $main_inv143
(assert
  (forall (($n49714239 Int) ($x49814240 Int) ($y49914241 Int) ($z50014242 Int))
    (=> (and (> $x49814240 0)
             ($main_inv143 $n49714239 $x49814240 $y49914241 $z50014242))
        ($main_inv143 $n49714239 (- $x49814240 1) (+ $y49914241 1) $z50014242))))

; backwards $main_sum143
(assert
  (forall (($n49714239 Int) ($z50014246 Int) ($x49814244 Int) ($z50014242 Int) ($y49914241 Int) ($y49914245 Int) ($n49714243 Int) ($x49814240 Int))
    (=> (and ($main_sum143 $n49714239 (- $x49814240 1) (+ $y49914241 1) $z50014242 $n49714243 $x49814244 $y49914245 $z50014246)
             (> $x49814240 0))
        ($main_sum143 $n49714239 $x49814240 $y49914241 $z50014242 $n49714243 $x49814244 $y49914245 $z50014246))))

; loop entry $main_inv144
(assert
  (forall (($z500 Int) ($y499 Int) ($uint14238 Int) ($n49714247 Int) ($n497 Int) ($y49914249 Int) ($z50014250 Int) ($x49814248 Int) ($x498 Int))
    (=> (and ($main_sum143 $n497 $x498 $y499 $z500 $n49714247 $x49814248 $y49914249 $z50014250)
             (= $y499 0)
             (= $x498 $n497)
             (= $n497 $uint14238)
             (<= 0 $uint14238)
             (<= $uint14238 4294967295))
        ($main_inv144 $n49714247 $x49814248 $y49914249 $y49914249))))

; loop term $main_sum144
(assert
  (forall (($n49714251 Int) ($x49814252 Int) ($y49914253 Int) ($z50014254 Int))
    (=> (and (not (> $z50014254 0)))
        ($main_sum144 $n49714251 $x49814252 $y49914253 $z50014254 $n49714251 $x49814252 $y49914253 $z50014254))))

; forwards $main_inv144
(assert
  (forall (($n49714251 Int) ($x49814252 Int) ($y49914253 Int) ($z50014254 Int))
    (=> (and (> $z50014254 0)
             ($main_inv144 $n49714251 $x49814252 $y49914253 $z50014254))
        ($main_inv144 $n49714251 (+ $x49814252 1) $y49914253 (- $z50014254 1)))))

; backwards $main_sum144
(assert
  (forall (($x49814252 Int) ($n49714251 Int) ($x49814256 Int) ($z50014258 Int) ($z50014254 Int) ($n49714255 Int) ($y49914253 Int) ($y49914257 Int))
    (=> (and ($main_sum144 $n49714251 (+ $x49814252 1) $y49914253 (- $z50014254 1) $n49714255 $x49814256 $y49914257 $z50014258)
             (> $z50014254 0))
        ($main_sum144 $n49714251 $x49814252 $y49914253 $z50014254 $n49714255 $x49814256 $y49914257 $z50014258))))

; loop entry $main_inv145
(assert
  (forall (($z500 Int) ($x49814260 Int) ($y499 Int) ($y49914261 Int) ($uint14238 Int) ($n49714247 Int) ($z50014262 Int) ($n49714259 Int) ($n497 Int) ($y49914249 Int) ($z50014250 Int) ($x49814248 Int) ($x498 Int))
    (=> (and ($main_sum144 $n49714247 $x49814248 $y49914249 $y49914249 $n49714259 $x49814260 $y49914261 $z50014262)
             ($main_sum143 $n497 $x498 $y499 $z500 $n49714247 $x49814248 $y49914249 $z50014250)
             (= $y499 0)
             (= $x498 $n497)
             (= $n497 $uint14238)
             (<= 0 $uint14238)
             (<= $uint14238 4294967295))
        ($main_inv145 $n49714259 $x49814260 $y49914261 $z50014262))))

; loop term $main_sum145
(assert
  (forall (($n49714263 Int) ($x49814264 Int) ($y49914265 Int) ($z50014266 Int))
    (=> (and (not (> $y49914265 0)))
        ($main_sum145 $n49714263 $x49814264 $y49914265 $z50014266 $n49714263 $x49814264 $y49914265 $z50014266))))

; forwards $main_inv145
(assert
  (forall (($n49714263 Int) ($x49814264 Int) ($y49914265 Int) ($z50014266 Int))
    (=> (and (> $y49914265 0)
             ($main_inv145 $n49714263 $x49814264 $y49914265 $z50014266))
        ($main_inv145 $n49714263 (- $x49814264 1) (- $y49914265 1) $z50014266))))

; backwards $main_sum145
(assert
  (forall (($z50014270 Int) ($x49814264 Int) ($n49714267 Int) ($y49914269 Int) ($y49914265 Int) ($x49814268 Int) ($z50014266 Int) ($n49714263 Int))
    (=> (and ($main_sum145 $n49714263 (- $x49814264 1) (- $y49914265 1) $z50014266 $n49714267 $x49814268 $y49914269 $z50014270)
             (> $y49914265 0))
        ($main_sum145 $n49714263 $x49814264 $y49914265 $z50014266 $n49714267 $x49814268 $y49914269 $z50014270))))

; __VERIFIER_assert precondition
(assert
  (forall (($z500 Int) ($x49814260 Int) ($y499 Int) ($y49914273 Int) ($uint14238 Int) ($n49714247 Int) ($n49714259 Int) ($n497 Int) ($z50014274 Int) ($y49914249 Int) ($z50014250 Int) ($y49914261 Int) ($n49714271 Int) ($z50014262 Int) ($x49814272 Int) ($x49814248 Int) ($x498 Int))
    (=> (and ($main_sum145 $n49714259 $x49814260 $y49914261 $z50014262 $n49714271 $x49814272 $y49914273 $z50014274)
             ($main_sum144 $n49714247 $x49814248 $y49914249 $y49914249 $n49714259 $x49814260 $y49914261 $z50014262)
             ($main_sum143 $n497 $x498 $y499 $z500 $n49714247 $x49814248 $y49914249 $z50014250)
             (= $y499 0)
             (= $x498 $n497)
             (= $n497 $uint14238)
             (<= 0 $uint14238)
             (<= $uint14238 4294967295))
        ($__VERIFIER_assert_pre (ite (= $x49814272 0) 1 0)))))

(check-sat)
