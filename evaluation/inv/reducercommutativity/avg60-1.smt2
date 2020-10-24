(set-logic HORN)

(declare-fun $main_inv548 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $avg_inv547 ((Array Int Int) Int Int) Bool)
(declare-fun $avg_pre ((Array Int Int)) Bool)
(declare-fun $main_sum549 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum548 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_if402 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun avg ((Array Int Int) Int) Bool)
(declare-fun $avg_sum547 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv549 ((Array Int Int) Int Int Int Int Int Int) Bool)

; loop entry $avg_inv547
(assert
  (forall ((x (Array Int Int)))
    (=> (and ($avg_pre x))
        ($avg_inv547 x 0 0))))

; loop term $avg_sum547
(assert
  (forall ((x7567 (Array Int Int)) ($i8127568 Int) ($ret8137569 Int))
    (=> (and (not (< $i8127568 60))
             ($avg_inv547 x7567 $i8127568 $ret8137569))
        ($avg_sum547 x7567 $i8127568 $ret8137569))))

; forwards $avg_inv547
(assert
  (forall ((x7567 (Array Int Int)) ($i8127568 Int) ($ret8137569 Int))
    (=> (and (< $i8127568 60)
             ($avg_inv547 x7567 $i8127568 $ret8137569))
        ($avg_inv547 x7567 (+ $i8127568 1) (+ $ret8137569 (select x7567 $i8127568))))))

; post avg
(assert
  (forall ((x7570 (Array Int Int)) ($ret8137572 Int) ($i8127571 Int))
    (=> (and ($avg_sum547 x7570 $i8127571 $ret8137572))
        (avg x7570 (div $ret8137572 60)))))

; loop entry $main_inv548
(assert
  (forall (($ret5818 Int) ($ret2817 Int) ($ret816 Int) ($i819 Int) ($x814 (Array Int Int)) ($i820 Int) ($temp815 Int))
    (=> (and (= $i819 0))
        ($main_inv548 $x814 $temp815 $ret816 $ret2817 $ret5818 $i819 $i820))))

; loop term $main_sum548
(assert
  (forall (($ret58187577 Int) ($ret28177576 Int) ($ret8167575 Int) ($i8207579 Int) ($i8197578 Int) ($temp8157574 Int) ($x8147573 (Array Int Int)))
    (=> (and (not (< $i8197578 60))
             ($main_inv548 $x8147573 $temp8157574 $ret8167575 $ret28177576 $ret58187577 $i8197578 $i8207579))
        ($main_sum548 $x8147573 $temp8157574 $ret8167575 $ret28177576 $ret58187577 $i8197578 $i8207579))))

; forwards $main_inv548
(assert
  (forall (($ret28177576 Int) ($ret8167575 Int) ($i8207579 Int) ($i8197578 Int) ($ret58187577 Int) ($int7580 Int) ($temp8157574 Int) ($x8147573 (Array Int Int)))
    (=> (and (<= (- 2147483648) $int7580)
             (<= $int7580 2147483647)
             (< $i8197578 60)
             ($main_inv548 $x8147573 $temp8157574 $ret8167575 $ret28177576 $ret58187577 $i8197578 $i8207579))
        ($main_inv548 (store $x8147573 $i8197578 $int7580) $temp8157574 $ret8167575 $ret28177576 $ret58187577 (+ $i8197578 1) $i8207579))))

; avg precondition
(assert
  (forall (($ret28177584 Int) ($ret58187585 Int) ($i8207587 Int) ($ret8167583 Int) ($i8197586 Int) ($x8147581 (Array Int Int)) ($temp8157582 Int))
    (=> (and ($main_sum548 $x8147581 $temp8157582 $ret8167583 $ret28177584 $ret58187585 $i8197586 $i8207587))
        ($avg_pre $x8147581))))

; avg precondition
(assert
  (forall (($ret58187585 Int) ($i8207587 Int) ($ret8167583 Int) ($i8197586 Int) ($x8147581 (Array Int Int)) ($temp8157582 Int) ($ret28177584 Int) ($result7588 Int))
    (=> (and (avg $x8147581 $result7588)
             ($main_sum548 $x8147581 $temp8157582 $ret8167583 $ret28177584 $ret58187585 $i8197586 $i8207587))
        ($avg_pre (store (store $x8147581 0 (select $x8147581 1)) 1 (select $x8147581 0))))))

; loop entry $main_inv549
(assert
  (forall (($ret58187585 Int) ($i8207587 Int) ($ret8167583 Int) ($i8197586 Int) ($temp8157582 Int) ($ret28177584 Int) ($result7588 Int) ($x8147581 (Array Int Int)) ($result7589 Int))
    (=> (and (= $i8207587 0)
             (avg (store (store $x8147581 0 (select $x8147581 1)) 1 (select $x8147581 0)) $result7589)
             (avg $x8147581 $result7588)
             ($main_sum548 $x8147581 $temp8157582 $ret8167583 $ret28177584 $ret58187585 $i8197586 $i8207587))
        ($main_inv549 (store (store $x8147581 0 (select $x8147581 1)) 1 (select $x8147581 0)) (select (store (store $x8147581 0 (select $x8147581 1)) 1 (select $x8147581 0)) 0) $result7588 $result7589 $ret58187585 $i8197586 $i8207587))))

; loop term $main_sum549
(assert
  (forall (($ret28177593 Int) ($ret58187594 Int) ($temp8157591 Int) ($i8207596 Int) ($x8147590 (Array Int Int)) ($i8197595 Int) ($ret8167592 Int))
    (=> (and (not (< $i8207596 (- 60 1)))
             ($main_inv549 $x8147590 $temp8157591 $ret8167592 $ret28177593 $ret58187594 $i8197595 $i8207596))
        ($main_sum549 $x8147590 $temp8157591 $ret8167592 $ret28177593 $ret58187594 $i8197595 $i8207596))))

; forwards $main_inv549
(assert
  (forall (($ret28177593 Int) ($ret58187594 Int) ($temp8157591 Int) ($i8207596 Int) ($x8147590 (Array Int Int)) ($i8197595 Int) ($ret8167592 Int))
    (=> (and (< $i8207596 (- 60 1))
             ($main_inv549 $x8147590 $temp8157591 $ret8167592 $ret28177593 $ret58187594 $i8197595 $i8207596))
        ($main_inv549 (store $x8147590 $i8207596 (select $x8147590 (+ $i8207596 1))) $temp8157591 $ret8167592 $ret28177593 $ret58187594 $i8197595 (+ $i8207596 1)))))

; avg precondition
(assert
  (forall (($i8207603 Int) ($temp8157598 Int) ($ret28177600 Int) ($ret58187601 Int) ($x8147597 (Array Int Int)) ($i8197602 Int) ($ret8167599 Int))
    (=> (and ($main_sum549 $x8147597 $temp8157598 $ret8167599 $ret28177600 $ret58187601 $i8197602 $i8207603))
        ($avg_pre (store $x8147597 (- 60 1) $temp8157598)))))

; error
(assert
  (forall (($i8207603 Int) ($temp8157598 Int) ($ret28177600 Int) ($ret58187601 Int) ($result7604 Int) ($x8147597 (Array Int Int)) ($i8197602 Int) ($ret8167599 Int))
    (=> (and (or (not (= $ret8167599 $ret28177600)) (not (= $ret8167599 $result7604)))
             (avg (store $x8147597 (- 60 1) $temp8157598) $result7604)
             ($main_sum549 $x8147597 $temp8157598 $ret8167599 $ret28177600 $ret58187601 $i8197602 $i8207603))
        false)))

; if then
(assert
  (forall (($i8207603 Int) ($temp8157598 Int) ($ret28177600 Int) ($ret58187601 Int) ($result7604 Int) ($x8147597 (Array Int Int)) ($i8197602 Int) ($ret8167599 Int))
    (=> (and (or (not (= $ret8167599 $ret28177600)) (not (= $ret8167599 $result7604)))
             (avg (store $x8147597 (- 60 1) $temp8157598) $result7604)
             ($main_sum549 $x8147597 $temp8157598 $ret8167599 $ret28177600 $ret58187601 $i8197602 $i8207603))
        ($main_if402 (store $x8147597 (- 60 1) $temp8157598) $temp8157598 $ret8167599 $ret28177600 $result7604 $i8197602 $i8207603))))

; if else
(assert
  (forall (($i8207603 Int) ($temp8157598 Int) ($ret28177600 Int) ($ret58187601 Int) ($result7604 Int) ($x8147597 (Array Int Int)) ($i8197602 Int) ($ret8167599 Int))
    (=> (and (not (or (not (= $ret8167599 $ret28177600)) (not (= $ret8167599 $result7604))))
             (avg (store $x8147597 (- 60 1) $temp8157598) $result7604)
             ($main_sum549 $x8147597 $temp8157598 $ret8167599 $ret28177600 $ret58187601 $i8197602 $i8207603))
        ($main_if402 (store $x8147597 (- 60 1) $temp8157598) $temp8157598 $ret8167599 $ret28177600 $result7604 $i8197602 $i8207603))))

(check-sat)
