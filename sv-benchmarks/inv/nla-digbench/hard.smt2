(set-logic HORN)

(declare-fun $main_sum289 (Int Int Int Int Int Int) Bool)
(declare-fun $main_inv289 (Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_if755 (Int) Bool)
(declare-fun $assume_abort_if_not_if754 (Int) Bool)
(declare-fun $main_if758 (Int Int Int Int Int Int) Bool)
(declare-fun $main_inv288 (Int Int Int Int Int Int) Bool)
(declare-fun $assume_abort_if_not_pre (Int) Bool)
(declare-fun $main_if756 (Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_if757 (Int Int Int Int Int Int) Bool)
(declare-fun $main_sum288 (Int Int Int Int Int Int) Bool)
(declare-fun assume_abort_if_not (Int) Bool)

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($assume_abort_if_not_pre cond))
        ($assume_abort_if_not_if754 cond))))

; post assume_abort_if_not
(assert
  (forall ((cond15707 Int))
    (=> (and ($assume_abort_if_not_if754 cond15707))
        (assume_abort_if_not cond15707))))

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond15708 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15708))
        false)))

; if then
(assert
  (forall ((cond15708 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond15708))
        ($__VERIFIER_assert_if755 cond15708))))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if755 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond15709 Int))
    (=> (and ($__VERIFIER_assert_if755 cond15709))
        (__VERIFIER_assert cond15709))))

; assume_abort_if_not precondition
(assert
  (forall (($int15711 Int) ($int15710 Int))
    (=> (and (<= (- 2147483648) $int15711)
             (<= $int15711 2147483647)
             (<= (- 2147483648) $int15710)
             (<= $int15710 2147483647))
        ($assume_abort_if_not_pre (ite (>= $int15711 1) 1 0)))))

; loop entry $main_inv288
(assert
  (forall (($int15710 Int) ($int15711 Int))
    (=> (and (assume_abort_if_not (ite (>= $int15711 1) 1 0))
             (<= (- 2147483648) $int15711)
             (<= $int15711 2147483647)
             (<= (- 2147483648) $int15710)
             (<= $int15710 2147483647))
        ($main_inv288 $int15710 $int15711 $int15710 $int15711 1 0))))

; loop term $main_sum288
(assert
  (forall (($p83315716 Int) ($B83015713 Int) ($A82915712 Int) ($d83215715 Int) ($q83415717 Int) ($r83115714 Int))
    (=> (and (= 1 0)
             ($main_inv288 $A82915712 $B83015713 $r83115714 $d83215715 $p83315716 $q83415717))
        ($main_sum288 $A82915712 $B83015713 $r83115714 $d83215715 $p83315716 $q83415717))))

; __VERIFIER_assert precondition
(assert
  (forall (($p83315716 Int) ($B83015713 Int) ($A82915712 Int) ($d83215715 Int) ($q83415717 Int) ($r83115714 Int))
    (=> (and (not (= 1 0))
             ($main_inv288 $A82915712 $B83015713 $r83115714 $d83215715 $p83315716 $q83415717))
        ($__VERIFIER_assert_pre (ite (= $q83415717 0) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($p83315716 Int) ($B83015713 Int) ($A82915712 Int) ($d83215715 Int) ($q83415717 Int) ($r83115714 Int))
    (=> (and (__VERIFIER_assert (ite (= $q83415717 0) 1 0))
             (not (= 1 0))
             ($main_inv288 $A82915712 $B83015713 $r83115714 $d83215715 $p83315716 $q83415717))
        ($__VERIFIER_assert_pre (ite (= $r83115714 $A82915712) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($p83315716 Int) ($B83015713 Int) ($A82915712 Int) ($d83215715 Int) ($q83415717 Int) ($r83115714 Int))
    (=> (and (__VERIFIER_assert (ite (= $r83115714 $A82915712) 1 0))
             (__VERIFIER_assert (ite (= $q83415717 0) 1 0))
             (not (= 1 0))
             ($main_inv288 $A82915712 $B83015713 $r83115714 $d83215715 $p83315716 $q83415717))
        ($__VERIFIER_assert_pre (ite (= $d83215715 (* $B83015713 $p83315716)) 1 0)))))

; break $main_sum288
(assert
  (forall (($p83315716 Int) ($B83015713 Int) ($A82915712 Int) ($d83215715 Int) ($q83415717 Int) ($r83115714 Int))
    (=> (and (not (>= $r83115714 $d83215715))
             (__VERIFIER_assert (ite (= $d83215715 (* $B83015713 $p83315716)) 1 0))
             (__VERIFIER_assert (ite (= $r83115714 $A82915712) 1 0))
             (__VERIFIER_assert (ite (= $q83415717 0) 1 0))
             (not (= 1 0))
             ($main_inv288 $A82915712 $B83015713 $r83115714 $d83215715 $p83315716 $q83415717))
        ($main_sum288 $A82915712 $B83015713 $r83115714 $d83215715 $p83315716 $q83415717))))

; if else
(assert
  (forall (($p83315716 Int) ($B83015713 Int) ($A82915712 Int) ($d83215715 Int) ($q83415717 Int) ($r83115714 Int))
    (=> (and (>= $r83115714 $d83215715)
             (__VERIFIER_assert (ite (= $d83215715 (* $B83015713 $p83315716)) 1 0))
             (__VERIFIER_assert (ite (= $r83115714 $A82915712) 1 0))
             (__VERIFIER_assert (ite (= $q83415717 0) 1 0))
             (not (= 1 0))
             ($main_inv288 $A82915712 $B83015713 $r83115714 $d83215715 $p83315716 $q83415717))
        ($main_if756 $A82915712 $B83015713 $r83115714 $d83215715 $p83315716 $q83415717))))

; forwards $main_inv288
(assert
  (forall (($p83315722 Int) ($B83015719 Int) ($r83115720 Int) ($q83415723 Int) ($d83215721 Int) ($A82915718 Int))
    (=> (and ($main_if756 $A82915718 $B83015719 $r83115720 $d83215721 $p83315722 $q83415723))
        ($main_inv288 $A82915718 $B83015719 $r83115720 (* 2 $d83215721) (* 2 $p83315722) $q83415723))))

; loop entry $main_inv289
(assert
  (forall (($d83215727 Int) ($A82915724 Int) ($r83115726 Int) ($B83015725 Int) ($p83315728 Int) ($q83415729 Int))
    (=> (and ($main_sum288 $A82915724 $B83015725 $r83115726 $d83215727 $p83315728 $q83415729))
        ($main_inv289 $A82915724 $B83015725 $r83115726 $d83215727 $p83315728 $q83415729))))

; loop term $main_sum289
(assert
  (forall (($q83415735 Int) ($d83215733 Int) ($p83315734 Int) ($A82915730 Int) ($r83115732 Int) ($B83015731 Int))
    (=> (and (= 1 0)
             ($main_inv289 $A82915730 $B83015731 $r83115732 $d83215733 $p83315734 $q83415735))
        ($main_sum289 $A82915730 $B83015731 $r83115732 $d83215733 $p83315734 $q83415735))))

; __VERIFIER_assert precondition
(assert
  (forall (($q83415735 Int) ($d83215733 Int) ($p83315734 Int) ($A82915730 Int) ($r83115732 Int) ($B83015731 Int))
    (=> (and (not (= 1 0))
             ($main_inv289 $A82915730 $B83015731 $r83115732 $d83215733 $p83315734 $q83415735))
        ($__VERIFIER_assert_pre (ite (= $A82915730 (+ (* $q83415735 $B83015731) $r83115732)) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($q83415735 Int) ($d83215733 Int) ($p83315734 Int) ($A82915730 Int) ($r83115732 Int) ($B83015731 Int))
    (=> (and (__VERIFIER_assert (ite (= $A82915730 (+ (* $q83415735 $B83015731) $r83115732)) 1 0))
             (not (= 1 0))
             ($main_inv289 $A82915730 $B83015731 $r83115732 $d83215733 $p83315734 $q83415735))
        ($__VERIFIER_assert_pre (ite (= $d83215733 (* $B83015731 $p83315734)) 1 0)))))

; break $main_sum289
(assert
  (forall (($q83415735 Int) ($d83215733 Int) ($p83315734 Int) ($A82915730 Int) ($r83115732 Int) ($B83015731 Int))
    (=> (and (= $p83315734 1)
             (__VERIFIER_assert (ite (= $d83215733 (* $B83015731 $p83315734)) 1 0))
             (__VERIFIER_assert (ite (= $A82915730 (+ (* $q83415735 $B83015731) $r83115732)) 1 0))
             (not (= 1 0))
             ($main_inv289 $A82915730 $B83015731 $r83115732 $d83215733 $p83315734 $q83415735))
        ($main_sum289 $A82915730 $B83015731 $r83115732 $d83215733 $p83315734 $q83415735))))

; if else
(assert
  (forall (($q83415735 Int) ($d83215733 Int) ($p83315734 Int) ($A82915730 Int) ($r83115732 Int) ($B83015731 Int))
    (=> (and (not (= $p83315734 1))
             (__VERIFIER_assert (ite (= $d83215733 (* $B83015731 $p83315734)) 1 0))
             (__VERIFIER_assert (ite (= $A82915730 (+ (* $q83415735 $B83015731) $r83115732)) 1 0))
             (not (= 1 0))
             ($main_inv289 $A82915730 $B83015731 $r83115732 $d83215733 $p83315734 $q83415735))
        ($main_if757 $A82915730 $B83015731 $r83115732 $d83215733 $p83315734 $q83415735))))

; if then
(assert
  (forall (($A82915736 Int) ($p83315740 Int) ($d83215739 Int) ($q83415741 Int) ($B83015737 Int) ($r83115738 Int))
    (=> (and (>= $r83115738 (div $d83215739 2))
             ($main_if757 $A82915736 $B83015737 $r83115738 $d83215739 $p83315740 $q83415741))
        ($main_if758 $A82915736 $B83015737 (- $r83115738 (div $d83215739 2)) (div $d83215739 2) (div $p83315740 2) (+ $q83415741 (div $p83315740 2))))))

; if else
(assert
  (forall (($A82915736 Int) ($p83315740 Int) ($d83215739 Int) ($q83415741 Int) ($B83015737 Int) ($r83115738 Int))
    (=> (and (not (>= $r83115738 (div $d83215739 2)))
             ($main_if757 $A82915736 $B83015737 $r83115738 $d83215739 $p83315740 $q83415741))
        ($main_if758 $A82915736 $B83015737 $r83115738 (div $d83215739 2) (div $p83315740 2) $q83415741))))

; forwards $main_inv289
(assert
  (forall (($A82915742 Int) ($B83015743 Int) ($p83315746 Int) ($q83415747 Int) ($r83115744 Int) ($d83215745 Int))
    (=> (and ($main_if758 $A82915742 $B83015743 $r83115744 $d83215745 $p83315746 $q83415747))
        ($main_inv289 $A82915742 $B83015743 $r83115744 $d83215745 $p83315746 $q83415747))))

; __VERIFIER_assert precondition
(assert
  (forall (($A82915748 Int) ($q83415753 Int) ($r83115750 Int) ($p83315752 Int) ($B83015749 Int) ($d83215751 Int))
    (=> (and ($main_sum289 $A82915748 $B83015749 $r83115750 $d83215751 $p83315752 $q83415753))
        ($__VERIFIER_assert_pre (ite (= $A82915748 (+ (* $d83215751 $q83415753) $r83115750)) 1 0)))))

; __VERIFIER_assert precondition
(assert
  (forall (($A82915748 Int) ($q83415753 Int) ($r83115750 Int) ($p83315752 Int) ($B83015749 Int) ($d83215751 Int))
    (=> (and (__VERIFIER_assert (ite (= $A82915748 (+ (* $d83215751 $q83415753) $r83115750)) 1 0))
             ($main_sum289 $A82915748 $B83015749 $r83115750 $d83215751 $p83315752 $q83415753))
        ($__VERIFIER_assert_pre (ite (= $B83015749 $d83215751) 1 0)))))

(check-sat)
