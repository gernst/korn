(set-logic HORN)

(declare-fun mapsum ((Array Int Int) Int) Bool)
(declare-fun $main_if8 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv23 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $mapsum_sum22 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_sum23 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $mapsum_inv22 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv24 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum24 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $mapsum_pre ((Array Int Int)) Bool)

; loop entry $mapsum_inv22
(assert
  (forall ((x (Array Int Int)))
    (=> (and ($mapsum_pre x))
        ($mapsum_inv22 x 0 0))))

; loop term $mapsum_sum22
(assert
  (forall ((x435 (Array Int Int)) ($i64436 Int) ($ret65437 Int))
    (=> (and (not (< $i64436 100000)))
        ($mapsum_sum22 x435 $i64436 $ret65437 x435 $i64436 $ret65437))))

; forwards $mapsum_inv22
(assert
  (forall ((x435 (Array Int Int)) ($i64436 Int) ($ret65437 Int))
    (=> (and (< $i64436 100000)
             ($mapsum_inv22 x435 $i64436 $ret65437))
        ($mapsum_inv22 x435 (+ $i64436 1) (+ (+ $ret65437 $i64436) (select x435 $i64436))))))

; backwards $mapsum_sum22
(assert
  (forall (($ret65437 Int) ($ret65440 Int) (x438 (Array Int Int)) (x435 (Array Int Int)) ($i64436 Int) ($i64439 Int))
    (=> (and ($mapsum_sum22 x435 (+ $i64436 1) (+ (+ $ret65437 $i64436) (select x435 $i64436)) x438 $i64439 $ret65440)
             (< $i64436 100000))
        ($mapsum_sum22 x435 $i64436 $ret65437 x438 $i64439 $ret65440))))

; post mapsum
(assert
  (forall ((x441 (Array Int Int)) ($ret65443 Int) (x (Array Int Int)) ($i64442 Int))
    (=> (and ($mapsum_sum22 x 0 0 x441 $i64442 $ret65443)
             ($mapsum_pre x))
        (mapsum x441 $ret65443))))

; loop entry $main_inv23
(assert
  (forall (($temp67 Int) ($i72 Int) ($ret68 Int) ($ret570 Int) ($i71 Int) ($ret269 Int) ($x66 (Array Int Int)))
    (=> (and (= $i71 0))
        ($main_inv23 $x66 $temp67 $ret68 $ret269 $ret570 $i71 $i72))))

; loop term $main_sum23
(assert
  (forall (($ret269447 Int) ($ret68446 Int) ($x66444 (Array Int Int)) ($ret570448 Int) ($i71449 Int) ($i72450 Int) ($temp67445 Int))
    (=> (and (not (< $i71449 100000)))
        ($main_sum23 $x66444 $temp67445 $ret68446 $ret269447 $ret570448 $i71449 $i72450 $x66444 $temp67445 $ret68446 $ret269447 $ret570448 $i71449 $i72450))))

; forwards $main_inv23
(assert
  (forall (($int451 Int) ($ret269447 Int) ($ret68446 Int) ($x66444 (Array Int Int)) ($ret570448 Int) ($i71449 Int) ($i72450 Int) ($temp67445 Int))
    (=> (and (<= (- 2147483648) $int451)
             (<= $int451 2147483647)
             (< $i71449 100000)
             ($main_inv23 $x66444 $temp67445 $ret68446 $ret269447 $ret570448 $i71449 $i72450))
        ($main_inv23 (store $x66444 $i71449 $int451) $temp67445 $ret68446 $ret269447 $ret570448 (+ $i71449 1) $i72450))))

; backwards $main_sum23
(assert
  (forall (($int451 Int) ($i71457 Int) ($x66452 (Array Int Int)) ($ret570456 Int) ($ret68446 Int) ($ret68454 Int) ($i72458 Int) ($x66444 (Array Int Int)) ($ret570448 Int) ($i72450 Int) ($temp67445 Int) ($ret269455 Int) ($ret269447 Int) ($temp67453 Int) ($i71449 Int))
    (=> (and ($main_sum23 (store $x66444 $i71449 $int451) $temp67445 $ret68446 $ret269447 $ret570448 (+ $i71449 1) $i72450 $x66452 $temp67453 $ret68454 $ret269455 $ret570456 $i71457 $i72458)
             (<= (- 2147483648) $int451)
             (<= $int451 2147483647)
             (< $i71449 100000))
        ($main_sum23 $x66444 $temp67445 $ret68446 $ret269447 $ret570448 $i71449 $i72450 $x66452 $temp67453 $ret68454 $ret269455 $ret570456 $i71457 $i72458))))

; mapsum precondition
(assert
  (forall (($temp67 Int) ($i72 Int) ($ret68 Int) ($i71 Int) ($ret269462 Int) ($ret269 Int) ($ret68461 Int) ($x66 (Array Int Int)) ($ret570463 Int) ($temp67460 Int) ($i71464 Int) ($i72465 Int) ($x66459 (Array Int Int)) ($ret570 Int))
    (=> (and ($main_sum23 $x66 $temp67 $ret68 $ret269 $ret570 $i71 $i72 $x66459 $temp67460 $ret68461 $ret269462 $ret570463 $i71464 $i72465)
             (= $i71 0))
        ($mapsum_pre $x66459))))

; mapsum precondition
(assert
  (forall (($temp67 Int) ($i72 Int) ($ret68 Int) ($result466 Int) ($i71 Int) ($ret269462 Int) ($ret269 Int) ($ret68461 Int) ($x66 (Array Int Int)) ($ret570463 Int) ($temp67460 Int) ($i71464 Int) ($i72465 Int) ($x66459 (Array Int Int)) ($ret570 Int))
    (=> (and (mapsum $x66459 $result466)
             ($main_sum23 $x66 $temp67 $ret68 $ret269 $ret570 $i71 $i72 $x66459 $temp67460 $ret68461 $ret269462 $ret570463 $i71464 $i72465)
             (= $i71 0))
        ($mapsum_pre (store (store $x66459 0 (select $x66459 1)) 1 (select $x66459 0))))))

; loop entry $main_inv24
(assert
  (forall (($temp67 Int) ($i72 Int) ($result466 Int) ($i71 Int) ($ret269462 Int) ($ret269 Int) ($ret68461 Int) ($x66 (Array Int Int)) ($ret570463 Int) ($temp67460 Int) ($ret68 Int) ($result467 Int) ($i71464 Int) ($i72465 Int) ($x66459 (Array Int Int)) ($ret570 Int))
    (=> (and (= $i72465 0)
             (mapsum (store (store $x66459 0 (select $x66459 1)) 1 (select $x66459 0)) $result467)
             (mapsum $x66459 $result466)
             ($main_sum23 $x66 $temp67 $ret68 $ret269 $ret570 $i71 $i72 $x66459 $temp67460 $ret68461 $ret269462 $ret570463 $i71464 $i72465)
             (= $i71 0))
        ($main_inv24 (store (store $x66459 0 (select $x66459 1)) 1 (select $x66459 0)) (select (store (store $x66459 0 (select $x66459 1)) 1 (select $x66459 0)) 0) $result466 $result467 $ret570463 $i71464 $i72465))))

; loop term $main_sum24
(assert
  (forall (($x66468 (Array Int Int)) ($ret269471 Int) ($ret570472 Int) ($temp67469 Int) ($i72474 Int) ($i71473 Int) ($ret68470 Int))
    (=> (and (not (< $i72474 (- 100000 1))))
        ($main_sum24 $x66468 $temp67469 $ret68470 $ret269471 $ret570472 $i71473 $i72474 $x66468 $temp67469 $ret68470 $ret269471 $ret570472 $i71473 $i72474))))

; forwards $main_inv24
(assert
  (forall (($x66468 (Array Int Int)) ($ret269471 Int) ($ret570472 Int) ($temp67469 Int) ($i72474 Int) ($i71473 Int) ($ret68470 Int))
    (=> (and (< $i72474 (- 100000 1))
             ($main_inv24 $x66468 $temp67469 $ret68470 $ret269471 $ret570472 $i71473 $i72474))
        ($main_inv24 (store $x66468 $i72474 (select $x66468 (+ $i72474 1))) $temp67469 $ret68470 $ret269471 $ret570472 $i71473 (+ $i72474 1)))))

; backwards $main_sum24
(assert
  (forall (($x66468 (Array Int Int)) ($i72481 Int) ($temp67476 Int) ($ret570479 Int) ($ret269471 Int) ($ret68477 Int) ($ret269478 Int) ($x66475 (Array Int Int)) ($temp67469 Int) ($i71480 Int) ($ret570472 Int) ($i72474 Int) ($i71473 Int) ($ret68470 Int))
    (=> (and ($main_sum24 (store $x66468 $i72474 (select $x66468 (+ $i72474 1))) $temp67469 $ret68470 $ret269471 $ret570472 $i71473 (+ $i72474 1) $x66475 $temp67476 $ret68477 $ret269478 $ret570479 $i71480 $i72481)
             (< $i72474 (- 100000 1)))
        ($main_sum24 $x66468 $temp67469 $ret68470 $ret269471 $ret570472 $i71473 $i72474 $x66475 $temp67476 $ret68477 $ret269478 $ret570479 $i71480 $i72481))))

; mapsum precondition
(assert
  (forall (($ret68484 Int) ($ret570486 Int) ($i71487 Int) ($i72488 Int) ($i72 Int) ($temp67483 Int) ($i71 Int) ($ret269462 Int) ($ret269 Int) ($ret68461 Int) ($x66 (Array Int Int)) ($ret570463 Int) ($temp67460 Int) ($temp67 Int) ($x66482 (Array Int Int)) ($ret68 Int) ($result467 Int) ($result466 Int) ($ret269485 Int) ($i71464 Int) ($i72465 Int) ($x66459 (Array Int Int)) ($ret570 Int))
    (=> (and ($main_sum24 (store (store $x66459 0 (select $x66459 1)) 1 (select $x66459 0)) (select (store (store $x66459 0 (select $x66459 1)) 1 (select $x66459 0)) 0) $result466 $result467 $ret570463 $i71464 $i72465 $x66482 $temp67483 $ret68484 $ret269485 $ret570486 $i71487 $i72488)
             (= $i72465 0)
             (mapsum (store (store $x66459 0 (select $x66459 1)) 1 (select $x66459 0)) $result467)
             (mapsum $x66459 $result466)
             ($main_sum23 $x66 $temp67 $ret68 $ret269 $ret570 $i71 $i72 $x66459 $temp67460 $ret68461 $ret269462 $ret570463 $i71464 $i72465)
             (= $i71 0))
        ($mapsum_pre (store $x66482 (- 100000 1) $temp67483)))))

; error
(assert
  (forall (($ret570486 Int) ($i71487 Int) ($i72488 Int) ($i72 Int) ($temp67483 Int) ($i71 Int) ($ret269462 Int) ($ret269 Int) ($ret68461 Int) ($x66 (Array Int Int)) ($result489 Int) ($ret68484 Int) ($ret570463 Int) ($temp67460 Int) ($temp67 Int) ($x66482 (Array Int Int)) ($ret68 Int) ($result467 Int) ($result466 Int) ($ret269485 Int) ($i71464 Int) ($i72465 Int) ($x66459 (Array Int Int)) ($ret570 Int))
    (=> (and (or (not (= $ret68484 $ret269485)) (not (= $ret68484 $result489)))
             (mapsum (store $x66482 (- 100000 1) $temp67483) $result489)
             ($main_sum24 (store (store $x66459 0 (select $x66459 1)) 1 (select $x66459 0)) (select (store (store $x66459 0 (select $x66459 1)) 1 (select $x66459 0)) 0) $result466 $result467 $ret570463 $i71464 $i72465 $x66482 $temp67483 $ret68484 $ret269485 $ret570486 $i71487 $i72488)
             (= $i72465 0)
             (mapsum (store (store $x66459 0 (select $x66459 1)) 1 (select $x66459 0)) $result467)
             (mapsum $x66459 $result466)
             ($main_sum23 $x66 $temp67 $ret68 $ret269 $ret570 $i71 $i72 $x66459 $temp67460 $ret68461 $ret269462 $ret570463 $i71464 $i72465)
             (= $i71 0))
        false)))

; if then
(assert
  (forall (($ret570486 Int) ($i71487 Int) ($i72488 Int) ($i72 Int) ($temp67483 Int) ($i71 Int) ($ret269462 Int) ($ret269 Int) ($ret68461 Int) ($x66 (Array Int Int)) ($result489 Int) ($ret68484 Int) ($ret570463 Int) ($temp67460 Int) ($temp67 Int) ($x66482 (Array Int Int)) ($ret68 Int) ($result467 Int) ($result466 Int) ($ret269485 Int) ($i71464 Int) ($i72465 Int) ($x66459 (Array Int Int)) ($ret570 Int))
    (=> (and (or (not (= $ret68484 $ret269485)) (not (= $ret68484 $result489)))
             (mapsum (store $x66482 (- 100000 1) $temp67483) $result489)
             ($main_sum24 (store (store $x66459 0 (select $x66459 1)) 1 (select $x66459 0)) (select (store (store $x66459 0 (select $x66459 1)) 1 (select $x66459 0)) 0) $result466 $result467 $ret570463 $i71464 $i72465 $x66482 $temp67483 $ret68484 $ret269485 $ret570486 $i71487 $i72488)
             (= $i72465 0)
             (mapsum (store (store $x66459 0 (select $x66459 1)) 1 (select $x66459 0)) $result467)
             (mapsum $x66459 $result466)
             ($main_sum23 $x66 $temp67 $ret68 $ret269 $ret570 $i71 $i72 $x66459 $temp67460 $ret68461 $ret269462 $ret570463 $i71464 $i72465)
             (= $i71 0))
        ($main_if8 $x66 $temp67 $ret68 $ret269 $ret570 $i71 $i72 (store $x66482 (- 100000 1) $temp67483) $temp67483 $ret68484 $ret269485 $result489 $i71487 $i72488))))

; if else
(assert
  (forall (($ret570486 Int) ($i71487 Int) ($i72488 Int) ($i72 Int) ($temp67483 Int) ($i71 Int) ($ret269462 Int) ($ret269 Int) ($ret68461 Int) ($x66 (Array Int Int)) ($result489 Int) ($ret68484 Int) ($ret570463 Int) ($temp67460 Int) ($temp67 Int) ($x66482 (Array Int Int)) ($ret68 Int) ($result467 Int) ($result466 Int) ($ret269485 Int) ($i71464 Int) ($i72465 Int) ($x66459 (Array Int Int)) ($ret570 Int))
    (=> (and (not (or (not (= $ret68484 $ret269485)) (not (= $ret68484 $result489))))
             (mapsum (store $x66482 (- 100000 1) $temp67483) $result489)
             ($main_sum24 (store (store $x66459 0 (select $x66459 1)) 1 (select $x66459 0)) (select (store (store $x66459 0 (select $x66459 1)) 1 (select $x66459 0)) 0) $result466 $result467 $ret570463 $i71464 $i72465 $x66482 $temp67483 $ret68484 $ret269485 $ret570486 $i71487 $i72488)
             (= $i72465 0)
             (mapsum (store (store $x66459 0 (select $x66459 1)) 1 (select $x66459 0)) $result467)
             (mapsum $x66459 $result466)
             ($main_sum23 $x66 $temp67 $ret68 $ret269 $ret570 $i71 $i72 $x66459 $temp67460 $ret68461 $ret269462 $ret570463 $i71464 $i72465)
             (= $i71 0))
        ($main_if8 $x66 $temp67 $ret68 $ret269 $ret570 $i71 $i72 (store $x66482 (- 100000 1) $temp67483) $temp67483 $ret68484 $ret269485 $result489 $i71487 $i72488))))

(check-sat)
