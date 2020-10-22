(set-logic HORN)

(declare-fun $main_inv548 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum548 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $avg_inv547 ((Array Int Int) Int Int) Bool)
(declare-fun $avg_pre ((Array Int Int)) Bool)
(declare-fun $avg_sum547 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_sum549 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun avg ((Array Int Int) Int) Bool)
(declare-fun $main_if402 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv549 ((Array Int Int) Int Int Int Int Int Int) Bool)

; loop entry $avg_inv547
(assert
  (forall ((x (Array Int Int)))
    (=> (and ($avg_pre x))
        ($avg_inv547 x 0 0))))

; loop term $avg_sum547
(assert
  (forall ((x10521 (Array Int Int)) ($i81210522 Int) ($ret81310523 Int))
    (=> (and (not (< $i81210522 60)))
        ($avg_sum547 x10521 $i81210522 $ret81310523 x10521 $i81210522 $ret81310523))))

; forwards $avg_inv547
(assert
  (forall ((x10521 (Array Int Int)) ($i81210522 Int) ($ret81310523 Int))
    (=> (and (< $i81210522 60)
             ($avg_inv547 x10521 $i81210522 $ret81310523))
        ($avg_inv547 x10521 (+ $i81210522 1) (+ $ret81310523 (select x10521 $i81210522))))))

; backwards $avg_sum547
(assert
  (forall (($ret81310526 Int) ($i81210525 Int) ($i81210522 Int) ($ret81310523 Int) (x10521 (Array Int Int)) (x10524 (Array Int Int)))
    (=> (and ($avg_sum547 x10521 (+ $i81210522 1) (+ $ret81310523 (select x10521 $i81210522)) x10524 $i81210525 $ret81310526)
             (< $i81210522 60))
        ($avg_sum547 x10521 $i81210522 $ret81310523 x10524 $i81210525 $ret81310526))))

; post avg
(assert
  (forall ((x10527 (Array Int Int)) ($ret81310529 Int) (x (Array Int Int)) ($i81210528 Int))
    (=> (and ($avg_sum547 x 0 0 x10527 $i81210528 $ret81310529)
             ($avg_pre x))
        (avg x10527 (div $ret81310529 60)))))

; loop entry $main_inv548
(assert
  (forall (($ret5818 Int) ($ret2817 Int) ($ret816 Int) ($i819 Int) ($x814 (Array Int Int)) ($i820 Int) ($temp815 Int))
    (=> (and (= $i819 0))
        ($main_inv548 $x814 $temp815 $ret816 $ret2817 $ret5818 $i819 $i820))))

; loop term $main_sum548
(assert
  (forall (($ret281710533 Int) ($i81910535 Int) ($ret581810534 Int) ($temp81510531 Int) ($x81410530 (Array Int Int)) ($ret81610532 Int) ($i82010536 Int))
    (=> (and (not (< $i81910535 60)))
        ($main_sum548 $x81410530 $temp81510531 $ret81610532 $ret281710533 $ret581810534 $i81910535 $i82010536 $x81410530 $temp81510531 $ret81610532 $ret281710533 $ret581810534 $i81910535 $i82010536))))

; forwards $main_inv548
(assert
  (forall (($ret281710533 Int) ($int10537 Int) ($i81910535 Int) ($ret581810534 Int) ($temp81510531 Int) ($x81410530 (Array Int Int)) ($ret81610532 Int) ($i82010536 Int))
    (=> (and (<= (- 2147483648) $int10537)
             (<= $int10537 2147483647)
             (< $i81910535 60)
             ($main_inv548 $x81410530 $temp81510531 $ret81610532 $ret281710533 $ret581810534 $i81910535 $i82010536))
        ($main_inv548 (store $x81410530 $i81910535 $int10537) $temp81510531 $ret81610532 $ret281710533 $ret581810534 (+ $i81910535 1) $i82010536))))

; backwards $main_sum548
(assert
  (forall (($ret81610540 Int) ($i81910535 Int) ($temp81510539 Int) ($i81910543 Int) ($ret281710533 Int) ($x81410538 (Array Int Int)) ($ret581810534 Int) ($temp81510531 Int) ($x81410530 (Array Int Int)) ($int10537 Int) ($ret581810542 Int) ($i82010544 Int) ($ret281710541 Int) ($ret81610532 Int) ($i82010536 Int))
    (=> (and ($main_sum548 (store $x81410530 $i81910535 $int10537) $temp81510531 $ret81610532 $ret281710533 $ret581810534 (+ $i81910535 1) $i82010536 $x81410538 $temp81510539 $ret81610540 $ret281710541 $ret581810542 $i81910543 $i82010544)
             (<= (- 2147483648) $int10537)
             (<= $int10537 2147483647)
             (< $i81910535 60))
        ($main_sum548 $x81410530 $temp81510531 $ret81610532 $ret281710533 $ret581810534 $i81910535 $i82010536 $x81410538 $temp81510539 $ret81610540 $ret281710541 $ret581810542 $i81910543 $i82010544))))

; avg precondition
(assert
  (forall (($ret5818 Int) ($i82010551 Int) ($ret81610547 Int) ($i819 Int) ($i820 Int) ($ret281710548 Int) ($temp815 Int) ($i81910550 Int) ($ret2817 Int) ($x81410545 (Array Int Int)) ($ret816 Int) ($ret581810549 Int) ($temp81510546 Int) ($x814 (Array Int Int)))
    (=> (and ($main_sum548 $x814 $temp815 $ret816 $ret2817 $ret5818 $i819 $i820 $x81410545 $temp81510546 $ret81610547 $ret281710548 $ret581810549 $i81910550 $i82010551)
             (= $i819 0))
        ($avg_pre $x81410545))))

; avg precondition
(assert
  (forall (($ret5818 Int) ($i82010551 Int) ($ret81610547 Int) ($i819 Int) ($result10552 Int) ($i820 Int) ($ret281710548 Int) ($temp815 Int) ($i81910550 Int) ($ret2817 Int) ($x81410545 (Array Int Int)) ($ret816 Int) ($ret581810549 Int) ($temp81510546 Int) ($x814 (Array Int Int)))
    (=> (and (avg $x81410545 $result10552)
             ($main_sum548 $x814 $temp815 $ret816 $ret2817 $ret5818 $i819 $i820 $x81410545 $temp81510546 $ret81610547 $ret281710548 $ret581810549 $i81910550 $i82010551)
             (= $i819 0))
        ($avg_pre (store (store $x81410545 0 (select $x81410545 1)) 1 (select $x81410545 0))))))

; loop entry $main_inv549
(assert
  (forall (($ret5818 Int) ($i82010551 Int) ($ret81610547 Int) ($i819 Int) ($i820 Int) ($ret281710548 Int) ($temp815 Int) ($i81910550 Int) ($ret2817 Int) ($x81410545 (Array Int Int)) ($ret816 Int) ($ret581810549 Int) ($result10552 Int) ($result10553 Int) ($temp81510546 Int) ($x814 (Array Int Int)))
    (=> (and (= $i82010551 0)
             (avg (store (store $x81410545 0 (select $x81410545 1)) 1 (select $x81410545 0)) $result10553)
             (avg $x81410545 $result10552)
             ($main_sum548 $x814 $temp815 $ret816 $ret2817 $ret5818 $i819 $i820 $x81410545 $temp81510546 $ret81610547 $ret281710548 $ret581810549 $i81910550 $i82010551)
             (= $i819 0))
        ($main_inv549 (store (store $x81410545 0 (select $x81410545 1)) 1 (select $x81410545 0)) (select (store (store $x81410545 0 (select $x81410545 1)) 1 (select $x81410545 0)) 0) $result10552 $result10553 $ret581810549 $i81910550 $i82010551))))

; loop term $main_sum549
(assert
  (forall (($ret281710557 Int) ($i81910559 Int) ($ret581810558 Int) ($x81410554 (Array Int Int)) ($i82010560 Int) ($temp81510555 Int) ($ret81610556 Int))
    (=> (and (not (< $i82010560 (- 60 1))))
        ($main_sum549 $x81410554 $temp81510555 $ret81610556 $ret281710557 $ret581810558 $i81910559 $i82010560 $x81410554 $temp81510555 $ret81610556 $ret281710557 $ret581810558 $i81910559 $i82010560))))

; forwards $main_inv549
(assert
  (forall (($ret281710557 Int) ($i81910559 Int) ($ret581810558 Int) ($x81410554 (Array Int Int)) ($i82010560 Int) ($temp81510555 Int) ($ret81610556 Int))
    (=> (and (< $i82010560 (- 60 1))
             ($main_inv549 $x81410554 $temp81510555 $ret81610556 $ret281710557 $ret581810558 $i81910559 $i82010560))
        ($main_inv549 (store $x81410554 $i82010560 (select $x81410554 (+ $i82010560 1))) $temp81510555 $ret81610556 $ret281710557 $ret581810558 $i81910559 (+ $i82010560 1)))))

; backwards $main_sum549
(assert
  (forall (($ret281710564 Int) ($temp81510562 Int) ($i82010567 Int) ($ret581810565 Int) ($i81910566 Int) ($ret281710557 Int) ($i81910559 Int) ($ret581810558 Int) ($ret81610563 Int) ($x81410554 (Array Int Int)) ($i82010560 Int) ($x81410561 (Array Int Int)) ($temp81510555 Int) ($ret81610556 Int))
    (=> (and ($main_sum549 (store $x81410554 $i82010560 (select $x81410554 (+ $i82010560 1))) $temp81510555 $ret81610556 $ret281710557 $ret581810558 $i81910559 (+ $i82010560 1) $x81410561 $temp81510562 $ret81610563 $ret281710564 $ret581810565 $i81910566 $i82010567)
             (< $i82010560 (- 60 1)))
        ($main_sum549 $x81410554 $temp81510555 $ret81610556 $ret281710557 $ret581810558 $i81910559 $i82010560 $x81410561 $temp81510562 $ret81610563 $ret281710564 $ret581810565 $i81910566 $i82010567))))

; avg precondition
(assert
  (forall (($i82010551 Int) ($ret81610547 Int) ($i82010574 Int) ($x81410568 (Array Int Int)) ($i819 Int) ($i81910573 Int) ($i820 Int) ($ret581810572 Int) ($i81910550 Int) ($temp81510569 Int) ($ret5818 Int) ($ret2817 Int) ($x81410545 (Array Int Int)) ($ret816 Int) ($ret581810549 Int) ($result10552 Int) ($result10553 Int) ($temp81510546 Int) ($x814 (Array Int Int)) ($ret281710548 Int) ($ret281710571 Int) ($ret81610570 Int) ($temp815 Int))
    (=> (and ($main_sum549 (store (store $x81410545 0 (select $x81410545 1)) 1 (select $x81410545 0)) (select (store (store $x81410545 0 (select $x81410545 1)) 1 (select $x81410545 0)) 0) $result10552 $result10553 $ret581810549 $i81910550 $i82010551 $x81410568 $temp81510569 $ret81610570 $ret281710571 $ret581810572 $i81910573 $i82010574)
             (= $i82010551 0)
             (avg (store (store $x81410545 0 (select $x81410545 1)) 1 (select $x81410545 0)) $result10553)
             (avg $x81410545 $result10552)
             ($main_sum548 $x814 $temp815 $ret816 $ret2817 $ret5818 $i819 $i820 $x81410545 $temp81510546 $ret81610547 $ret281710548 $ret581810549 $i81910550 $i82010551)
             (= $i819 0))
        ($avg_pre (store $x81410568 (- 60 1) $temp81510569)))))

; error
(assert
  (forall (($i82010551 Int) ($ret81610547 Int) ($i82010574 Int) ($x81410568 (Array Int Int)) ($i819 Int) ($i81910573 Int) ($i820 Int) ($i81910550 Int) ($temp81510569 Int) ($ret5818 Int) ($ret2817 Int) ($x81410545 (Array Int Int)) ($ret816 Int) ($ret581810549 Int) ($result10552 Int) ($result10553 Int) ($temp81510546 Int) ($x814 (Array Int Int)) ($ret281710548 Int) ($ret281710571 Int) ($result10575 Int) ($ret581810572 Int) ($ret81610570 Int) ($temp815 Int))
    (=> (and (or (not (= $ret81610570 $ret281710571)) (not (= $ret81610570 $result10575)))
             (avg (store $x81410568 (- 60 1) $temp81510569) $result10575)
             ($main_sum549 (store (store $x81410545 0 (select $x81410545 1)) 1 (select $x81410545 0)) (select (store (store $x81410545 0 (select $x81410545 1)) 1 (select $x81410545 0)) 0) $result10552 $result10553 $ret581810549 $i81910550 $i82010551 $x81410568 $temp81510569 $ret81610570 $ret281710571 $ret581810572 $i81910573 $i82010574)
             (= $i82010551 0)
             (avg (store (store $x81410545 0 (select $x81410545 1)) 1 (select $x81410545 0)) $result10553)
             (avg $x81410545 $result10552)
             ($main_sum548 $x814 $temp815 $ret816 $ret2817 $ret5818 $i819 $i820 $x81410545 $temp81510546 $ret81610547 $ret281710548 $ret581810549 $i81910550 $i82010551)
             (= $i819 0))
        false)))

; if then
(assert
  (forall (($i82010551 Int) ($ret81610547 Int) ($i82010574 Int) ($x81410568 (Array Int Int)) ($i819 Int) ($i81910573 Int) ($i820 Int) ($i81910550 Int) ($temp81510569 Int) ($ret5818 Int) ($ret2817 Int) ($x81410545 (Array Int Int)) ($ret816 Int) ($ret581810549 Int) ($result10552 Int) ($result10553 Int) ($temp81510546 Int) ($x814 (Array Int Int)) ($ret281710548 Int) ($ret281710571 Int) ($result10575 Int) ($ret581810572 Int) ($ret81610570 Int) ($temp815 Int))
    (=> (and (or (not (= $ret81610570 $ret281710571)) (not (= $ret81610570 $result10575)))
             (avg (store $x81410568 (- 60 1) $temp81510569) $result10575)
             ($main_sum549 (store (store $x81410545 0 (select $x81410545 1)) 1 (select $x81410545 0)) (select (store (store $x81410545 0 (select $x81410545 1)) 1 (select $x81410545 0)) 0) $result10552 $result10553 $ret581810549 $i81910550 $i82010551 $x81410568 $temp81510569 $ret81610570 $ret281710571 $ret581810572 $i81910573 $i82010574)
             (= $i82010551 0)
             (avg (store (store $x81410545 0 (select $x81410545 1)) 1 (select $x81410545 0)) $result10553)
             (avg $x81410545 $result10552)
             ($main_sum548 $x814 $temp815 $ret816 $ret2817 $ret5818 $i819 $i820 $x81410545 $temp81510546 $ret81610547 $ret281710548 $ret581810549 $i81910550 $i82010551)
             (= $i819 0))
        ($main_if402 $x814 $temp815 $ret816 $ret2817 $ret5818 $i819 $i820 (store $x81410568 (- 60 1) $temp81510569) $temp81510569 $ret81610570 $ret281710571 $result10575 $i81910573 $i82010574))))

; if else
(assert
  (forall (($i82010551 Int) ($ret81610547 Int) ($i82010574 Int) ($x81410568 (Array Int Int)) ($i819 Int) ($i81910573 Int) ($i820 Int) ($i81910550 Int) ($temp81510569 Int) ($ret5818 Int) ($ret2817 Int) ($x81410545 (Array Int Int)) ($ret816 Int) ($ret581810549 Int) ($result10552 Int) ($result10553 Int) ($temp81510546 Int) ($x814 (Array Int Int)) ($ret281710548 Int) ($ret281710571 Int) ($result10575 Int) ($ret581810572 Int) ($ret81610570 Int) ($temp815 Int))
    (=> (and (not (or (not (= $ret81610570 $ret281710571)) (not (= $ret81610570 $result10575))))
             (avg (store $x81410568 (- 60 1) $temp81510569) $result10575)
             ($main_sum549 (store (store $x81410545 0 (select $x81410545 1)) 1 (select $x81410545 0)) (select (store (store $x81410545 0 (select $x81410545 1)) 1 (select $x81410545 0)) 0) $result10552 $result10553 $ret581810549 $i81910550 $i82010551 $x81410568 $temp81510569 $ret81610570 $ret281710571 $ret581810572 $i81910573 $i82010574)
             (= $i82010551 0)
             (avg (store (store $x81410545 0 (select $x81410545 1)) 1 (select $x81410545 0)) $result10553)
             (avg $x81410545 $result10552)
             ($main_sum548 $x814 $temp815 $ret816 $ret2817 $ret5818 $i819 $i820 $x81410545 $temp81510546 $ret81610547 $ret281710548 $ret581810549 $i81910550 $i82010551)
             (= $i819 0))
        ($main_if402 $x814 $temp815 $ret816 $ret2817 $ret5818 $i819 $i820 (store $x81410568 (- 60 1) $temp81510569) $temp81510569 $ret81610570 $ret281710571 $result10575 $i81910573 $i82010574))))

(check-sat)
