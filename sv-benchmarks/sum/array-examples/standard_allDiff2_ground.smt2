(set-logic HORN)

(declare-fun $main_sum77 ((Array Int Int) Int Int Int Int Int (Array Int Int) Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_if36 ((Array Int Int) Int Int Int Int Int (Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $main_sum79 ((Array Int Int) Int Int Int Int Int (Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $main_sum81 ((Array Int Int) Int Int Int Int Int (Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $main_inv77 ((Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_inv79 ((Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $main_inv78 ((Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $main_inv80 ((Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $main_if35 ((Array Int Int) Int Int Int Int Int (Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $main_sum80 ((Array Int Int) Int Int Int Int Int (Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum78 ((Array Int Int) Int Int Int Int Int (Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $main_inv81 ((Array Int Int) Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if34 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond1658 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond1658))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if34 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond1659 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if34 cond cond1659))
        (__VERIFIER_assert cond1659))))

; loop entry $main_inv77
(assert
  (forall (($a135 (Array Int Int)) ($x139 Int) ($j138 Int) ($y140 Int) ($r137 Int))
    (=> (and (= $r137 1))
        ($main_inv77 $a135 0 $r137 $j138 $x139 $y140))))

; loop term $main_sum77
(assert
  (forall (($x1391664 Int) ($y1401665 Int) ($i1361661 Int) ($a1351660 (Array Int Int)) ($j1381663 Int) ($r1371662 Int))
    (=> (and (not (< $i1361661 100000)))
        ($main_sum77 $a1351660 $i1361661 $r1371662 $j1381663 $x1391664 $y1401665 $a1351660 $i1361661 $r1371662 $j1381663 $x1391664 $y1401665))))

; forwards $main_inv77
(assert
  (forall (($int1666 Int) ($x1391664 Int) ($y1401665 Int) ($i1361661 Int) ($a1351660 (Array Int Int)) ($j1381663 Int) ($r1371662 Int))
    (=> (and (<= (- 2147483648) $int1666)
             (<= $int1666 2147483647)
             (< $i1361661 100000)
             ($main_inv77 $a1351660 $i1361661 $r1371662 $j1381663 $x1391664 $y1401665))
        ($main_inv77 (store $a1351660 $i1361661 $int1666) (+ $i1361661 1) $r1371662 $j1381663 $x1391664 $y1401665))))

; backwards $main_sum77
(assert
  (forall (($int1666 Int) ($y1401665 Int) ($i1361661 Int) ($y1401672 Int) ($a1351660 (Array Int Int)) ($j1381663 Int) ($j1381670 Int) ($r1371669 Int) ($r1371662 Int) ($i1361668 Int) ($x1391671 Int) ($a1351667 (Array Int Int)) ($x1391664 Int))
    (=> (and ($main_sum77 (store $a1351660 $i1361661 $int1666) (+ $i1361661 1) $r1371662 $j1381663 $x1391664 $y1401665 $a1351667 $i1361668 $r1371669 $j1381670 $x1391671 $y1401672)
             (<= (- 2147483648) $int1666)
             (<= $int1666 2147483647)
             (< $i1361661 100000))
        ($main_sum77 $a1351660 $i1361661 $r1371662 $j1381663 $x1391664 $y1401665 $a1351667 $i1361668 $r1371669 $j1381670 $x1391671 $y1401672))))

; loop entry $main_inv78
(assert
  (forall (($a135 (Array Int Int)) ($r1371675 Int) ($i1361674 Int) ($a1351673 (Array Int Int)) ($x139 Int) ($y140 Int) ($y1401678 Int) ($j138 Int) ($j1381676 Int) ($x1391677 Int) ($r137 Int))
    (=> (and ($main_sum77 $a135 0 $r137 $j138 $x139 $y140 $a1351673 $i1361674 $r1371675 $j1381676 $x1391677 $y1401678)
             (= $r137 1))
        ($main_inv78 $a1351673 1 $r1371675 $j1381676 $x1391677 $y1401678))))

; loop term $main_sum78
(assert
  (forall (($x1391683 Int) ($a1351679 (Array Int Int)) ($r1371681 Int) ($y1401684 Int) ($j1381682 Int) ($i1361680 Int))
    (=> (and (not (and (< $i1361680 100000) (not (= $r1371681 0)))))
        ($main_sum78 $a1351679 $i1361680 $r1371681 $j1381682 $x1391683 $y1401684 $a1351679 $i1361680 $r1371681 $j1381682 $x1391683 $y1401684))))

; loop entry $main_inv79
(assert
  (forall (($x1391683 Int) ($a1351679 (Array Int Int)) ($r1371681 Int) ($y1401684 Int) ($j1381682 Int) ($i1361680 Int))
    (=> (and (< $i1361680 100000)
             (not (= $r1371681 0))
             ($main_inv78 $a1351679 $i1361680 $r1371681 $j1381682 $x1391683 $y1401684))
        ($main_inv79 $a1351679 $i1361680 $r1371681 (- $i1361680 1) $x1391683 $y1401684))))

; loop term $main_sum79
(assert
  (forall (($r1371687 Int) ($x1391689 Int) ($j1381688 Int) ($a1351685 (Array Int Int)) ($i1361686 Int) ($y1401690 Int))
    (=> (and (not (and (>= $j1381688 0) (not (= $r1371687 0)))))
        ($main_sum79 $a1351685 $i1361686 $r1371687 $j1381688 $x1391689 $y1401690 $a1351685 $i1361686 $r1371687 $j1381688 $x1391689 $y1401690))))

; if then
(assert
  (forall (($r1371687 Int) ($x1391689 Int) ($j1381688 Int) ($a1351685 (Array Int Int)) ($i1361686 Int) ($y1401690 Int))
    (=> (and (= (select $a1351685 $i1361686) (select $a1351685 $j1381688))
             (>= $j1381688 0)
             (not (= $r1371687 0))
             ($main_inv79 $a1351685 $i1361686 $r1371687 $j1381688 $x1391689 $y1401690))
        ($main_if35 $a1351685 $i1361686 $r1371687 $j1381688 $x1391689 $y1401690 $a1351685 $i1361686 1 $j1381688 $x1391689 $y1401690))))

; if else
(assert
  (forall (($r1371687 Int) ($x1391689 Int) ($j1381688 Int) ($a1351685 (Array Int Int)) ($i1361686 Int) ($y1401690 Int))
    (=> (and (not (= (select $a1351685 $i1361686) (select $a1351685 $j1381688)))
             (>= $j1381688 0)
             (not (= $r1371687 0))
             ($main_inv79 $a1351685 $i1361686 $r1371687 $j1381688 $x1391689 $y1401690))
        ($main_if35 $a1351685 $i1361686 $r1371687 $j1381688 $x1391689 $y1401690 $a1351685 $i1361686 $r1371687 $j1381688 $x1391689 $y1401690))))

; forwards $main_inv79
(assert
  (forall (($a1351691 (Array Int Int)) ($r1371687 Int) ($j1381694 Int) ($x1391689 Int) ($j1381688 Int) ($i1361692 Int) ($x1391695 Int) ($a1351685 (Array Int Int)) ($y1401696 Int) ($r1371693 Int) ($i1361686 Int) ($y1401690 Int))
    (=> (and ($main_if35 $a1351685 $i1361686 $r1371687 $j1381688 $x1391689 $y1401690 $a1351691 $i1361692 $r1371693 $j1381694 $x1391695 $y1401696))
        ($main_inv79 $a1351691 $i1361692 $r1371693 (- $j1381694 1) $x1391695 $y1401696))))

; backwards $main_sum79
(assert
  (forall (($x1391701 Int) ($a1351691 (Array Int Int)) ($j1381700 Int) ($r1371687 Int) ($j1381694 Int) ($a1351697 (Array Int Int)) ($j1381688 Int) ($i1361692 Int) ($x1391695 Int) ($r1371699 Int) ($a1351685 (Array Int Int)) ($y1401696 Int) ($r1371693 Int) ($i1361698 Int) ($x1391689 Int) ($i1361686 Int) ($y1401702 Int) ($y1401690 Int))
    (=> (and ($main_sum79 $a1351691 $i1361692 $r1371693 (- $j1381694 1) $x1391695 $y1401696 $a1351697 $i1361698 $r1371699 $j1381700 $x1391701 $y1401702)
             ($main_if35 $a1351685 $i1361686 $r1371687 $j1381688 $x1391689 $y1401690 $a1351691 $i1361692 $r1371693 $j1381694 $x1391695 $y1401696))
        ($main_sum79 $a1351685 $i1361686 $r1371687 $j1381688 $x1391689 $y1401690 $a1351697 $i1361698 $r1371699 $j1381700 $x1391701 $y1401702))))

; forwards $main_inv78
(assert
  (forall (($j1381706 Int) ($x1391707 Int) ($x1391683 Int) ($a1351679 (Array Int Int)) ($i1361704 Int) ($a1351703 (Array Int Int)) ($r1371681 Int) ($y1401684 Int) ($j1381682 Int) ($i1361680 Int) ($r1371705 Int) ($y1401708 Int))
    (=> (and ($main_sum79 $a1351679 $i1361680 $r1371681 (- $i1361680 1) $x1391683 $y1401684 $a1351703 $i1361704 $r1371705 $j1381706 $x1391707 $y1401708)
             (< $i1361680 100000)
             (not (= $r1371681 0))
             ($main_inv78 $a1351679 $i1361680 $r1371681 $j1381682 $x1391683 $y1401684))
        ($main_inv78 $a1351703 (+ $i1361704 1) $r1371705 $j1381706 $x1391707 $y1401708))))

; backwards $main_sum78
(assert
  (forall (($j1381706 Int) ($x1391707 Int) ($x1391683 Int) ($j1381712 Int) ($a1351679 (Array Int Int)) ($i1361704 Int) ($i1361710 Int) ($r1371681 Int) ($y1401684 Int) ($x1391713 Int) ($j1381682 Int) ($i1361680 Int) ($r1371705 Int) ($y1401708 Int) ($a1351709 (Array Int Int)) ($y1401714 Int) ($a1351703 (Array Int Int)) ($r1371711 Int))
    (=> (and ($main_sum78 $a1351703 (+ $i1361704 1) $r1371705 $j1381706 $x1391707 $y1401708 $a1351709 $i1361710 $r1371711 $j1381712 $x1391713 $y1401714)
             ($main_sum79 $a1351679 $i1361680 $r1371681 (- $i1361680 1) $x1391683 $y1401684 $a1351703 $i1361704 $r1371705 $j1381706 $x1391707 $y1401708)
             (< $i1361680 100000)
             (not (= $r1371681 0)))
        ($main_sum78 $a1351679 $i1361680 $r1371681 $j1381682 $x1391683 $y1401684 $a1351709 $i1361710 $r1371711 $j1381712 $x1391713 $y1401714))))

; loop entry $main_inv80
(assert
  (forall (($a135 (Array Int Int)) ($x1391719 Int) ($r1371717 Int) ($a1351715 (Array Int Int)) ($r1371675 Int) ($i1361674 Int) ($i1361716 Int) ($a1351673 (Array Int Int)) ($x139 Int) ($y1401720 Int) ($y1401678 Int) ($j138 Int) ($j1381676 Int) ($j1381718 Int) ($y140 Int) ($x1391677 Int) ($r137 Int))
    (=> (and (not (= $r1371717 0))
             ($main_sum78 $a1351673 1 $r1371675 $j1381676 $x1391677 $y1401678 $a1351715 $i1361716 $r1371717 $j1381718 $x1391719 $y1401720)
             ($main_sum77 $a135 0 $r137 $j138 $x139 $y140 $a1351673 $i1361674 $r1371675 $j1381676 $x1391677 $y1401678)
             (= $r137 1))
        ($main_inv80 $a1351715 $i1361716 $r1371717 $j1381718 0 $y1401720))))

; loop term $main_sum80
(assert
  (forall (($j1381724 Int) ($y1401726 Int) ($i1361722 Int) ($x1391725 Int) ($a1351721 (Array Int Int)) ($r1371723 Int))
    (=> (and (not (< $x1391725 100000)))
        ($main_sum80 $a1351721 $i1361722 $r1371723 $j1381724 $x1391725 $y1401726 $a1351721 $i1361722 $r1371723 $j1381724 $x1391725 $y1401726))))

; loop entry $main_inv81
(assert
  (forall (($j1381724 Int) ($y1401726 Int) ($i1361722 Int) ($x1391725 Int) ($a1351721 (Array Int Int)) ($r1371723 Int))
    (=> (and (< $x1391725 100000)
             ($main_inv80 $a1351721 $i1361722 $r1371723 $j1381724 $x1391725 $y1401726))
        ($main_inv81 $a1351721 $i1361722 $r1371723 $j1381724 $x1391725 (+ $x1391725 1)))))

; loop term $main_sum81
(assert
  (forall (($j1381730 Int) ($i1361728 Int) ($r1371729 Int) ($a1351727 (Array Int Int)) ($x1391731 Int) ($y1401732 Int))
    (=> (and (not (< $y1401732 100000)))
        ($main_sum81 $a1351727 $i1361728 $r1371729 $j1381730 $x1391731 $y1401732 $a1351727 $i1361728 $r1371729 $j1381730 $x1391731 $y1401732))))

; __VERIFIER_assert precondition
(assert
  (forall (($j1381730 Int) ($i1361728 Int) ($r1371729 Int) ($a1351727 (Array Int Int)) ($x1391731 Int) ($y1401732 Int))
    (=> (and (< $y1401732 100000)
             ($main_inv81 $a1351727 $i1361728 $r1371729 $j1381730 $x1391731 $y1401732))
        ($__VERIFIER_assert_pre (ite (not (= (select $a1351727 $x1391731) (select $a1351727 $y1401732))) 1 0)))))

; forwards $main_inv81
(assert
  (forall (($j1381730 Int) ($i1361728 Int) ($r1371729 Int) ($a1351727 (Array Int Int)) ($x1391731 Int) ($y1401732 Int))
    (=> (and (__VERIFIER_assert (ite (not (= (select $a1351727 $x1391731) (select $a1351727 $y1401732))) 1 0))
             (< $y1401732 100000)
             ($main_inv81 $a1351727 $i1361728 $r1371729 $j1381730 $x1391731 $y1401732))
        ($main_inv81 $a1351727 $i1361728 $r1371729 $j1381730 $x1391731 (+ $y1401732 1)))))

; backwards $main_sum81
(assert
  (forall (($j1381730 Int) ($a1351733 (Array Int Int)) ($i1361728 Int) ($r1371729 Int) ($a1351727 (Array Int Int)) ($r1371735 Int) ($x1391731 Int) ($j1381736 Int) ($x1391737 Int) ($i1361734 Int) ($y1401732 Int) ($y1401738 Int))
    (=> (and ($main_sum81 $a1351727 $i1361728 $r1371729 $j1381730 $x1391731 (+ $y1401732 1) $a1351733 $i1361734 $r1371735 $j1381736 $x1391737 $y1401738)
             (__VERIFIER_assert (ite (not (= (select $a1351727 $x1391731) (select $a1351727 $y1401732))) 1 0))
             (< $y1401732 100000))
        ($main_sum81 $a1351727 $i1361728 $r1371729 $j1381730 $x1391731 $y1401732 $a1351733 $i1361734 $r1371735 $j1381736 $x1391737 $y1401738))))

; forwards $main_inv80
(assert
  (forall (($j1381724 Int) ($j1381742 Int) ($y1401726 Int) ($i1361722 Int) ($x1391743 Int) ($y1401744 Int) ($r1371741 Int) ($a1351739 (Array Int Int)) ($x1391725 Int) ($a1351721 (Array Int Int)) ($i1361740 Int) ($r1371723 Int))
    (=> (and ($main_sum81 $a1351721 $i1361722 $r1371723 $j1381724 $x1391725 (+ $x1391725 1) $a1351739 $i1361740 $r1371741 $j1381742 $x1391743 $y1401744)
             (< $x1391725 100000)
             ($main_inv80 $a1351721 $i1361722 $r1371723 $j1381724 $x1391725 $y1401726))
        ($main_inv80 $a1351739 $i1361740 $r1371741 $j1381742 (+ $x1391743 1) $y1401744))))

; backwards $main_sum80
(assert
  (forall (($r1371747 Int) ($j1381742 Int) ($y1401726 Int) ($i1361722 Int) ($y1401744 Int) ($i1361746 Int) ($a1351739 (Array Int Int)) ($a1351721 (Array Int Int)) ($i1361740 Int) ($r1371723 Int) ($j1381724 Int) ($a1351745 (Array Int Int)) ($j1381748 Int) ($x1391743 Int) ($r1371741 Int) ($x1391749 Int) ($x1391725 Int) ($y1401750 Int))
    (=> (and ($main_sum80 $a1351739 $i1361740 $r1371741 $j1381742 (+ $x1391743 1) $y1401744 $a1351745 $i1361746 $r1371747 $j1381748 $x1391749 $y1401750)
             ($main_sum81 $a1351721 $i1361722 $r1371723 $j1381724 $x1391725 (+ $x1391725 1) $a1351739 $i1361740 $r1371741 $j1381742 $x1391743 $y1401744)
             (< $x1391725 100000))
        ($main_sum80 $a1351721 $i1361722 $r1371723 $j1381724 $x1391725 $y1401726 $a1351745 $i1361746 $r1371747 $j1381748 $x1391749 $y1401750))))

; if then
(assert
  (forall (($x1391719 Int) ($r1371717 Int) ($r1371675 Int) ($i1361674 Int) ($a1351751 (Array Int Int)) ($a1351673 (Array Int Int)) ($x139 Int) ($r1371753 Int) ($y1401720 Int) ($j1381754 Int) ($a135 (Array Int Int)) ($y1401756 Int) ($i136 Int) ($a1351715 (Array Int Int)) ($x1391755 Int) ($i1361716 Int) ($j138 Int) ($j1381676 Int) ($j1381718 Int) ($y140 Int) ($x1391677 Int) ($r137 Int) ($y1401678 Int) ($i1361752 Int))
    (=> (and ($main_sum80 $a1351715 $i1361716 $r1371717 $j1381718 0 $y1401720 $a1351751 $i1361752 $r1371753 $j1381754 $x1391755 $y1401756)
             (not (= $r1371717 0))
             ($main_sum78 $a1351673 1 $r1371675 $j1381676 $x1391677 $y1401678 $a1351715 $i1361716 $r1371717 $j1381718 $x1391719 $y1401720)
             ($main_sum77 $a135 0 $r137 $j138 $x139 $y140 $a1351673 $i1361674 $r1371675 $j1381676 $x1391677 $y1401678)
             (= $r137 1))
        ($main_if36 $a135 $i136 $r137 $j138 $x139 $y140 $a1351751 $i1361752 $r1371753 $j1381754 $x1391755 $y1401756))))

; if else
(assert
  (forall (($a135 (Array Int Int)) ($x1391719 Int) ($r1371717 Int) ($r1371675 Int) ($i1361674 Int) ($i1361716 Int) ($a1351673 (Array Int Int)) ($x139 Int) ($y1401720 Int) ($y1401678 Int) ($i136 Int) ($a1351715 (Array Int Int)) ($j138 Int) ($j1381676 Int) ($j1381718 Int) ($y140 Int) ($x1391677 Int) ($r137 Int))
    (=> (and (= $r1371717 0)
             ($main_sum78 $a1351673 1 $r1371675 $j1381676 $x1391677 $y1401678 $a1351715 $i1361716 $r1371717 $j1381718 $x1391719 $y1401720)
             ($main_sum77 $a135 0 $r137 $j138 $x139 $y140 $a1351673 $i1361674 $r1371675 $j1381676 $x1391677 $y1401678)
             (= $r137 1))
        ($main_if36 $a135 $i136 $r137 $j138 $x139 $y140 $a1351715 $i1361716 $r1371717 $j1381718 $x1391719 $y1401720))))

(check-sat)
