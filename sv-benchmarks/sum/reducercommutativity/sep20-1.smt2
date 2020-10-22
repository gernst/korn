(set-logic HORN)

(declare-fun $sep_if407 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $sep_sum556 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_sum557 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $sep_inv556 ((Array Int Int) Int Int) Bool)
(declare-fun $main_if408 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $sep_pre ((Array Int Int)) Bool)
(declare-fun $main_sum558 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
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
  (forall ((x10713 (Array Int Int)) ($ret83910714 Int) ($i84010715 Int))
    (=> (and (not (< $i84010715 20)))
        ($sep_sum556 x10713 $ret83910714 $i84010715 x10713 $ret83910714 $i84010715))))

; if then
(assert
  (forall ((x10713 (Array Int Int)) ($ret83910714 Int) ($i84010715 Int))
    (=> (and (= (mod (select x10713 $i84010715) 2) 0)
             (< $i84010715 20)
             ($sep_inv556 x10713 $ret83910714 $i84010715))
        ($sep_if407 x10713 $ret83910714 $i84010715 x10713 (+ $ret83910714 1) $i84010715))))

; if else
(assert
  (forall ((x10713 (Array Int Int)) ($ret83910714 Int) ($i84010715 Int))
    (=> (and (not (= (mod (select x10713 $i84010715) 2) 0))
             (< $i84010715 20)
             ($sep_inv556 x10713 $ret83910714 $i84010715))
        ($sep_if407 x10713 $ret83910714 $i84010715 x10713 (- $ret83910714 1) $i84010715))))

; forwards $sep_inv556
(assert
  (forall ((x10716 (Array Int Int)) ($ret83910714 Int) ($i84010715 Int) ($ret83910717 Int) (x10713 (Array Int Int)) ($i84010718 Int))
    (=> (and ($sep_if407 x10713 $ret83910714 $i84010715 x10716 $ret83910717 $i84010718))
        ($sep_inv556 x10716 $ret83910717 (+ $i84010718 1)))))

; backwards $sep_sum556
(assert
  (forall ((x10716 (Array Int Int)) ($ret83910714 Int) ($ret83910720 Int) ($i84010715 Int) ($ret83910717 Int) ($i84010721 Int) (x10719 (Array Int Int)) (x10713 (Array Int Int)) ($i84010718 Int))
    (=> (and ($sep_sum556 x10716 $ret83910717 (+ $i84010718 1) x10719 $ret83910720 $i84010721)
             ($sep_if407 x10713 $ret83910714 $i84010715 x10716 $ret83910717 $i84010718))
        ($sep_sum556 x10713 $ret83910714 $i84010715 x10719 $ret83910720 $i84010721))))

; post sep
(assert
  (forall ((x (Array Int Int)) ($i840 Int) ($ret83910723 Int) ($i84010724 Int) (x10722 (Array Int Int)) ($ret839 Int))
    (=> (and ($sep_sum556 x $ret839 $i840 x10722 $ret83910723 $i84010724)
             (= $i840 0)
             (= $ret839 0)
             ($sep_pre x))
        (sep x10722 $ret83910723))))

; loop entry $main_inv557
(assert
  (forall (($i846 Int) ($ret2844 Int) ($ret843 Int) ($x841 (Array Int Int)) ($i847 Int) ($ret5845 Int) ($temp842 Int))
    (=> (and (= $i846 0))
        ($main_inv557 $x841 $temp842 $ret843 $ret2844 $ret5845 $i846 $i847))))

; loop term $main_sum557
(assert
  (forall (($temp84210726 Int) ($ret84310727 Int) ($i84610730 Int) ($x84110725 (Array Int Int)) ($ret584510729 Int) ($ret284410728 Int) ($i84710731 Int))
    (=> (and (not (< $i84610730 20)))
        ($main_sum557 $x84110725 $temp84210726 $ret84310727 $ret284410728 $ret584510729 $i84610730 $i84710731 $x84110725 $temp84210726 $ret84310727 $ret284410728 $ret584510729 $i84610730 $i84710731))))

; forwards $main_inv557
(assert
  (forall (($temp84210726 Int) ($ret84310727 Int) ($i84610730 Int) ($int10732 Int) ($x84110725 (Array Int Int)) ($ret584510729 Int) ($ret284410728 Int) ($i84710731 Int))
    (=> (and (<= (- 2147483648) $int10732)
             (<= $int10732 2147483647)
             (< $i84610730 20)
             ($main_inv557 $x84110725 $temp84210726 $ret84310727 $ret284410728 $ret584510729 $i84610730 $i84710731))
        ($main_inv557 (store $x84110725 $i84610730 $int10732) $temp84210726 $ret84310727 $ret284410728 $ret584510729 (+ $i84610730 1) $i84710731))))

; backwards $main_sum557
(assert
  (forall (($ret584510737 Int) ($ret84310735 Int) ($x84110733 (Array Int Int)) ($temp84210734 Int) ($i84610738 Int) ($ret284410736 Int) ($i84710739 Int) ($temp84210726 Int) ($ret84310727 Int) ($i84610730 Int) ($int10732 Int) ($x84110725 (Array Int Int)) ($ret584510729 Int) ($ret284410728 Int) ($i84710731 Int))
    (=> (and ($main_sum557 (store $x84110725 $i84610730 $int10732) $temp84210726 $ret84310727 $ret284410728 $ret584510729 (+ $i84610730 1) $i84710731 $x84110733 $temp84210734 $ret84310735 $ret284410736 $ret584510737 $i84610738 $i84710739)
             (<= (- 2147483648) $int10732)
             (<= $int10732 2147483647)
             (< $i84610730 20))
        ($main_sum557 $x84110725 $temp84210726 $ret84310727 $ret284410728 $ret584510729 $i84610730 $i84710731 $x84110733 $temp84210734 $ret84310735 $ret284410736 $ret584510737 $i84610738 $i84710739))))

; sep precondition
(assert
  (forall (($i846 Int) ($ret2844 Int) ($ret843 Int) ($i847 Int) ($temp84210741 Int) ($x84110740 (Array Int Int)) ($ret584510744 Int) ($i84710746 Int) ($ret284410743 Int) ($ret5845 Int) ($temp842 Int) ($ret84310742 Int) ($x841 (Array Int Int)) ($i84610745 Int))
    (=> (and ($main_sum557 $x841 $temp842 $ret843 $ret2844 $ret5845 $i846 $i847 $x84110740 $temp84210741 $ret84310742 $ret284410743 $ret584510744 $i84610745 $i84710746)
             (= $i846 0))
        ($sep_pre $x84110740))))

; sep precondition
(assert
  (forall (($i846 Int) ($ret2844 Int) ($result10747 Int) ($ret843 Int) ($i847 Int) ($temp84210741 Int) ($x84110740 (Array Int Int)) ($ret584510744 Int) ($i84710746 Int) ($ret284410743 Int) ($ret5845 Int) ($temp842 Int) ($ret84310742 Int) ($x841 (Array Int Int)) ($i84610745 Int))
    (=> (and (sep $x84110740 $result10747)
             ($main_sum557 $x841 $temp842 $ret843 $ret2844 $ret5845 $i846 $i847 $x84110740 $temp84210741 $ret84310742 $ret284410743 $ret584510744 $i84610745 $i84710746)
             (= $i846 0))
        ($sep_pre (store (store $x84110740 0 (select $x84110740 1)) 1 (select $x84110740 0))))))

; loop entry $main_inv558
(assert
  (forall (($i846 Int) ($ret2844 Int) ($result10747 Int) ($result10748 Int) ($ret843 Int) ($i847 Int) ($temp84210741 Int) ($x84110740 (Array Int Int)) ($ret584510744 Int) ($i84710746 Int) ($ret284410743 Int) ($ret5845 Int) ($temp842 Int) ($ret84310742 Int) ($x841 (Array Int Int)) ($i84610745 Int))
    (=> (and (= $i84710746 0)
             (sep (store (store $x84110740 0 (select $x84110740 1)) 1 (select $x84110740 0)) $result10748)
             (sep $x84110740 $result10747)
             ($main_sum557 $x841 $temp842 $ret843 $ret2844 $ret5845 $i846 $i847 $x84110740 $temp84210741 $ret84310742 $ret284410743 $ret584510744 $i84610745 $i84710746)
             (= $i846 0))
        ($main_inv558 (store (store $x84110740 0 (select $x84110740 1)) 1 (select $x84110740 0)) (select (store (store $x84110740 0 (select $x84110740 1)) 1 (select $x84110740 0)) 0) $result10747 $result10748 $ret584510744 $i84610745 $i84710746))))

; loop term $main_sum558
(assert
  (forall (($i84710755 Int) ($ret84310751 Int) ($i84610754 Int) ($temp84210750 Int) ($ret584510753 Int) ($x84110749 (Array Int Int)) ($ret284410752 Int))
    (=> (and (not (< $i84710755 (- 20 1))))
        ($main_sum558 $x84110749 $temp84210750 $ret84310751 $ret284410752 $ret584510753 $i84610754 $i84710755 $x84110749 $temp84210750 $ret84310751 $ret284410752 $ret584510753 $i84610754 $i84710755))))

; forwards $main_inv558
(assert
  (forall (($i84710755 Int) ($ret84310751 Int) ($i84610754 Int) ($temp84210750 Int) ($ret584510753 Int) ($x84110749 (Array Int Int)) ($ret284410752 Int))
    (=> (and (< $i84710755 (- 20 1))
             ($main_inv558 $x84110749 $temp84210750 $ret84310751 $ret284410752 $ret584510753 $i84610754 $i84710755))
        ($main_inv558 (store $x84110749 $i84710755 (select $x84110749 (+ $i84710755 1))) $temp84210750 $ret84310751 $ret284410752 $ret584510753 $i84610754 (+ $i84710755 1)))))

; backwards $main_sum558
(assert
  (forall (($x84110756 (Array Int Int)) ($ret584510760 Int) ($i84710762 Int) ($i84710755 Int) ($temp84210757 Int) ($ret84310751 Int) ($ret84310758 Int) ($temp84210750 Int) ($ret584510753 Int) ($ret284410759 Int) ($x84110749 (Array Int Int)) ($ret284410752 Int) ($i84610761 Int) ($i84610754 Int))
    (=> (and ($main_sum558 (store $x84110749 $i84710755 (select $x84110749 (+ $i84710755 1))) $temp84210750 $ret84310751 $ret284410752 $ret584510753 $i84610754 (+ $i84710755 1) $x84110756 $temp84210757 $ret84310758 $ret284410759 $ret584510760 $i84610761 $i84710762)
             (< $i84710755 (- 20 1)))
        ($main_sum558 $x84110749 $temp84210750 $ret84310751 $ret284410752 $ret584510753 $i84610754 $i84710755 $x84110756 $temp84210757 $ret84310758 $ret284410759 $ret584510760 $i84610761 $i84710762))))

; sep precondition
(assert
  (forall (($i846 Int) ($x84110763 (Array Int Int)) ($ret2844 Int) ($ret84310765 Int) ($ret843 Int) ($i84610768 Int) ($i847 Int) ($i84710769 Int) ($x84110740 (Array Int Int)) ($ret584510744 Int) ($i84710746 Int) ($ret284410743 Int) ($ret5845 Int) ($temp842 Int) ($temp84210764 Int) ($result10747 Int) ($ret584510767 Int) ($result10748 Int) ($ret84310742 Int) ($x841 (Array Int Int)) ($i84610745 Int) ($ret284410766 Int) ($temp84210741 Int))
    (=> (and ($main_sum558 (store (store $x84110740 0 (select $x84110740 1)) 1 (select $x84110740 0)) (select (store (store $x84110740 0 (select $x84110740 1)) 1 (select $x84110740 0)) 0) $result10747 $result10748 $ret584510744 $i84610745 $i84710746 $x84110763 $temp84210764 $ret84310765 $ret284410766 $ret584510767 $i84610768 $i84710769)
             (= $i84710746 0)
             (sep (store (store $x84110740 0 (select $x84110740 1)) 1 (select $x84110740 0)) $result10748)
             (sep $x84110740 $result10747)
             ($main_sum557 $x841 $temp842 $ret843 $ret2844 $ret5845 $i846 $i847 $x84110740 $temp84210741 $ret84310742 $ret284410743 $ret584510744 $i84610745 $i84710746)
             (= $i846 0))
        ($sep_pre (store $x84110763 (- 20 1) $temp84210764)))))

; error
(assert
  (forall (($i846 Int) ($x84110763 (Array Int Int)) ($result10770 Int) ($ret2844 Int) ($ret84310765 Int) ($ret843 Int) ($i84610768 Int) ($i847 Int) ($i84710769 Int) ($x84110740 (Array Int Int)) ($ret584510744 Int) ($i84710746 Int) ($ret284410743 Int) ($ret5845 Int) ($temp842 Int) ($temp84210764 Int) ($result10747 Int) ($ret584510767 Int) ($result10748 Int) ($ret84310742 Int) ($x841 (Array Int Int)) ($i84610745 Int) ($ret284410766 Int) ($temp84210741 Int))
    (=> (and (or (not (= $ret84310765 $ret284410766)) (not (= $ret84310765 $result10770)))
             (sep (store $x84110763 (- 20 1) $temp84210764) $result10770)
             ($main_sum558 (store (store $x84110740 0 (select $x84110740 1)) 1 (select $x84110740 0)) (select (store (store $x84110740 0 (select $x84110740 1)) 1 (select $x84110740 0)) 0) $result10747 $result10748 $ret584510744 $i84610745 $i84710746 $x84110763 $temp84210764 $ret84310765 $ret284410766 $ret584510767 $i84610768 $i84710769)
             (= $i84710746 0)
             (sep (store (store $x84110740 0 (select $x84110740 1)) 1 (select $x84110740 0)) $result10748)
             (sep $x84110740 $result10747)
             ($main_sum557 $x841 $temp842 $ret843 $ret2844 $ret5845 $i846 $i847 $x84110740 $temp84210741 $ret84310742 $ret284410743 $ret584510744 $i84610745 $i84710746)
             (= $i846 0))
        false)))

; if then
(assert
  (forall (($i846 Int) ($x84110763 (Array Int Int)) ($result10770 Int) ($ret2844 Int) ($ret84310765 Int) ($ret843 Int) ($i84610768 Int) ($i847 Int) ($i84710769 Int) ($x84110740 (Array Int Int)) ($ret584510744 Int) ($i84710746 Int) ($ret284410743 Int) ($ret5845 Int) ($temp842 Int) ($temp84210764 Int) ($result10747 Int) ($ret584510767 Int) ($result10748 Int) ($ret84310742 Int) ($x841 (Array Int Int)) ($i84610745 Int) ($ret284410766 Int) ($temp84210741 Int))
    (=> (and (or (not (= $ret84310765 $ret284410766)) (not (= $ret84310765 $result10770)))
             (sep (store $x84110763 (- 20 1) $temp84210764) $result10770)
             ($main_sum558 (store (store $x84110740 0 (select $x84110740 1)) 1 (select $x84110740 0)) (select (store (store $x84110740 0 (select $x84110740 1)) 1 (select $x84110740 0)) 0) $result10747 $result10748 $ret584510744 $i84610745 $i84710746 $x84110763 $temp84210764 $ret84310765 $ret284410766 $ret584510767 $i84610768 $i84710769)
             (= $i84710746 0)
             (sep (store (store $x84110740 0 (select $x84110740 1)) 1 (select $x84110740 0)) $result10748)
             (sep $x84110740 $result10747)
             ($main_sum557 $x841 $temp842 $ret843 $ret2844 $ret5845 $i846 $i847 $x84110740 $temp84210741 $ret84310742 $ret284410743 $ret584510744 $i84610745 $i84710746)
             (= $i846 0))
        ($main_if408 $x841 $temp842 $ret843 $ret2844 $ret5845 $i846 $i847 (store $x84110763 (- 20 1) $temp84210764) $temp84210764 $ret84310765 $ret284410766 $result10770 $i84610768 $i84710769))))

; if else
(assert
  (forall (($i846 Int) ($x84110763 (Array Int Int)) ($result10770 Int) ($ret2844 Int) ($ret84310765 Int) ($ret843 Int) ($i84610768 Int) ($i847 Int) ($i84710769 Int) ($x84110740 (Array Int Int)) ($ret584510744 Int) ($i84710746 Int) ($ret284410743 Int) ($ret5845 Int) ($temp842 Int) ($temp84210764 Int) ($result10747 Int) ($ret584510767 Int) ($result10748 Int) ($ret84310742 Int) ($x841 (Array Int Int)) ($i84610745 Int) ($ret284410766 Int) ($temp84210741 Int))
    (=> (and (not (or (not (= $ret84310765 $ret284410766)) (not (= $ret84310765 $result10770))))
             (sep (store $x84110763 (- 20 1) $temp84210764) $result10770)
             ($main_sum558 (store (store $x84110740 0 (select $x84110740 1)) 1 (select $x84110740 0)) (select (store (store $x84110740 0 (select $x84110740 1)) 1 (select $x84110740 0)) 0) $result10747 $result10748 $ret584510744 $i84610745 $i84710746 $x84110763 $temp84210764 $ret84310765 $ret284410766 $ret584510767 $i84610768 $i84710769)
             (= $i84710746 0)
             (sep (store (store $x84110740 0 (select $x84110740 1)) 1 (select $x84110740 0)) $result10748)
             (sep $x84110740 $result10747)
             ($main_sum557 $x841 $temp842 $ret843 $ret2844 $ret5845 $i846 $i847 $x84110740 $temp84210741 $ret84310742 $ret284410743 $ret584510744 $i84610745 $i84710746)
             (= $i846 0))
        ($main_if408 $x841 $temp842 $ret843 $ret2844 $ret5845 $i846 $i847 (store $x84110763 (- 20 1) $temp84210764) $temp84210764 $ret84310765 $ret284410766 $result10770 $i84610768 $i84710769))))

(check-sat)
