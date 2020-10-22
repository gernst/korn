(set-logic HORN)

(declare-fun $main_sum289 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv289 (Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_if758 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_inv288 (Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_if756 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_if757 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum288 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $assume_abort_if_not_if754 (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if755 (Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if754 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond17296 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if754 cond cond17296))
        (assume_abort_if_not cond17296))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond17297 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond17297))
        false)))

; if then
(assert
  (forall ((cond Int) (cond17297 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond17297))
        ($__VERIFIER_assert_if755 cond cond17297))))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if755 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond17298 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if755 cond cond17298))
        (__VERIFIER_assert cond17298))))

; assume_abort_if_not precondition
(assert
  (forall (($int17300 Int) ($int17299 Int))
    (=> (and (<= (- 2147483648) $int17300)
             (<= $int17300 2147483647)
             (<= (- 2147483648) $int17299)
             (<= $int17299 2147483647))
        ($assume_abort_if_not_pre (ite (>= $int17300 1) 1 0)))))

; loop entry $main_inv288
(assert
  (forall (($int17299 Int) ($int17300 Int))
    (=> (and (assume_abort_if_not (ite (>= $int17300 1) 1 0))
             (<= (- 2147483648) $int17300)
             (<= $int17300 2147483647)
             (<= (- 2147483648) $int17299)
             (<= $int17299 2147483647))
        ($main_inv288 $int17299 $int17300 $int17299 $int17300 1 0))))

; loop term $main_sum288
(assert
  (forall (($q83417306 Int) ($p83317305 Int) ($A82917301 Int) ($B83017302 Int) ($r83117303 Int) ($d83217304 Int))
    (=> (and (= 1 0))
        ($main_sum288 $A82917301 $B83017302 $r83117303 $d83217304 $p83317305 $q83417306 $A82917301 $B83017302 $r83117303 $d83217304 $p83317305 $q83417306))))

; __VERIFIER_assert precondition
(assert
  (forall (($q83417306 Int) ($p83317305 Int) ($A82917301 Int) ($B83017302 Int) ($r83117303 Int) ($d83217304 Int))
    (=> (and (not (= 1 0))
             ($main_inv288 $A82917301 $B83017302 $r83117303 $d83217304 $p83317305 $q83417306))
        ($__VERIFIER_assert_pre (ite (= $q83417306 0) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($q83417306 Int) ($p83317305 Int) ($A82917301 Int) ($B83017302 Int) ($r83117303 Int) ($d83217304 Int))
    (=> (and (__VERIFIER_assert (ite (= $q83417306 0) 1 0))
             (not (= 1 0))
             ($main_inv288 $A82917301 $B83017302 $r83117303 $d83217304 $p83317305 $q83417306))
        ($__VERIFIER_assert_pre (ite (= $r83117303 $A82917301) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($q83417306 Int) ($p83317305 Int) ($A82917301 Int) ($B83017302 Int) ($r83117303 Int) ($d83217304 Int))
    (=> (and (__VERIFIER_assert (ite (= $r83117303 $A82917301) 1 0))
             (__VERIFIER_assert (ite (= $q83417306 0) 1 0))
             (not (= 1 0))
             ($main_inv288 $A82917301 $B83017302 $r83117303 $d83217304 $p83317305 $q83417306))
        ($__VERIFIER_assert_pre (ite (= $d83217304 (* $B83017302 $p83317305)) 1 0)))))

; break $main_sum288
(assert
  (forall (($q83417306 Int) ($p83317305 Int) ($A82917301 Int) ($B83017302 Int) ($r83117303 Int) ($d83217304 Int))
    (=> (and (not (>= $r83117303 $d83217304))
             (__VERIFIER_assert (ite (= $d83217304 (* $B83017302 $p83317305)) 1 0))
             (__VERIFIER_assert (ite (= $r83117303 $A82917301) 1 0))
             (__VERIFIER_assert (ite (= $q83417306 0) 1 0))
             (not (= 1 0))
             ($main_inv288 $A82917301 $B83017302 $r83117303 $d83217304 $p83317305 $q83417306))
        ($main_sum288 $A82917301 $B83017302 $r83117303 $d83217304 $p83317305 $q83417306 $A82917301 $B83017302 $r83117303 $d83217304 $p83317305 $q83417306))))

; if else
(assert
  (forall (($q83417306 Int) ($p83317305 Int) ($A82917301 Int) ($B83017302 Int) ($r83117303 Int) ($d83217304 Int))
    (=> (and (>= $r83117303 $d83217304)
             (__VERIFIER_assert (ite (= $d83217304 (* $B83017302 $p83317305)) 1 0))
             (__VERIFIER_assert (ite (= $r83117303 $A82917301) 1 0))
             (__VERIFIER_assert (ite (= $q83417306 0) 1 0))
             (not (= 1 0))
             ($main_inv288 $A82917301 $B83017302 $r83117303 $d83217304 $p83317305 $q83417306))
        ($main_if756 $A82917301 $B83017302 $r83117303 $d83217304 $p83317305 $q83417306 $A82917301 $B83017302 $r83117303 $d83217304 $p83317305 $q83417306))))

; forwards $main_inv288
(assert
  (forall (($q83417306 Int) ($B83017308 Int) ($q83417312 Int) ($r83117309 Int) ($p83317305 Int) ($B83017302 Int) ($r83117303 Int) ($d83217304 Int) ($A82917301 Int) ($p83317311 Int) ($d83217310 Int) ($A82917307 Int))
    (=> (and ($main_if756 $A82917301 $B83017302 $r83117303 $d83217304 $p83317305 $q83417306 $A82917307 $B83017308 $r83117309 $d83217310 $p83317311 $q83417312))
        ($main_inv288 $A82917307 $B83017308 $r83117309 (* 2 $d83217310) (* 2 $p83317311) $q83417312))))

; backwards $main_sum288
(assert
  (forall (($q83417306 Int) ($d83217316 Int) ($B83017308 Int) ($q83417312 Int) ($p83317317 Int) ($p83317305 Int) ($A82917313 Int) ($q83417318 Int) ($B83017302 Int) ($B83017314 Int) ($r83117309 Int) ($r83117315 Int) ($r83117303 Int) ($d83217304 Int) ($A82917301 Int) ($p83317311 Int) ($d83217310 Int) ($A82917307 Int))
    (=> (and ($main_sum288 $A82917307 $B83017308 $r83117309 (* 2 $d83217310) (* 2 $p83317311) $q83417312 $A82917313 $B83017314 $r83117315 $d83217316 $p83317317 $q83417318)
             ($main_if756 $A82917301 $B83017302 $r83117303 $d83217304 $p83317305 $q83417306 $A82917307 $B83017308 $r83117309 $d83217310 $p83317311 $q83417312))
        ($main_sum288 $A82917301 $B83017302 $r83117303 $d83217304 $p83317305 $q83417306 $A82917313 $B83017314 $r83117315 $d83217316 $p83317317 $q83417318))))

; loop entry $main_inv289
(assert
  (forall (($int17299 Int) ($p83317323 Int) ($int17300 Int) ($q83417324 Int) ($B83017320 Int) ($A82917319 Int) ($r83117321 Int) ($d83217322 Int))
    (=> (and ($main_sum288 $int17299 $int17300 $int17299 $int17300 1 0 $A82917319 $B83017320 $r83117321 $d83217322 $p83317323 $q83417324)
             (assume_abort_if_not (ite (>= $int17300 1) 1 0))
             (<= (- 2147483648) $int17300)
             (<= $int17300 2147483647)
             (<= (- 2147483648) $int17299)
             (<= $int17299 2147483647))
        ($main_inv289 $A82917319 $B83017320 $r83117321 $d83217322 $p83317323 $q83417324))))

; loop term $main_sum289
(assert
  (forall (($d83217328 Int) ($B83017326 Int) ($r83117327 Int) ($p83317329 Int) ($q83417330 Int) ($A82917325 Int))
    (=> (and (= 1 0))
        ($main_sum289 $A82917325 $B83017326 $r83117327 $d83217328 $p83317329 $q83417330 $A82917325 $B83017326 $r83117327 $d83217328 $p83317329 $q83417330))))

; __VERIFIER_assert precondition
(assert
  (forall (($d83217328 Int) ($B83017326 Int) ($r83117327 Int) ($p83317329 Int) ($q83417330 Int) ($A82917325 Int))
    (=> (and (not (= 1 0))
             ($main_inv289 $A82917325 $B83017326 $r83117327 $d83217328 $p83317329 $q83417330))
        ($__VERIFIER_assert_pre (ite (= $A82917325 (+ (* $q83417330 $B83017326) $r83117327)) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($d83217328 Int) ($B83017326 Int) ($r83117327 Int) ($p83317329 Int) ($q83417330 Int) ($A82917325 Int))
    (=> (and (__VERIFIER_assert (ite (= $A82917325 (+ (* $q83417330 $B83017326) $r83117327)) 1 0))
             (not (= 1 0))
             ($main_inv289 $A82917325 $B83017326 $r83117327 $d83217328 $p83317329 $q83417330))
        ($__VERIFIER_assert_pre (ite (= $d83217328 (* $B83017326 $p83317329)) 1 0)))))

; break $main_sum289
(assert
  (forall (($d83217328 Int) ($B83017326 Int) ($r83117327 Int) ($p83317329 Int) ($q83417330 Int) ($A82917325 Int))
    (=> (and (= $p83317329 1)
             (__VERIFIER_assert (ite (= $d83217328 (* $B83017326 $p83317329)) 1 0))
             (__VERIFIER_assert (ite (= $A82917325 (+ (* $q83417330 $B83017326) $r83117327)) 1 0))
             (not (= 1 0))
             ($main_inv289 $A82917325 $B83017326 $r83117327 $d83217328 $p83317329 $q83417330))
        ($main_sum289 $A82917325 $B83017326 $r83117327 $d83217328 $p83317329 $q83417330 $A82917325 $B83017326 $r83117327 $d83217328 $p83317329 $q83417330))))

; if else
(assert
  (forall (($d83217328 Int) ($B83017326 Int) ($r83117327 Int) ($p83317329 Int) ($q83417330 Int) ($A82917325 Int))
    (=> (and (not (= $p83317329 1))
             (__VERIFIER_assert (ite (= $d83217328 (* $B83017326 $p83317329)) 1 0))
             (__VERIFIER_assert (ite (= $A82917325 (+ (* $q83417330 $B83017326) $r83117327)) 1 0))
             (not (= 1 0))
             ($main_inv289 $A82917325 $B83017326 $r83117327 $d83217328 $p83317329 $q83417330))
        ($main_if757 $A82917325 $B83017326 $r83117327 $d83217328 $p83317329 $q83417330 $A82917325 $B83017326 $r83117327 $d83217328 $p83317329 $q83417330))))

; if then
(assert
  (forall (($B83017332 Int) ($d83217328 Int) ($B83017326 Int) ($A82917331 Int) ($p83317335 Int) ($p83317329 Int) ($q83417330 Int) ($A82917325 Int) ($q83417336 Int) ($r83117333 Int) ($r83117327 Int) ($d83217334 Int))
    (=> (and (>= $r83117333 (div $d83217334 2))
             ($main_if757 $A82917325 $B83017326 $r83117327 $d83217328 $p83317329 $q83417330 $A82917331 $B83017332 $r83117333 $d83217334 $p83317335 $q83417336))
        ($main_if758 $A82917325 $B83017326 $r83117327 $d83217328 $p83317329 $q83417330 $A82917331 $B83017332 (- $r83117333 (div $d83217334 2)) (div $d83217334 2) (div $p83317335 2) (+ $q83417336 (div $p83317335 2))))))

; if else
(assert
  (forall (($B83017332 Int) ($d83217328 Int) ($B83017326 Int) ($A82917331 Int) ($p83317335 Int) ($p83317329 Int) ($q83417330 Int) ($A82917325 Int) ($q83417336 Int) ($r83117333 Int) ($r83117327 Int) ($d83217334 Int))
    (=> (and (not (>= $r83117333 (div $d83217334 2)))
             ($main_if757 $A82917325 $B83017326 $r83117327 $d83217328 $p83317329 $q83417330 $A82917331 $B83017332 $r83117333 $d83217334 $p83317335 $q83417336))
        ($main_if758 $A82917325 $B83017326 $r83117327 $d83217328 $p83317329 $q83417330 $A82917331 $B83017332 $r83117333 (div $d83217334 2) (div $p83317335 2) $q83417336))))

; forwards $main_inv289
(assert
  (forall (($A82917337 Int) ($B83017338 Int) ($d83217340 Int) ($r83117339 Int) ($d83217328 Int) ($B83017326 Int) ($p83317341 Int) ($r83117327 Int) ($q83417342 Int) ($p83317329 Int) ($q83417330 Int) ($A82917325 Int))
    (=> (and ($main_if758 $A82917325 $B83017326 $r83117327 $d83217328 $p83317329 $q83417330 $A82917337 $B83017338 $r83117339 $d83217340 $p83317341 $q83417342))
        ($main_inv289 $A82917337 $B83017338 $r83117339 $d83217340 $p83317341 $q83417342))))

; backwards $main_sum289
(assert
  (forall (($A82917337 Int) ($r83117345 Int) ($d83217340 Int) ($d83217328 Int) ($B83017326 Int) ($p83317341 Int) ($r83117327 Int) ($q83417342 Int) ($q83417348 Int) ($B83017344 Int) ($q83417330 Int) ($A82917325 Int) ($p83317347 Int) ($B83017338 Int) ($r83117339 Int) ($d83217346 Int) ($p83317329 Int) ($A82917343 Int))
    (=> (and ($main_sum289 $A82917337 $B83017338 $r83117339 $d83217340 $p83317341 $q83417342 $A82917343 $B83017344 $r83117345 $d83217346 $p83317347 $q83417348)
             ($main_if758 $A82917325 $B83017326 $r83117327 $d83217328 $p83317329 $q83417330 $A82917337 $B83017338 $r83117339 $d83217340 $p83317341 $q83417342))
        ($main_sum289 $A82917325 $B83017326 $r83117327 $d83217328 $p83317329 $q83417330 $A82917343 $B83017344 $r83117345 $d83217346 $p83317347 $q83417348))))

; __VERIFIER_assert precondition
(assert
  (forall (($r83117351 Int) ($int17299 Int) ($p83317353 Int) ($p83317323 Int) ($B83017350 Int) ($int17300 Int) ($q83417324 Int) ($d83217352 Int) ($q83417354 Int) ($B83017320 Int) ($A82917319 Int) ($A82917349 Int) ($r83117321 Int) ($d83217322 Int))
    (=> (and ($main_sum289 $A82917319 $B83017320 $r83117321 $d83217322 $p83317323 $q83417324 $A82917349 $B83017350 $r83117351 $d83217352 $p83317353 $q83417354)
             ($main_sum288 $int17299 $int17300 $int17299 $int17300 1 0 $A82917319 $B83017320 $r83117321 $d83217322 $p83317323 $q83417324)
             (assume_abort_if_not (ite (>= $int17300 1) 1 0))
             (<= (- 2147483648) $int17300)
             (<= $int17300 2147483647)
             (<= (- 2147483648) $int17299)
             (<= $int17299 2147483647))
        ($__VERIFIER_assert_pre (ite (= $A82917349 (+ (* $d83217352 $q83417354) $r83117351)) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($r83117351 Int) ($int17299 Int) ($p83317353 Int) ($p83317323 Int) ($B83017350 Int) ($int17300 Int) ($q83417324 Int) ($d83217352 Int) ($q83417354 Int) ($B83017320 Int) ($A82917319 Int) ($A82917349 Int) ($r83117321 Int) ($d83217322 Int))
    (=> (and (__VERIFIER_assert (ite (= $A82917349 (+ (* $d83217352 $q83417354) $r83117351)) 1 0))
             ($main_sum289 $A82917319 $B83017320 $r83117321 $d83217322 $p83317323 $q83417324 $A82917349 $B83017350 $r83117351 $d83217352 $p83317353 $q83417354)
             ($main_sum288 $int17299 $int17300 $int17299 $int17300 1 0 $A82917319 $B83017320 $r83117321 $d83217322 $p83317323 $q83417324)
             (assume_abort_if_not (ite (>= $int17300 1) 1 0))
             (<= (- 2147483648) $int17300)
             (<= $int17300 2147483647)
             (<= (- 2147483648) $int17299)
             (<= $int17299 2147483647))
        ($__VERIFIER_assert_pre (ite (= $B83017350 $d83217352) 1 0)))))

(check-sat)
