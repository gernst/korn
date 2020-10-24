(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $__VERIFIER_nondet_bool_pre () Bool)
(declare-fun $main_if710 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if709 (Int) Bool)
(declare-fun __VERIFIER_nondet_bool (Int) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $main_if711 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_inv273 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum273 (Int Int Int Int Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond15333 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15333))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if709 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond15334 Int))
    (=> (and ($__VERIFIER_assert_if709 cond15334))
        (__VERIFIER_assert cond15334))))

; loop entry $main_inv273
(assert
  (forall (($x3763 Int) ($uint15336 Int) ($bool15338 Int) ($c1767 Int) ($uint15337 Int) ($x2762 Int) ($x1761 Int) ($uint15335 Int) ($c2768 Int) ($d3766 Int) ($bool15339 Int) ($d2765 Int) ($d1764 Int))
    (=> (and (= $c2768 $bool15339)
             (or (= $bool15339 0) (= $bool15339 1))
             (= $c1767 $bool15338)
             (or (= $bool15338 0) (= $bool15338 1))
             (= $d3766 1)
             (= $d2765 1)
             (= $d1764 1)
             (= $x3763 $uint15337)
             (<= 0 $uint15337)
             (<= $uint15337 4294967295)
             (= $x2762 $uint15336)
             (<= 0 $uint15336)
             (<= $uint15336 4294967295)
             (= $x1761 $uint15335)
             (<= 0 $uint15335)
             (<= $uint15335 4294967295))
        ($main_inv273 $x1761 $x2762 $x3763 $d1764 $d2765 $d3766 $c1767 $c2768))))

; loop term $main_sum273
(assert
  (forall (($d276515344 Int) ($c276815347 Int) ($x376315342 Int) ($c176715346 Int) ($d376615345 Int) ($x276215341 Int) ($d176415343 Int) ($x176115340 Int))
    (=> (and (not (and (and (> $x176115340 0) (> $x276215341 0)) (> $x376315342 0)))
             ($main_inv273 $x176115340 $x276215341 $x376315342 $d176415343 $d276515344 $d376615345 $c176715346 $c276815347))
        ($main_sum273 $x176115340 $x276215341 $x376315342 $d176415343 $d276515344 $d376615345 $c176715346 $c276815347))))

; if then
(assert
  (forall (($d276515344 Int) ($c276815347 Int) ($x376315342 Int) ($c176715346 Int) ($d376615345 Int) ($x276215341 Int) ($d176415343 Int) ($x176115340 Int))
    (=> (and (not (= $c276815347 0))
             (= $c176715346 0)
             (> $x176115340 0)
             (> $x276215341 0)
             (> $x376315342 0)
             ($main_inv273 $x176115340 $x276215341 $x376315342 $d176415343 $d276515344 $d376615345 $c176715346 $c276815347))
        ($main_if710 $x176115340 (- $x276215341 $d276515344) $x376315342 $d176415343 $d276515344 $d376615345 $c176715346 $c276815347))))

; if else
(assert
  (forall (($d276515344 Int) ($c276815347 Int) ($x376315342 Int) ($c176715346 Int) ($d376615345 Int) ($x276215341 Int) ($d176415343 Int) ($x176115340 Int))
    (=> (and (= $c276815347 0)
             (= $c176715346 0)
             (> $x176115340 0)
             (> $x276215341 0)
             (> $x376315342 0)
             ($main_inv273 $x176115340 $x276215341 $x376315342 $d176415343 $d276515344 $d376615345 $c176715346 $c276815347))
        ($main_if710 $x176115340 $x276215341 (- $x376315342 $d376615345) $d176415343 $d276515344 $d376615345 $c176715346 $c276815347))))

; if then
(assert
  (forall (($d276515344 Int) ($c276815347 Int) ($x376315342 Int) ($c176715346 Int) ($d376615345 Int) ($x276215341 Int) ($d176415343 Int) ($x176115340 Int))
    (=> (and (not (= $c176715346 0))
             (> $x176115340 0)
             (> $x276215341 0)
             (> $x376315342 0)
             ($main_inv273 $x176115340 $x276215341 $x376315342 $d176415343 $d276515344 $d376615345 $c176715346 $c276815347))
        ($main_if711 (- $x176115340 $d176415343) $x276215341 $x376315342 $d176415343 $d276515344 $d376615345 $c176715346 $c276815347))))

; if else
(assert
  (forall (($d376615353 Int) ($x276215349 Int) ($c276815355 Int) ($x376315350 Int) ($c176715354 Int) ($d176415351 Int) ($d276515352 Int) ($x176115348 Int))
    (=> (and ($main_if710 $x176115348 $x276215349 $x376315350 $d176415351 $d276515352 $d376615353 $c176715354 $c276815355))
        ($main_if711 $x176115348 $x276215349 $x376315350 $d176415351 $d276515352 $d376615353 $c176715354 $c276815355))))

; forwards $main_inv273
(assert
  (forall (($c176715362 Int) ($bool15364 Int) ($x276215357 Int) ($bool15365 Int) ($x376315358 Int) ($d176415359 Int) ($x176115356 Int) ($d276515360 Int) ($d376615361 Int) ($c276815363 Int))
    (=> (and (or (= $bool15365 0) (= $bool15365 1))
             (or (= $bool15364 0) (= $bool15364 1))
             ($main_if711 $x176115356 $x276215357 $x376315358 $d176415359 $d276515360 $d376615361 $c176715362 $c276815363))
        ($main_inv273 $x176115356 $x276215357 $x376315358 $d176415359 $d276515360 $d376615361 $bool15364 $bool15365))))

; __VERIFIER_assert precondition
(assert
  (forall (($d376615371 Int) ($x176115366 Int) ($c176715372 Int) ($d276515370 Int) ($d176415369 Int) ($c276815373 Int) ($x376315368 Int) ($x276215367 Int))
    (=> (and ($main_sum273 $x176115366 $x276215367 $x376315368 $d176415369 $d276515370 $d376615371 $c176715372 $c276815373))
        ($__VERIFIER_assert_pre (ite (or (or (= $x176115366 0) (= $x276215367 0)) (= $x376315368 0)) 1 0)))))

(check-sat)
