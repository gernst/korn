(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv286 (Int Int Int Int Int Int) Bool)
(declare-fun $main_sum286 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_if749 (Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_if753 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_if752 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv287 (Int Int Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_if751 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if750 (Int Int) Bool)
(declare-fun $main_sum287 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if749 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond17238 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if749 cond cond17238))
        (assume_abort_if_not cond17238))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond17239 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond17239))
        false)))

; if then
(assert
  (forall ((cond Int) (cond17239 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond17239))
        ($__VERIFIER_assert_if750 cond cond17239))))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if750 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond17240 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if750 cond cond17240))
        (__VERIFIER_assert cond17240))))

; loop entry $main_inv286
(assert
  (forall (($int17241 Int))
    (=> (and (<= (- 2147483648) $int17241)
             (<= $int17241 2147483647))
        ($main_inv286 $int17241 1 $int17241 1 1 0))))

; loop term $main_sum286
(assert
  (forall (($q82817247 Int) ($B82417243 Int) ($d82617245 Int) ($p82717246 Int) ($r82517244 Int) ($A82317242 Int))
    (=> (and (= 1 0))
        ($main_sum286 $A82317242 $B82417243 $r82517244 $d82617245 $p82717246 $q82817247 $A82317242 $B82417243 $r82517244 $d82617245 $p82717246 $q82817247))))

; __VERIFIER_assert precondition
(assert
  (forall (($q82817247 Int) ($B82417243 Int) ($d82617245 Int) ($p82717246 Int) ($r82517244 Int) ($A82317242 Int))
    (=> (and (not (= 1 0))
             ($main_inv286 $A82317242 $B82417243 $r82517244 $d82617245 $p82717246 $q82817247))
        ($__VERIFIER_assert_pre (ite (= $q82817247 0) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($q82817247 Int) ($B82417243 Int) ($d82617245 Int) ($p82717246 Int) ($r82517244 Int) ($A82317242 Int))
    (=> (and (__VERIFIER_assert (ite (= $q82817247 0) 1 0))
             (not (= 1 0))
             ($main_inv286 $A82317242 $B82417243 $r82517244 $d82617245 $p82717246 $q82817247))
        ($__VERIFIER_assert_pre (ite (= $r82517244 $A82317242) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($q82817247 Int) ($B82417243 Int) ($d82617245 Int) ($p82717246 Int) ($r82517244 Int) ($A82317242 Int))
    (=> (and (__VERIFIER_assert (ite (= $r82517244 $A82317242) 1 0))
             (__VERIFIER_assert (ite (= $q82817247 0) 1 0))
             (not (= 1 0))
             ($main_inv286 $A82317242 $B82417243 $r82517244 $d82617245 $p82717246 $q82817247))
        ($__VERIFIER_assert_pre (ite (= $d82617245 (* $B82417243 $p82717246)) 1 0)))))

; break $main_sum286
(assert
  (forall (($q82817247 Int) ($B82417243 Int) ($d82617245 Int) ($p82717246 Int) ($r82517244 Int) ($A82317242 Int))
    (=> (and (not (>= $r82517244 $d82617245))
             (__VERIFIER_assert (ite (= $d82617245 (* $B82417243 $p82717246)) 1 0))
             (__VERIFIER_assert (ite (= $r82517244 $A82317242) 1 0))
             (__VERIFIER_assert (ite (= $q82817247 0) 1 0))
             (not (= 1 0))
             ($main_inv286 $A82317242 $B82417243 $r82517244 $d82617245 $p82717246 $q82817247))
        ($main_sum286 $A82317242 $B82417243 $r82517244 $d82617245 $p82717246 $q82817247 $A82317242 $B82417243 $r82517244 $d82617245 $p82717246 $q82817247))))

; if else
(assert
  (forall (($q82817247 Int) ($B82417243 Int) ($d82617245 Int) ($p82717246 Int) ($r82517244 Int) ($A82317242 Int))
    (=> (and (>= $r82517244 $d82617245)
             (__VERIFIER_assert (ite (= $d82617245 (* $B82417243 $p82717246)) 1 0))
             (__VERIFIER_assert (ite (= $r82517244 $A82317242) 1 0))
             (__VERIFIER_assert (ite (= $q82817247 0) 1 0))
             (not (= 1 0))
             ($main_inv286 $A82317242 $B82417243 $r82517244 $d82617245 $p82717246 $q82817247))
        ($main_if751 $A82317242 $B82417243 $r82517244 $d82617245 $p82717246 $q82817247 $A82317242 $B82417243 $r82517244 $d82617245 $p82717246 $q82817247))))

; forwards $main_inv286
(assert
  (forall (($q82817247 Int) ($p82717252 Int) ($r82517250 Int) ($B82417249 Int) ($d82617245 Int) ($p82717246 Int) ($r82517244 Int) ($A82317242 Int) ($d82617251 Int) ($A82317248 Int) ($q82817253 Int) ($B82417243 Int))
    (=> (and ($main_if751 $A82317242 $B82417243 $r82517244 $d82617245 $p82717246 $q82817247 $A82317248 $B82417249 $r82517250 $d82617251 $p82717252 $q82817253))
        ($main_inv286 $A82317248 $B82417249 $r82517250 (* 2 $d82617251) (* 2 $p82717252) $q82817253))))

; backwards $main_sum286
(assert
  (forall (($p82717252 Int) ($r82517250 Int) ($p82717246 Int) ($q82817247 Int) ($A82317254 Int) ($r82517244 Int) ($A82317242 Int) ($d82617251 Int) ($A82317248 Int) ($q82817253 Int) ($B82417243 Int) ($r82517256 Int) ($B82417249 Int) ($d82617257 Int) ($d82617245 Int) ($q82817259 Int) ($B82417255 Int) ($p82717258 Int))
    (=> (and ($main_sum286 $A82317248 $B82417249 $r82517250 (* 2 $d82617251) (* 2 $p82717252) $q82817253 $A82317254 $B82417255 $r82517256 $d82617257 $p82717258 $q82817259)
             ($main_if751 $A82317242 $B82417243 $r82517244 $d82617245 $p82717246 $q82817247 $A82317248 $B82417249 $r82517250 $d82617251 $p82717252 $q82817253))
        ($main_sum286 $A82317242 $B82417243 $r82517244 $d82617245 $p82717246 $q82817247 $A82317254 $B82417255 $r82517256 $d82617257 $p82717258 $q82817259))))

; loop entry $main_inv287
(assert
  (forall (($A82317260 Int) ($r82517262 Int) ($B82417261 Int) ($int17241 Int) ($d82617263 Int) ($p82717264 Int) ($q82817265 Int))
    (=> (and ($main_sum286 $int17241 1 $int17241 1 1 0 $A82317260 $B82417261 $r82517262 $d82617263 $p82717264 $q82817265)
             (<= (- 2147483648) $int17241)
             (<= $int17241 2147483647))
        ($main_inv287 $A82317260 $B82417261 $r82517262 $d82617263 $p82717264 $q82817265))))

; loop term $main_sum287
(assert
  (forall (($d82617269 Int) ($r82517268 Int) ($q82817271 Int) ($p82717270 Int) ($A82317266 Int) ($B82417267 Int))
    (=> (and (= 1 0))
        ($main_sum287 $A82317266 $B82417267 $r82517268 $d82617269 $p82717270 $q82817271 $A82317266 $B82417267 $r82517268 $d82617269 $p82717270 $q82817271))))

; __VERIFIER_assert precondition
(assert
  (forall (($d82617269 Int) ($r82517268 Int) ($q82817271 Int) ($p82717270 Int) ($A82317266 Int) ($B82417267 Int))
    (=> (and (not (= 1 0))
             ($main_inv287 $A82317266 $B82417267 $r82517268 $d82617269 $p82717270 $q82817271))
        ($__VERIFIER_assert_pre (ite (= $A82317266 (+ (* $q82817271 $B82417267) $r82517268)) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($d82617269 Int) ($r82517268 Int) ($q82817271 Int) ($p82717270 Int) ($A82317266 Int) ($B82417267 Int))
    (=> (and (__VERIFIER_assert (ite (= $A82317266 (+ (* $q82817271 $B82417267) $r82517268)) 1 0))
             (not (= 1 0))
             ($main_inv287 $A82317266 $B82417267 $r82517268 $d82617269 $p82717270 $q82817271))
        ($__VERIFIER_assert_pre (ite (= $d82617269 (* $B82417267 $p82717270)) 1 0)))))

; break $main_sum287
(assert
  (forall (($d82617269 Int) ($r82517268 Int) ($q82817271 Int) ($p82717270 Int) ($A82317266 Int) ($B82417267 Int))
    (=> (and (= $p82717270 1)
             (__VERIFIER_assert (ite (= $d82617269 (* $B82417267 $p82717270)) 1 0))
             (__VERIFIER_assert (ite (= $A82317266 (+ (* $q82817271 $B82417267) $r82517268)) 1 0))
             (not (= 1 0))
             ($main_inv287 $A82317266 $B82417267 $r82517268 $d82617269 $p82717270 $q82817271))
        ($main_sum287 $A82317266 $B82417267 $r82517268 $d82617269 $p82717270 $q82817271 $A82317266 $B82417267 $r82517268 $d82617269 $p82717270 $q82817271))))

; if else
(assert
  (forall (($d82617269 Int) ($r82517268 Int) ($q82817271 Int) ($p82717270 Int) ($A82317266 Int) ($B82417267 Int))
    (=> (and (not (= $p82717270 1))
             (__VERIFIER_assert (ite (= $d82617269 (* $B82417267 $p82717270)) 1 0))
             (__VERIFIER_assert (ite (= $A82317266 (+ (* $q82817271 $B82417267) $r82517268)) 1 0))
             (not (= 1 0))
             ($main_inv287 $A82317266 $B82417267 $r82517268 $d82617269 $p82717270 $q82817271))
        ($main_if752 $A82317266 $B82417267 $r82517268 $d82617269 $p82717270 $q82817271 $A82317266 $B82417267 $r82517268 $d82617269 $p82717270 $q82817271))))

; if then
(assert
  (forall (($q82817271 Int) ($p82717270 Int) ($p82717276 Int) ($q82817277 Int) ($B82417267 Int) ($r82517274 Int) ($d82617269 Int) ($A82317272 Int) ($r82517268 Int) ($B82417273 Int) ($A82317266 Int) ($d82617275 Int))
    (=> (and (>= $r82517274 (div $d82617275 2))
             ($main_if752 $A82317266 $B82417267 $r82517268 $d82617269 $p82717270 $q82817271 $A82317272 $B82417273 $r82517274 $d82617275 $p82717276 $q82817277))
        ($main_if753 $A82317266 $B82417267 $r82517268 $d82617269 $p82717270 $q82817271 $A82317272 $B82417273 (- $r82517274 (div $d82617275 2)) (div $d82617275 2) (div $p82717276 2) (+ $q82817277 (div $p82717276 2))))))

; if else
(assert
  (forall (($q82817271 Int) ($p82717270 Int) ($p82717276 Int) ($q82817277 Int) ($B82417267 Int) ($r82517274 Int) ($d82617269 Int) ($A82317272 Int) ($r82517268 Int) ($B82417273 Int) ($A82317266 Int) ($d82617275 Int))
    (=> (and (not (>= $r82517274 (div $d82617275 2)))
             ($main_if752 $A82317266 $B82417267 $r82517268 $d82617269 $p82717270 $q82817271 $A82317272 $B82417273 $r82517274 $d82617275 $p82717276 $q82817277))
        ($main_if753 $A82317266 $B82417267 $r82517268 $d82617269 $p82717270 $q82817271 $A82317272 $B82417273 $r82517274 (div $d82617275 2) (div $p82717276 2) $q82817277))))

; forwards $main_inv287
(assert
  (forall (($d82617269 Int) ($r82517268 Int) ($q82817271 Int) ($p82717270 Int) ($r82517280 Int) ($B82417279 Int) ($A82317266 Int) ($A82317278 Int) ($p82717282 Int) ($B82417267 Int) ($d82617281 Int) ($q82817283 Int))
    (=> (and ($main_if753 $A82317266 $B82417267 $r82517268 $d82617269 $p82717270 $q82817271 $A82317278 $B82417279 $r82517280 $d82617281 $p82717282 $q82817283))
        ($main_inv287 $A82317278 $B82417279 $r82517280 $d82617281 $p82717282 $q82817283))))

; backwards $main_sum287
(assert
  (forall (($d82617269 Int) ($d82617287 Int) ($B82417285 Int) ($A82317284 Int) ($q82817271 Int) ($r82517280 Int) ($B82417279 Int) ($A82317266 Int) ($p82717282 Int) ($B82417267 Int) ($r82517268 Int) ($r82517286 Int) ($q82817289 Int) ($p82717270 Int) ($p82717288 Int) ($A82317278 Int) ($d82617281 Int) ($q82817283 Int))
    (=> (and ($main_sum287 $A82317278 $B82417279 $r82517280 $d82617281 $p82717282 $q82817283 $A82317284 $B82417285 $r82517286 $d82617287 $p82717288 $q82817289)
             ($main_if753 $A82317266 $B82417267 $r82517268 $d82617269 $p82717270 $q82817271 $A82317278 $B82417279 $r82517280 $d82617281 $p82717282 $q82817283))
        ($main_sum287 $A82317266 $B82417267 $r82517268 $d82617269 $p82717270 $q82817271 $A82317284 $B82417285 $r82517286 $d82617287 $p82717288 $q82817289))))

; __VERIFIER_assert precondition
(assert
  (forall (($A82317260 Int) ($r82517262 Int) ($d82617293 Int) ($q82817295 Int) ($int17241 Int) ($A82317290 Int) ($B82417291 Int) ($r82517292 Int) ($B82417261 Int) ($d82617263 Int) ($p82717294 Int) ($p82717264 Int) ($q82817265 Int))
    (=> (and ($main_sum287 $A82317260 $B82417261 $r82517262 $d82617263 $p82717264 $q82817265 $A82317290 $B82417291 $r82517292 $d82617293 $p82717294 $q82817295)
             ($main_sum286 $int17241 1 $int17241 1 1 0 $A82317260 $B82417261 $r82517262 $d82617263 $p82717264 $q82817265)
             (<= (- 2147483648) $int17241)
             (<= $int17241 2147483647))
        ($__VERIFIER_assert_pre (ite (= $A82317290 (+ (* $d82617293 $q82817295) $r82517292)) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($A82317260 Int) ($r82517262 Int) ($d82617293 Int) ($q82817295 Int) ($int17241 Int) ($A82317290 Int) ($B82417291 Int) ($r82517292 Int) ($B82417261 Int) ($d82617263 Int) ($p82717294 Int) ($p82717264 Int) ($q82817265 Int))
    (=> (and (__VERIFIER_assert (ite (= $A82317290 (+ (* $d82617293 $q82817295) $r82517292)) 1 0))
             ($main_sum287 $A82317260 $B82417261 $r82517262 $d82617263 $p82717264 $q82817265 $A82317290 $B82417291 $r82517292 $d82617293 $p82717294 $q82817295)
             ($main_sum286 $int17241 1 $int17241 1 1 0 $A82317260 $B82417261 $r82517262 $d82617263 $p82717264 $q82817265)
             (<= (- 2147483648) $int17241)
             (<= $int17241 2147483647))
        ($__VERIFIER_assert_pre (ite (= $B82417291 $d82617293) 1 0)))))

(check-sat)
