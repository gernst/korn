(set-logic HORN)

(declare-fun $main_if231 (Int Int Int Int Int Int) Bool)
(declare-fun $main_if238 (Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $assume_abort_if_not_if229 (Int) Bool)
(declare-fun $main_if235 (Int Int Int Int Int Int) Bool)
(declare-fun $main_if232 (Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if230 (Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_if237 (Int Int Int Int Int Int) Bool)
(declare-fun $main_END (Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum467 (Int Int Int Int Int Int) Bool)
(declare-fun $main_if236 (Int Int Int Int Int Int) Bool)
(declare-fun $main_inv467 (Int Int Int Int Int Int) Bool)
(declare-fun $main_if234 (Int Int Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_if233 (Int Int Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if229 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond6191 Int))
    (=> (and ($assume_abort_if_not_if229 cond6191))
        (assume_abort_if_not cond6191))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond6192 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond6192))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if230 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6193 Int))
    (=> (and ($__VERIFIER_assert_if230 cond6193))
        (__VERIFIER_assert cond6193))))

; if else
(assert
  (forall (($int6196 Int) ($p611 Int) ($int6194 Int) ($bufsize_0615 Int) ($i612 Int) ($int6195 Int))
    (=> (and (< $int6194 1000000)
             (<= (- 2147483648) $int6196)
             (<= $int6196 2147483647)
             (<= (- 2147483648) $int6195)
             (<= $int6195 2147483647)
             (<= (- 2147483648) $int6194)
             (<= $int6194 2147483647))
        ($main_if231 $p611 $i612 $int6194 $int6195 $bufsize_0615 $int6196))))

; if else
(assert
  (forall (($i6126198 Int) ($bufsize6146200 Int) ($leader_len6136199 Int) ($p6116197 Int) ($bufsize_06156201 Int) ($ielen6166202 Int))
    (=> (and (< $bufsize6146200 1000000)
             ($main_if231 $p6116197 $i6126198 $leader_len6136199 $bufsize6146200 $bufsize_06156201 $ielen6166202))
        ($main_if232 $p6116197 $i6126198 $leader_len6136199 $bufsize6146200 $bufsize_06156201 $ielen6166202))))

; if else
(assert
  (forall (($ielen6166208 Int) ($bufsize_06156207 Int) ($p6116203 Int) ($i6126204 Int) ($bufsize6146206 Int) ($leader_len6136205 Int))
    (=> (and (< $ielen6166208 1000000)
             ($main_if232 $p6116203 $i6126204 $leader_len6136205 $bufsize6146206 $bufsize_06156207 $ielen6166208))
        ($main_if233 $p6116203 $i6126204 $leader_len6136205 $bufsize6146206 $bufsize_06156207 $ielen6166208))))

; goto END
(assert
  (forall (($i6126210 Int) ($p6116209 Int) ($leader_len6136211 Int) ($ielen6166214 Int) ($bufsize6146212 Int) ($bufsize_06156213 Int))
    (=> (and (not (> $leader_len6136211 0))
             ($main_if233 $p6116209 $i6126210 $leader_len6136211 $bufsize6146212 $bufsize_06156213 $ielen6166214))
        ($main_END $p6116209 $i6126210 $leader_len6136211 $bufsize6146212 $bufsize_06156213 $ielen6166214))))

; if then
(assert
  (forall (($i6126210 Int) ($p6116209 Int) ($leader_len6136211 Int) ($ielen6166214 Int) ($bufsize6146212 Int) ($bufsize_06156213 Int))
    (=> (and (> $leader_len6136211 0)
             ($main_if233 $p6116209 $i6126210 $leader_len6136211 $bufsize6146212 $bufsize_06156213 $ielen6166214))
        ($main_if234 $p6116209 $i6126210 $leader_len6136211 $bufsize6146212 $bufsize_06156213 $ielen6166214))))

; goto END
(assert
  (forall (($i6126216 Int) ($p6116215 Int) ($bufsize_06156219 Int) ($bufsize6146218 Int) ($ielen6166220 Int) ($leader_len6136217 Int))
    (=> (and (not (> $bufsize6146218 0))
             ($main_if234 $p6116215 $i6126216 $leader_len6136217 $bufsize6146218 $bufsize_06156219 $ielen6166220))
        ($main_END $p6116215 $i6126216 $leader_len6136217 $bufsize6146218 $bufsize_06156219 $ielen6166220))))

; if then
(assert
  (forall (($i6126216 Int) ($p6116215 Int) ($bufsize_06156219 Int) ($bufsize6146218 Int) ($ielen6166220 Int) ($leader_len6136217 Int))
    (=> (and (> $bufsize6146218 0)
             ($main_if234 $p6116215 $i6126216 $leader_len6136217 $bufsize6146218 $bufsize_06156219 $ielen6166220))
        ($main_if235 $p6116215 $i6126216 $leader_len6136217 $bufsize6146218 $bufsize_06156219 $ielen6166220))))

; goto END
(assert
  (forall (($i6126222 Int) ($bufsize_06156225 Int) ($ielen6166226 Int) ($leader_len6136223 Int) ($bufsize6146224 Int) ($p6116221 Int))
    (=> (and (not (> $ielen6166226 0))
             ($main_if235 $p6116221 $i6126222 $leader_len6136223 $bufsize6146224 $bufsize_06156225 $ielen6166226))
        ($main_END $p6116221 $i6126222 $leader_len6136223 $bufsize6146224 $bufsize_06156225 $ielen6166226))))

; if then
(assert
  (forall (($i6126222 Int) ($bufsize_06156225 Int) ($ielen6166226 Int) ($leader_len6136223 Int) ($bufsize6146224 Int) ($p6116221 Int))
    (=> (and (> $ielen6166226 0)
             ($main_if235 $p6116221 $i6126222 $leader_len6136223 $bufsize6146224 $bufsize_06156225 $ielen6166226))
        ($main_if236 $p6116221 $i6126222 $leader_len6136223 $bufsize6146224 $bufsize_06156225 $ielen6166226))))

; goto END
(assert
  (forall (($p6116227 Int) ($bufsize6146230 Int) ($ielen6166232 Int) ($bufsize_06156231 Int) ($leader_len6136229 Int) ($i6126228 Int))
    (=> (and (< $bufsize6146230 $leader_len6136229)
             ($main_if236 $p6116227 $i6126228 $leader_len6136229 $bufsize6146230 $bufsize_06156231 $ielen6166232))
        ($main_END $p6116227 $i6126228 $leader_len6136229 $bufsize6146230 $bufsize_06156231 $ielen6166232))))

; if else
(assert
  (forall (($p6116227 Int) ($bufsize6146230 Int) ($ielen6166232 Int) ($bufsize_06156231 Int) ($leader_len6136229 Int) ($i6126228 Int))
    (=> (and (not (< $bufsize6146230 $leader_len6136229))
             ($main_if236 $p6116227 $i6126228 $leader_len6136229 $bufsize6146230 $bufsize_06156231 $ielen6166232))
        ($main_if237 $p6116227 $i6126228 $leader_len6136229 $bufsize6146230 $bufsize_06156231 $ielen6166232))))

; goto END
(assert
  (forall (($p6116233 Int) ($i6126234 Int) ($leader_len6136235 Int) ($ielen6166238 Int) ($bufsize_06156237 Int) ($bufsize6146236 Int))
    (=> (and (< (- $bufsize6146236 $leader_len6136235) (* 2 $ielen6166238))
             ($main_if237 $p6116233 $i6126234 $leader_len6136235 $bufsize6146236 $bufsize_06156237 $ielen6166238))
        ($main_END (+ 0 $leader_len6136235) $i6126234 $leader_len6136235 (- $bufsize6146236 $leader_len6136235) $bufsize6146236 $ielen6166238))))

; if else
(assert
  (forall (($p6116233 Int) ($i6126234 Int) ($leader_len6136235 Int) ($ielen6166238 Int) ($bufsize_06156237 Int) ($bufsize6146236 Int))
    (=> (and (not (< (- $bufsize6146236 $leader_len6136235) (* 2 $ielen6166238)))
             ($main_if237 $p6116233 $i6126234 $leader_len6136235 $bufsize6146236 $bufsize_06156237 $ielen6166238))
        ($main_if238 (+ 0 $leader_len6136235) $i6126234 $leader_len6136235 (- $bufsize6146236 $leader_len6136235) $bufsize6146236 $ielen6166238))))

; loop entry $main_inv467
(assert
  (forall (($ielen6166244 Int) ($p6116239 Int) ($bufsize6146242 Int) ($i6126240 Int) ($bufsize_06156243 Int) ($leader_len6136241 Int))
    (=> (and ($main_if238 $p6116239 $i6126240 $leader_len6136241 $bufsize6146242 $bufsize_06156243 $ielen6166244))
        ($main_inv467 $p6116239 0 $leader_len6136241 $bufsize6146242 $bufsize_06156243 $ielen6166244))))

; loop term $main_sum467
(assert
  (forall (($i6126246 Int) ($leader_len6136247 Int) ($ielen6166250 Int) ($p6116245 Int) ($bufsize6146248 Int) ($bufsize_06156249 Int))
    (=> (and (not (and (< $i6126246 $ielen6166250) (> $bufsize6146248 2)))
             ($main_inv467 $p6116245 $i6126246 $leader_len6136247 $bufsize6146248 $bufsize_06156249 $ielen6166250))
        ($main_sum467 $p6116245 $i6126246 $leader_len6136247 $bufsize6146248 $bufsize_06156249 $ielen6166250))))

; __VERIFIER_assert precondition
(assert
  (forall (($i6126246 Int) ($leader_len6136247 Int) ($ielen6166250 Int) ($p6116245 Int) ($bufsize6146248 Int) ($bufsize_06156249 Int))
    (=> (and (< $i6126246 $ielen6166250)
             (> $bufsize6146248 2)
             ($main_inv467 $p6116245 $i6126246 $leader_len6136247 $bufsize6146248 $bufsize_06156249 $ielen6166250))
        ($__VERIFIER_assert_pre (ite (<= 0 $p6116245) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($i6126246 Int) ($leader_len6136247 Int) ($ielen6166250 Int) ($p6116245 Int) ($bufsize6146248 Int) ($bufsize_06156249 Int))
    (=> (and (__VERIFIER_assert (ite (<= 0 $p6116245) 1 0))
             (< $i6126246 $ielen6166250)
             (> $bufsize6146248 2)
             ($main_inv467 $p6116245 $i6126246 $leader_len6136247 $bufsize6146248 $bufsize_06156249 $ielen6166250))
        ($__VERIFIER_assert_pre (ite (< (+ $p6116245 1) $bufsize_06156249) 1 0)))))

; forwards $main_inv467
(assert
  (forall (($i6126246 Int) ($leader_len6136247 Int) ($ielen6166250 Int) ($p6116245 Int) ($bufsize6146248 Int) ($bufsize_06156249 Int))
    (=> (and (__VERIFIER_assert (ite (< (+ $p6116245 1) $bufsize_06156249) 1 0))
             (__VERIFIER_assert (ite (<= 0 $p6116245) 1 0))
             (< $i6126246 $ielen6166250)
             (> $bufsize6146248 2)
             ($main_inv467 $p6116245 $i6126246 $leader_len6136247 $bufsize6146248 $bufsize_06156249 $ielen6166250))
        ($main_inv467 (+ $p6116245 2) (+ $i6126246 1) $leader_len6136247 $bufsize6146248 $bufsize_06156249 $ielen6166250))))

; label END
(assert
  (forall (($leader_len6136253 Int) ($p6116251 Int) ($i6126252 Int) ($bufsize6146254 Int) ($ielen6166256 Int) ($bufsize_06156255 Int))
    (=> (and ($main_sum467 $p6116251 $i6126252 $leader_len6136253 $bufsize6146254 $bufsize_06156255 $ielen6166256))
        ($main_END $p6116251 $i6126252 $leader_len6136253 $bufsize6146254 $bufsize_06156255 $ielen6166256))))

(check-sat)
