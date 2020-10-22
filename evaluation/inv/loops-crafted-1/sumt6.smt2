(set-logic HORN)

(declare-fun $main_if626 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_if629 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if623 (Int) Bool)
(declare-fun $main_if624 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum221 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if628 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_if622 (Int) Bool)
(declare-fun $main_if625 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_if627 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv221 (Int Int Int Int Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if622 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond14168 Int))
    (=> (and ($assume_abort_if_not_if622 cond14168))
        (assume_abort_if_not cond14168))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond14169 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond14169))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if623 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14170 Int))
    (=> (and ($__VERIFIER_assert_if623 cond14170))
        (__VERIFIER_assert cond14170))))

; if else
(assert
  (forall (($v2619 Int) ($k616 Int) ($l618 Int) ($i615 Int) ($n614 Int) ($v3620 Int) ($j617 Int) ($int14172 Int) ($v4621 Int))
    (=> (and (<= $int14172 20000001)
             (<= (- 2147483648) $int14172)
             (<= $int14172 2147483647)
             (= $v4621 0)
             (= $v3620 0)
             (= $v2619 0)
             (= $l618 0)
             (= $j617 0)
             (= $k616 0)
             (= $i615 0)
             (= $n614 0))
        ($main_if624 $int14172 $i615 $k616 $j617 $l618 $v2619 $v3620 $v4621))))

; loop entry $main_inv221
(assert
  (forall (($v462114180 Int) ($l61814177 Int) ($v362014179 Int) ($k61614175 Int) ($v261914178 Int) ($n61414173 Int) ($j61714176 Int) ($i61514174 Int))
    (=> (and ($main_if624 $n61414173 $i61514174 $k61614175 $j61714176 $l61814177 $v261914178 $v362014179 $v462114180))
        ($main_inv221 $n61414173 $i61514174 $k61614175 $j61714176 $l61814177 $v261914178 $v362014179 $v462114180))))

; loop term $main_sum221
(assert
  (forall (($i61514182 Int) ($v261914186 Int) ($v362014187 Int) ($l61814185 Int) ($j61714184 Int) ($n61414181 Int) ($v462114188 Int) ($k61614183 Int))
    (=> (and (not (< $l61814185 $n61414181))
             ($main_inv221 $n61414181 $i61514182 $k61614183 $j61714184 $l61814185 $v261914186 $v362014187 $v462114188))
        ($main_sum221 $n61414181 $i61514182 $k61614183 $j61714184 $l61814185 $v261914186 $v362014187 $v462114188))))

; if then
(assert
  (forall (($i61514182 Int) ($v261914186 Int) ($v362014187 Int) ($l61814185 Int) ($j61714184 Int) ($n61414181 Int) ($v462114188 Int) ($k61614183 Int))
    (=> (and (= (mod $l61814185 2) 0)
             (not (= (mod $l61814185 3) 0))
             (not (= (mod $l61814185 4) 0))
             (not (= (mod $l61814185 5) 0))
             (not (= (mod $l61814185 6) 0))
             (< $l61814185 $n61414181)
             ($main_inv221 $n61414181 $i61514182 $k61614183 $j61714184 $l61814185 $v261914186 $v362014187 $v462114188))
        ($main_if625 $n61414181 $i61514182 $k61614183 (+ $j61714184 1) $l61814185 $v261914186 $v362014187 $v462114188))))

; if else
(assert
  (forall (($i61514182 Int) ($v261914186 Int) ($v362014187 Int) ($l61814185 Int) ($j61714184 Int) ($n61414181 Int) ($v462114188 Int) ($k61614183 Int))
    (=> (and (not (= (mod $l61814185 2) 0))
             (not (= (mod $l61814185 3) 0))
             (not (= (mod $l61814185 4) 0))
             (not (= (mod $l61814185 5) 0))
             (not (= (mod $l61814185 6) 0))
             (< $l61814185 $n61414181)
             ($main_inv221 $n61414181 $i61514182 $k61614183 $j61714184 $l61814185 $v261914186 $v362014187 $v462114188))
        ($main_if625 $n61414181 $i61514182 (+ $k61614183 1) $j61714184 $l61814185 $v261914186 $v362014187 $v462114188))))

; if then
(assert
  (forall (($i61514182 Int) ($v261914186 Int) ($v362014187 Int) ($l61814185 Int) ($j61714184 Int) ($n61414181 Int) ($v462114188 Int) ($k61614183 Int))
    (=> (and (= (mod $l61814185 3) 0)
             (not (= (mod $l61814185 4) 0))
             (not (= (mod $l61814185 5) 0))
             (not (= (mod $l61814185 6) 0))
             (< $l61814185 $n61414181)
             ($main_inv221 $n61414181 $i61514182 $k61614183 $j61714184 $l61814185 $v261914186 $v362014187 $v462114188))
        ($main_if626 $n61414181 (+ $i61514182 1) $k61614183 $j61714184 $l61814185 $v261914186 $v362014187 $v462114188))))

; if else
(assert
  (forall (($v362014195 Int) ($n61414189 Int) ($l61814193 Int) ($v462114196 Int) ($v261914194 Int) ($i61514190 Int) ($j61714192 Int) ($k61614191 Int))
    (=> (and ($main_if625 $n61414189 $i61514190 $k61614191 $j61714192 $l61814193 $v261914194 $v362014195 $v462114196))
        ($main_if626 $n61414189 $i61514190 $k61614191 $j61714192 $l61814193 $v261914194 $v362014195 $v462114196))))

; if then
(assert
  (forall (($i61514182 Int) ($v261914186 Int) ($v362014187 Int) ($l61814185 Int) ($j61714184 Int) ($n61414181 Int) ($v462114188 Int) ($k61614183 Int))
    (=> (and (= (mod $l61814185 4) 0)
             (not (= (mod $l61814185 5) 0))
             (not (= (mod $l61814185 6) 0))
             (< $l61814185 $n61414181)
             ($main_inv221 $n61414181 $i61514182 $k61614183 $j61714184 $l61814185 $v261914186 $v362014187 $v462114188))
        ($main_if627 $n61414181 $i61514182 $k61614183 $j61714184 $l61814185 $v261914186 $v362014187 (+ $v462114188 1)))))

; if else
(assert
  (forall (($v462114204 Int) ($j61714200 Int) ($v362014203 Int) ($n61414197 Int) ($i61514198 Int) ($l61814201 Int) ($k61614199 Int) ($v261914202 Int))
    (=> (and ($main_if626 $n61414197 $i61514198 $k61614199 $j61714200 $l61814201 $v261914202 $v362014203 $v462114204))
        ($main_if627 $n61414197 $i61514198 $k61614199 $j61714200 $l61814201 $v261914202 $v362014203 $v462114204))))

; if then
(assert
  (forall (($i61514182 Int) ($v261914186 Int) ($v362014187 Int) ($l61814185 Int) ($j61714184 Int) ($n61414181 Int) ($v462114188 Int) ($k61614183 Int))
    (=> (and (= (mod $l61814185 5) 0)
             (not (= (mod $l61814185 6) 0))
             (< $l61814185 $n61414181)
             ($main_inv221 $n61414181 $i61514182 $k61614183 $j61714184 $l61814185 $v261914186 $v362014187 $v462114188))
        ($main_if628 $n61414181 $i61514182 $k61614183 $j61714184 $l61814185 $v261914186 (+ $v362014187 1) $v462114188))))

; if else
(assert
  (forall (($i61514206 Int) ($k61614207 Int) ($v362014211 Int) ($v462114212 Int) ($v261914210 Int) ($l61814209 Int) ($j61714208 Int) ($n61414205 Int))
    (=> (and ($main_if627 $n61414205 $i61514206 $k61614207 $j61714208 $l61814209 $v261914210 $v362014211 $v462114212))
        ($main_if628 $n61414205 $i61514206 $k61614207 $j61714208 $l61814209 $v261914210 $v362014211 $v462114212))))

; if then
(assert
  (forall (($i61514182 Int) ($v261914186 Int) ($v362014187 Int) ($l61814185 Int) ($j61714184 Int) ($n61414181 Int) ($v462114188 Int) ($k61614183 Int))
    (=> (and (= (mod $l61814185 6) 0)
             (< $l61814185 $n61414181)
             ($main_inv221 $n61414181 $i61514182 $k61614183 $j61714184 $l61814185 $v261914186 $v362014187 $v462114188))
        ($main_if629 $n61414181 $i61514182 $k61614183 $j61714184 $l61814185 (+ $v261914186 1) $v362014187 $v462114188))))

; if else
(assert
  (forall (($v462114220 Int) ($i61514214 Int) ($n61414213 Int) ($k61614215 Int) ($l61814217 Int) ($v261914218 Int) ($j61714216 Int) ($v362014219 Int))
    (=> (and ($main_if628 $n61414213 $i61514214 $k61614215 $j61714216 $l61814217 $v261914218 $v362014219 $v462114220))
        ($main_if629 $n61414213 $i61514214 $k61614215 $j61714216 $l61814217 $v261914218 $v362014219 $v462114220))))

; forwards $main_inv221
(assert
  (forall (($l61814225 Int) ($v261914226 Int) ($j61714224 Int) ($v362014227 Int) ($k61614223 Int) ($n61414221 Int) ($i61514222 Int) ($v462114228 Int))
    (=> (and ($main_if629 $n61414221 $i61514222 $k61614223 $j61714224 $l61814225 $v261914226 $v362014227 $v462114228))
        ($main_inv221 $n61414221 $i61514222 $k61614223 $j61714224 (+ $l61814225 1) $v261914226 $v362014227 $v462114228))))

; __VERIFIER_assert precondition
(assert
  (forall (($k61614231 Int) ($l61814233 Int) ($n61414229 Int) ($v462114236 Int) ($j61714232 Int) ($v261914234 Int) ($i61514230 Int) ($v362014235 Int))
    (=> (and ($main_sum221 $n61414229 $i61514230 $k61614231 $j61714232 $l61814233 $v261914234 $v362014235 $v462114236))
        ($__VERIFIER_assert_pre (ite (= (+ (+ (+ (+ (+ $i61514230 $j61714232) $k61614231) $v462114236) $v362014235) $v261914234) $l61814233) 1 0)))))

(check-sat)
