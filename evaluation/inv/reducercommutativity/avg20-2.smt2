(set-logic HORN)

(declare-fun $main_sum542 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv543 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $avg_pre ((Array Int Int)) Bool)
(declare-fun $main_if400 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $avg_inv541 ((Array Int Int) Int Int) Bool)
(declare-fun $avg_sum541 ((Array Int Int) Int Int) Bool)
(declare-fun avg ((Array Int Int) Int) Bool)
(declare-fun $main_sum543 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv542 ((Array Int Int) Int Int Int Int Int Int) Bool)

; loop entry $avg_inv541
(assert
  (forall ((x (Array Int Int)))
    (=> (and ($avg_pre x))
        ($avg_inv541 x 0 0))))

; loop term $avg_sum541
(assert
  (forall ((x7477 (Array Int Int)) ($i7947478 Int) ($ret7957479 Int))
    (=> (and (not (< $i7947478 20))
             ($avg_inv541 x7477 $i7947478 $ret7957479))
        ($avg_sum541 x7477 $i7947478 $ret7957479))))

; forwards $avg_inv541
(assert
  (forall ((x7477 (Array Int Int)) ($i7947478 Int) ($ret7957479 Int))
    (=> (and (< $i7947478 20)
             ($avg_inv541 x7477 $i7947478 $ret7957479))
        ($avg_inv541 x7477 (+ $i7947478 1) (+ $ret7957479 (select x7477 $i7947478))))))

; post avg
(assert
  (forall ((x7480 (Array Int Int)) ($ret7957482 Int) ($i7947481 Int))
    (=> (and ($avg_sum541 x7480 $i7947481 $ret7957482))
        (avg x7480 (div $ret7957482 20)))))

; loop entry $main_inv542
(assert
  (forall (($x796 (Array Int Int)) ($ret798 Int) ($i801 Int) ($ret2799 Int) ($temp797 Int) ($ret5800 Int) ($i802 Int))
    (=> (and (= $i801 0))
        ($main_inv542 $x796 $temp797 $ret798 $ret2799 $ret5800 $i801 $i802))))

; loop term $main_sum542
(assert
  (forall (($temp7977484 Int) ($x7967483 (Array Int Int)) ($ret27997486 Int) ($ret58007487 Int) ($i8027489 Int) ($ret7987485 Int) ($i8017488 Int))
    (=> (and (not (< $i8017488 20))
             ($main_inv542 $x7967483 $temp7977484 $ret7987485 $ret27997486 $ret58007487 $i8017488 $i8027489))
        ($main_sum542 $x7967483 $temp7977484 $ret7987485 $ret27997486 $ret58007487 $i8017488 $i8027489))))

; forwards $main_inv542
(assert
  (forall (($temp7977484 Int) ($x7967483 (Array Int Int)) ($ret27997486 Int) ($ret58007487 Int) ($ret7987485 Int) ($i8017488 Int) ($i8027489 Int) ($int7490 Int))
    (=> (and (<= (- 2147483648) $int7490)
             (<= $int7490 2147483647)
             (< $i8017488 20)
             ($main_inv542 $x7967483 $temp7977484 $ret7987485 $ret27997486 $ret58007487 $i8017488 $i8027489))
        ($main_inv542 (store $x7967483 $i8017488 $int7490) $temp7977484 $ret7987485 $ret27997486 $ret58007487 (+ $i8017488 1) $i8027489))))

; avg precondition
(assert
  (forall (($i8027497 Int) ($ret7987493 Int) ($ret58007495 Int) ($ret27997494 Int) ($i8017496 Int) ($x7967491 (Array Int Int)) ($temp7977492 Int))
    (=> (and ($main_sum542 $x7967491 $temp7977492 $ret7987493 $ret27997494 $ret58007495 $i8017496 $i8027497))
        ($avg_pre $x7967491))))

; avg precondition
(assert
  (forall (($result7498 Int) ($i8027497 Int) ($ret7987493 Int) ($ret58007495 Int) ($ret27997494 Int) ($i8017496 Int) ($x7967491 (Array Int Int)) ($temp7977492 Int))
    (=> (and (avg $x7967491 $result7498)
             ($main_sum542 $x7967491 $temp7977492 $ret7987493 $ret27997494 $ret58007495 $i8017496 $i8027497))
        ($avg_pre (store (store $x7967491 0 (select $x7967491 1)) 1 (select $x7967491 0))))))

; loop entry $main_inv543
(assert
  (forall (($result7498 Int) ($i8027497 Int) ($ret58007495 Int) ($ret27997494 Int) ($i8017496 Int) ($x7967491 (Array Int Int)) ($temp7977492 Int) ($result7499 Int) ($ret7987493 Int))
    (=> (and (= $i8027497 0)
             (avg (store (store $x7967491 0 (select $x7967491 1)) 1 (select $x7967491 0)) $result7499)
             (avg $x7967491 $result7498)
             ($main_sum542 $x7967491 $temp7977492 $ret7987493 $ret27997494 $ret58007495 $i8017496 $i8027497))
        ($main_inv543 (store (store $x7967491 0 (select $x7967491 1)) 1 (select $x7967491 0)) (select (store (store $x7967491 0 (select $x7967491 1)) 1 (select $x7967491 0)) 0) $result7498 $result7499 $ret58007495 $i8017496 $i8027497))))

; loop term $main_sum543
(assert
  (forall (($ret7987502 Int) ($i8027506 Int) ($temp7977501 Int) ($ret58007504 Int) ($x7967500 (Array Int Int)) ($ret27997503 Int) ($i8017505 Int))
    (=> (and (not (< $i8027506 (- 20 1)))
             ($main_inv543 $x7967500 $temp7977501 $ret7987502 $ret27997503 $ret58007504 $i8017505 $i8027506))
        ($main_sum543 $x7967500 $temp7977501 $ret7987502 $ret27997503 $ret58007504 $i8017505 $i8027506))))

; forwards $main_inv543
(assert
  (forall (($ret7987502 Int) ($i8027506 Int) ($temp7977501 Int) ($ret58007504 Int) ($x7967500 (Array Int Int)) ($ret27997503 Int) ($i8017505 Int))
    (=> (and (< $i8027506 (- 20 1))
             ($main_inv543 $x7967500 $temp7977501 $ret7987502 $ret27997503 $ret58007504 $i8017505 $i8027506))
        ($main_inv543 (store $x7967500 $i8027506 (select $x7967500 (+ $i8027506 1))) $temp7977501 $ret7987502 $ret27997503 $ret58007504 $i8017505 (+ $i8027506 1)))))

; avg precondition
(assert
  (forall (($i8027513 Int) ($ret27997510 Int) ($temp7977508 Int) ($ret7987509 Int) ($i8017512 Int) ($ret58007511 Int) ($x7967507 (Array Int Int)))
    (=> (and ($main_sum543 $x7967507 $temp7977508 $ret7987509 $ret27997510 $ret58007511 $i8017512 $i8027513))
        ($avg_pre (store $x7967507 (- 20 1) $temp7977508)))))

; error
(assert
  (forall (($i8027513 Int) ($ret27997510 Int) ($temp7977508 Int) ($result7514 Int) ($ret7987509 Int) ($i8017512 Int) ($ret58007511 Int) ($x7967507 (Array Int Int)))
    (=> (and (or (not (= $ret7987509 $ret27997510)) (not (= $ret7987509 $result7514)))
             (avg (store $x7967507 (- 20 1) $temp7977508) $result7514)
             ($main_sum543 $x7967507 $temp7977508 $ret7987509 $ret27997510 $ret58007511 $i8017512 $i8027513))
        false)))

; if then
(assert
  (forall (($i8027513 Int) ($ret27997510 Int) ($temp7977508 Int) ($result7514 Int) ($ret7987509 Int) ($i8017512 Int) ($ret58007511 Int) ($x7967507 (Array Int Int)))
    (=> (and (or (not (= $ret7987509 $ret27997510)) (not (= $ret7987509 $result7514)))
             (avg (store $x7967507 (- 20 1) $temp7977508) $result7514)
             ($main_sum543 $x7967507 $temp7977508 $ret7987509 $ret27997510 $ret58007511 $i8017512 $i8027513))
        ($main_if400 (store $x7967507 (- 20 1) $temp7977508) $temp7977508 $ret7987509 $ret27997510 $result7514 $i8017512 $i8027513))))

; if else
(assert
  (forall (($i8027513 Int) ($ret27997510 Int) ($temp7977508 Int) ($result7514 Int) ($ret7987509 Int) ($i8017512 Int) ($ret58007511 Int) ($x7967507 (Array Int Int)))
    (=> (and (not (or (not (= $ret7987509 $ret27997510)) (not (= $ret7987509 $result7514))))
             (avg (store $x7967507 (- 20 1) $temp7977508) $result7514)
             ($main_sum543 $x7967507 $temp7977508 $ret7987509 $ret27997510 $ret58007511 $i8017512 $i8027513))
        ($main_if400 (store $x7967507 (- 20 1) $temp7977508) $temp7977508 $ret7987509 $ret27997510 $result7514 $i8017512 $i8027513))))

(check-sat)
