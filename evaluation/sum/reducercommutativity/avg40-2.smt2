(set-logic HORN)

(declare-fun $main_sum545 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $avg_pre ((Array Int Int)) Bool)
(declare-fun $avg_inv544 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv546 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $avg_sum544 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_sum546 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun avg ((Array Int Int) Int) Bool)
(declare-fun $main_if401 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv545 ((Array Int Int) Int Int Int Int Int Int) Bool)

; loop entry $avg_inv544
(assert
  (forall ((x (Array Int Int)))
    (=> (and ($avg_pre x))
        ($avg_inv544 x 0 0))))

; loop term $avg_sum544
(assert
  (forall ((x10459 (Array Int Int)) ($i80310460 Int) ($ret80410461 Int))
    (=> (and (not (< $i80310460 40)))
        ($avg_sum544 x10459 $i80310460 $ret80410461 x10459 $i80310460 $ret80410461))))

; forwards $avg_inv544
(assert
  (forall ((x10459 (Array Int Int)) ($i80310460 Int) ($ret80410461 Int))
    (=> (and (< $i80310460 40)
             ($avg_inv544 x10459 $i80310460 $ret80410461))
        ($avg_inv544 x10459 (+ $i80310460 1) (+ $ret80410461 (select x10459 $i80310460))))))

; backwards $avg_sum544
(assert
  (forall ((x10459 (Array Int Int)) ($i80310463 Int) ($ret80410464 Int) (x10462 (Array Int Int)) ($ret80410461 Int) ($i80310460 Int))
    (=> (and ($avg_sum544 x10459 (+ $i80310460 1) (+ $ret80410461 (select x10459 $i80310460)) x10462 $i80310463 $ret80410464)
             (< $i80310460 40))
        ($avg_sum544 x10459 $i80310460 $ret80410461 x10462 $i80310463 $ret80410464))))

; post avg
(assert
  (forall ((x10465 (Array Int Int)) ($ret80410467 Int) (x (Array Int Int)) ($i80310466 Int))
    (=> (and ($avg_sum544 x 0 0 x10465 $i80310466 $ret80410467)
             ($avg_pre x))
        (avg x10465 (div $ret80410467 40)))))

; loop entry $main_inv545
(assert
  (forall (($i810 Int) ($temp806 Int) ($x805 (Array Int Int)) ($ret2808 Int) ($ret5809 Int) ($ret807 Int) ($i811 Int))
    (=> (and (= $i810 0))
        ($main_inv545 $x805 $temp806 $ret807 $ret2808 $ret5809 $i810 $i811))))

; loop term $main_sum545
(assert
  (forall (($temp80610469 Int) ($ret280810471 Int) ($i81010473 Int) ($x80510468 (Array Int Int)) ($i81110474 Int) ($ret580910472 Int) ($ret80710470 Int))
    (=> (and (not (< $i81010473 40)))
        ($main_sum545 $x80510468 $temp80610469 $ret80710470 $ret280810471 $ret580910472 $i81010473 $i81110474 $x80510468 $temp80610469 $ret80710470 $ret280810471 $ret580910472 $i81010473 $i81110474))))

; forwards $main_inv545
(assert
  (forall (($temp80610469 Int) ($ret280810471 Int) ($i81010473 Int) ($int10475 Int) ($x80510468 (Array Int Int)) ($i81110474 Int) ($ret580910472 Int) ($ret80710470 Int))
    (=> (and (<= (- 2147483648) $int10475)
             (<= $int10475 2147483647)
             (< $i81010473 40)
             ($main_inv545 $x80510468 $temp80610469 $ret80710470 $ret280810471 $ret580910472 $i81010473 $i81110474))
        ($main_inv545 (store $x80510468 $i81010473 $int10475) $temp80610469 $ret80710470 $ret280810471 $ret580910472 (+ $i81010473 1) $i81110474))))

; backwards $main_sum545
(assert
  (forall (($temp80610477 Int) ($ret280810471 Int) ($i81110482 Int) ($ret280810479 Int) ($ret580910480 Int) ($ret80710478 Int) ($int10475 Int) ($x80510476 (Array Int Int)) ($temp80610469 Int) ($x80510468 (Array Int Int)) ($i81110474 Int) ($i81010473 Int) ($i81010481 Int) ($ret580910472 Int) ($ret80710470 Int))
    (=> (and ($main_sum545 (store $x80510468 $i81010473 $int10475) $temp80610469 $ret80710470 $ret280810471 $ret580910472 (+ $i81010473 1) $i81110474 $x80510476 $temp80610477 $ret80710478 $ret280810479 $ret580910480 $i81010481 $i81110482)
             (<= (- 2147483648) $int10475)
             (<= $int10475 2147483647)
             (< $i81010473 40))
        ($main_sum545 $x80510468 $temp80610469 $ret80710470 $ret280810471 $ret580910472 $i81010473 $i81110474 $x80510476 $temp80610477 $ret80710478 $ret280810479 $ret580910480 $i81010481 $i81110482))))

; avg precondition
(assert
  (forall (($i810 Int) ($x805 (Array Int Int)) ($ret2808 Int) ($ret280810486 Int) ($i81010488 Int) ($x80510483 (Array Int Int)) ($temp806 Int) ($i81110489 Int) ($temp80610484 Int) ($ret5809 Int) ($ret807 Int) ($ret580910487 Int) ($i811 Int) ($ret80710485 Int))
    (=> (and ($main_sum545 $x805 $temp806 $ret807 $ret2808 $ret5809 $i810 $i811 $x80510483 $temp80610484 $ret80710485 $ret280810486 $ret580910487 $i81010488 $i81110489)
             (= $i810 0))
        ($avg_pre $x80510483))))

; avg precondition
(assert
  (forall (($i810 Int) ($ret2808 Int) ($ret280810486 Int) ($i81010488 Int) ($x80510483 (Array Int Int)) ($temp806 Int) ($i81110489 Int) ($x805 (Array Int Int)) ($result10490 Int) ($temp80610484 Int) ($ret5809 Int) ($ret807 Int) ($ret580910487 Int) ($i811 Int) ($ret80710485 Int))
    (=> (and (avg $x80510483 $result10490)
             ($main_sum545 $x805 $temp806 $ret807 $ret2808 $ret5809 $i810 $i811 $x80510483 $temp80610484 $ret80710485 $ret280810486 $ret580910487 $i81010488 $i81110489)
             (= $i810 0))
        ($avg_pre (store (store $x80510483 0 (select $x80510483 1)) 1 (select $x80510483 0))))))

; loop entry $main_inv546
(assert
  (forall (($ret2808 Int) ($ret280810486 Int) ($i81010488 Int) ($x80510483 (Array Int Int)) ($i810 Int) ($result10491 Int) ($temp806 Int) ($i81110489 Int) ($x805 (Array Int Int)) ($result10490 Int) ($temp80610484 Int) ($ret5809 Int) ($ret807 Int) ($ret580910487 Int) ($i811 Int) ($ret80710485 Int))
    (=> (and (= $i81110489 0)
             (avg (store (store $x80510483 0 (select $x80510483 1)) 1 (select $x80510483 0)) $result10491)
             (avg $x80510483 $result10490)
             ($main_sum545 $x805 $temp806 $ret807 $ret2808 $ret5809 $i810 $i811 $x80510483 $temp80610484 $ret80710485 $ret280810486 $ret580910487 $i81010488 $i81110489)
             (= $i810 0))
        ($main_inv546 (store (store $x80510483 0 (select $x80510483 1)) 1 (select $x80510483 0)) (select (store (store $x80510483 0 (select $x80510483 1)) 1 (select $x80510483 0)) 0) $result10490 $result10491 $ret580910487 $i81010488 $i81110489))))

; loop term $main_sum546
(assert
  (forall (($x80510492 (Array Int Int)) ($temp80610493 Int) ($i81010497 Int) ($ret80710494 Int) ($ret580910496 Int) ($i81110498 Int) ($ret280810495 Int))
    (=> (and (not (< $i81110498 (- 40 1))))
        ($main_sum546 $x80510492 $temp80610493 $ret80710494 $ret280810495 $ret580910496 $i81010497 $i81110498 $x80510492 $temp80610493 $ret80710494 $ret280810495 $ret580910496 $i81010497 $i81110498))))

; forwards $main_inv546
(assert
  (forall (($x80510492 (Array Int Int)) ($temp80610493 Int) ($i81010497 Int) ($ret80710494 Int) ($ret580910496 Int) ($i81110498 Int) ($ret280810495 Int))
    (=> (and (< $i81110498 (- 40 1))
             ($main_inv546 $x80510492 $temp80610493 $ret80710494 $ret280810495 $ret580910496 $i81010497 $i81110498))
        ($main_inv546 (store $x80510492 $i81110498 (select $x80510492 (+ $i81110498 1))) $temp80610493 $ret80710494 $ret280810495 $ret580910496 $i81010497 (+ $i81110498 1)))))

; backwards $main_sum546
(assert
  (forall (($ret580910503 Int) ($ret280810502 Int) ($x80510492 (Array Int Int)) ($temp80610493 Int) ($ret80710501 Int) ($x80510499 (Array Int Int)) ($temp80610500 Int) ($i81110505 Int) ($ret80710494 Int) ($ret580910496 Int) ($i81010497 Int) ($i81010504 Int) ($i81110498 Int) ($ret280810495 Int))
    (=> (and ($main_sum546 (store $x80510492 $i81110498 (select $x80510492 (+ $i81110498 1))) $temp80610493 $ret80710494 $ret280810495 $ret580910496 $i81010497 (+ $i81110498 1) $x80510499 $temp80610500 $ret80710501 $ret280810502 $ret580910503 $i81010504 $i81110505)
             (< $i81110498 (- 40 1)))
        ($main_sum546 $x80510492 $temp80610493 $ret80710494 $ret280810495 $ret580910496 $i81010497 $i81110498 $x80510499 $temp80610500 $ret80710501 $ret280810502 $ret580910503 $i81010504 $i81110505))))

; avg precondition
(assert
  (forall (($ret80710508 Int) ($ret2808 Int) ($ret280810486 Int) ($x80510506 (Array Int Int)) ($ret580910510 Int) ($i81010511 Int) ($x80510483 (Array Int Int)) ($i810 Int) ($result10491 Int) ($temp806 Int) ($i81110489 Int) ($x805 (Array Int Int)) ($result10490 Int) ($temp80610484 Int) ($i81110512 Int) ($ret5809 Int) ($ret807 Int) ($ret280810509 Int) ($ret580910487 Int) ($i81010488 Int) ($temp80610507 Int) ($i811 Int) ($ret80710485 Int))
    (=> (and ($main_sum546 (store (store $x80510483 0 (select $x80510483 1)) 1 (select $x80510483 0)) (select (store (store $x80510483 0 (select $x80510483 1)) 1 (select $x80510483 0)) 0) $result10490 $result10491 $ret580910487 $i81010488 $i81110489 $x80510506 $temp80610507 $ret80710508 $ret280810509 $ret580910510 $i81010511 $i81110512)
             (= $i81110489 0)
             (avg (store (store $x80510483 0 (select $x80510483 1)) 1 (select $x80510483 0)) $result10491)
             (avg $x80510483 $result10490)
             ($main_sum545 $x805 $temp806 $ret807 $ret2808 $ret5809 $i810 $i811 $x80510483 $temp80610484 $ret80710485 $ret280810486 $ret580910487 $i81010488 $i81110489)
             (= $i810 0))
        ($avg_pre (store $x80510506 (- 40 1) $temp80610507)))))

; error
(assert
  (forall (($ret80710508 Int) ($ret2808 Int) ($ret280810486 Int) ($x80510506 (Array Int Int)) ($i81010511 Int) ($x80510483 (Array Int Int)) ($i810 Int) ($result10491 Int) ($temp806 Int) ($i81110489 Int) ($x805 (Array Int Int)) ($result10490 Int) ($temp80610484 Int) ($i81110512 Int) ($ret5809 Int) ($ret807 Int) ($ret280810509 Int) ($ret580910487 Int) ($i81010488 Int) ($temp80610507 Int) ($i811 Int) ($ret80710485 Int) ($result10513 Int) ($ret580910510 Int))
    (=> (and (or (not (= $ret80710508 $ret280810509)) (not (= $ret80710508 $result10513)))
             (avg (store $x80510506 (- 40 1) $temp80610507) $result10513)
             ($main_sum546 (store (store $x80510483 0 (select $x80510483 1)) 1 (select $x80510483 0)) (select (store (store $x80510483 0 (select $x80510483 1)) 1 (select $x80510483 0)) 0) $result10490 $result10491 $ret580910487 $i81010488 $i81110489 $x80510506 $temp80610507 $ret80710508 $ret280810509 $ret580910510 $i81010511 $i81110512)
             (= $i81110489 0)
             (avg (store (store $x80510483 0 (select $x80510483 1)) 1 (select $x80510483 0)) $result10491)
             (avg $x80510483 $result10490)
             ($main_sum545 $x805 $temp806 $ret807 $ret2808 $ret5809 $i810 $i811 $x80510483 $temp80610484 $ret80710485 $ret280810486 $ret580910487 $i81010488 $i81110489)
             (= $i810 0))
        false)))

; if then
(assert
  (forall (($ret80710508 Int) ($ret2808 Int) ($ret280810486 Int) ($x80510506 (Array Int Int)) ($i81010511 Int) ($x80510483 (Array Int Int)) ($i810 Int) ($result10491 Int) ($temp806 Int) ($i81110489 Int) ($x805 (Array Int Int)) ($result10490 Int) ($temp80610484 Int) ($i81110512 Int) ($ret5809 Int) ($ret807 Int) ($ret280810509 Int) ($ret580910487 Int) ($i81010488 Int) ($temp80610507 Int) ($i811 Int) ($ret80710485 Int) ($result10513 Int) ($ret580910510 Int))
    (=> (and (or (not (= $ret80710508 $ret280810509)) (not (= $ret80710508 $result10513)))
             (avg (store $x80510506 (- 40 1) $temp80610507) $result10513)
             ($main_sum546 (store (store $x80510483 0 (select $x80510483 1)) 1 (select $x80510483 0)) (select (store (store $x80510483 0 (select $x80510483 1)) 1 (select $x80510483 0)) 0) $result10490 $result10491 $ret580910487 $i81010488 $i81110489 $x80510506 $temp80610507 $ret80710508 $ret280810509 $ret580910510 $i81010511 $i81110512)
             (= $i81110489 0)
             (avg (store (store $x80510483 0 (select $x80510483 1)) 1 (select $x80510483 0)) $result10491)
             (avg $x80510483 $result10490)
             ($main_sum545 $x805 $temp806 $ret807 $ret2808 $ret5809 $i810 $i811 $x80510483 $temp80610484 $ret80710485 $ret280810486 $ret580910487 $i81010488 $i81110489)
             (= $i810 0))
        ($main_if401 $x805 $temp806 $ret807 $ret2808 $ret5809 $i810 $i811 (store $x80510506 (- 40 1) $temp80610507) $temp80610507 $ret80710508 $ret280810509 $result10513 $i81010511 $i81110512))))

; if else
(assert
  (forall (($ret80710508 Int) ($ret2808 Int) ($ret280810486 Int) ($x80510506 (Array Int Int)) ($i81010511 Int) ($x80510483 (Array Int Int)) ($i810 Int) ($result10491 Int) ($temp806 Int) ($i81110489 Int) ($x805 (Array Int Int)) ($result10490 Int) ($temp80610484 Int) ($i81110512 Int) ($ret5809 Int) ($ret807 Int) ($ret280810509 Int) ($ret580910487 Int) ($i81010488 Int) ($temp80610507 Int) ($i811 Int) ($ret80710485 Int) ($result10513 Int) ($ret580910510 Int))
    (=> (and (not (or (not (= $ret80710508 $ret280810509)) (not (= $ret80710508 $result10513))))
             (avg (store $x80510506 (- 40 1) $temp80610507) $result10513)
             ($main_sum546 (store (store $x80510483 0 (select $x80510483 1)) 1 (select $x80510483 0)) (select (store (store $x80510483 0 (select $x80510483 1)) 1 (select $x80510483 0)) 0) $result10490 $result10491 $ret580910487 $i81010488 $i81110489 $x80510506 $temp80610507 $ret80710508 $ret280810509 $ret580910510 $i81010511 $i81110512)
             (= $i81110489 0)
             (avg (store (store $x80510483 0 (select $x80510483 1)) 1 (select $x80510483 0)) $result10491)
             (avg $x80510483 $result10490)
             ($main_sum545 $x805 $temp806 $ret807 $ret2808 $ret5809 $i810 $i811 $x80510483 $temp80610484 $ret80710485 $ret280810486 $ret580910487 $i81010488 $i81110489)
             (= $i810 0))
        ($main_if401 $x805 $temp806 $ret807 $ret2808 $ret5809 $i810 $i811 (store $x80510506 (- 40 1) $temp80610507) $temp80610507 $ret80710508 $ret280810509 $result10513 $i81010511 $i81110512))))

(check-sat)
