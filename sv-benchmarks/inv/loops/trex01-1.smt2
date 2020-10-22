(set-logic HORN)

(declare-fun $f_sum270 (Int Int Int Int Int Int) Bool)
(declare-fun $f_inv271 (Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_nondet_bool_pre () Bool)
(declare-fun $f_L1 (Int Int Int Int Int Int) Bool)
(declare-fun $f_pre (Int) Bool)
(declare-fun $f_P1 (Int Int Int Int Int Int) Bool)
(declare-fun $main_if705 (Int) Bool)
(declare-fun $f_sum271 (Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_nondet_bool (Int) Bool)
(declare-fun $f_if704 (Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $f_L2 (Int Int Int Int Int Int) Bool)
(declare-fun $f_inv270 (Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if702 (Int) Bool)
(declare-fun $f_if703 (Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun f (Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond15229 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15229))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if702 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond15230 Int))
    (=> (and ($__VERIFIER_assert_if702 cond15230))
        (__VERIFIER_assert cond15230))))

; post f
(assert
  (forall (($y748 Int) ($x747 Int) ($k749 Int) ($int15232 Int) ($z750 Int) (d Int) ($int15231 Int) ($int15233 Int))
    (=> (and (not (<= $k749 1073741823))
             (= $z750 1)
             (= $k749 $int15233)
             (<= (- 2147483648) $int15233)
             (<= $int15233 2147483647)
             (= $y748 $int15232)
             (<= (- 2147483648) $int15232)
             (<= $int15232 2147483647)
             (= $x747 $int15231)
             (<= (- 2147483648) $int15231)
             (<= $int15231 2147483647)
             ($f_pre d))
        (f d))))

; if else
(assert
  (forall (($y748 Int) ($x747 Int) ($k749 Int) ($c751 Int) ($int15232 Int) ($z750 Int) (d Int) ($int15231 Int) ($int15233 Int))
    (=> (and (<= $k749 1073741823)
             (= $z750 1)
             (= $k749 $int15233)
             (<= (- 2147483648) $int15233)
             (<= $int15233 2147483647)
             (= $y748 $int15232)
             (<= (- 2147483648) $int15232)
             (<= $int15232 2147483647)
             (= $x747 $int15231)
             (<= (- 2147483648) $int15231)
             (<= $int15231 2147483647)
             ($f_pre d))
        ($f_if703 d $x747 $y748 $k749 $z750 $c751))))

; label L1
(assert
  (forall (($c75115239 Int) (d15234 Int) ($k74915237 Int) ($y74815236 Int) ($z75015238 Int) ($x74715235 Int))
    (=> (and ($f_if703 d15234 $x74715235 $y74815236 $k74915237 $z75015238 $c75115239))
        ($f_L1 d15234 $x74715235 $y74815236 $k74915237 $z75015238 $c75115239))))

; loop entry $f_inv270
(assert
  (forall (($z75015244 Int) ($x74715241 Int) ($k74915243 Int) ($y74815242 Int) ($c75115245 Int) (d15240 Int))
    (=> (and ($f_L1 d15240 $x74715241 $y74815242 $k74915243 $z75015244 $c75115245))
        ($f_inv270 d15240 $x74715241 $y74815242 $k74915243 $z75015244 $c75115245))))

; loop term $f_sum270
(assert
  (forall (($k74915249 Int) ($z75015250 Int) ($y74815248 Int) ($c75115251 Int) (d15246 Int) ($x74715247 Int))
    (=> (and (not (< $z75015250 $k74915249))
             ($f_inv270 d15246 $x74715247 $y74815248 $k74915249 $z75015250 $c75115251))
        ($f_sum270 d15246 $x74715247 $y74815248 $k74915249 $z75015250 $c75115251))))

; forwards $f_inv270
(assert
  (forall (($k74915249 Int) ($z75015250 Int) ($y74815248 Int) ($c75115251 Int) (d15246 Int) ($x74715247 Int))
    (=> (and (< $z75015250 $k74915249)
             ($f_inv270 d15246 $x74715247 $y74815248 $k74915249 $z75015250 $c75115251))
        ($f_inv270 d15246 $x74715247 $y74815248 $k74915249 (* 2 $z75015250) $c75115251))))

; __VERIFIER_assert precondition
(assert
  (forall (($c75115257 Int) ($x74715253 Int) ($k74915255 Int) (d15252 Int) ($z75015256 Int) ($y74815254 Int))
    (=> (and ($f_sum270 d15252 $x74715253 $y74815254 $k74915255 $z75015256 $c75115257))
        ($__VERIFIER_assert_pre (ite (>= $z75015256 2) 1 0)))))

; label L2
(assert
  (forall (($c75115257 Int) ($x74715253 Int) ($k74915255 Int) (d15252 Int) ($z75015256 Int) ($y74815254 Int))
    (=> (and (__VERIFIER_assert (ite (>= $z75015256 2) 1 0))
             ($f_sum270 d15252 $x74715253 $y74815254 $k74915255 $z75015256 $c75115257))
        ($f_L2 d15252 $x74715253 $y74815254 $k74915255 $z75015256 $c75115257))))

; loop entry $f_inv271
(assert
  (forall (($k74915261 Int) ($x74715259 Int) ($y74815260 Int) ($z75015262 Int) (d15258 Int) ($c75115263 Int))
    (=> (and ($f_L2 d15258 $x74715259 $y74815260 $k74915261 $z75015262 $c75115263))
        ($f_inv271 d15258 $x74715259 $y74815260 $k74915261 $z75015262 $c75115263))))

; loop term $f_sum271
(assert
  (forall (($x74715265 Int) ($k74915267 Int) ($y74815266 Int) (d15264 Int) ($c75115269 Int) ($z75015268 Int))
    (=> (and (not (and (> $x74715265 0) (> $y74815266 0)))
             ($f_inv271 d15264 $x74715265 $y74815266 $k74915267 $z75015268 $c75115269))
        ($f_sum271 d15264 $x74715265 $y74815266 $k74915267 $z75015268 $c75115269))))

; label P1
(assert
  (forall (($x74715265 Int) ($bool15270 Int) ($k74915267 Int) ($y74815266 Int) (d15264 Int) ($c75115269 Int) ($z75015268 Int))
    (=> (and (not (= $c75115269 0))
             (= $c75115269 $bool15270)
             (or (= $bool15270 0) (= $bool15270 1))
             (> $x74715265 0)
             (> $y74815266 0)
             ($f_inv271 d15264 $x74715265 $y74815266 $k74915267 $z75015268 $c75115269))
        ($f_P1 d15264 $x74715265 $y74815266 $k74915267 $z75015268 $c75115269))))

; if then
(assert
  (forall (($y74815273 Int) (d15271 Int) ($z75015275 Int) ($c75115276 Int) ($k74915274 Int) ($x74715272 Int) ($bool15277 Int))
    (=> (and (or (= $bool15277 0) (= $bool15277 1))
             ($f_P1 d15271 $x74715272 $y74815273 $k74915274 $z75015275 $c75115276))
        ($f_if704 d15271 (- $x74715272 d15271) $bool15277 $k74915274 (- $z75015275 1) $c75115276))))

; if else
(assert
  (forall (($x74715265 Int) ($bool15270 Int) ($k74915267 Int) ($y74815266 Int) (d15264 Int) ($c75115269 Int) ($z75015268 Int))
    (=> (and (= $c75115269 0)
             (= $c75115269 $bool15270)
             (or (= $bool15270 0) (= $bool15270 1))
             (> $x74715265 0)
             (> $y74815266 0)
             ($f_inv271 d15264 $x74715265 $y74815266 $k74915267 $z75015268 $c75115269))
        ($f_if704 d15264 $x74715265 (- $y74815266 d15264) $k74915267 $z75015268 $c75115269))))

; forwards $f_inv271
(assert
  (forall (($z75015282 Int) ($k74915281 Int) ($x74715279 Int) ($y74815280 Int) ($c75115283 Int) (d15278 Int))
    (=> (and ($f_if704 d15278 $x74715279 $y74815280 $k74915281 $z75015282 $c75115283))
        ($f_inv271 d15278 $x74715279 $y74815280 $k74915281 $z75015282 $c75115283))))

; post f
(assert
  (forall (($k74915287 Int) ($c75115289 Int) ($z75015288 Int) ($y74815286 Int) ($x74715285 Int) (d15284 Int))
    (=> (and ($f_sum271 d15284 $x74715285 $y74815286 $k74915287 $z75015288 $c75115289))
        (f d15284))))

; f precondition
(assert
  (forall (($c752 Int) ($bool15290 Int))
    (=> (and (not (= $c752 0))
             (= $c752 $bool15290)
             (or (= $bool15290 0) (= $bool15290 1)))
        ($f_pre 1))))

; f precondition
(assert
  (forall (($c752 Int) ($bool15290 Int))
    (=> (and (= $c752 0)
             (= $c752 $bool15290)
             (or (= $bool15290 0) (= $bool15290 1)))
        ($f_pre 2))))

; if then
(assert
  (forall (($c752 Int) ($bool15290 Int))
    (=> (and (f 1)
             (not (= $c752 0))
             (= $c752 $bool15290)
             (or (= $bool15290 0) (= $bool15290 1)))
        ($main_if705 $c752))))

; if else
(assert
  (forall (($c752 Int) ($bool15290 Int))
    (=> (and (f 2)
             (= $c752 0)
             (= $c752 $bool15290)
             (or (= $bool15290 0) (= $bool15290 1)))
        ($main_if705 $c752))))

(check-sat)
