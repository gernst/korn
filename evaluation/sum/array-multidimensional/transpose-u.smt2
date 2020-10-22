(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv72 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum73 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv73 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $__VERIFIER_assert_if31 (Int Int) Bool)
(declare-fun $main_inv71 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv74 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum74 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum75 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv75 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum72 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv76 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum71 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum76 (Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond1414 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond1414))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if31 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond1415 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if31 cond cond1415))
        (__VERIFIER_assert cond1415))))

; loop entry $main_inv71
(assert
  (forall (($k95 Int) ($m98 Int) ($C100 (Array Int (Array Int Int))) ($n97 Int) ($j96 Int) ($A99 (Array Int (Array Int Int))))
    (=> (and (= $m98 1800)
             (= $n97 1000))
        ($main_inv71 0 $k95 $j96 $n97 $m98 $A99 $C100))))

; loop term $main_sum71
(assert
  (forall (($k951417 Int) ($A991421 (Array Int (Array Int Int))) ($n971419 Int) ($i941416 Int) ($m981420 Int) ($C1001422 (Array Int (Array Int Int))) ($j961418 Int))
    (=> (and (not (< $i941416 $n971419)))
        ($main_sum71 $i941416 $k951417 $j961418 $n971419 $m981420 $A991421 $C1001422 $i941416 $k951417 $j961418 $n971419 $m981420 $A991421 $C1001422))))

; loop entry $main_inv72
(assert
  (forall (($k951417 Int) ($A991421 (Array Int (Array Int Int))) ($n971419 Int) ($i941416 Int) ($m981420 Int) ($C1001422 (Array Int (Array Int Int))) ($j961418 Int))
    (=> (and (< $i941416 $n971419)
             ($main_inv71 $i941416 $k951417 $j961418 $n971419 $m981420 $A991421 $C1001422))
        ($main_inv72 $i941416 $k951417 0 $n971419 $m981420 $A991421 $C1001422))))

; loop term $main_sum72
(assert
  (forall (($k951424 Int) ($A991428 (Array Int (Array Int Int))) ($C1001429 (Array Int (Array Int Int))) ($m981427 Int) ($i941423 Int) ($n971426 Int) ($j961425 Int))
    (=> (and (not (< $j961425 $n971426)))
        ($main_sum72 $i941423 $k951424 $j961425 $n971426 $m981427 $A991428 $C1001429 $i941423 $k951424 $j961425 $n971426 $m981427 $A991428 $C1001429))))

; forwards $main_inv72
(assert
  (forall (($k951424 Int) ($C1001429 (Array Int (Array Int Int))) ($m981427 Int) ($i941423 Int) ($n971426 Int) ($j961425 Int) ($A991428 (Array Int (Array Int Int))) ($int1430 Int))
    (=> (and (<= (- 2147483648) $int1430)
             (<= $int1430 2147483647)
             (< $j961425 $n971426)
             ($main_inv72 $i941423 $k951424 $j961425 $n971426 $m981427 $A991428 $C1001429))
        ($main_inv72 $i941423 $k951424 (+ $j961425 1) $n971426 $m981427 (store $A991428 $i941423 (store (select $A991428 $i941423) $j961425 $int1430)) $C1001429))))

; backwards $main_sum72
(assert
  (forall (($k951424 Int) ($A991436 (Array Int (Array Int Int))) ($k951432 Int) ($i941423 Int) ($j961425 Int) ($A991428 (Array Int (Array Int Int))) ($int1430 Int) ($n971434 Int) ($C1001429 (Array Int (Array Int Int))) ($j961433 Int) ($m981427 Int) ($i941431 Int) ($n971426 Int) ($C1001437 (Array Int (Array Int Int))) ($m981435 Int))
    (=> (and ($main_sum72 $i941423 $k951424 (+ $j961425 1) $n971426 $m981427 (store $A991428 $i941423 (store (select $A991428 $i941423) $j961425 $int1430)) $C1001429 $i941431 $k951432 $j961433 $n971434 $m981435 $A991436 $C1001437)
             (<= (- 2147483648) $int1430)
             (<= $int1430 2147483647)
             (< $j961425 $n971426))
        ($main_sum72 $i941423 $k951424 $j961425 $n971426 $m981427 $A991428 $C1001429 $i941431 $k951432 $j961433 $n971434 $m981435 $A991436 $C1001437))))

; forwards $main_inv71
(assert
  (forall (($k951417 Int) ($i941438 Int) ($A991421 (Array Int (Array Int Int))) ($n971419 Int) ($A991443 (Array Int (Array Int Int))) ($k951439 Int) ($i941416 Int) ($C1001444 (Array Int (Array Int Int))) ($j961440 Int) ($m981420 Int) ($m981442 Int) ($n971441 Int) ($C1001422 (Array Int (Array Int Int))) ($j961418 Int))
    (=> (and ($main_sum72 $i941416 $k951417 0 $n971419 $m981420 $A991421 $C1001422 $i941438 $k951439 $j961440 $n971441 $m981442 $A991443 $C1001444)
             (< $i941416 $n971419)
             ($main_inv71 $i941416 $k951417 $j961418 $n971419 $m981420 $A991421 $C1001422))
        ($main_inv71 (+ $i941438 1) $k951439 $j961440 $n971441 $m981442 $A991443 $C1001444))))

; backwards $main_sum71
(assert
  (forall (($i941438 Int) ($C1001451 (Array Int (Array Int Int))) ($A991421 (Array Int (Array Int Int))) ($k951439 Int) ($i941416 Int) ($C1001444 (Array Int (Array Int Int))) ($m981420 Int) ($n971448 Int) ($k951417 Int) ($j961447 Int) ($m981442 Int) ($n971441 Int) ($n971419 Int) ($k951446 Int) ($m981449 Int) ($A991443 (Array Int (Array Int Int))) ($A991450 (Array Int (Array Int Int))) ($j961440 Int) ($i941445 Int) ($C1001422 (Array Int (Array Int Int))) ($j961418 Int))
    (=> (and ($main_sum71 (+ $i941438 1) $k951439 $j961440 $n971441 $m981442 $A991443 $C1001444 $i941445 $k951446 $j961447 $n971448 $m981449 $A991450 $C1001451)
             ($main_sum72 $i941416 $k951417 0 $n971419 $m981420 $A991421 $C1001422 $i941438 $k951439 $j961440 $n971441 $m981442 $A991443 $C1001444)
             (< $i941416 $n971419))
        ($main_sum71 $i941416 $k951417 $j961418 $n971419 $m981420 $A991421 $C1001422 $i941445 $k951446 $j961447 $n971448 $m981449 $A991450 $C1001451))))

; loop entry $main_inv73
(assert
  (forall (($i941452 Int) ($k951453 Int) ($j961454 Int) ($A991457 (Array Int (Array Int Int))) ($n971455 Int) ($k95 Int) ($m98 Int) ($m981456 Int) ($C1001458 (Array Int (Array Int Int))) ($C100 (Array Int (Array Int Int))) ($n97 Int) ($j96 Int) ($A99 (Array Int (Array Int Int))))
    (=> (and ($main_sum71 0 $k95 $j96 $n97 $m98 $A99 $C100 $i941452 $k951453 $j961454 $n971455 $m981456 $A991457 $C1001458)
             (= $m98 1800)
             (= $n97 1000))
        ($main_inv73 0 $k951453 0 $n971455 $m981456 $A991457 $C1001458))))

; loop term $main_sum73
(assert
  (forall (($k951460 Int) ($m981463 Int) ($j961461 Int) ($n971462 Int) ($A991464 (Array Int (Array Int Int))) ($i941459 Int) ($C1001465 (Array Int (Array Int Int))))
    (=> (and (not (< $i941459 $n971462)))
        ($main_sum73 $i941459 $k951460 $j961461 $n971462 $m981463 $A991464 $C1001465 $i941459 $k951460 $j961461 $n971462 $m981463 $A991464 $C1001465))))

; loop entry $main_inv74
(assert
  (forall (($k951460 Int) ($m981463 Int) ($j961461 Int) ($n971462 Int) ($A991464 (Array Int (Array Int Int))) ($i941459 Int) ($C1001465 (Array Int (Array Int Int))))
    (=> (and (< $i941459 $n971462)
             ($main_inv73 $i941459 $k951460 $j961461 $n971462 $m981463 $A991464 $C1001465))
        ($main_inv74 $i941459 $k951460 0 $n971462 $m981463 $A991464 $C1001465))))

; loop term $main_sum74
(assert
  (forall (($m981470 Int) ($C1001472 (Array Int (Array Int Int))) ($A991471 (Array Int (Array Int Int))) ($k951467 Int) ($n971469 Int) ($j961468 Int) ($i941466 Int))
    (=> (and (not (< $j961468 $n971469)))
        ($main_sum74 $i941466 $k951467 $j961468 $n971469 $m981470 $A991471 $C1001472 $i941466 $k951467 $j961468 $n971469 $m981470 $A991471 $C1001472))))

; forwards $main_inv74
(assert
  (forall (($m981470 Int) ($C1001472 (Array Int (Array Int Int))) ($A991471 (Array Int (Array Int Int))) ($k951467 Int) ($n971469 Int) ($j961468 Int) ($i941466 Int))
    (=> (and (< $j961468 $n971469)
             ($main_inv74 $i941466 $k951467 $j961468 $n971469 $m981470 $A991471 $C1001472))
        ($main_inv74 $i941466 $k951467 (+ $j961468 1) $n971469 $m981470 $A991471 (store $C1001472 $j961468 (store (select $C1001472 $j961468) $i941466 (select (select $A991471 $i941466) $j961468)))))))

; backwards $main_sum74
(assert
  (forall (($m981470 Int) ($A991471 (Array Int (Array Int Int))) ($k951467 Int) ($n971469 Int) ($k951474 Int) ($n971476 Int) ($A991478 (Array Int (Array Int Int))) ($j961468 Int) ($i941466 Int) ($C1001472 (Array Int (Array Int Int))) ($i941473 Int) ($j961475 Int) ($C1001479 (Array Int (Array Int Int))) ($m981477 Int))
    (=> (and ($main_sum74 $i941466 $k951467 (+ $j961468 1) $n971469 $m981470 $A991471 (store $C1001472 $j961468 (store (select $C1001472 $j961468) $i941466 (select (select $A991471 $i941466) $j961468))) $i941473 $k951474 $j961475 $n971476 $m981477 $A991478 $C1001479)
             (< $j961468 $n971469))
        ($main_sum74 $i941466 $k951467 $j961468 $n971469 $m981470 $A991471 $C1001472 $i941473 $k951474 $j961475 $n971476 $m981477 $A991478 $C1001479))))

; forwards $main_inv73
(assert
  (forall (($j961482 Int) ($k951460 Int) ($m981484 Int) ($C1001486 (Array Int (Array Int Int))) ($A991485 (Array Int (Array Int Int))) ($j961461 Int) ($i941480 Int) ($n971462 Int) ($A991464 (Array Int (Array Int Int))) ($C1001465 (Array Int (Array Int Int))) ($n971483 Int) ($m981463 Int) ($k951481 Int) ($i941459 Int))
    (=> (and ($main_sum74 $i941459 $k951460 0 $n971462 $m981463 $A991464 $C1001465 $i941480 $k951481 $j961482 $n971483 $m981484 $A991485 $C1001486)
             (< $i941459 $n971462)
             ($main_inv73 $i941459 $k951460 $j961461 $n971462 $m981463 $A991464 $C1001465))
        ($main_inv73 (+ $i941480 1) $k951481 $j961482 $n971483 $m981484 $A991485 $C1001486))))

; backwards $main_sum73
(assert
  (forall (($k951488 Int) ($k951460 Int) ($A991492 (Array Int (Array Int Int))) ($C1001486 (Array Int (Array Int Int))) ($A991485 (Array Int (Array Int Int))) ($j961461 Int) ($i941487 Int) ($i941480 Int) ($n971462 Int) ($A991464 (Array Int (Array Int Int))) ($j961489 Int) ($C1001465 (Array Int (Array Int Int))) ($n971490 Int) ($j961482 Int) ($m981491 Int) ($m981484 Int) ($C1001493 (Array Int (Array Int Int))) ($n971483 Int) ($m981463 Int) ($k951481 Int) ($i941459 Int))
    (=> (and ($main_sum73 (+ $i941480 1) $k951481 $j961482 $n971483 $m981484 $A991485 $C1001486 $i941487 $k951488 $j961489 $n971490 $m981491 $A991492 $C1001493)
             ($main_sum74 $i941459 $k951460 0 $n971462 $m981463 $A991464 $C1001465 $i941480 $k951481 $j961482 $n971483 $m981484 $A991485 $C1001486)
             (< $i941459 $n971462))
        ($main_sum73 $i941459 $k951460 $j961461 $n971462 $m981463 $A991464 $C1001465 $i941487 $k951488 $j961489 $n971490 $m981491 $A991492 $C1001493))))

; loop entry $main_inv75
(assert
  (forall (($i941452 Int) ($k951453 Int) ($j961454 Int) ($n971455 Int) ($k951495 Int) ($C1001500 (Array Int (Array Int Int))) ($k95 Int) ($i941494 Int) ($m98 Int) ($m981456 Int) ($j961496 Int) ($A991499 (Array Int (Array Int Int))) ($A991457 (Array Int (Array Int Int))) ($m981498 Int) ($C100 (Array Int (Array Int Int))) ($n97 Int) ($j96 Int) ($A99 (Array Int (Array Int Int))) ($C1001458 (Array Int (Array Int Int))) ($n971497 Int))
    (=> (and ($main_sum73 0 $k951453 0 $n971455 $m981456 $A991457 $C1001458 $i941494 $k951495 $j961496 $n971497 $m981498 $A991499 $C1001500)
             ($main_sum71 0 $k95 $j96 $n97 $m98 $A99 $C100 $i941452 $k951453 $j961454 $n971455 $m981456 $A991457 $C1001458)
             (= $m98 1800)
             (= $n97 1000))
        ($main_inv75 0 $k951495 $j961496 $n971497 $m981498 $A991499 $C1001500))))

; loop term $main_sum75
(assert
  (forall (($j961503 Int) ($C1001507 (Array Int (Array Int Int))) ($n971504 Int) ($A991506 (Array Int (Array Int Int))) ($m981505 Int) ($k951502 Int) ($i941501 Int))
    (=> (and (not (< $i941501 $n971504)))
        ($main_sum75 $i941501 $k951502 $j961503 $n971504 $m981505 $A991506 $C1001507 $i941501 $k951502 $j961503 $n971504 $m981505 $A991506 $C1001507))))

; loop entry $main_inv76
(assert
  (forall (($j961503 Int) ($C1001507 (Array Int (Array Int Int))) ($n971504 Int) ($A991506 (Array Int (Array Int Int))) ($m981505 Int) ($k951502 Int) ($i941501 Int))
    (=> (and (< $i941501 $n971504)
             ($main_inv75 $i941501 $k951502 $j961503 $n971504 $m981505 $A991506 $C1001507))
        ($main_inv76 $i941501 $k951502 0 $n971504 $m981505 $A991506 $C1001507))))

; loop term $main_sum76
(assert
  (forall (($m981512 Int) ($C1001514 (Array Int (Array Int Int))) ($k951509 Int) ($n971511 Int) ($i941508 Int) ($j961510 Int) ($A991513 (Array Int (Array Int Int))))
    (=> (and (not (< $j961510 $n971511)))
        ($main_sum76 $i941508 $k951509 $j961510 $n971511 $m981512 $A991513 $C1001514 $i941508 $k951509 $j961510 $n971511 $m981512 $A991513 $C1001514))))

; __VERIFIER_assert precondition
(assert
  (forall (($m981512 Int) ($C1001514 (Array Int (Array Int Int))) ($k951509 Int) ($n971511 Int) ($i941508 Int) ($j961510 Int) ($A991513 (Array Int (Array Int Int))))
    (=> (and (< $j961510 $n971511)
             ($main_inv76 $i941508 $k951509 $j961510 $n971511 $m981512 $A991513 $C1001514))
        ($__VERIFIER_assert_pre (ite (= (select (select $C1001514 $j961510) $i941508) (select (select $A991513 $i941508) $j961510)) 1 0)))))

; forwards $main_inv76
(assert
  (forall (($m981512 Int) ($C1001514 (Array Int (Array Int Int))) ($k951509 Int) ($n971511 Int) ($i941508 Int) ($j961510 Int) ($A991513 (Array Int (Array Int Int))))
    (=> (and (__VERIFIER_assert (ite (= (select (select $C1001514 $j961510) $i941508) (select (select $A991513 $i941508) $j961510)) 1 0))
             (< $j961510 $n971511)
             ($main_inv76 $i941508 $k951509 $j961510 $n971511 $m981512 $A991513 $C1001514))
        ($main_inv76 $i941508 $k951509 (+ $j961510 1) $n971511 $m981512 $A991513 $C1001514))))

; backwards $main_sum76
(assert
  (forall (($C1001514 (Array Int (Array Int Int))) ($k951509 Int) ($n971511 Int) ($i941508 Int) ($n971518 Int) ($k951516 Int) ($C1001521 (Array Int (Array Int Int))) ($A991520 (Array Int (Array Int Int))) ($A991513 (Array Int (Array Int Int))) ($m981519 Int) ($m981512 Int) ($i941515 Int) ($j961510 Int) ($j961517 Int))
    (=> (and ($main_sum76 $i941508 $k951509 (+ $j961510 1) $n971511 $m981512 $A991513 $C1001514 $i941515 $k951516 $j961517 $n971518 $m981519 $A991520 $C1001521)
             (__VERIFIER_assert (ite (= (select (select $C1001514 $j961510) $i941508) (select (select $A991513 $i941508) $j961510)) 1 0))
             (< $j961510 $n971511))
        ($main_sum76 $i941508 $k951509 $j961510 $n971511 $m981512 $A991513 $C1001514 $i941515 $k951516 $j961517 $n971518 $m981519 $A991520 $C1001521))))

; forwards $main_inv75
(assert
  (forall (($j961503 Int) ($A991527 (Array Int (Array Int Int))) ($j961524 Int) ($m981526 Int) ($n971504 Int) ($k951523 Int) ($n971525 Int) ($A991506 (Array Int (Array Int Int))) ($m981505 Int) ($i941522 Int) ($k951502 Int) ($i941501 Int) ($C1001507 (Array Int (Array Int Int))) ($C1001528 (Array Int (Array Int Int))))
    (=> (and ($main_sum76 $i941501 $k951502 0 $n971504 $m981505 $A991506 $C1001507 $i941522 $k951523 $j961524 $n971525 $m981526 $A991527 $C1001528)
             (< $i941501 $n971504)
             ($main_inv75 $i941501 $k951502 $j961503 $n971504 $m981505 $A991506 $C1001507))
        ($main_inv75 (+ $i941522 1) $k951523 $j961524 $n971525 $m981526 $A991527 $C1001528))))

; backwards $main_sum75
(assert
  (forall (($A991527 (Array Int (Array Int Int))) ($A991534 (Array Int (Array Int Int))) ($m981526 Int) ($n971504 Int) ($i941529 Int) ($k951523 Int) ($m981533 Int) ($n971525 Int) ($A991506 (Array Int (Array Int Int))) ($m981505 Int) ($k951530 Int) ($i941522 Int) ($k951502 Int) ($i941501 Int) ($n971532 Int) ($j961531 Int) ($j961503 Int) ($j961524 Int) ($C1001535 (Array Int (Array Int Int))) ($C1001507 (Array Int (Array Int Int))) ($C1001528 (Array Int (Array Int Int))))
    (=> (and ($main_sum75 (+ $i941522 1) $k951523 $j961524 $n971525 $m981526 $A991527 $C1001528 $i941529 $k951530 $j961531 $n971532 $m981533 $A991534 $C1001535)
             ($main_sum76 $i941501 $k951502 0 $n971504 $m981505 $A991506 $C1001507 $i941522 $k951523 $j961524 $n971525 $m981526 $A991527 $C1001528)
             (< $i941501 $n971504))
        ($main_sum75 $i941501 $k951502 $j961503 $n971504 $m981505 $A991506 $C1001507 $i941529 $k951530 $j961531 $n971532 $m981533 $A991534 $C1001535))))

(check-sat)
