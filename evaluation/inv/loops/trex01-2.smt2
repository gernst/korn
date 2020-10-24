(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $f_if388 (Int Int Int Int Int Int) Bool)
(declare-fun $f_sum531 (Int Int Int Int Int Int) Bool)
(declare-fun $f_inv531 (Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_nondet_bool (Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $f_L2 (Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun f (Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $__VERIFIER_assert_if386 (Int) Bool)
(declare-fun $__VERIFIER_nondet_bool_pre () Bool)
(declare-fun $f_L1 (Int Int Int Int Int Int) Bool)
(declare-fun $f_pre (Int) Bool)
(declare-fun $f_P1 (Int Int Int Int Int Int) Bool)
(declare-fun $f_if389 (Int Int Int Int Int Int) Bool)
(declare-fun $f_inv532 (Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_if385 (Int) Bool)
(declare-fun $f_if387 (Int Int Int Int Int Int) Bool)
(declare-fun $f_sum532 (Int Int Int Int Int Int) Bool)
(declare-fun $f_if390 (Int Int Int Int Int Int) Bool)
(declare-fun $f_if391 (Int Int Int Int Int Int) Bool)
(declare-fun $main_if392 (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if385 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond7266 Int))
    (=> (and ($assume_abort_if_not_if385 cond7266))
        (assume_abort_if_not cond7266))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond7267 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond7267))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if386 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond7268 Int))
    (=> (and ($__VERIFIER_assert_if386 cond7268))
        (__VERIFIER_assert cond7268))))

; label L1
(assert
  (forall (($y766 Int) ($int7269 Int) ($x765 Int) ($int7270 Int) ($c769 Int) ($z768 Int) ($int7271 Int) ($k767 Int) (d Int))
    (=> (and (= $z768 1)
             (= $k767 $int7271)
             (<= (- 2147483648) $int7271)
             (<= $int7271 2147483647)
             (= $y766 $int7270)
             (<= (- 2147483648) $int7270)
             (<= $int7270 2147483647)
             (= $x765 $int7269)
             (<= (- 2147483648) $int7269)
             (<= $int7269 2147483647)
             ($f_pre d))
        ($f_L1 d $x765 $y766 $k767 $z768 $c769))))

; post f
(assert
  (forall (($k7677275 Int) ($c7697277 Int) ($z7687276 Int) (d7272 Int) ($y7667274 Int) ($x7657273 Int))
    (=> (and (not (<= $k7677275 1073741823))
             ($f_L1 d7272 $x7657273 $y7667274 $k7677275 $z7687276 $c7697277))
        (f d7272))))

; if else
(assert
  (forall (($k7677275 Int) ($c7697277 Int) ($z7687276 Int) (d7272 Int) ($y7667274 Int) ($x7657273 Int))
    (=> (and (<= $k7677275 1073741823)
             ($f_L1 d7272 $x7657273 $y7667274 $k7677275 $z7687276 $c7697277))
        ($f_if387 d7272 $x7657273 $y7667274 $k7677275 $z7687276 $c7697277))))

; loop entry $f_inv531
(assert
  (forall ((d7278 Int) ($y7667280 Int) ($c7697283 Int) ($z7687282 Int) ($x7657279 Int) ($k7677281 Int))
    (=> (and ($f_if387 d7278 $x7657279 $y7667280 $k7677281 $z7687282 $c7697283))
        ($f_inv531 d7278 $x7657279 $y7667280 $k7677281 $z7687282 $c7697283))))

; loop term $f_sum531
(assert
  (forall (($k7677287 Int) (d7284 Int) ($x7657285 Int) ($z7687288 Int) ($y7667286 Int) ($c7697289 Int))
    (=> (and (not (< $z7687288 $k7677287))
             ($f_inv531 d7284 $x7657285 $y7667286 $k7677287 $z7687288 $c7697289))
        ($f_sum531 d7284 $x7657285 $y7667286 $k7677287 $z7687288 $c7697289))))

; forwards $f_inv531
(assert
  (forall (($k7677287 Int) (d7284 Int) ($x7657285 Int) ($z7687288 Int) ($y7667286 Int) ($c7697289 Int))
    (=> (and (< $z7687288 $k7677287)
             ($f_inv531 d7284 $x7657285 $y7667286 $k7677287 $z7687288 $c7697289))
        ($f_inv531 d7284 $x7657285 $y7667286 $k7677287 (* 2 $z7687288) $c7697289))))

; __VERIFIER_assert precondition
(assert
  (forall (($y7667292 Int) ($z7687294 Int) ($c7697295 Int) ($k7677293 Int) (d7290 Int) ($x7657291 Int))
    (=> (and ($f_sum531 d7290 $x7657291 $y7667292 $k7677293 $z7687294 $c7697295))
        ($__VERIFIER_assert_pre (ite (>= $z7687294 1) 1 0)))))

; label L2
(assert
  (forall (($y7667292 Int) ($z7687294 Int) ($c7697295 Int) ($k7677293 Int) (d7290 Int) ($x7657291 Int))
    (=> (and (__VERIFIER_assert (ite (>= $z7687294 1) 1 0))
             ($f_sum531 d7290 $x7657291 $y7667292 $k7677293 $z7687294 $c7697295))
        ($f_L2 d7290 $x7657291 $y7667292 $k7677293 $z7687294 $c7697295))))

; post f
(assert
  (forall (($k7677299 Int) ($x7657297 Int) ($y7667298 Int) ($z7687300 Int) ($c7697301 Int) (d7296 Int))
    (=> (and (not (and (<= $x7657297 1000000) (>= $x7657297 (- 1000000))))
             ($f_L2 d7296 $x7657297 $y7667298 $k7677299 $z7687300 $c7697301))
        (f d7296))))

; if else
(assert
  (forall (($k7677299 Int) ($x7657297 Int) ($y7667298 Int) ($z7687300 Int) ($c7697301 Int) (d7296 Int))
    (=> (and (<= $x7657297 1000000)
             (>= $x7657297 (- 1000000))
             ($f_L2 d7296 $x7657297 $y7667298 $k7677299 $z7687300 $c7697301))
        ($f_if388 d7296 $x7657297 $y7667298 $k7677299 $z7687300 $c7697301))))

; post f
(assert
  (forall (($x7657303 Int) ($y7667304 Int) ($k7677305 Int) ($c7697307 Int) ($z7687306 Int) (d7302 Int))
    (=> (and (not (and (<= $y7667304 1000000) (>= $y7667304 (- 1000000))))
             ($f_if388 d7302 $x7657303 $y7667304 $k7677305 $z7687306 $c7697307))
        (f d7302))))

; if else
(assert
  (forall (($x7657303 Int) ($y7667304 Int) ($k7677305 Int) ($c7697307 Int) ($z7687306 Int) (d7302 Int))
    (=> (and (<= $y7667304 1000000)
             (>= $y7667304 (- 1000000))
             ($f_if388 d7302 $x7657303 $y7667304 $k7677305 $z7687306 $c7697307))
        ($f_if389 d7302 $x7657303 $y7667304 $k7677305 $z7687306 $c7697307))))

; post f
(assert
  (forall (($y7667310 Int) (d7308 Int) ($k7677311 Int) ($x7657309 Int) ($c7697313 Int) ($z7687312 Int))
    (=> (and (not (and (<= $k7677311 1000000) (>= $k7677311 (- 1000000))))
             ($f_if389 d7308 $x7657309 $y7667310 $k7677311 $z7687312 $c7697313))
        (f d7308))))

; if else
(assert
  (forall (($y7667310 Int) (d7308 Int) ($k7677311 Int) ($x7657309 Int) ($c7697313 Int) ($z7687312 Int))
    (=> (and (<= $k7677311 1000000)
             (>= $k7677311 (- 1000000))
             ($f_if389 d7308 $x7657309 $y7667310 $k7677311 $z7687312 $c7697313))
        ($f_if390 d7308 $x7657309 $y7667310 $k7677311 $z7687312 $c7697313))))

; loop entry $f_inv532
(assert
  (forall (($z7687318 Int) (d7314 Int) ($y7667316 Int) ($c7697319 Int) ($x7657315 Int) ($k7677317 Int))
    (=> (and ($f_if390 d7314 $x7657315 $y7667316 $k7677317 $z7687318 $c7697319))
        ($f_inv532 d7314 $x7657315 $y7667316 $k7677317 $z7687318 $c7697319))))

; loop term $f_sum532
(assert
  (forall (($c7697325 Int) ($z7687324 Int) ($y7667322 Int) ($k7677323 Int) (d7320 Int) ($x7657321 Int))
    (=> (and (not (and (> $x7657321 0) (> $y7667322 0)))
             ($f_inv532 d7320 $x7657321 $y7667322 $k7677323 $z7687324 $c7697325))
        ($f_sum532 d7320 $x7657321 $y7667322 $k7677323 $z7687324 $c7697325))))

; label P1
(assert
  (forall (($c7697325 Int) ($z7687324 Int) ($bool7326 Int) ($y7667322 Int) ($k7677323 Int) (d7320 Int) ($x7657321 Int))
    (=> (and (not (= $c7697325 0))
             (= $c7697325 $bool7326)
             (or (= $bool7326 0) (= $bool7326 1))
             (> $x7657321 0)
             (> $y7667322 0)
             ($f_inv532 d7320 $x7657321 $y7667322 $k7677323 $z7687324 $c7697325))
        ($f_P1 d7320 $x7657321 $y7667322 $k7677323 $z7687324 $c7697325))))

; if then
(assert
  (forall (($z7687331 Int) ($x7657328 Int) ($c7697332 Int) (d7327 Int) ($k7677330 Int) ($y7667329 Int) ($bool7333 Int))
    (=> (and (or (= $bool7333 0) (= $bool7333 1))
             ($f_P1 d7327 $x7657328 $y7667329 $k7677330 $z7687331 $c7697332))
        ($f_if391 d7327 (- $x7657328 d7327) $bool7333 $k7677330 (- $z7687331 1) $c7697332))))

; if else
(assert
  (forall (($c7697325 Int) ($z7687324 Int) ($bool7326 Int) ($y7667322 Int) ($k7677323 Int) (d7320 Int) ($x7657321 Int))
    (=> (and (= $c7697325 0)
             (= $c7697325 $bool7326)
             (or (= $bool7326 0) (= $bool7326 1))
             (> $x7657321 0)
             (> $y7667322 0)
             ($f_inv532 d7320 $x7657321 $y7667322 $k7677323 $z7687324 $c7697325))
        ($f_if391 d7320 $x7657321 (- $y7667322 d7320) $k7677323 $z7687324 $c7697325))))

; forwards $f_inv532
(assert
  (forall (($z7687338 Int) (d7334 Int) ($x7657335 Int) ($k7677337 Int) ($y7667336 Int) ($c7697339 Int))
    (=> (and ($f_if391 d7334 $x7657335 $y7667336 $k7677337 $z7687338 $c7697339))
        ($f_inv532 d7334 $x7657335 $y7667336 $k7677337 $z7687338 $c7697339))))

; post f
(assert
  (forall (($x7657341 Int) ($z7687344 Int) ($k7677343 Int) ($y7667342 Int) (d7340 Int) ($c7697345 Int))
    (=> (and ($f_sum532 d7340 $x7657341 $y7667342 $k7677343 $z7687344 $c7697345))
        (f d7340))))

; f precondition
(assert
  (forall (($c770 Int) ($bool7346 Int))
    (=> (and (not (= $c770 0))
             (= $c770 $bool7346)
             (or (= $bool7346 0) (= $bool7346 1)))
        ($f_pre 1))))

; f precondition
(assert
  (forall (($c770 Int) ($bool7346 Int))
    (=> (and (= $c770 0)
             (= $c770 $bool7346)
             (or (= $bool7346 0) (= $bool7346 1)))
        ($f_pre 2))))

; if then
(assert
  (forall (($c770 Int) ($bool7346 Int))
    (=> (and (f 1)
             (not (= $c770 0))
             (= $c770 $bool7346)
             (or (= $bool7346 0) (= $bool7346 1)))
        ($main_if392 $c770))))

; if else
(assert
  (forall (($c770 Int) ($bool7346 Int))
    (=> (and (f 2)
             (= $c770 0)
             (= $c770 $bool7346)
             (or (= $bool7346 0) (= $bool7346 1)))
        ($main_if392 $c770))))

(check-sat)
