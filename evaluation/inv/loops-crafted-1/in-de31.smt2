(set-logic HORN)

(declare-fun $main_inv140 (Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_sum142 (Int Int Int Int) Bool)
(declare-fun $main_sum140 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if546 (Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $main_sum141 (Int Int Int Int) Bool)
(declare-fun $main_inv142 (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv141 (Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond13318 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond13318))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if546 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond13319 Int))
    (=> (and ($__VERIFIER_assert_if546 cond13319))
        (__VERIFIER_assert cond13319))))

; loop entry $main_inv140
(assert
  (forall (($y495 Int) ($x494 Int) ($uint13320 Int) ($z496 Int) ($n493 Int))
    (=> (and (= $y495 0)
             (= $x494 $n493)
             (= $n493 $uint13320)
             (<= 0 $uint13320)
             (<= $uint13320 4294967295))
        ($main_inv140 $n493 $x494 $y495 $z496))))

; loop term $main_sum140
(assert
  (forall (($n49313321 Int) ($x49413322 Int) ($y49513323 Int) ($z49613324 Int))
    (=> (and (not (> $x49413322 0))
             ($main_inv140 $n49313321 $x49413322 $y49513323 $z49613324))
        ($main_sum140 $n49313321 $x49413322 $y49513323 $z49613324))))

; forwards $main_inv140
(assert
  (forall (($n49313321 Int) ($x49413322 Int) ($y49513323 Int) ($z49613324 Int))
    (=> (and (> $x49413322 0)
             ($main_inv140 $n49313321 $x49413322 $y49513323 $z49613324))
        ($main_inv140 $n49313321 (- $x49413322 1) (+ $y49513323 1) $z49613324))))

; loop entry $main_inv141
(assert
  (forall (($n49313325 Int) ($x49413326 Int) ($y49513327 Int) ($z49613328 Int))
    (=> (and ($main_sum140 $n49313325 $x49413326 $y49513327 $z49613328))
        ($main_inv141 $n49313325 $x49413326 $y49513327 $y49513327))))

; loop term $main_sum141
(assert
  (forall (($n49313329 Int) ($x49413330 Int) ($y49513331 Int) ($z49613332 Int))
    (=> (and (not (> $z49613332 0))
             ($main_inv141 $n49313329 $x49413330 $y49513331 $z49613332))
        ($main_sum141 $n49313329 $x49413330 $y49513331 $z49613332))))

; forwards $main_inv141
(assert
  (forall (($n49313329 Int) ($x49413330 Int) ($y49513331 Int) ($z49613332 Int))
    (=> (and (> $z49613332 0)
             ($main_inv141 $n49313329 $x49413330 $y49513331 $z49613332))
        ($main_inv141 $n49313329 (+ $x49413330 1) $y49513331 (- $z49613332 1)))))

; loop entry $main_inv142
(assert
  (forall (($n49313333 Int) ($x49413334 Int) ($y49513335 Int) ($z49613336 Int))
    (=> (and ($main_sum141 $n49313333 $x49413334 $y49513335 $z49613336))
        ($main_inv142 $n49313333 $x49413334 $y49513335 $z49613336))))

; loop term $main_sum142
(assert
  (forall (($n49313337 Int) ($x49413338 Int) ($y49513339 Int) ($z49613340 Int))
    (=> (and (not (> $y49513339 0))
             ($main_inv142 $n49313337 $x49413338 $y49513339 $z49613340))
        ($main_sum142 $n49313337 $x49413338 $y49513339 $z49613340))))

; forwards $main_inv142
(assert
  (forall (($n49313337 Int) ($x49413338 Int) ($y49513339 Int) ($z49613340 Int))
    (=> (and (> $y49513339 0)
             ($main_inv142 $n49313337 $x49413338 $y49513339 $z49613340))
        ($main_inv142 $n49313337 $x49413338 (- $y49513339 1) (+ $z49613340 1)))))

; __VERIFIER_assert precondition
(assert
  (forall (($z49613344 Int) ($n49313341 Int) ($x49413342 Int) ($y49513343 Int))
    (=> (and ($main_sum142 $n49313341 $x49413342 $y49513343 $z49613344))
        ($__VERIFIER_assert_pre (ite (= $z49613344 $n49313341) 1 0)))))

(check-sat)
