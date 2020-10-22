(set-logic HORN)

(declare-fun $main_sum40 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if19 (Int Int) Bool)
(declare-fun $main_inv41 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_sum42 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv40 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum38 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum41 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv38 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum39 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_if20 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv42 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv39 ((Array Int Int) Int Int Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond706 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond706))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if19 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond707 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if19 cond cond707))
        (__VERIFIER_assert cond707))))

; loop entry $main_inv38
(assert
  (forall (($swapped93 Int) ($t95 Int) ($j92 Int) ($y97 Int) ($i94 Int) ($a91 (Array Int Int)) ($x96 Int))
    (=> (and (= $j92 0))
        ($main_inv38 $a91 $j92 $swapped93 $i94 $t95 $x96 $y97))))

; loop term $main_sum38
(assert
  (forall (($swapped93710 Int) ($a91708 (Array Int Int)) ($y97714 Int) ($i94711 Int) ($j92709 Int) ($x96713 Int) ($t95712 Int))
    (=> (and (not (< $j92709 100000)))
        ($main_sum38 $a91708 $j92709 $swapped93710 $i94711 $t95712 $x96713 $y97714 $a91708 $j92709 $swapped93710 $i94711 $t95712 $x96713 $y97714))))

; forwards $main_inv38
(assert
  (forall (($swapped93710 Int) ($a91708 (Array Int Int)) ($y97714 Int) ($i94711 Int) ($j92709 Int) ($x96713 Int) ($int715 Int) ($t95712 Int))
    (=> (and (<= (- 2147483648) $int715)
             (<= $int715 2147483647)
             (< $j92709 100000)
             ($main_inv38 $a91708 $j92709 $swapped93710 $i94711 $t95712 $x96713 $y97714))
        ($main_inv38 (store $a91708 $j92709 $int715) (+ $j92709 1) $swapped93710 $i94711 $t95712 $x96713 $y97714))))

; backwards $main_sum38
(assert
  (forall (($swapped93710 Int) ($a91708 (Array Int Int)) ($y97714 Int) ($i94711 Int) ($swapped93718 Int) ($x96721 Int) ($j92709 Int) ($x96713 Int) ($y97722 Int) ($int715 Int) ($t95712 Int) ($i94719 Int) ($a91716 (Array Int Int)) ($j92717 Int) ($t95720 Int))
    (=> (and ($main_sum38 (store $a91708 $j92709 $int715) (+ $j92709 1) $swapped93710 $i94711 $t95712 $x96713 $y97714 $a91716 $j92717 $swapped93718 $i94719 $t95720 $x96721 $y97722)
             (<= (- 2147483648) $int715)
             (<= $int715 2147483647)
             (< $j92709 100000))
        ($main_sum38 $a91708 $j92709 $swapped93710 $i94711 $t95712 $x96713 $y97714 $a91716 $j92717 $swapped93718 $i94719 $t95720 $x96721 $y97722))))

; loop entry $main_inv39
(assert
  (forall (($swapped93 Int) ($x96728 Int) ($a91723 (Array Int Int)) ($y97 Int) ($t95727 Int) ($i94 Int) ($i94726 Int) ($swapped93725 Int) ($y97729 Int) ($t95 Int) ($j92 Int) ($j92724 Int) ($a91 (Array Int Int)) ($x96 Int))
    (=> (and (= $swapped93725 1)
             ($main_sum38 $a91 $j92 $swapped93 $i94 $t95 $x96 $y97 $a91723 $j92724 $swapped93725 $i94726 $t95727 $x96728 $y97729)
             (= $j92 0))
        ($main_inv39 $a91723 $j92724 $swapped93725 $i94726 $t95727 $x96728 $y97729))))

; loop term $main_sum39
(assert
  (forall (($j92731 Int) ($x96735 Int) ($t95734 Int) ($y97736 Int) ($swapped93732 Int) ($a91730 (Array Int Int)) ($i94733 Int))
    (=> (and (= $swapped93732 0))
        ($main_sum39 $a91730 $j92731 $swapped93732 $i94733 $t95734 $x96735 $y97736 $a91730 $j92731 $swapped93732 $i94733 $t95734 $x96735 $y97736))))

; loop entry $main_inv40
(assert
  (forall (($j92731 Int) ($x96735 Int) ($t95734 Int) ($y97736 Int) ($swapped93732 Int) ($a91730 (Array Int Int)) ($i94733 Int))
    (=> (and (= $i94733 1)
             (not (= $swapped93732 0))
             ($main_inv39 $a91730 $j92731 $swapped93732 $i94733 $t95734 $x96735 $y97736))
        ($main_inv40 $a91730 $j92731 0 $i94733 $t95734 $x96735 $y97736))))

; loop term $main_sum40
(assert
  (forall (($t95741 Int) ($y97743 Int) ($swapped93739 Int) ($j92738 Int) ($x96742 Int) ($a91737 (Array Int Int)) ($i94740 Int))
    (=> (and (not (< $i94740 100000)))
        ($main_sum40 $a91737 $j92738 $swapped93739 $i94740 $t95741 $x96742 $y97743 $a91737 $j92738 $swapped93739 $i94740 $t95741 $x96742 $y97743))))

; if then
(assert
  (forall (($t95741 Int) ($y97743 Int) ($swapped93739 Int) ($j92738 Int) ($x96742 Int) ($a91737 (Array Int Int)) ($i94740 Int))
    (=> (and (= $t95741 (select $a91737 $i94740))
             (> (select $a91737 $i94740) (select $a91737 (- $i94740 1)))
             (< $i94740 100000)
             ($main_inv40 $a91737 $j92738 $swapped93739 $i94740 $t95741 $x96742 $y97743))
        ($main_if20 $a91737 $j92738 $swapped93739 $i94740 $t95741 $x96742 $y97743 (store (store $a91737 $i94740 (select $a91737 (- $i94740 1))) (- $i94740 1) $t95741) $j92738 1 $i94740 $t95741 $x96742 $y97743))))

; if else
(assert
  (forall (($t95741 Int) ($y97743 Int) ($swapped93739 Int) ($j92738 Int) ($x96742 Int) ($a91737 (Array Int Int)) ($i94740 Int))
    (=> (and (not (> (select $a91737 $i94740) (select $a91737 (- $i94740 1))))
             (< $i94740 100000)
             ($main_inv40 $a91737 $j92738 $swapped93739 $i94740 $t95741 $x96742 $y97743))
        ($main_if20 $a91737 $j92738 $swapped93739 $i94740 $t95741 $x96742 $y97743 $a91737 $j92738 $swapped93739 $i94740 $t95741 $x96742 $y97743))))

; forwards $main_inv40
(assert
  (forall (($a91744 (Array Int Int)) ($t95741 Int) ($y97743 Int) ($swapped93746 Int) ($j92738 Int) ($x96749 Int) ($j92745 Int) ($x96742 Int) ($y97750 Int) ($a91737 (Array Int Int)) ($i94740 Int) ($t95748 Int) ($i94747 Int) ($swapped93739 Int))
    (=> (and ($main_if20 $a91737 $j92738 $swapped93739 $i94740 $t95741 $x96742 $y97743 $a91744 $j92745 $swapped93746 $i94747 $t95748 $x96749 $y97750))
        ($main_inv40 $a91744 $j92745 $swapped93746 (+ $i94747 1) $t95748 $x96749 $y97750))))

; backwards $main_sum40
(assert
  (forall (($a91744 (Array Int Int)) ($t95741 Int) ($y97743 Int) ($swapped93746 Int) ($j92738 Int) ($x96749 Int) ($y97757 Int) ($swapped93753 Int) ($x96742 Int) ($y97750 Int) ($x96756 Int) ($i94740 Int) ($t95748 Int) ($i94754 Int) ($i94747 Int) ($swapped93739 Int) ($j92752 Int) ($a91751 (Array Int Int)) ($j92745 Int) ($a91737 (Array Int Int)) ($t95755 Int))
    (=> (and ($main_sum40 $a91744 $j92745 $swapped93746 (+ $i94747 1) $t95748 $x96749 $y97750 $a91751 $j92752 $swapped93753 $i94754 $t95755 $x96756 $y97757)
             ($main_if20 $a91737 $j92738 $swapped93739 $i94740 $t95741 $x96742 $y97743 $a91744 $j92745 $swapped93746 $i94747 $t95748 $x96749 $y97750))
        ($main_sum40 $a91737 $j92738 $swapped93739 $i94740 $t95741 $x96742 $y97743 $a91751 $j92752 $swapped93753 $i94754 $t95755 $x96756 $y97757))))

; forwards $main_inv39
(assert
  (forall (($j92731 Int) ($x96735 Int) ($t95734 Int) ($y97736 Int) ($i94761 Int) ($x96763 Int) ($a91758 (Array Int Int)) ($a91730 (Array Int Int)) ($j92759 Int) ($t95762 Int) ($swapped93732 Int) ($y97764 Int) ($i94733 Int) ($swapped93760 Int))
    (=> (and ($main_sum40 $a91730 $j92731 0 $i94733 $t95734 $x96735 $y97736 $a91758 $j92759 $swapped93760 $i94761 $t95762 $x96763 $y97764)
             (= $i94733 1)
             (not (= $swapped93732 0))
             ($main_inv39 $a91730 $j92731 $swapped93732 $i94733 $t95734 $x96735 $y97736))
        ($main_inv39 $a91758 $j92759 $swapped93760 $i94761 $t95762 $x96763 $y97764))))

; backwards $main_sum39
(assert
  (forall (($y97771 Int) ($i94768 Int) ($j92731 Int) ($x96735 Int) ($t95734 Int) ($y97736 Int) ($i94761 Int) ($x96763 Int) ($j92766 Int) ($a91758 (Array Int Int)) ($t95769 Int) ($a91730 (Array Int Int)) ($j92759 Int) ($t95762 Int) ($swapped93732 Int) ($y97764 Int) ($i94733 Int) ($swapped93760 Int) ($a91765 (Array Int Int)) ($swapped93767 Int) ($x96770 Int))
    (=> (and ($main_sum39 $a91758 $j92759 $swapped93760 $i94761 $t95762 $x96763 $y97764 $a91765 $j92766 $swapped93767 $i94768 $t95769 $x96770 $y97771)
             ($main_sum40 $a91730 $j92731 0 $i94733 $t95734 $x96735 $y97736 $a91758 $j92759 $swapped93760 $i94761 $t95762 $x96763 $y97764)
             (= $i94733 1)
             (not (= $swapped93732 0)))
        ($main_sum39 $a91730 $j92731 $swapped93732 $i94733 $t95734 $x96735 $y97736 $a91765 $j92766 $swapped93767 $i94768 $t95769 $x96770 $y97771))))

; loop entry $main_inv41
(assert
  (forall (($swapped93 Int) ($x96728 Int) ($a91772 (Array Int Int)) ($x96777 Int) ($y97778 Int) ($a91723 (Array Int Int)) ($y97 Int) ($swapped93774 Int) ($t95727 Int) ($i94 Int) ($i94726 Int) ($swapped93725 Int) ($j92773 Int) ($t95776 Int) ($y97729 Int) ($t95 Int) ($j92 Int) ($j92724 Int) ($a91 (Array Int Int)) ($i94775 Int) ($x96 Int))
    (=> (and ($main_sum39 $a91723 $j92724 $swapped93725 $i94726 $t95727 $x96728 $y97729 $a91772 $j92773 $swapped93774 $i94775 $t95776 $x96777 $y97778)
             (= $swapped93725 1)
             ($main_sum38 $a91 $j92 $swapped93 $i94 $t95 $x96 $y97 $a91723 $j92724 $swapped93725 $i94726 $t95727 $x96728 $y97729)
             (= $j92 0))
        ($main_inv41 $a91772 $j92773 $swapped93774 $i94775 $t95776 0 $y97778))))

; loop term $main_sum41
(assert
  (forall (($y97785 Int) ($x96784 Int) ($swapped93781 Int) ($a91779 (Array Int Int)) ($i94782 Int) ($t95783 Int) ($j92780 Int))
    (=> (and (not (< $x96784 100000)))
        ($main_sum41 $a91779 $j92780 $swapped93781 $i94782 $t95783 $x96784 $y97785 $a91779 $j92780 $swapped93781 $i94782 $t95783 $x96784 $y97785))))

; loop entry $main_inv42
(assert
  (forall (($y97785 Int) ($x96784 Int) ($swapped93781 Int) ($a91779 (Array Int Int)) ($i94782 Int) ($t95783 Int) ($j92780 Int))
    (=> (and (< $x96784 100000)
             ($main_inv41 $a91779 $j92780 $swapped93781 $i94782 $t95783 $x96784 $y97785))
        ($main_inv42 $a91779 $j92780 $swapped93781 $i94782 $t95783 $x96784 (+ $x96784 1)))))

; loop term $main_sum42
(assert
  (forall (($j92787 Int) ($t95790 Int) ($y97792 Int) ($swapped93788 Int) ($a91786 (Array Int Int)) ($x96791 Int) ($i94789 Int))
    (=> (and (not (< $y97792 100000)))
        ($main_sum42 $a91786 $j92787 $swapped93788 $i94789 $t95790 $x96791 $y97792 $a91786 $j92787 $swapped93788 $i94789 $t95790 $x96791 $y97792))))

; __VERIFIER_assert precondition
(assert
  (forall (($j92787 Int) ($t95790 Int) ($y97792 Int) ($swapped93788 Int) ($a91786 (Array Int Int)) ($x96791 Int) ($i94789 Int))
    (=> (and (< $y97792 100000)
             ($main_inv42 $a91786 $j92787 $swapped93788 $i94789 $t95790 $x96791 $y97792))
        ($__VERIFIER_assert_pre (ite (<= (select $a91786 $x96791) (select $a91786 $y97792)) 1 0)))))

; forwards $main_inv42
(assert
  (forall (($j92787 Int) ($t95790 Int) ($y97792 Int) ($swapped93788 Int) ($a91786 (Array Int Int)) ($x96791 Int) ($i94789 Int))
    (=> (and (__VERIFIER_assert (ite (<= (select $a91786 $x96791) (select $a91786 $y97792)) 1 0))
             (< $y97792 100000)
             ($main_inv42 $a91786 $j92787 $swapped93788 $i94789 $t95790 $x96791 $y97792))
        ($main_inv42 $a91786 $j92787 $swapped93788 $i94789 $t95790 $x96791 (+ $y97792 1)))))

; backwards $main_sum42
(assert
  (forall (($j92787 Int) ($y97799 Int) ($t95790 Int) ($y97792 Int) ($i94796 Int) ($t95797 Int) ($swapped93795 Int) ($j92794 Int) ($a91793 (Array Int Int)) ($a91786 (Array Int Int)) ($x96791 Int) ($i94789 Int) ($x96798 Int) ($swapped93788 Int))
    (=> (and ($main_sum42 $a91786 $j92787 $swapped93788 $i94789 $t95790 $x96791 (+ $y97792 1) $a91793 $j92794 $swapped93795 $i94796 $t95797 $x96798 $y97799)
             (__VERIFIER_assert (ite (<= (select $a91786 $x96791) (select $a91786 $y97792)) 1 0))
             (< $y97792 100000))
        ($main_sum42 $a91786 $j92787 $swapped93788 $i94789 $t95790 $x96791 $y97792 $a91793 $j92794 $swapped93795 $i94796 $t95797 $x96798 $y97799))))

; forwards $main_inv41
(assert
  (forall (($y97785 Int) ($j92801 Int) ($t95804 Int) ($i94803 Int) ($a91779 (Array Int Int)) ($t95783 Int) ($j92780 Int) ($swapped93802 Int) ($a91800 (Array Int Int)) ($x96784 Int) ($x96805 Int) ($swapped93781 Int) ($i94782 Int) ($y97806 Int))
    (=> (and ($main_sum42 $a91779 $j92780 $swapped93781 $i94782 $t95783 $x96784 (+ $x96784 1) $a91800 $j92801 $swapped93802 $i94803 $t95804 $x96805 $y97806)
             (< $x96784 100000)
             ($main_inv41 $a91779 $j92780 $swapped93781 $i94782 $t95783 $x96784 $y97785))
        ($main_inv41 $a91800 $j92801 $swapped93802 $i94803 $t95804 (+ $x96805 1) $y97806))))

; backwards $main_sum41
(assert
  (forall (($t95811 Int) ($y97785 Int) ($j92801 Int) ($t95804 Int) ($i94803 Int) ($y97813 Int) ($j92808 Int) ($a91779 (Array Int Int)) ($swapped93809 Int) ($t95783 Int) ($i94810 Int) ($j92780 Int) ($swapped93802 Int) ($a91800 (Array Int Int)) ($x96784 Int) ($x96805 Int) ($swapped93781 Int) ($a91807 (Array Int Int)) ($i94782 Int) ($y97806 Int) ($x96812 Int))
    (=> (and ($main_sum41 $a91800 $j92801 $swapped93802 $i94803 $t95804 (+ $x96805 1) $y97806 $a91807 $j92808 $swapped93809 $i94810 $t95811 $x96812 $y97813)
             ($main_sum42 $a91779 $j92780 $swapped93781 $i94782 $t95783 $x96784 (+ $x96784 1) $a91800 $j92801 $swapped93802 $i94803 $t95804 $x96805 $y97806)
             (< $x96784 100000))
        ($main_sum41 $a91779 $j92780 $swapped93781 $i94782 $t95783 $x96784 $y97785 $a91807 $j92808 $swapped93809 $i94810 $t95811 $x96812 $y97813))))

(check-sat)
