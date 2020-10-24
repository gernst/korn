(set-logic HORN)

(declare-fun $main_inv35 (Int Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv36 (Int Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum33 (Int Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) Int Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv31 (Int Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv32 (Int Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum34 (Int Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) Int Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum32 (Int Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) Int Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_inv34 (Int Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_sum31 (Int Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) Int Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $main_sum36 (Int Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) Int Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv33 (Int Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $__VERIFIER_assert_if21 (Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_sum35 (Int Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int)) Int Int Int Int Int Int (Array Int (Array Int Int)) (Array Int (Array Int Int))) Bool)
(declare-fun $assume_abort_if_not_if20 (Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if20 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond552 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if20 cond cond552))
        (assume_abort_if_not cond552))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond553 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond553))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if21 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond554 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if21 cond cond554))
        (__VERIFIER_assert cond554))))

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
  (forall (($A52561 (Array Int (Array Int Int))) ($n49558 Int) ($q50559 Int) ($i46555 Int) ($j47556 Int) ($s51560 Int) ($B53562 (Array Int (Array Int Int))) ($m48557 Int))
    (=> (and (not (< $i46555 $m48557)))
        ($main_sum31 $i46555 $j47556 $m48557 $n49558 $q50559 $s51560 $A52561 $B53562 $i46555 $j47556 $m48557 $n49558 $q50559 $s51560 $A52561 $B53562))))

; loop entry $main_inv32
(assert
  (forall (($A52561 (Array Int (Array Int Int))) ($n49558 Int) ($q50559 Int) ($i46555 Int) ($j47556 Int) ($s51560 Int) ($B53562 (Array Int (Array Int Int))) ($m48557 Int))
    (=> (and (< $i46555 $m48557)
             ($main_inv31 $i46555 $j47556 $m48557 $n49558 $q50559 $s51560 $A52561 $B53562))
        ($main_inv32 $i46555 0 $m48557 $n49558 $q50559 $s51560 $A52561 $B53562))))

; loop term $main_sum32
(assert
  (forall (($q50567 Int) ($A52569 (Array Int (Array Int Int))) ($j47564 Int) ($m48565 Int) ($s51568 Int) ($i46563 Int) ($B53570 (Array Int (Array Int Int))) ($n49566 Int))
    (=> (and (not (< $j47564 $n49566)))
        ($main_sum32 $i46563 $j47564 $m48565 $n49566 $q50567 $s51568 $A52569 $B53570 $i46563 $j47564 $m48565 $n49566 $q50567 $s51568 $A52569 $B53570))))

; forwards $main_inv32
(assert
  (forall (($q50567 Int) ($A52569 (Array Int (Array Int Int))) ($j47564 Int) ($int571 Int) ($m48565 Int) ($s51568 Int) ($i46563 Int) ($B53570 (Array Int (Array Int Int))) ($n49566 Int))
    (=> (and (<= (- 2147483648) $int571)
             (<= $int571 2147483647)
             (< $j47564 $n49566)
             ($main_inv32 $i46563 $j47564 $m48565 $n49566 $q50567 $s51568 $A52569 $B53570))
        ($main_inv32 $i46563 (+ $j47564 1) $m48565 $n49566 $q50567 $s51568 $A52569 (store $B53570 $i46563 (store (select $B53570 $i46563) $j47564 $int571))))))

; backwards $main_sum32
(assert
  (forall (($s51577 Int) ($q50567 Int) ($m48574 Int) ($A52569 (Array Int (Array Int Int))) ($j47564 Int) ($int571 Int) ($B53579 (Array Int (Array Int Int))) ($q50576 Int) ($m48565 Int) ($s51568 Int) ($i46563 Int) ($i46572 Int) ($n49566 Int) ($n49575 Int) ($j47573 Int) ($A52578 (Array Int (Array Int Int))) ($B53570 (Array Int (Array Int Int))))
    (=> (and ($main_sum32 $i46563 (+ $j47564 1) $m48565 $n49566 $q50567 $s51568 $A52569 (store $B53570 $i46563 (store (select $B53570 $i46563) $j47564 $int571)) $i46572 $j47573 $m48574 $n49575 $q50576 $s51577 $A52578 $B53579)
             (<= (- 2147483648) $int571)
             (<= $int571 2147483647)
             (< $j47564 $n49566))
        ($main_sum32 $i46563 $j47564 $m48565 $n49566 $q50567 $s51568 $A52569 $B53570 $i46572 $j47573 $m48574 $n49575 $q50576 $s51577 $A52578 $B53579))))

; forwards $main_inv31
(assert
  (forall (($A52561 (Array Int (Array Int Int))) ($m48582 Int) ($j47581 Int) ($n49558 Int) ($B53587 (Array Int (Array Int Int))) ($s51585 Int) ($q50584 Int) ($q50559 Int) ($n49583 Int) ($i46555 Int) ($j47556 Int) ($i46580 Int) ($s51560 Int) ($B53562 (Array Int (Array Int Int))) ($A52586 (Array Int (Array Int Int))) ($m48557 Int))
    (=> (and ($main_sum32 $i46555 0 $m48557 $n49558 $q50559 $s51560 $A52561 $B53562 $i46580 $j47581 $m48582 $n49583 $q50584 $s51585 $A52586 $B53587)
             (< $i46555 $m48557)
             ($main_inv31 $i46555 $j47556 $m48557 $n49558 $q50559 $s51560 $A52561 $B53562))
        ($main_inv31 (+ $i46580 1) $j47581 $m48582 $n49583 $q50584 $s51585 $A52586 $B53587))))

; backwards $main_sum31
(assert
  (forall (($A52561 (Array Int (Array Int Int))) ($m48582 Int) ($j47581 Int) ($B53587 (Array Int (Array Int Int))) ($q50592 Int) ($s51585 Int) ($q50584 Int) ($q50559 Int) ($i46555 Int) ($j47556 Int) ($s51560 Int) ($B53562 (Array Int (Array Int Int))) ($m48557 Int) ($j47589 Int) ($n49558 Int) ($A52594 (Array Int (Array Int Int))) ($n49583 Int) ($i46588 Int) ($m48590 Int) ($n49591 Int) ($i46580 Int) ($B53595 (Array Int (Array Int Int))) ($s51593 Int) ($A52586 (Array Int (Array Int Int))))
    (=> (and ($main_sum31 (+ $i46580 1) $j47581 $m48582 $n49583 $q50584 $s51585 $A52586 $B53587 $i46588 $j47589 $m48590 $n49591 $q50592 $s51593 $A52594 $B53595)
             ($main_sum32 $i46555 0 $m48557 $n49558 $q50559 $s51560 $A52561 $B53562 $i46580 $j47581 $m48582 $n49583 $q50584 $s51585 $A52586 $B53587)
             (< $i46555 $m48557))
        ($main_sum31 $i46555 $j47556 $m48557 $n49558 $q50559 $s51560 $A52561 $B53562 $i46588 $j47589 $m48590 $n49591 $q50592 $s51593 $A52594 $B53595))))

; loop entry $main_inv33
(assert
  (forall (($s51 Int) ($n49 Int) ($B53603 (Array Int (Array Int Int))) ($s51601 Int) ($j47597 Int) ($n49599 Int) ($q50 Int) ($i46596 Int) ($B53 (Array Int (Array Int Int))) ($m48 Int) ($A52 (Array Int (Array Int Int))) ($q50600 Int) ($A52602 (Array Int (Array Int Int))) ($m48598 Int))
    (=> (and ($main_sum31 0 0 $m48 $n49 $q50 $s51 $A52 $B53 $i46596 $j47597 $m48598 $n49599 $q50600 $s51601 $A52602 $B53603)
             (assume_abort_if_not (ite (< $s51 $n49) 1 0))
             (assume_abort_if_not (ite (< $q50 $m48) 1 0))
             (= $s51 700)
             (= $q50 500)
             (= $n49 1500)
             (= $m48 1000))
        ($main_inv33 0 0 $m48598 $n49599 $q50600 $s51601 $A52602 $B53603))))

; loop term $main_sum33
(assert
  (forall (($q50608 Int) ($n49607 Int) ($m48606 Int) ($B53611 (Array Int (Array Int Int))) ($A52610 (Array Int (Array Int Int))) ($i46604 Int) ($s51609 Int) ($j47605 Int))
    (=> (and (not (< $i46604 $q50608)))
        ($main_sum33 $i46604 $j47605 $m48606 $n49607 $q50608 $s51609 $A52610 $B53611 $i46604 $j47605 $m48606 $n49607 $q50608 $s51609 $A52610 $B53611))))

; loop entry $main_inv34
(assert
  (forall (($q50608 Int) ($n49607 Int) ($m48606 Int) ($B53611 (Array Int (Array Int Int))) ($A52610 (Array Int (Array Int Int))) ($i46604 Int) ($s51609 Int) ($j47605 Int))
    (=> (and (< $i46604 $q50608)
             ($main_inv33 $i46604 $j47605 $m48606 $n49607 $q50608 $s51609 $A52610 $B53611))
        ($main_inv34 $i46604 0 $m48606 $n49607 $q50608 $s51609 $A52610 $B53611))))

; loop term $main_sum34
(assert
  (forall (($m48614 Int) ($B53619 (Array Int (Array Int Int))) ($n49615 Int) ($q50616 Int) ($s51617 Int) ($i46612 Int) ($j47613 Int) ($A52618 (Array Int (Array Int Int))))
    (=> (and (not (< $j47613 $s51617)))
        ($main_sum34 $i46612 $j47613 $m48614 $n49615 $q50616 $s51617 $A52618 $B53619 $i46612 $j47613 $m48614 $n49615 $q50616 $s51617 $A52618 $B53619))))

; forwards $main_inv34
(assert
  (forall (($m48614 Int) ($B53619 (Array Int (Array Int Int))) ($n49615 Int) ($q50616 Int) ($s51617 Int) ($i46612 Int) ($j47613 Int) ($A52618 (Array Int (Array Int Int))))
    (=> (and (< $j47613 $s51617)
             ($main_inv34 $i46612 $j47613 $m48614 $n49615 $q50616 $s51617 $A52618 $B53619))
        ($main_inv34 $i46612 (+ $j47613 1) $m48614 $n49615 $q50616 $s51617 (store $A52618 $i46612 (store (select $A52618 $i46612) $j47613 (select (select $B53619 $i46612) $j47613))) $B53619))))

; backwards $main_sum34
(assert
  (forall (($m48614 Int) ($s51625 Int) ($i46620 Int) ($j47621 Int) ($q50616 Int) ($q50624 Int) ($B53627 (Array Int (Array Int Int))) ($i46612 Int) ($j47613 Int) ($A52618 (Array Int (Array Int Int))) ($B53619 (Array Int (Array Int Int))) ($n49623 Int) ($n49615 Int) ($A52626 (Array Int (Array Int Int))) ($s51617 Int) ($m48622 Int))
    (=> (and ($main_sum34 $i46612 (+ $j47613 1) $m48614 $n49615 $q50616 $s51617 (store $A52618 $i46612 (store (select $A52618 $i46612) $j47613 (select (select $B53619 $i46612) $j47613))) $B53619 $i46620 $j47621 $m48622 $n49623 $q50624 $s51625 $A52626 $B53627)
             (< $j47613 $s51617))
        ($main_sum34 $i46612 $j47613 $m48614 $n49615 $q50616 $s51617 $A52618 $B53619 $i46620 $j47621 $m48622 $n49623 $q50624 $s51625 $A52626 $B53627))))

; forwards $main_inv33
(assert
  (forall (($B53635 (Array Int (Array Int Int))) ($s51633 Int) ($n49631 Int) ($q50608 Int) ($q50632 Int) ($n49607 Int) ($m48606 Int) ($B53611 (Array Int (Array Int Int))) ($m48630 Int) ($i46604 Int) ($A52634 (Array Int (Array Int Int))) ($s51609 Int) ($j47605 Int) ($j47629 Int) ($A52610 (Array Int (Array Int Int))) ($i46628 Int))
    (=> (and ($main_sum34 $i46604 0 $m48606 $n49607 $q50608 $s51609 $A52610 $B53611 $i46628 $j47629 $m48630 $n49631 $q50632 $s51633 $A52634 $B53635)
             (< $i46604 $q50608)
             ($main_inv33 $i46604 $j47605 $m48606 $n49607 $q50608 $s51609 $A52610 $B53611))
        ($main_inv33 (+ $i46628 1) $j47629 $m48630 $n49631 $q50632 $s51633 $A52634 $B53635))))

; backwards $main_sum33
(assert
  (forall (($B53635 (Array Int (Array Int Int))) ($m48638 Int) ($q50608 Int) ($n49607 Int) ($m48606 Int) ($B53611 (Array Int (Array Int Int))) ($i46604 Int) ($A52642 (Array Int (Array Int Int))) ($s51609 Int) ($j47605 Int) ($s51633 Int) ($s51641 Int) ($n49631 Int) ($B53643 (Array Int (Array Int Int))) ($j47637 Int) ($q50632 Int) ($j47629 Int) ($A52610 (Array Int (Array Int Int))) ($i46628 Int) ($i46636 Int) ($m48630 Int) ($n49639 Int) ($A52634 (Array Int (Array Int Int))) ($q50640 Int))
    (=> (and ($main_sum33 (+ $i46628 1) $j47629 $m48630 $n49631 $q50632 $s51633 $A52634 $B53635 $i46636 $j47637 $m48638 $n49639 $q50640 $s51641 $A52642 $B53643)
             ($main_sum34 $i46604 0 $m48606 $n49607 $q50608 $s51609 $A52610 $B53611 $i46628 $j47629 $m48630 $n49631 $q50632 $s51633 $A52634 $B53635)
             (< $i46604 $q50608))
        ($main_sum33 $i46604 $j47605 $m48606 $n49607 $q50608 $s51609 $A52610 $B53611 $i46636 $j47637 $m48638 $n49639 $q50640 $s51641 $A52642 $B53643))))

; loop entry $main_inv35
(assert
  (forall (($s51 Int) ($q50648 Int) ($n49647 Int) ($n49 Int) ($B53603 (Array Int (Array Int Int))) ($s51601 Int) ($B53651 (Array Int (Array Int Int))) ($j47597 Int) ($i46596 Int) ($A52650 (Array Int (Array Int Int))) ($s51649 Int) ($B53 (Array Int (Array Int Int))) ($m48646 Int) ($i46644 Int) ($n49599 Int) ($q50 Int) ($j47645 Int) ($m48 Int) ($A52 (Array Int (Array Int Int))) ($q50600 Int) ($A52602 (Array Int (Array Int Int))) ($m48598 Int))
    (=> (and ($main_sum33 0 0 $m48598 $n49599 $q50600 $s51601 $A52602 $B53603 $i46644 $j47645 $m48646 $n49647 $q50648 $s51649 $A52650 $B53651)
             ($main_sum31 0 0 $m48 $n49 $q50 $s51 $A52 $B53 $i46596 $j47597 $m48598 $n49599 $q50600 $s51601 $A52602 $B53603)
             (assume_abort_if_not (ite (< $s51 $n49) 1 0))
             (assume_abort_if_not (ite (< $q50 $m48) 1 0))
             (= $s51 700)
             (= $q50 500)
             (= $n49 1500)
             (= $m48 1000))
        ($main_inv35 0 0 $m48646 $n49647 $q50648 $s51649 $A52650 $B53651))))

; loop term $main_sum35
(assert
  (forall (($B53659 (Array Int (Array Int Int))) ($q50656 Int) ($A52658 (Array Int (Array Int Int))) ($s51657 Int) ($j47653 Int) ($m48654 Int) ($n49655 Int) ($i46652 Int))
    (=> (and (not (< $i46652 $q50656)))
        ($main_sum35 $i46652 $j47653 $m48654 $n49655 $q50656 $s51657 $A52658 $B53659 $i46652 $j47653 $m48654 $n49655 $q50656 $s51657 $A52658 $B53659))))

; loop entry $main_inv36
(assert
  (forall (($B53659 (Array Int (Array Int Int))) ($q50656 Int) ($A52658 (Array Int (Array Int Int))) ($s51657 Int) ($j47653 Int) ($m48654 Int) ($n49655 Int) ($i46652 Int))
    (=> (and (< $i46652 $q50656)
             ($main_inv35 $i46652 $j47653 $m48654 $n49655 $q50656 $s51657 $A52658 $B53659))
        ($main_inv36 $i46652 0 $m48654 $n49655 $q50656 $s51657 $A52658 $B53659))))

; loop term $main_sum36
(assert
  (forall (($i46660 Int) ($q50664 Int) ($n49663 Int) ($j47661 Int) ($B53667 (Array Int (Array Int Int))) ($s51665 Int) ($m48662 Int) ($A52666 (Array Int (Array Int Int))))
    (=> (and (not (< $j47661 $s51665)))
        ($main_sum36 $i46660 $j47661 $m48662 $n49663 $q50664 $s51665 $A52666 $B53667 $i46660 $j47661 $m48662 $n49663 $q50664 $s51665 $A52666 $B53667))))

; __VERIFIER_assert precondition
(assert
  (forall (($i46660 Int) ($q50664 Int) ($n49663 Int) ($j47661 Int) ($B53667 (Array Int (Array Int Int))) ($s51665 Int) ($m48662 Int) ($A52666 (Array Int (Array Int Int))))
    (=> (and (< $j47661 $s51665)
             ($main_inv36 $i46660 $j47661 $m48662 $n49663 $q50664 $s51665 $A52666 $B53667))
        ($__VERIFIER_assert_pre (ite (= (select (select $A52666 $i46660) $j47661) (select (select $B53667 $i46660) $j47661)) 1 0)))))

; forwards $main_inv36
(assert
  (forall (($i46660 Int) ($q50664 Int) ($n49663 Int) ($j47661 Int) ($B53667 (Array Int (Array Int Int))) ($s51665 Int) ($m48662 Int) ($A52666 (Array Int (Array Int Int))))
    (=> (and (__VERIFIER_assert (ite (= (select (select $A52666 $i46660) $j47661) (select (select $B53667 $i46660) $j47661)) 1 0))
             (< $j47661 $s51665)
             ($main_inv36 $i46660 $j47661 $m48662 $n49663 $q50664 $s51665 $A52666 $B53667))
        ($main_inv36 $i46660 (+ $j47661 1) $m48662 $n49663 $q50664 $s51665 $A52666 $B53667))))

; backwards $main_sum36
(assert
  (forall (($i46668 Int) ($m48670 Int) ($q50672 Int) ($B53675 (Array Int (Array Int Int))) ($q50664 Int) ($n49663 Int) ($A52674 (Array Int (Array Int Int))) ($B53667 (Array Int (Array Int Int))) ($s51673 Int) ($i46660 Int) ($j47669 Int) ($j47661 Int) ($n49671 Int) ($s51665 Int) ($m48662 Int) ($A52666 (Array Int (Array Int Int))))
    (=> (and ($main_sum36 $i46660 (+ $j47661 1) $m48662 $n49663 $q50664 $s51665 $A52666 $B53667 $i46668 $j47669 $m48670 $n49671 $q50672 $s51673 $A52674 $B53675)
             (__VERIFIER_assert (ite (= (select (select $A52666 $i46660) $j47661) (select (select $B53667 $i46660) $j47661)) 1 0))
             (< $j47661 $s51665))
        ($main_sum36 $i46660 $j47661 $m48662 $n49663 $q50664 $s51665 $A52666 $B53667 $i46668 $j47669 $m48670 $n49671 $q50672 $s51673 $A52674 $B53675))))

; forwards $main_inv35
(assert
  (forall (($B53659 (Array Int (Array Int Int))) ($s51681 Int) ($n49679 Int) ($q50656 Int) ($B53683 (Array Int (Array Int Int))) ($q50680 Int) ($A52658 (Array Int (Array Int Int))) ($s51657 Int) ($A52682 (Array Int (Array Int Int))) ($m48678 Int) ($m48654 Int) ($n49655 Int) ($i46652 Int) ($i46676 Int) ($j47677 Int) ($j47653 Int))
    (=> (and ($main_sum36 $i46652 0 $m48654 $n49655 $q50656 $s51657 $A52658 $B53659 $i46676 $j47677 $m48678 $n49679 $q50680 $s51681 $A52682 $B53683)
             (< $i46652 $q50656)
             ($main_inv35 $i46652 $j47653 $m48654 $n49655 $q50656 $s51657 $A52658 $B53659))
        ($main_inv35 (+ $i46676 1) $j47677 $m48678 $n49679 $q50680 $s51681 $A52682 $B53683))))

; backwards $main_sum35
(assert
  (forall (($s51681 Int) ($n49679 Int) ($q50656 Int) ($j47685 Int) ($B53683 (Array Int (Array Int Int))) ($s51657 Int) ($A52682 (Array Int (Array Int Int))) ($m48654 Int) ($B53659 (Array Int (Array Int Int))) ($s51689 Int) ($m48686 Int) ($q50680 Int) ($B53691 (Array Int (Array Int Int))) ($q50688 Int) ($A52658 (Array Int (Array Int Int))) ($i46684 Int) ($A52690 (Array Int (Array Int Int))) ($n49655 Int) ($i46652 Int) ($i46676 Int) ($j47677 Int) ($j47653 Int) ($n49687 Int) ($m48678 Int))
    (=> (and ($main_sum35 (+ $i46676 1) $j47677 $m48678 $n49679 $q50680 $s51681 $A52682 $B53683 $i46684 $j47685 $m48686 $n49687 $q50688 $s51689 $A52690 $B53691)
             ($main_sum36 $i46652 0 $m48654 $n49655 $q50656 $s51657 $A52658 $B53659 $i46676 $j47677 $m48678 $n49679 $q50680 $s51681 $A52682 $B53683)
             (< $i46652 $q50656))
        ($main_sum35 $i46652 $j47653 $m48654 $n49655 $q50656 $s51657 $A52658 $B53659 $i46684 $j47685 $m48686 $n49687 $q50688 $s51689 $A52690 $B53691))))

(check-sat)
