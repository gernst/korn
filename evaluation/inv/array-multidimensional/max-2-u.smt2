(set-logic HORN)

(declare-fun $main_sum54 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum57 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_inv58 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_inv53 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_inv54 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_sum58 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_inv57 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_inv55 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum56 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_sum53 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_if26 (Int) Bool)
(declare-fun $main_if27 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_inv56 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_sum55 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond728 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond728))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if26 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond729 Int))
    (=> (and ($__VERIFIER_assert_if26 cond729))
        (__VERIFIER_assert cond729))))

; loop entry $main_inv53
(assert
  (forall (($m77 Int) ($n78 Int) ($A79 (Array Int (Array Int Int))) ($max80 Int))
    (=> (and (= $n78 1500)
             (= $m77 1000))
        ($main_inv53 0 0 $m77 $n78 $A79 $max80))))

; loop term $main_sum53
(assert
  (forall (($j76731 Int) ($A79734 (Array Int (Array Int Int))) ($i75730 Int) ($n78733 Int) ($m77732 Int) ($max80735 Int))
    (=> (and (not (< $i75730 $m77732))
             ($main_inv53 $i75730 $j76731 $m77732 $n78733 $A79734 $max80735))
        ($main_sum53 $i75730 $j76731 $m77732 $n78733 $A79734 $max80735))))

; loop entry $main_inv54
(assert
  (forall (($j76731 Int) ($A79734 (Array Int (Array Int Int))) ($i75730 Int) ($n78733 Int) ($m77732 Int) ($max80735 Int))
    (=> (and (< $i75730 $m77732)
             ($main_inv53 $i75730 $j76731 $m77732 $n78733 $A79734 $max80735))
        ($main_inv54 $i75730 0 $m77732 $n78733 $A79734 $max80735))))

; loop term $main_sum54
(assert
  (forall (($n78739 Int) ($i75736 Int) ($A79740 (Array Int (Array Int Int))) ($max80741 Int) ($m77738 Int) ($j76737 Int))
    (=> (and (not (< $j76737 $n78739))
             ($main_inv54 $i75736 $j76737 $m77738 $n78739 $A79740 $max80741))
        ($main_sum54 $i75736 $j76737 $m77738 $n78739 $A79740 $max80741))))

; forwards $main_inv54
(assert
  (forall (($n78739 Int) ($i75736 Int) ($int742 Int) ($A79740 (Array Int (Array Int Int))) ($max80741 Int) ($m77738 Int) ($j76737 Int))
    (=> (and (<= (- 2147483648) $int742)
             (<= $int742 2147483647)
             (< $j76737 $n78739)
             ($main_inv54 $i75736 $j76737 $m77738 $n78739 $A79740 $max80741))
        ($main_inv54 $i75736 (+ $j76737 1) $m77738 $n78739 (store $A79740 $i75736 (store (select $A79740 $i75736) $j76737 $int742)) $max80741))))

; forwards $main_inv53
(assert
  (forall (($n78746 Int) ($A79747 (Array Int (Array Int Int))) ($max80748 Int) ($j76744 Int) ($i75743 Int) ($m77745 Int))
    (=> (and ($main_sum54 $i75743 $j76744 $m77745 $n78746 $A79747 $max80748))
        ($main_inv53 (+ $i75743 1) $j76744 $m77745 $n78746 $A79747 $max80748))))

; loop entry $main_inv55
(assert
  (forall (($j76750 Int) ($i75749 Int) ($max80754 Int) ($A79753 (Array Int (Array Int Int))) ($n78752 Int) ($m77751 Int))
    (=> (and ($main_sum53 $i75749 $j76750 $m77751 $n78752 $A79753 $max80754))
        ($main_inv55 0 0 $m77751 $n78752 $A79753 (select (select $A79753 0) 0)))))

; loop term $main_sum55
(assert
  (forall (($max80760 Int) ($m77757 Int) ($n78758 Int) ($j76756 Int) ($A79759 (Array Int (Array Int Int))) ($i75755 Int))
    (=> (and (not (< $i75755 $n78758))
             ($main_inv55 $i75755 $j76756 $m77757 $n78758 $A79759 $max80760))
        ($main_sum55 $i75755 $j76756 $m77757 $n78758 $A79759 $max80760))))

; loop entry $main_inv56
(assert
  (forall (($max80760 Int) ($m77757 Int) ($n78758 Int) ($j76756 Int) ($A79759 (Array Int (Array Int Int))) ($i75755 Int))
    (=> (and (< $i75755 $n78758)
             ($main_inv55 $i75755 $j76756 $m77757 $n78758 $A79759 $max80760))
        ($main_inv56 $i75755 0 $m77757 $n78758 $A79759 $max80760))))

; loop term $main_sum56
(assert
  (forall (($m77763 Int) ($i75761 Int) ($max80766 Int) ($j76762 Int) ($A79765 (Array Int (Array Int Int))) ($n78764 Int))
    (=> (and (not (< $j76762 $n78764))
             ($main_inv56 $i75761 $j76762 $m77763 $n78764 $A79765 $max80766))
        ($main_sum56 $i75761 $j76762 $m77763 $n78764 $A79765 $max80766))))

; if then
(assert
  (forall (($m77763 Int) ($i75761 Int) ($max80766 Int) ($j76762 Int) ($A79765 (Array Int (Array Int Int))) ($n78764 Int))
    (=> (and (> (select (select $A79765 $i75761) $j76762) $max80766)
             (< $j76762 $n78764)
             ($main_inv56 $i75761 $j76762 $m77763 $n78764 $A79765 $max80766))
        ($main_if27 $i75761 $j76762 $m77763 $n78764 $A79765 (select (select $A79765 $i75761) $j76762)))))

; if else
(assert
  (forall (($m77763 Int) ($i75761 Int) ($max80766 Int) ($j76762 Int) ($A79765 (Array Int (Array Int Int))) ($n78764 Int))
    (=> (and (not (> (select (select $A79765 $i75761) $j76762) $max80766))
             (< $j76762 $n78764)
             ($main_inv56 $i75761 $j76762 $m77763 $n78764 $A79765 $max80766))
        ($main_if27 $i75761 $j76762 $m77763 $n78764 $A79765 $max80766))))

; forwards $main_inv56
(assert
  (forall (($A79771 (Array Int (Array Int Int))) ($n78770 Int) ($j76768 Int) ($m77769 Int) ($i75767 Int) ($max80772 Int))
    (=> (and ($main_if27 $i75767 $j76768 $m77769 $n78770 $A79771 $max80772))
        ($main_inv56 $i75767 (+ $j76768 1) $m77769 $n78770 $A79771 $max80772))))

; forwards $main_inv55
(assert
  (forall (($m77775 Int) ($i75773 Int) ($max80778 Int) ($A79777 (Array Int (Array Int Int))) ($n78776 Int) ($j76774 Int))
    (=> (and ($main_sum56 $i75773 $j76774 $m77775 $n78776 $A79777 $max80778))
        ($main_inv55 (+ $i75773 1) $j76774 $m77775 $n78776 $A79777 $max80778))))

; loop entry $main_inv57
(assert
  (forall (($max80784 Int) ($A79783 (Array Int (Array Int Int))) ($i75779 Int) ($m77781 Int) ($j76780 Int) ($n78782 Int))
    (=> (and ($main_sum55 $i75779 $j76780 $m77781 $n78782 $A79783 $max80784))
        ($main_inv57 0 0 $m77781 $n78782 $A79783 $max80784))))

; loop term $main_sum57
(assert
  (forall (($A79789 (Array Int (Array Int Int))) ($n78788 Int) ($m77787 Int) ($j76786 Int) ($max80790 Int) ($i75785 Int))
    (=> (and (not (< $i75785 $n78788))
             ($main_inv57 $i75785 $j76786 $m77787 $n78788 $A79789 $max80790))
        ($main_sum57 $i75785 $j76786 $m77787 $n78788 $A79789 $max80790))))

; loop entry $main_inv58
(assert
  (forall (($A79789 (Array Int (Array Int Int))) ($n78788 Int) ($m77787 Int) ($j76786 Int) ($max80790 Int) ($i75785 Int))
    (=> (and (< $i75785 $n78788)
             ($main_inv57 $i75785 $j76786 $m77787 $n78788 $A79789 $max80790))
        ($main_inv58 $i75785 0 $m77787 $n78788 $A79789 $max80790))))

; loop term $main_sum58
(assert
  (forall (($m77793 Int) ($n78794 Int) ($A79795 (Array Int (Array Int Int))) ($j76792 Int) ($i75791 Int) ($max80796 Int))
    (=> (and (not (< $j76792 $n78794))
             ($main_inv58 $i75791 $j76792 $m77793 $n78794 $A79795 $max80796))
        ($main_sum58 $i75791 $j76792 $m77793 $n78794 $A79795 $max80796))))

; __VERIFIER_assert precondition
(assert
  (forall (($m77793 Int) ($n78794 Int) ($A79795 (Array Int (Array Int Int))) ($j76792 Int) ($i75791 Int) ($max80796 Int))
    (=> (and (< $j76792 $n78794)
             ($main_inv58 $i75791 $j76792 $m77793 $n78794 $A79795 $max80796))
        ($__VERIFIER_assert_pre (ite (<= (select (select $A79795 $i75791) $j76792) $max80796) 1 0)))))

; forwards $main_inv58
(assert
  (forall (($m77793 Int) ($n78794 Int) ($A79795 (Array Int (Array Int Int))) ($j76792 Int) ($i75791 Int) ($max80796 Int))
    (=> (and (__VERIFIER_assert (ite (<= (select (select $A79795 $i75791) $j76792) $max80796) 1 0))
             (< $j76792 $n78794)
             ($main_inv58 $i75791 $j76792 $m77793 $n78794 $A79795 $max80796))
        ($main_inv58 $i75791 (+ $j76792 1) $m77793 $n78794 $A79795 $max80796))))

; forwards $main_inv57
(assert
  (forall (($max80802 Int) ($n78800 Int) ($A79801 (Array Int (Array Int Int))) ($i75797 Int) ($m77799 Int) ($j76798 Int))
    (=> (and ($main_sum58 $i75797 $j76798 $m77799 $n78800 $A79801 $max80802))
        ($main_inv57 (+ $i75797 1) $j76798 $m77799 $n78800 $A79801 $max80802))))

(check-sat)
