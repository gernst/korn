(set-logic HORN)

(declare-fun $sep_if407 ((Array Int Int) Int Int) Bool)
(declare-fun $sep_sum556 ((Array Int Int) Int Int) Bool)
(declare-fun $sep_inv556 ((Array Int Int) Int Int) Bool)
(declare-fun $main_if408 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $sep_pre ((Array Int Int)) Bool)
(declare-fun $main_sum558 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum557 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_inv557 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun sep ((Array Int Int) Int) Bool)
(declare-fun $main_inv558 ((Array Int Int) Int Int Int Int Int Int) Bool)

; loop entry $sep_inv556
(assert
  (forall ((x (Array Int Int)) ($ret839 Int) ($i840 Int))
    (=> (and (= $i840 0)
             (= $ret839 0)
             ($sep_pre x))
        ($sep_inv556 x $ret839 $i840))))

; loop term $sep_sum556
(assert
  (forall ((x7708 (Array Int Int)) ($ret8397709 Int) ($i8407710 Int))
    (=> (and (not (< $i8407710 20))
             ($sep_inv556 x7708 $ret8397709 $i8407710))
        ($sep_sum556 x7708 $ret8397709 $i8407710))))

; if then
(assert
  (forall ((x7708 (Array Int Int)) ($ret8397709 Int) ($i8407710 Int))
    (=> (and (= (mod (select x7708 $i8407710) 2) 0)
             (< $i8407710 20)
             ($sep_inv556 x7708 $ret8397709 $i8407710))
        ($sep_if407 x7708 (+ $ret8397709 1) $i8407710))))

; if else
(assert
  (forall ((x7708 (Array Int Int)) ($ret8397709 Int) ($i8407710 Int))
    (=> (and (not (= (mod (select x7708 $i8407710) 2) 0))
             (< $i8407710 20)
             ($sep_inv556 x7708 $ret8397709 $i8407710))
        ($sep_if407 x7708 (- $ret8397709 1) $i8407710))))

; forwards $sep_inv556
(assert
  (forall ((x7711 (Array Int Int)) ($ret8397712 Int) ($i8407713 Int))
    (=> (and ($sep_if407 x7711 $ret8397712 $i8407713))
        ($sep_inv556 x7711 $ret8397712 (+ $i8407713 1)))))

; post sep
(assert
  (forall ((x7714 (Array Int Int)) ($ret8397715 Int) ($i8407716 Int))
    (=> (and ($sep_sum556 x7714 $ret8397715 $i8407716))
        (sep x7714 $ret8397715))))

; loop entry $main_inv557
(assert
  (forall (($i846 Int) ($ret2844 Int) ($ret843 Int) ($x841 (Array Int Int)) ($i847 Int) ($ret5845 Int) ($temp842 Int))
    (=> (and (= $i846 0))
        ($main_inv557 $x841 $temp842 $ret843 $ret2844 $ret5845 $i846 $i847))))

; loop term $main_sum557
(assert
  (forall (($temp8427718 Int) ($ret8437719 Int) ($i8467722 Int) ($ret28447720 Int) ($ret58457721 Int) ($i8477723 Int) ($x8417717 (Array Int Int)))
    (=> (and (not (< $i8467722 20))
             ($main_inv557 $x8417717 $temp8427718 $ret8437719 $ret28447720 $ret58457721 $i8467722 $i8477723))
        ($main_sum557 $x8417717 $temp8427718 $ret8437719 $ret28447720 $ret58457721 $i8467722 $i8477723))))

; forwards $main_inv557
(assert
  (forall (($temp8427718 Int) ($ret8437719 Int) ($i8467722 Int) ($ret28447720 Int) ($ret58457721 Int) ($i8477723 Int) ($x8417717 (Array Int Int)) ($int7724 Int))
    (=> (and (<= (- 2147483648) $int7724)
             (<= $int7724 2147483647)
             (< $i8467722 20)
             ($main_inv557 $x8417717 $temp8427718 $ret8437719 $ret28447720 $ret58457721 $i8467722 $i8477723))
        ($main_inv557 (store $x8417717 $i8467722 $int7724) $temp8427718 $ret8437719 $ret28447720 $ret58457721 (+ $i8467722 1) $i8477723))))

; sep precondition
(assert
  (forall (($i8467730 Int) ($ret8437727 Int) ($temp8427726 Int) ($ret28447728 Int) ($ret58457729 Int) ($i8477731 Int) ($x8417725 (Array Int Int)))
    (=> (and ($main_sum557 $x8417725 $temp8427726 $ret8437727 $ret28447728 $ret58457729 $i8467730 $i8477731))
        ($sep_pre $x8417725))))

; sep precondition
(assert
  (forall (($i8467730 Int) ($ret8437727 Int) ($temp8427726 Int) ($ret28447728 Int) ($result7732 Int) ($ret58457729 Int) ($i8477731 Int) ($x8417725 (Array Int Int)))
    (=> (and (sep $x8417725 $result7732)
             ($main_sum557 $x8417725 $temp8427726 $ret8437727 $ret28447728 $ret58457729 $i8467730 $i8477731))
        ($sep_pre (store (store $x8417725 0 (select $x8417725 1)) 1 (select $x8417725 0))))))

; loop entry $main_inv558
(assert
  (forall (($i8467730 Int) ($ret8437727 Int) ($temp8427726 Int) ($result7733 Int) ($ret28447728 Int) ($result7732 Int) ($ret58457729 Int) ($i8477731 Int) ($x8417725 (Array Int Int)))
    (=> (and (= $i8477731 0)
             (sep (store (store $x8417725 0 (select $x8417725 1)) 1 (select $x8417725 0)) $result7733)
             (sep $x8417725 $result7732)
             ($main_sum557 $x8417725 $temp8427726 $ret8437727 $ret28447728 $ret58457729 $i8467730 $i8477731))
        ($main_inv558 (store (store $x8417725 0 (select $x8417725 1)) 1 (select $x8417725 0)) (select (store (store $x8417725 0 (select $x8417725 1)) 1 (select $x8417725 0)) 0) $result7732 $result7733 $ret58457729 $i8467730 $i8477731))))

; loop term $main_sum558
(assert
  (forall (($ret58457738 Int) ($temp8427735 Int) ($i8477740 Int) ($x8417734 (Array Int Int)) ($ret28447737 Int) ($ret8437736 Int) ($i8467739 Int))
    (=> (and (not (< $i8477740 (- 20 1)))
             ($main_inv558 $x8417734 $temp8427735 $ret8437736 $ret28447737 $ret58457738 $i8467739 $i8477740))
        ($main_sum558 $x8417734 $temp8427735 $ret8437736 $ret28447737 $ret58457738 $i8467739 $i8477740))))

; forwards $main_inv558
(assert
  (forall (($ret58457738 Int) ($temp8427735 Int) ($i8477740 Int) ($x8417734 (Array Int Int)) ($ret28447737 Int) ($ret8437736 Int) ($i8467739 Int))
    (=> (and (< $i8477740 (- 20 1))
             ($main_inv558 $x8417734 $temp8427735 $ret8437736 $ret28447737 $ret58457738 $i8467739 $i8477740))
        ($main_inv558 (store $x8417734 $i8477740 (select $x8417734 (+ $i8477740 1))) $temp8427735 $ret8437736 $ret28447737 $ret58457738 $i8467739 (+ $i8477740 1)))))

; sep precondition
(assert
  (forall (($ret58457745 Int) ($ret28447744 Int) ($x8417741 (Array Int Int)) ($i8477747 Int) ($i8467746 Int) ($temp8427742 Int) ($ret8437743 Int))
    (=> (and ($main_sum558 $x8417741 $temp8427742 $ret8437743 $ret28447744 $ret58457745 $i8467746 $i8477747))
        ($sep_pre (store $x8417741 (- 20 1) $temp8427742)))))

; error
(assert
  (forall (($ret58457745 Int) ($x8417741 (Array Int Int)) ($i8477747 Int) ($i8467746 Int) ($ret28447744 Int) ($result7748 Int) ($temp8427742 Int) ($ret8437743 Int))
    (=> (and (or (not (= $ret8437743 $ret28447744)) (not (= $ret8437743 $result7748)))
             (sep (store $x8417741 (- 20 1) $temp8427742) $result7748)
             ($main_sum558 $x8417741 $temp8427742 $ret8437743 $ret28447744 $ret58457745 $i8467746 $i8477747))
        false)))

; if then
(assert
  (forall (($ret58457745 Int) ($x8417741 (Array Int Int)) ($i8477747 Int) ($i8467746 Int) ($ret28447744 Int) ($result7748 Int) ($temp8427742 Int) ($ret8437743 Int))
    (=> (and (or (not (= $ret8437743 $ret28447744)) (not (= $ret8437743 $result7748)))
             (sep (store $x8417741 (- 20 1) $temp8427742) $result7748)
             ($main_sum558 $x8417741 $temp8427742 $ret8437743 $ret28447744 $ret58457745 $i8467746 $i8477747))
        ($main_if408 (store $x8417741 (- 20 1) $temp8427742) $temp8427742 $ret8437743 $ret28447744 $result7748 $i8467746 $i8477747))))

; if else
(assert
  (forall (($ret58457745 Int) ($x8417741 (Array Int Int)) ($i8477747 Int) ($i8467746 Int) ($ret28447744 Int) ($result7748 Int) ($temp8427742 Int) ($ret8437743 Int))
    (=> (and (not (or (not (= $ret8437743 $ret28447744)) (not (= $ret8437743 $result7748))))
             (sep (store $x8417741 (- 20 1) $temp8427742) $result7748)
             ($main_sum558 $x8417741 $temp8427742 $ret8437743 $ret28447744 $ret58457745 $i8467746 $i8477747))
        ($main_if408 (store $x8417741 (- 20 1) $temp8427742) $temp8427742 $ret8437743 $ret28447744 $result7748 $i8467746 $i8477747))))

(check-sat)
