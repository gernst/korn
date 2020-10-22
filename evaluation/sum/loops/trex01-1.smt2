(set-logic HORN)

(declare-fun $f_sum270 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $f_inv271 (Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_if705 (Int Int) Bool)
(declare-fun $__VERIFIER_nondet_bool_pre () Bool)
(declare-fun $f_L1 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $f_pre (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $f_P1 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $f_sum271 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_nondet_bool (Int) Bool)
(declare-fun $f_if704 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $f_L2 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $f_inv270 (Int Int Int Int Int Int) Bool)
(declare-fun $f_if703 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun f (Int) Bool)
(declare-fun $__VERIFIER_assert_if702 (Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond16711 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond16711))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if702 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond16712 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if702 cond cond16712))
        (__VERIFIER_assert cond16712))))

; post f
(assert
  (forall (($y748 Int) ($int16715 Int) ($int16714 Int) ($x747 Int) ($k749 Int) ($int16713 Int) ($z750 Int) (d Int))
    (=> (and (not (<= $k749 1073741823))
             (= $z750 1)
             (= $k749 $int16715)
             (<= (- 2147483648) $int16715)
             (<= $int16715 2147483647)
             (= $y748 $int16714)
             (<= (- 2147483648) $int16714)
             (<= $int16714 2147483647)
             (= $x747 $int16713)
             (<= (- 2147483648) $int16713)
             (<= $int16713 2147483647)
             ($f_pre d))
        (f d))))

; if else
(assert
  (forall (($y748 Int) ($int16715 Int) ($int16714 Int) ($x747 Int) ($k749 Int) ($c751 Int) ($int16713 Int) ($z750 Int) (d Int))
    (=> (and (<= $k749 1073741823)
             (= $z750 1)
             (= $k749 $int16715)
             (<= (- 2147483648) $int16715)
             (<= $int16715 2147483647)
             (= $y748 $int16714)
             (<= (- 2147483648) $int16714)
             (<= $int16714 2147483647)
             (= $x747 $int16713)
             (<= (- 2147483648) $int16713)
             (<= $int16713 2147483647)
             ($f_pre d))
        ($f_if703 d $x747 $y748 $k749 $z750 $c751 d $x747 $y748 $k749 $z750 $c751))))

; label L1
(assert
  (forall (($y748 Int) ($x747 Int) ($y74816718 Int) ($k749 Int) (d16716 Int) ($c75116721 Int) ($z750 Int) ($z75016720 Int) ($x74716717 Int) (d Int) ($c751 Int) ($k74916719 Int))
    (=> (and ($f_if703 d $x747 $y748 $k749 $z750 $c751 d16716 $x74716717 $y74816718 $k74916719 $z75016720 $c75116721))
        ($f_L1 d $x747 $y748 $k749 $z750 $c751 d16716 $x74716717 $y74816718 $k74916719 $z75016720 $c75116721))))

; loop entry $f_inv270
(assert
  (forall (($k74916725 Int) ($x74716723 Int) ($x747 Int) ($k749 Int) ($c751 Int) ($c75116727 Int) ($z750 Int) (d Int) ($y74816724 Int) ($y748 Int) (d16722 Int) ($z75016726 Int))
    (=> (and ($f_L1 d $x747 $y748 $k749 $z750 $c751 d16722 $x74716723 $y74816724 $k74916725 $z75016726 $c75116727))
        ($f_inv270 d16722 $x74716723 $y74816724 $k74916725 $z75016726 $c75116727))))

; loop term $f_sum270
(assert
  (forall (($y74816730 Int) ($c75116733 Int) (d16728 Int) ($x74716729 Int) ($z75016732 Int) ($k74916731 Int))
    (=> (and (not (< $z75016732 $k74916731)))
        ($f_sum270 d16728 $x74716729 $y74816730 $k74916731 $z75016732 $c75116733 d16728 $x74716729 $y74816730 $k74916731 $z75016732 $c75116733))))

; forwards $f_inv270
(assert
  (forall (($y74816730 Int) ($c75116733 Int) (d16728 Int) ($x74716729 Int) ($z75016732 Int) ($k74916731 Int))
    (=> (and (< $z75016732 $k74916731)
             ($f_inv270 d16728 $x74716729 $y74816730 $k74916731 $z75016732 $c75116733))
        ($f_inv270 d16728 $x74716729 $y74816730 $k74916731 (* 2 $z75016732) $c75116733))))

; backwards $f_sum270
(assert
  (forall (($y74816730 Int) ($z75016738 Int) ($x74716735 Int) ($y74816736 Int) (d16728 Int) ($x74716729 Int) (d16734 Int) ($k74916731 Int) ($c75116739 Int) ($c75116733 Int) ($z75016732 Int) ($k74916737 Int))
    (=> (and ($f_sum270 d16728 $x74716729 $y74816730 $k74916731 (* 2 $z75016732) $c75116733 d16734 $x74716735 $y74816736 $k74916737 $z75016738 $c75116739)
             (< $z75016732 $k74916731))
        ($f_sum270 d16728 $x74716729 $y74816730 $k74916731 $z75016732 $c75116733 d16734 $x74716735 $y74816736 $k74916737 $z75016738 $c75116739))))

; __VERIFIER_assert precondition
(assert
  (forall (($k74916725 Int) ($c75116745 Int) ($x747 Int) ($k749 Int) ($c751 Int) ($k74916743 Int) ($z750 Int) (d16740 Int) ($x74716741 Int) ($x74716723 Int) ($y74816724 Int) ($y748 Int) ($c75116727 Int) ($y74816742 Int) (d16722 Int) ($z75016726 Int) ($z75016744 Int) (d Int))
    (=> (and ($f_sum270 d16722 $x74716723 $y74816724 $k74916725 $z75016726 $c75116727 d16740 $x74716741 $y74816742 $k74916743 $z75016744 $c75116745)
             ($f_L1 d $x747 $y748 $k749 $z750 $c751 d16722 $x74716723 $y74816724 $k74916725 $z75016726 $c75116727))
        ($__VERIFIER_assert_pre (ite (>= $z75016744 2) 1 0)))))

; label L2
(assert
  (forall (($k74916725 Int) ($c75116745 Int) ($x747 Int) ($k749 Int) ($c751 Int) ($k74916743 Int) ($z750 Int) (d16740 Int) ($x74716741 Int) ($x74716723 Int) ($y74816724 Int) ($y748 Int) ($c75116727 Int) ($y74816742 Int) (d16722 Int) ($z75016726 Int) ($z75016744 Int) (d Int))
    (=> (and (__VERIFIER_assert (ite (>= $z75016744 2) 1 0))
             ($f_sum270 d16722 $x74716723 $y74816724 $k74916725 $z75016726 $c75116727 d16740 $x74716741 $y74816742 $k74916743 $z75016744 $c75116745)
             ($f_L1 d $x747 $y748 $k749 $z750 $c751 d16722 $x74716723 $y74816724 $k74916725 $z75016726 $c75116727))
        ($f_L2 d $x747 $y748 $k749 $z750 $c751 d16740 $x74716741 $y74816742 $k74916743 $z75016744 $c75116745))))

; loop entry $f_inv271
(assert
  (forall (($y748 Int) ($x747 Int) (d16746 Int) ($k74916749 Int) ($k749 Int) ($y74816748 Int) ($z750 Int) ($z75016750 Int) ($x74716747 Int) ($c751 Int) ($c75116751 Int) (d Int))
    (=> (and ($f_L2 d $x747 $y748 $k749 $z750 $c751 d16746 $x74716747 $y74816748 $k74916749 $z75016750 $c75116751))
        ($f_inv271 d16746 $x74716747 $y74816748 $k74916749 $z75016750 $c75116751))))

; loop term $f_sum271
(assert
  (forall (($y74816754 Int) ($c75116757 Int) (d16752 Int) ($z75016756 Int) ($k74916755 Int) ($x74716753 Int))
    (=> (and (not (and (> $x74716753 0) (> $y74816754 0))))
        ($f_sum271 d16752 $x74716753 $y74816754 $k74916755 $z75016756 $c75116757 d16752 $x74716753 $y74816754 $k74916755 $z75016756 $c75116757))))

; label P1
(assert
  (forall (($y74816754 Int) ($c75116757 Int) (d16752 Int) ($z75016756 Int) ($k74916755 Int) ($x74716753 Int) ($bool16758 Int))
    (=> (and (not (= $c75116757 0))
             (= $c75116757 $bool16758)
             (or (= $bool16758 0) (= $bool16758 1))
             (> $x74716753 0)
             (> $y74816754 0)
             ($f_inv271 d16752 $x74716753 $y74816754 $k74916755 $z75016756 $c75116757))
        ($f_P1 d16752 $x74716753 $y74816754 $k74916755 $z75016756 $c75116757 d16752 $x74716753 $y74816754 $k74916755 $z75016756 $c75116757))))

; if then
(assert
  (forall (($bool16765 Int) ($c75116757 Int) (d16752 Int) ($z75016756 Int) ($k74916762 Int) ($x74716753 Int) ($x74716760 Int) ($z75016763 Int) ($c75116764 Int) (d16759 Int) ($y74816754 Int) ($k74916755 Int) ($y74816761 Int))
    (=> (and (or (= $bool16765 0) (= $bool16765 1))
             ($f_P1 d16752 $x74716753 $y74816754 $k74916755 $z75016756 $c75116757 d16759 $x74716760 $y74816761 $k74916762 $z75016763 $c75116764))
        ($f_if704 d16752 $x74716753 $y74816754 $k74916755 $z75016756 $c75116757 d16759 (- $x74716760 d16759) $bool16765 $k74916762 (- $z75016763 1) $c75116764))))

; if else
(assert
  (forall (($y74816754 Int) ($c75116757 Int) (d16752 Int) ($z75016756 Int) ($k74916755 Int) ($x74716753 Int) ($bool16758 Int))
    (=> (and (= $c75116757 0)
             (= $c75116757 $bool16758)
             (or (= $bool16758 0) (= $bool16758 1))
             (> $x74716753 0)
             (> $y74816754 0)
             ($f_inv271 d16752 $x74716753 $y74816754 $k74916755 $z75016756 $c75116757))
        ($f_if704 d16752 $x74716753 $y74816754 $k74916755 $z75016756 $c75116757 d16752 $x74716753 (- $y74816754 d16752) $k74916755 $z75016756 $c75116757))))

; forwards $f_inv271
(assert
  (forall (($z75016770 Int) ($y74816754 Int) ($c75116771 Int) ($c75116757 Int) ($z75016756 Int) ($k74916755 Int) ($x74716767 Int) ($x74716753 Int) ($y74816768 Int) (d16766 Int) (d16752 Int) ($k74916769 Int))
    (=> (and ($f_if704 d16752 $x74716753 $y74816754 $k74916755 $z75016756 $c75116757 d16766 $x74716767 $y74816768 $k74916769 $z75016770 $c75116771))
        ($f_inv271 d16766 $x74716767 $y74816768 $k74916769 $z75016770 $c75116771))))

; backwards $f_sum271
(assert
  (forall (($y74816754 Int) ($c75116757 Int) ($z75016756 Int) ($x74716767 Int) ($x74716753 Int) ($y74816774 Int) ($c75116777 Int) ($z75016770 Int) ($z75016776 Int) (d16772 Int) ($y74816768 Int) (d16766 Int) ($c75116771 Int) ($x74716773 Int) (d16752 Int) ($k74916769 Int) ($k74916755 Int) ($k74916775 Int))
    (=> (and ($f_sum271 d16766 $x74716767 $y74816768 $k74916769 $z75016770 $c75116771 d16772 $x74716773 $y74816774 $k74916775 $z75016776 $c75116777)
             ($f_if704 d16752 $x74716753 $y74816754 $k74916755 $z75016756 $c75116757 d16766 $x74716767 $y74816768 $k74916769 $z75016770 $c75116771))
        ($f_sum271 d16752 $x74716753 $y74816754 $k74916755 $z75016756 $c75116757 d16772 $x74716773 $y74816774 $k74916775 $z75016776 $c75116777))))

; post f
(assert
  (forall (($y74816780 Int) ($y748 Int) ($c75116783 Int) ($z75016782 Int) (d16746 Int) ($k749 Int) ($y74816748 Int) ($z75016750 Int) ($x74716779 Int) ($x747 Int) (d16778 Int) ($k74916749 Int) ($x74716747 Int) ($c751 Int) ($k74916781 Int) ($z750 Int) ($c75116751 Int) (d Int))
    (=> (and ($f_sum271 d16746 $x74716747 $y74816748 $k74916749 $z75016750 $c75116751 d16778 $x74716779 $y74816780 $k74916781 $z75016782 $c75116783)
             ($f_L2 d $x747 $y748 $k749 $z750 $c751 d16746 $x74716747 $y74816748 $k74916749 $z75016750 $c75116751))
        (f d16778))))

; f precondition
(assert
  (forall (($c752 Int) ($bool16784 Int))
    (=> (and (not (= $c752 0))
             (= $c752 $bool16784)
             (or (= $bool16784 0) (= $bool16784 1)))
        ($f_pre 1))))

; f precondition
(assert
  (forall (($c752 Int) ($bool16784 Int))
    (=> (and (= $c752 0)
             (= $c752 $bool16784)
             (or (= $bool16784 0) (= $bool16784 1)))
        ($f_pre 2))))

; if then
(assert
  (forall (($c752 Int) ($bool16784 Int))
    (=> (and (f 1)
             (not (= $c752 0))
             (= $c752 $bool16784)
             (or (= $bool16784 0) (= $bool16784 1)))
        ($main_if705 $c752 $c752))))

; if else
(assert
  (forall (($c752 Int) ($bool16784 Int))
    (=> (and (f 2)
             (= $c752 0)
             (= $c752 $bool16784)
             (or (= $bool16784 0) (= $bool16784 1)))
        ($main_if705 $c752 $c752))))

(check-sat)
