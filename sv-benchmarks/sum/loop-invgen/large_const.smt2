(set-logic HORN)

(declare-sort Pointer 1)

(declare-fun $main_if228 (Int (Pointer (Pointer Int)) Int Int Int Int Int Int Int Int Int (Pointer (Pointer Int)) Int Int Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv466 (Int (Pointer (Pointer Int)) Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum466 (Int (Pointer (Pointer Int)) Int Int Int Int Int Int Int Int Int (Pointer (Pointer Int)) Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_if226 (Int (Pointer (Pointer Int)) Int Int Int Int Int Int Int Int Int (Pointer (Pointer Int)) Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if224 (Int Int) Bool)
(declare-fun $main_if225 (Int (Pointer (Pointer Int)) Int Int Int Int Int Int Int Int Int (Pointer (Pointer Int)) Int Int Int Int Int Int Int Int) Bool)
(declare-fun $main_sum465 (Int (Pointer (Pointer Int)) Int Int Int Int Int Int Int Int Int (Pointer (Pointer Int)) Int Int Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv465 (Int (Pointer (Pointer Int)) Int Int Int Int Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)
(declare-fun $main_if227 (Int (Pointer (Pointer Int)) Int Int Int Int Int Int Int Int Int (Pointer (Pointer Int)) Int Int Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_if223 (Int Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if223 cond cond))))

; post assume_abort_if_not
(assert
  (forall ((cond8695 Int) (cond Int))
    (=> (and ($assume_abort_if_not_if223 cond cond8695))
        (assume_abort_if_not cond8695))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond8696 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond8696))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if224 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond8697 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if224 cond cond8697))
        (__VERIFIER_assert cond8697))))

; if else
(assert
  (forall (($c2604 Int) ($j610 Int) ($i608 Int) ($int8698 Int) (argv (Pointer (Pointer Int))) ($k609 Int) ($c1603 Int) (argc Int) ($c3605 Int) ($v607 Int) ($n606 Int))
    (=> (and (<= 0 $int8698)
             (< $int8698 10)
             (<= (- 2147483648) $int8698)
             (<= $int8698 2147483647)
             (= $c3605 10000)
             (= $c2604 2000)
             (= $c1603 4000))
        ($main_if225 argc argv $c1603 $c2604 $c3605 $n606 $v607 $i608 $k609 $j610 argc argv $c1603 $c2604 $c3605 $int8698 $v607 $i608 $k609 $j610))))

; loop entry $main_inv465
(assert
  (forall (($c2604 Int) ($j610 Int) (argv8700 (Pointer (Pointer Int))) ($n6068704 Int) ($j6108708 Int) (argc8699 Int) (argv (Pointer (Pointer Int))) ($k609 Int) ($k6098707 Int) ($c36058703 Int) ($i6088706 Int) ($c1603 Int) (argc Int) ($v607 Int) ($c26048702 Int) ($i608 Int) ($v6078705 Int) ($c3605 Int) ($n606 Int) ($c16038701 Int))
    (=> (and ($main_if225 argc argv $c1603 $c2604 $c3605 $n606 $v607 $i608 $k609 $j610 argc8699 argv8700 $c16038701 $c26048702 $c36058703 $n6068704 $v6078705 $i6088706 $k6098707 $j6108708))
        ($main_inv465 argc8699 argv8700 $c16038701 $c26048702 $c36058703 $n6068704 $v6078705 0 0 $j6108708))))

; loop term $main_sum465
(assert
  (forall (($c16038711 Int) (argv8710 (Pointer (Pointer Int))) ($c26048712 Int) (argc8709 Int) ($c36058713 Int) ($i6088716 Int) ($j6108718 Int) ($n6068714 Int) ($v6078715 Int) ($k6098717 Int))
    (=> (and (not (< $i6088716 $n6068714)))
        ($main_sum465 argc8709 argv8710 $c16038711 $c26048712 $c36058713 $n6068714 $v6078715 $i6088716 $k6098717 $j6108718 argc8709 argv8710 $c16038711 $c26048712 $c36058713 $n6068714 $v6078715 $i6088716 $k6098717 $j6108718))))

; if else
(assert
  (forall ((argv8710 (Pointer (Pointer Int))) ($c26048712 Int) (argc8709 Int) ($c16038711 Int) ($int8719 Int) ($c36058713 Int) ($i6088716 Int) ($j6108718 Int) ($n6068714 Int) ($v6078715 Int) ($k6098717 Int))
    (=> (and (<= 0 $int8719)
             (< $n6068714 2)
             (<= (- 2147483648) $int8719)
             (<= $int8719 2147483647)
             (< $i6088716 $n6068714)
             ($main_inv465 argc8709 argv8710 $c16038711 $c26048712 $c36058713 $n6068714 $v6078715 $i6088716 $k6098717 $j6108718))
        ($main_if226 argc8709 argv8710 $c16038711 $c26048712 $c36058713 $n6068714 $v6078715 $i6088716 $k6098717 $j6108718 argc8709 argv8710 $c16038711 $c26048712 $c36058713 $n6068714 $int8719 (+ $i6088716 1) $k6098717 $j6108718))))

; if then
(assert
  (forall (($c16038722 Int) ($c26048723 Int) ($c16038711 Int) (argv8710 (Pointer (Pointer Int))) ($k6098728 Int) ($i6088727 Int) ($v6078726 Int) ($c36058724 Int) ($c36058713 Int) ($i6088716 Int) ($j6108729 Int) ($j6108718 Int) ($n6068714 Int) (argc8720 Int) ($v6078715 Int) ($k6098717 Int) (argv8721 (Pointer (Pointer Int))) ($c26048712 Int) (argc8709 Int) ($n6068725 Int))
    (=> (and (= $v6078726 1)
             (not (= $v6078726 0))
             ($main_if226 argc8709 argv8710 $c16038711 $c26048712 $c36058713 $n6068714 $v6078715 $i6088716 $k6098717 $j6108718 argc8720 argv8721 $c16038722 $c26048723 $c36058724 $n6068725 $v6078726 $i6088727 $k6098728 $j6108729))
        ($main_if227 argc8709 argv8710 $c16038711 $c26048712 $c36058713 $n6068714 $v6078715 $i6088716 $k6098717 $j6108718 argc8720 argv8721 $c16038722 $c26048723 $c36058724 $n6068725 $v6078726 $i6088727 (+ $k6098728 $c26048723) $j6108729))))

; if else
(assert
  (forall (($c16038722 Int) ($c26048723 Int) ($c16038711 Int) (argv8710 (Pointer (Pointer Int))) ($k6098728 Int) ($i6088727 Int) ($v6078726 Int) ($c36058724 Int) ($c36058713 Int) ($i6088716 Int) ($j6108729 Int) ($j6108718 Int) ($n6068714 Int) (argc8720 Int) ($v6078715 Int) ($k6098717 Int) (argv8721 (Pointer (Pointer Int))) ($c26048712 Int) (argc8709 Int) ($n6068725 Int))
    (=> (and (not (= $v6078726 1))
             (not (= $v6078726 0))
             ($main_if226 argc8709 argv8710 $c16038711 $c26048712 $c36058713 $n6068714 $v6078715 $i6088716 $k6098717 $j6108718 argc8720 argv8721 $c16038722 $c26048723 $c36058724 $n6068725 $v6078726 $i6088727 $k6098728 $j6108729))
        ($main_if227 argc8709 argv8710 $c16038711 $c26048712 $c36058713 $n6068714 $v6078715 $i6088716 $k6098717 $j6108718 argc8720 argv8721 $c16038722 $c26048723 $c36058724 $n6068725 $v6078726 $i6088727 (+ $k6098728 $c36058724) $j6108729))))

; if then
(assert
  (forall (($c16038722 Int) ($c26048723 Int) ($c16038711 Int) (argv8710 (Pointer (Pointer Int))) ($k6098728 Int) ($i6088727 Int) ($v6078726 Int) ($c36058724 Int) ($c36058713 Int) ($i6088716 Int) ($j6108729 Int) ($j6108718 Int) ($n6068714 Int) (argc8720 Int) ($v6078715 Int) ($k6098717 Int) (argv8721 (Pointer (Pointer Int))) ($c26048712 Int) (argc8709 Int) ($n6068725 Int))
    (=> (and (= $v6078726 0)
             ($main_if226 argc8709 argv8710 $c16038711 $c26048712 $c36058713 $n6068714 $v6078715 $i6088716 $k6098717 $j6108718 argc8720 argv8721 $c16038722 $c26048723 $c36058724 $n6068725 $v6078726 $i6088727 $k6098728 $j6108729))
        ($main_if228 argc8709 argv8710 $c16038711 $c26048712 $c36058713 $n6068714 $v6078715 $i6088716 $k6098717 $j6108718 argc8720 argv8721 $c16038722 $c26048723 $c36058724 $n6068725 $v6078726 $i6088727 (+ $k6098728 $c16038722) $j6108729))))

; if else
(assert
  (forall (($c16038711 Int) ($v6078736 Int) ($n6068735 Int) ($c36058734 Int) (argv8731 (Pointer (Pointer Int))) ($c26048712 Int) ($c36058713 Int) ($i6088716 Int) (argv8710 (Pointer (Pointer Int))) ($i6088737 Int) ($j6108718 Int) ($n6068714 Int) ($c26048733 Int) ($v6078715 Int) ($k6098717 Int) (argc8709 Int) ($c16038732 Int) (argc8730 Int) ($k6098738 Int) ($j6108739 Int))
    (=> (and ($main_if227 argc8709 argv8710 $c16038711 $c26048712 $c36058713 $n6068714 $v6078715 $i6088716 $k6098717 $j6108718 argc8730 argv8731 $c16038732 $c26048733 $c36058734 $n6068735 $v6078736 $i6088737 $k6098738 $j6108739))
        ($main_if228 argc8709 argv8710 $c16038711 $c26048712 $c36058713 $n6068714 $v6078715 $i6088716 $k6098717 $j6108718 argc8730 argv8731 $c16038732 $c26048733 $c36058734 $n6068735 $v6078736 $i6088737 $k6098738 $j6108739))))

; forwards $main_inv465
(assert
  (forall (($c36058744 Int) ($c26048743 Int) (argv8710 (Pointer (Pointer Int))) ($i6088747 Int) (argv8741 (Pointer (Pointer Int))) ($n6068745 Int) ($c26048712 Int) ($j6108749 Int) (argc8709 Int) (argc8740 Int) ($c16038742 Int) ($v6078746 Int) ($c16038711 Int) ($c36058713 Int) ($i6088716 Int) ($j6108718 Int) ($n6068714 Int) ($v6078715 Int) ($k6098748 Int) ($k6098717 Int))
    (=> (and ($main_if228 argc8709 argv8710 $c16038711 $c26048712 $c36058713 $n6068714 $v6078715 $i6088716 $k6098717 $j6108718 argc8740 argv8741 $c16038742 $c26048743 $c36058744 $n6068745 $v6078746 $i6088747 $k6098748 $j6108749))
        ($main_inv465 argc8740 argv8741 $c16038742 $c26048743 $c36058744 $n6068745 $v6078746 $i6088747 $k6098748 $j6108749))))

; backwards $main_sum465
(assert
  (forall (($c36058744 Int) (argv8751 (Pointer (Pointer Int))) ($c26048743 Int) ($i6088757 Int) (argv8710 (Pointer (Pointer Int))) ($k6098758 Int) ($i6088747 Int) ($n6068745 Int) ($c26048712 Int) ($j6108749 Int) (argc8709 Int) ($c36058754 Int) (argc8740 Int) ($c16038742 Int) (argc8750 Int) ($v6078746 Int) ($c16038711 Int) ($c36058713 Int) ($i6088716 Int) ($c26048753 Int) ($n6068755 Int) (argv8741 (Pointer (Pointer Int))) ($j6108718 Int) ($n6068714 Int) ($v6078715 Int) ($k6098748 Int) ($k6098717 Int) ($c16038752 Int) ($v6078756 Int) ($j6108759 Int))
    (=> (and ($main_sum465 argc8740 argv8741 $c16038742 $c26048743 $c36058744 $n6068745 $v6078746 $i6088747 $k6098748 $j6108749 argc8750 argv8751 $c16038752 $c26048753 $c36058754 $n6068755 $v6078756 $i6088757 $k6098758 $j6108759)
             ($main_if228 argc8709 argv8710 $c16038711 $c26048712 $c36058713 $n6068714 $v6078715 $i6088716 $k6098717 $j6108718 argc8740 argv8741 $c16038742 $c26048743 $c36058744 $n6068745 $v6078746 $i6088747 $k6098748 $j6108749))
        ($main_sum465 argc8709 argv8710 $c16038711 $c26048712 $c36058713 $n6068714 $v6078715 $i6088716 $k6098717 $j6108718 argc8750 argv8751 $c16038752 $c26048753 $c36058754 $n6068755 $v6078756 $i6088757 $k6098758 $j6108759))))

; loop entry $main_inv466
(assert
  (forall (($c2604 Int) (argc8760 Int) ($n6068765 Int) ($j610 Int) (argv8700 (Pointer (Pointer Int))) ($n6068704 Int) (argc8699 Int) (argv (Pointer (Pointer Int))) ($k609 Int) ($c26048763 Int) ($i6088706 Int) ($c1603 Int) ($v607 Int) ($c26048702 Int) ($i608 Int) ($j6108708 Int) ($i6088767 Int) ($c36058764 Int) ($k6098707 Int) (argv8761 (Pointer (Pointer Int))) ($c36058703 Int) ($c16038762 Int) (argc Int) ($v6078766 Int) ($j6108769 Int) ($v6078705 Int) ($c3605 Int) ($n606 Int) ($k6098768 Int) ($c16038701 Int))
    (=> (and ($main_sum465 argc8699 argv8700 $c16038701 $c26048702 $c36058703 $n6068704 $v6078705 0 0 $j6108708 argc8760 argv8761 $c16038762 $c26048763 $c36058764 $n6068765 $v6078766 $i6088767 $k6098768 $j6108769)
             ($main_if225 argc argv $c1603 $c2604 $c3605 $n606 $v607 $i608 $k609 $j610 argc8699 argv8700 $c16038701 $c26048702 $c36058703 $n6068704 $v6078705 $i6088706 $k6098707 $j6108708))
        ($main_inv466 argc8760 argv8761 $c16038762 $c26048763 $c36058764 $n6068765 $v6078766 $i6088767 $k6098768 0))))

; loop term $main_sum466
(assert
  (forall (($j6108779 Int) (argv8771 (Pointer (Pointer Int))) ($c26048773 Int) ($n6068775 Int) ($c16038772 Int) (argc8770 Int) ($i6088777 Int) ($v6078776 Int) ($c36058774 Int) ($k6098778 Int))
    (=> (and (not (< $j6108779 $n6068775)))
        ($main_sum466 argc8770 argv8771 $c16038772 $c26048773 $c36058774 $n6068775 $v6078776 $i6088777 $k6098778 $j6108779 argc8770 argv8771 $c16038772 $c26048773 $c36058774 $n6068775 $v6078776 $i6088777 $k6098778 $j6108779))))

; __VERIFIER_assert precondition
(assert
  (forall (($j6108779 Int) (argv8771 (Pointer (Pointer Int))) ($c26048773 Int) ($n6068775 Int) ($c16038772 Int) (argc8770 Int) ($i6088777 Int) ($v6078776 Int) ($c36058774 Int) ($k6098778 Int))
    (=> (and (< $j6108779 $n6068775)
             ($main_inv466 argc8770 argv8771 $c16038772 $c26048773 $c36058774 $n6068775 $v6078776 $i6088777 $k6098778 $j6108779))
        ($__VERIFIER_assert_pre (ite (> $k6098778 0) 1 0)))))

; forwards $main_inv466
(assert
  (forall (($j6108779 Int) (argv8771 (Pointer (Pointer Int))) ($c26048773 Int) ($n6068775 Int) ($c16038772 Int) (argc8770 Int) ($i6088777 Int) ($v6078776 Int) ($c36058774 Int) ($k6098778 Int))
    (=> (and (__VERIFIER_assert (ite (> $k6098778 0) 1 0))
             (< $j6108779 $n6068775)
             ($main_inv466 argc8770 argv8771 $c16038772 $c26048773 $c36058774 $n6068775 $v6078776 $i6088777 $k6098778 $j6108779))
        ($main_inv466 argc8770 argv8771 $c16038772 $c26048773 $c36058774 $n6068775 $v6078776 $i6088777 (- $k6098778 1) (+ $j6108779 1)))))

; backwards $main_sum466
(assert
  (forall (($i6088787 Int) ($j6108779 Int) (argv8771 (Pointer (Pointer Int))) ($n6068775 Int) ($c16038772 Int) ($i6088777 Int) ($c26048783 Int) ($c16038782 Int) ($v6078776 Int) (argc8780 Int) ($v6078786 Int) ($c26048773 Int) (argv8781 (Pointer (Pointer Int))) ($c36058784 Int) ($j6108789 Int) ($n6068785 Int) ($k6098788 Int) (argc8770 Int) ($c36058774 Int) ($k6098778 Int))
    (=> (and ($main_sum466 argc8770 argv8771 $c16038772 $c26048773 $c36058774 $n6068775 $v6078776 $i6088777 (- $k6098778 1) (+ $j6108779 1) argc8780 argv8781 $c16038782 $c26048783 $c36058784 $n6068785 $v6078786 $i6088787 $k6098788 $j6108789)
             (__VERIFIER_assert (ite (> $k6098778 0) 1 0))
             (< $j6108779 $n6068775))
        ($main_sum466 argc8770 argv8771 $c16038772 $c26048773 $c36058774 $n6068775 $v6078776 $i6088777 $k6098778 $j6108779 argc8780 argv8781 $c16038782 $c26048783 $c36058784 $n6068785 $v6078786 $i6088787 $k6098788 $j6108789))))

(check-sat)
