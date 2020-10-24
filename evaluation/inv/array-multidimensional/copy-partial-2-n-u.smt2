(set-logic HORN)

(declare-fun $main_inv35 (Int Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv36 (Int Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv31 (Int Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv32 (Int Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum34 (Int Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum36 (Int Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum32 (Int Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv34 (Int Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $__VERIFIER_assert_if21 (Int) Bool)
(declare-fun $main_sum31 (Int Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_sum33 (Int Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum35 (Int Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $assume_abort_if_not_if20 (Int) Bool)
(declare-fun $main_inv33 (Int Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if20 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond389 Int))
    (=> (and ($assume_abort_if_not_if20 cond389))
        (assume_abort_if_not cond389))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond390 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond390))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if21 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond391 Int))
    (=> (and ($__VERIFIER_assert_if21 cond391))
        (__VERIFIER_assert cond391))))

; assume_abort_if_not precondition
(assert
  (forall (($q50 Int) ($m48 Int) ($s51 Int) ($n49 Int))
    (=> (and (= $s51 700)
             (= $q50 500)
             (= $n49 1500)
             (= $m48 1000))
        ($assume_abort_if_not_pre (ite (< $q50 $m48) 1 0)))))

; assume_abort_if_not precondition
(assert
  (forall (($s51 Int) ($n49 Int) ($q50 Int) ($m48 Int))
    (=> (and (assume_abort_if_not (ite (< $q50 $m48) 1 0))
             (= $s51 700)
             (= $q50 500)
             (= $n49 1500)
             (= $m48 1000))
        ($assume_abort_if_not_pre (ite (< $s51 $n49) 1 0)))))

; loop entry $main_inv31
(assert
  (forall (($s51 Int) ($n49 Int) ($q50 Int) ($B53 (Array Int (Array Int Int))) ($m48 Int) ($A52 (Array Int (Array Int Int))))
    (=> (and (assume_abort_if_not (ite (< $s51 $n49) 1 0))
             (assume_abort_if_not (ite (< $q50 $m48) 1 0))
             (= $s51 700)
             (= $q50 500)
             (= $n49 1500)
             (= $m48 1000))
        ($main_inv31 0 0 $m48 $n49 $q50 $s51 $A52 $B53))))

; loop term $main_sum31
(assert
  (forall (($s51397 Int) ($m48394 Int) ($n49395 Int) ($i46392 Int) ($A52398 (Array Int (Array Int Int))) ($q50396 Int) ($B53399 (Array Int (Array Int Int))) ($j47393 Int))
    (=> (and (not (< $i46392 $m48394))
             ($main_inv31 $i46392 $j47393 $m48394 $n49395 $q50396 $s51397 $A52398 $B53399))
        ($main_sum31 $i46392 $j47393 $m48394 $n49395 $q50396 $s51397 $A52398 $B53399))))

; loop entry $main_inv32
(assert
  (forall (($s51397 Int) ($m48394 Int) ($n49395 Int) ($i46392 Int) ($A52398 (Array Int (Array Int Int))) ($q50396 Int) ($B53399 (Array Int (Array Int Int))) ($j47393 Int))
    (=> (and (< $i46392 $m48394)
             ($main_inv31 $i46392 $j47393 $m48394 $n49395 $q50396 $s51397 $A52398 $B53399))
        ($main_inv32 $i46392 0 $m48394 $n49395 $q50396 $s51397 $A52398 $B53399))))

; loop term $main_sum32
(assert
  (forall (($i46400 Int) ($B53407 (Array Int (Array Int Int))) ($m48402 Int) ($A52406 (Array Int (Array Int Int))) ($n49403 Int) ($q50404 Int) ($j47401 Int) ($s51405 Int))
    (=> (and (not (< $j47401 $n49403))
             ($main_inv32 $i46400 $j47401 $m48402 $n49403 $q50404 $s51405 $A52406 $B53407))
        ($main_sum32 $i46400 $j47401 $m48402 $n49403 $q50404 $s51405 $A52406 $B53407))))

; forwards $main_inv32
(assert
  (forall (($i46400 Int) ($m48402 Int) ($A52406 (Array Int (Array Int Int))) ($n49403 Int) ($q50404 Int) ($j47401 Int) ($s51405 Int) ($B53407 (Array Int (Array Int Int))) ($int408 Int))
    (=> (and (<= (- 2147483648) $int408)
             (<= $int408 2147483647)
             (< $j47401 $n49403)
             ($main_inv32 $i46400 $j47401 $m48402 $n49403 $q50404 $s51405 $A52406 $B53407))
        ($main_inv32 $i46400 (+ $j47401 1) $m48402 $n49403 $q50404 $s51405 $A52406 (store $B53407 $i46400 (store (select $B53407 $i46400) $j47401 $int408))))))

; forwards $main_inv31
(assert
  (forall (($i46409 Int) ($n49412 Int) ($j47410 Int) ($m48411 Int) ($A52415 (Array Int (Array Int Int))) ($B53416 (Array Int (Array Int Int))) ($q50413 Int) ($s51414 Int))
    (=> (and ($main_sum32 $i46409 $j47410 $m48411 $n49412 $q50413 $s51414 $A52415 $B53416))
        ($main_inv31 (+ $i46409 1) $j47410 $m48411 $n49412 $q50413 $s51414 $A52415 $B53416))))

; loop entry $main_inv33
(assert
  (forall (($B53424 (Array Int (Array Int Int))) ($m48419 Int) ($q50421 Int) ($j47418 Int) ($s51422 Int) ($i46417 Int) ($n49420 Int) ($A52423 (Array Int (Array Int Int))))
    (=> (and ($main_sum31 $i46417 $j47418 $m48419 $n49420 $q50421 $s51422 $A52423 $B53424))
        ($main_inv33 0 0 $m48419 $n49420 $q50421 $s51422 $A52423 $B53424))))

; loop term $main_sum33
(assert
  (forall (($q50429 Int) ($n49428 Int) ($m48427 Int) ($s51430 Int) ($i46425 Int) ($B53432 (Array Int (Array Int Int))) ($j47426 Int) ($A52431 (Array Int (Array Int Int))))
    (=> (and (not (< $i46425 $q50429))
             ($main_inv33 $i46425 $j47426 $m48427 $n49428 $q50429 $s51430 $A52431 $B53432))
        ($main_sum33 $i46425 $j47426 $m48427 $n49428 $q50429 $s51430 $A52431 $B53432))))

; loop entry $main_inv34
(assert
  (forall (($q50429 Int) ($n49428 Int) ($m48427 Int) ($s51430 Int) ($i46425 Int) ($B53432 (Array Int (Array Int Int))) ($j47426 Int) ($A52431 (Array Int (Array Int Int))))
    (=> (and (< $i46425 $q50429)
             ($main_inv33 $i46425 $j47426 $m48427 $n49428 $q50429 $s51430 $A52431 $B53432))
        ($main_inv34 $i46425 0 $m48427 $n49428 $q50429 $s51430 $A52431 $B53432))))

; loop term $main_sum34
(assert
  (forall (($A52439 (Array Int (Array Int Int))) ($j47434 Int) ($m48435 Int) ($q50437 Int) ($s51438 Int) ($i46433 Int) ($n49436 Int) ($B53440 (Array Int (Array Int Int))))
    (=> (and (not (< $j47434 $s51438))
             ($main_inv34 $i46433 $j47434 $m48435 $n49436 $q50437 $s51438 $A52439 $B53440))
        ($main_sum34 $i46433 $j47434 $m48435 $n49436 $q50437 $s51438 $A52439 $B53440))))

; forwards $main_inv34
(assert
  (forall (($A52439 (Array Int (Array Int Int))) ($j47434 Int) ($m48435 Int) ($q50437 Int) ($s51438 Int) ($i46433 Int) ($n49436 Int) ($B53440 (Array Int (Array Int Int))))
    (=> (and (< $j47434 $s51438)
             ($main_inv34 $i46433 $j47434 $m48435 $n49436 $q50437 $s51438 $A52439 $B53440))
        ($main_inv34 $i46433 (+ $j47434 1) $m48435 $n49436 $q50437 $s51438 (store $A52439 $i46433 (store (select $A52439 $i46433) $j47434 (select (select $B53440 $i46433) $j47434))) $B53440))))

; forwards $main_inv33
(assert
  (forall (($q50445 Int) ($j47442 Int) ($s51446 Int) ($i46441 Int) ($m48443 Int) ($n49444 Int) ($B53448 (Array Int (Array Int Int))) ($A52447 (Array Int (Array Int Int))))
    (=> (and ($main_sum34 $i46441 $j47442 $m48443 $n49444 $q50445 $s51446 $A52447 $B53448))
        ($main_inv33 (+ $i46441 1) $j47442 $m48443 $n49444 $q50445 $s51446 $A52447 $B53448))))

; loop entry $main_inv35
(assert
  (forall (($i46449 Int) ($n49452 Int) ($A52455 (Array Int (Array Int Int))) ($q50453 Int) ($j47450 Int) ($s51454 Int) ($m48451 Int) ($B53456 (Array Int (Array Int Int))))
    (=> (and ($main_sum33 $i46449 $j47450 $m48451 $n49452 $q50453 $s51454 $A52455 $B53456))
        ($main_inv35 0 0 $m48451 $n49452 $q50453 $s51454 $A52455 $B53456))))

; loop term $main_sum35
(assert
  (forall (($m48459 Int) ($j47458 Int) ($A52463 (Array Int (Array Int Int))) ($q50461 Int) ($i46457 Int) ($n49460 Int) ($s51462 Int) ($B53464 (Array Int (Array Int Int))))
    (=> (and (not (< $i46457 $q50461))
             ($main_inv35 $i46457 $j47458 $m48459 $n49460 $q50461 $s51462 $A52463 $B53464))
        ($main_sum35 $i46457 $j47458 $m48459 $n49460 $q50461 $s51462 $A52463 $B53464))))

; loop entry $main_inv36
(assert
  (forall (($m48459 Int) ($j47458 Int) ($A52463 (Array Int (Array Int Int))) ($q50461 Int) ($i46457 Int) ($n49460 Int) ($s51462 Int) ($B53464 (Array Int (Array Int Int))))
    (=> (and (< $i46457 $q50461)
             ($main_inv35 $i46457 $j47458 $m48459 $n49460 $q50461 $s51462 $A52463 $B53464))
        ($main_inv36 $i46457 0 $m48459 $n49460 $q50461 $s51462 $A52463 $B53464))))

; loop term $main_sum36
(assert
  (forall (($q50469 Int) ($n49468 Int) ($j47466 Int) ($i46465 Int) ($s51470 Int) ($m48467 Int) ($B53472 (Array Int (Array Int Int))) ($A52471 (Array Int (Array Int Int))))
    (=> (and (not (< $j47466 $s51470))
             ($main_inv36 $i46465 $j47466 $m48467 $n49468 $q50469 $s51470 $A52471 $B53472))
        ($main_sum36 $i46465 $j47466 $m48467 $n49468 $q50469 $s51470 $A52471 $B53472))))

; __VERIFIER_assert precondition
(assert
  (forall (($q50469 Int) ($n49468 Int) ($j47466 Int) ($i46465 Int) ($s51470 Int) ($m48467 Int) ($B53472 (Array Int (Array Int Int))) ($A52471 (Array Int (Array Int Int))))
    (=> (and (< $j47466 $s51470)
             ($main_inv36 $i46465 $j47466 $m48467 $n49468 $q50469 $s51470 $A52471 $B53472))
        ($__VERIFIER_assert_pre (ite (= (select (select $A52471 $i46465) $j47466) (select (select $B53472 $i46465) $j47466)) 1 0)))))

; forwards $main_inv36
(assert
  (forall (($q50469 Int) ($n49468 Int) ($j47466 Int) ($i46465 Int) ($s51470 Int) ($m48467 Int) ($B53472 (Array Int (Array Int Int))) ($A52471 (Array Int (Array Int Int))))
    (=> (and (__VERIFIER_assert (ite (= (select (select $A52471 $i46465) $j47466) (select (select $B53472 $i46465) $j47466)) 1 0))
             (< $j47466 $s51470)
             ($main_inv36 $i46465 $j47466 $m48467 $n49468 $q50469 $s51470 $A52471 $B53472))
        ($main_inv36 $i46465 (+ $j47466 1) $m48467 $n49468 $q50469 $s51470 $A52471 $B53472))))

; forwards $main_inv35
(assert
  (forall (($B53480 (Array Int (Array Int Int))) ($s51478 Int) ($m48475 Int) ($i46473 Int) ($q50477 Int) ($A52479 (Array Int (Array Int Int))) ($n49476 Int) ($j47474 Int))
    (=> (and ($main_sum36 $i46473 $j47474 $m48475 $n49476 $q50477 $s51478 $A52479 $B53480))
        ($main_inv35 (+ $i46473 1) $j47474 $m48475 $n49476 $q50477 $s51478 $A52479 $B53480))))

(check-sat)
