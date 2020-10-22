(set-logic HORN)

(declare-fun $avg_inv538 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv539 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_if399 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $avg_pre ((Array Int Int)) Bool)
(declare-fun $main_sum540 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $avg_sum538 ((Array Int Int) Int Int) Bool)
(declare-fun $main_sum539 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun avg ((Array Int Int) Int) Bool)
(declare-fun $main_inv540 ((Array Int Int) Int Int Int Int Int Int) Bool)

; loop entry $avg_inv538
(assert
  (forall ((x (Array Int Int)))
    (=> (and ($avg_pre x))
        ($avg_inv538 x 0 0))))

; loop term $avg_sum538
(assert
  (forall ((x7432 (Array Int Int)) ($i7857433 Int) ($ret7867434 Int))
    (=> (and (not (< $i7857433 10))
             ($avg_inv538 x7432 $i7857433 $ret7867434))
        ($avg_sum538 x7432 $i7857433 $ret7867434))))

; forwards $avg_inv538
(assert
  (forall ((x7432 (Array Int Int)) ($i7857433 Int) ($ret7867434 Int))
    (=> (and (< $i7857433 10)
             ($avg_inv538 x7432 $i7857433 $ret7867434))
        ($avg_inv538 x7432 (+ $i7857433 1) (+ $ret7867434 (select x7432 $i7857433))))))

; post avg
(assert
  (forall ((x7435 (Array Int Int)) ($ret7867437 Int) ($i7857436 Int))
    (=> (and ($avg_sum538 x7435 $i7857436 $ret7867437))
        (avg x7435 (div $ret7867437 10)))))

; loop entry $main_inv539
(assert
  (forall (($i792 Int) ($x787 (Array Int Int)) ($i793 Int) ($temp788 Int) ($ret5791 Int) ($ret2790 Int) ($ret789 Int))
    (=> (and (= $i792 0))
        ($main_inv539 $x787 $temp788 $ret789 $ret2790 $ret5791 $i792 $i793))))

; loop term $main_sum539
(assert
  (forall (($ret7897440 Int) ($i7927443 Int) ($x7877438 (Array Int Int)) ($ret57917442 Int) ($ret27907441 Int) ($i7937444 Int) ($temp7887439 Int))
    (=> (and (not (< $i7927443 10))
             ($main_inv539 $x7877438 $temp7887439 $ret7897440 $ret27907441 $ret57917442 $i7927443 $i7937444))
        ($main_sum539 $x7877438 $temp7887439 $ret7897440 $ret27907441 $ret57917442 $i7927443 $i7937444))))

; forwards $main_inv539
(assert
  (forall (($ret7897440 Int) ($int7445 Int) ($i7927443 Int) ($x7877438 (Array Int Int)) ($ret57917442 Int) ($ret27907441 Int) ($i7937444 Int) ($temp7887439 Int))
    (=> (and (<= (- 2147483648) $int7445)
             (<= $int7445 2147483647)
             (< $i7927443 10)
             ($main_inv539 $x7877438 $temp7887439 $ret7897440 $ret27907441 $ret57917442 $i7927443 $i7937444))
        ($main_inv539 (store $x7877438 $i7927443 $int7445) $temp7887439 $ret7897440 $ret27907441 $ret57917442 (+ $i7927443 1) $i7937444))))

; avg precondition
(assert
  (forall (($x7877446 (Array Int Int)) ($i7937452 Int) ($ret57917450 Int) ($i7927451 Int) ($ret27907449 Int) ($temp7887447 Int) ($ret7897448 Int))
    (=> (and ($main_sum539 $x7877446 $temp7887447 $ret7897448 $ret27907449 $ret57917450 $i7927451 $i7937452))
        ($avg_pre $x7877446))))

; avg precondition
(assert
  (forall (($x7877446 (Array Int Int)) ($i7937452 Int) ($ret57917450 Int) ($i7927451 Int) ($result7453 Int) ($ret27907449 Int) ($temp7887447 Int) ($ret7897448 Int))
    (=> (and (avg $x7877446 $result7453)
             ($main_sum539 $x7877446 $temp7887447 $ret7897448 $ret27907449 $ret57917450 $i7927451 $i7937452))
        ($avg_pre (store (store $x7877446 0 (select $x7877446 1)) 1 (select $x7877446 0))))))

; loop entry $main_inv540
(assert
  (forall (($x7877446 (Array Int Int)) ($i7937452 Int) ($ret57917450 Int) ($result7454 Int) ($i7927451 Int) ($result7453 Int) ($ret27907449 Int) ($temp7887447 Int) ($ret7897448 Int))
    (=> (and (= $i7937452 0)
             (avg (store (store $x7877446 0 (select $x7877446 1)) 1 (select $x7877446 0)) $result7454)
             (avg $x7877446 $result7453)
             ($main_sum539 $x7877446 $temp7887447 $ret7897448 $ret27907449 $ret57917450 $i7927451 $i7937452))
        ($main_inv540 (store (store $x7877446 0 (select $x7877446 1)) 1 (select $x7877446 0)) (select (store (store $x7877446 0 (select $x7877446 1)) 1 (select $x7877446 0)) 0) $result7453 $result7454 $ret57917450 $i7927451 $i7937452))))

; loop term $main_sum540
(assert
  (forall (($x7877455 (Array Int Int)) ($i7927460 Int) ($i7937461 Int) ($ret57917459 Int) ($temp7887456 Int) ($ret27907458 Int) ($ret7897457 Int))
    (=> (and (not (< $i7937461 (- 10 1)))
             ($main_inv540 $x7877455 $temp7887456 $ret7897457 $ret27907458 $ret57917459 $i7927460 $i7937461))
        ($main_sum540 $x7877455 $temp7887456 $ret7897457 $ret27907458 $ret57917459 $i7927460 $i7937461))))

; forwards $main_inv540
(assert
  (forall (($x7877455 (Array Int Int)) ($i7927460 Int) ($i7937461 Int) ($ret57917459 Int) ($temp7887456 Int) ($ret27907458 Int) ($ret7897457 Int))
    (=> (and (< $i7937461 (- 10 1))
             ($main_inv540 $x7877455 $temp7887456 $ret7897457 $ret27907458 $ret57917459 $i7927460 $i7937461))
        ($main_inv540 (store $x7877455 $i7937461 (select $x7877455 (+ $i7937461 1))) $temp7887456 $ret7897457 $ret27907458 $ret57917459 $i7927460 (+ $i7937461 1)))))

; avg precondition
(assert
  (forall (($ret7897464 Int) ($i7927467 Int) ($x7877462 (Array Int Int)) ($temp7887463 Int) ($ret57917466 Int) ($i7937468 Int) ($ret27907465 Int))
    (=> (and ($main_sum540 $x7877462 $temp7887463 $ret7897464 $ret27907465 $ret57917466 $i7927467 $i7937468))
        ($avg_pre (store $x7877462 (- 10 1) $temp7887463)))))

; error
(assert
  (forall (($ret7897464 Int) ($i7927467 Int) ($x7877462 (Array Int Int)) ($result7469 Int) ($temp7887463 Int) ($ret57917466 Int) ($i7937468 Int) ($ret27907465 Int))
    (=> (and (or (not (= $ret7897464 $ret27907465)) (not (= $ret7897464 $result7469)))
             (avg (store $x7877462 (- 10 1) $temp7887463) $result7469)
             ($main_sum540 $x7877462 $temp7887463 $ret7897464 $ret27907465 $ret57917466 $i7927467 $i7937468))
        false)))

; if then
(assert
  (forall (($ret7897464 Int) ($i7927467 Int) ($x7877462 (Array Int Int)) ($result7469 Int) ($temp7887463 Int) ($ret57917466 Int) ($i7937468 Int) ($ret27907465 Int))
    (=> (and (or (not (= $ret7897464 $ret27907465)) (not (= $ret7897464 $result7469)))
             (avg (store $x7877462 (- 10 1) $temp7887463) $result7469)
             ($main_sum540 $x7877462 $temp7887463 $ret7897464 $ret27907465 $ret57917466 $i7927467 $i7937468))
        ($main_if399 (store $x7877462 (- 10 1) $temp7887463) $temp7887463 $ret7897464 $ret27907465 $result7469 $i7927467 $i7937468))))

; if else
(assert
  (forall (($ret7897464 Int) ($i7927467 Int) ($x7877462 (Array Int Int)) ($result7469 Int) ($temp7887463 Int) ($ret57917466 Int) ($i7937468 Int) ($ret27907465 Int))
    (=> (and (not (or (not (= $ret7897464 $ret27907465)) (not (= $ret7897464 $result7469))))
             (avg (store $x7877462 (- 10 1) $temp7887463) $result7469)
             ($main_sum540 $x7877462 $temp7887463 $ret7897464 $ret27907465 $ret57917466 $i7927467 $i7937468))
        ($main_if399 (store $x7877462 (- 10 1) $temp7887463) $temp7887463 $ret7897464 $ret27907465 $result7469 $i7927467 $i7937468))))

(check-sat)
