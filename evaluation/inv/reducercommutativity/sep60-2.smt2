(set-logic HORN)

(declare-fun $main_if412 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $sep_sum562 ((Array Int Int) Int Int) Bool)
(declare-fun $main_inv563 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum563 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $sep_pre ((Array Int Int)) Bool)
(declare-fun $main_sum564 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $sep_inv562 ((Array Int Int) Int Int) Bool)
(declare-fun $sep_if411 ((Array Int Int) Int Int) Bool)
(declare-fun sep ((Array Int Int) Int) Bool)
(declare-fun $main_inv564 ((Array Int Int) Int Int Int Int Int Int) Bool)

; loop entry $sep_inv562
(assert
  (forall ((x (Array Int Int)) ($ret857 Int) ($i858 Int))
    (=> (and (= $i858 0)
             (= $ret857 0)
             ($sep_pre x))
        ($sep_inv562 x $ret857 $i858))))

; loop term $sep_sum562
(assert
  (forall ((x7804 (Array Int Int)) ($ret8577805 Int) ($i8587806 Int))
    (=> (and (not (< $i8587806 60))
             ($sep_inv562 x7804 $ret8577805 $i8587806))
        ($sep_sum562 x7804 $ret8577805 $i8587806))))

; if then
(assert
  (forall ((x7804 (Array Int Int)) ($ret8577805 Int) ($i8587806 Int))
    (=> (and (= (mod (select x7804 $i8587806) 2) 0)
             (< $i8587806 60)
             ($sep_inv562 x7804 $ret8577805 $i8587806))
        ($sep_if411 x7804 (+ $ret8577805 1) $i8587806))))

; if else
(assert
  (forall ((x7804 (Array Int Int)) ($ret8577805 Int) ($i8587806 Int))
    (=> (and (not (= (mod (select x7804 $i8587806) 2) 0))
             (< $i8587806 60)
             ($sep_inv562 x7804 $ret8577805 $i8587806))
        ($sep_if411 x7804 (- $ret8577805 1) $i8587806))))

; forwards $sep_inv562
(assert
  (forall ((x7807 (Array Int Int)) ($ret8577808 Int) ($i8587809 Int))
    (=> (and ($sep_if411 x7807 $ret8577808 $i8587809))
        ($sep_inv562 x7807 $ret8577808 (+ $i8587809 1)))))

; post sep
(assert
  (forall ((x7810 (Array Int Int)) ($ret8577811 Int) ($i8587812 Int))
    (=> (and ($sep_sum562 x7810 $ret8577811 $i8587812))
        (sep x7810 $ret8577811))))

; loop entry $main_inv563
(assert
  (forall (($ret861 Int) ($ret5863 Int) ($ret2862 Int) ($x859 (Array Int Int)) ($temp860 Int) ($i865 Int) ($i864 Int))
    (=> (and (= $i864 0))
        ($main_inv563 $x859 $temp860 $ret861 $ret2862 $ret5863 $i864 $i865))))

; loop term $main_sum563
(assert
  (forall (($temp8607814 Int) ($i8657819 Int) ($x8597813 (Array Int Int)) ($ret28627816 Int) ($ret8617815 Int) ($ret58637817 Int) ($i8647818 Int))
    (=> (and (not (< $i8647818 60))
             ($main_inv563 $x8597813 $temp8607814 $ret8617815 $ret28627816 $ret58637817 $i8647818 $i8657819))
        ($main_sum563 $x8597813 $temp8607814 $ret8617815 $ret28627816 $ret58637817 $i8647818 $i8657819))))

; forwards $main_inv563
(assert
  (forall (($temp8607814 Int) ($i8657819 Int) ($int7820 Int) ($x8597813 (Array Int Int)) ($ret28627816 Int) ($ret8617815 Int) ($ret58637817 Int) ($i8647818 Int))
    (=> (and (<= (- 2147483648) $int7820)
             (<= $int7820 2147483647)
             (< $i8647818 60)
             ($main_inv563 $x8597813 $temp8607814 $ret8617815 $ret28627816 $ret58637817 $i8647818 $i8657819))
        ($main_inv563 (store $x8597813 $i8647818 $int7820) $temp8607814 $ret8617815 $ret28627816 $ret58637817 (+ $i8647818 1) $i8657819))))

; sep precondition
(assert
  (forall (($i8647826 Int) ($ret28627824 Int) ($x8597821 (Array Int Int)) ($ret8617823 Int) ($ret58637825 Int) ($temp8607822 Int) ($i8657827 Int))
    (=> (and ($main_sum563 $x8597821 $temp8607822 $ret8617823 $ret28627824 $ret58637825 $i8647826 $i8657827))
        ($sep_pre $x8597821))))

; sep precondition
(assert
  (forall (($i8647826 Int) ($ret28627824 Int) ($x8597821 (Array Int Int)) ($ret8617823 Int) ($ret58637825 Int) ($result7828 Int) ($temp8607822 Int) ($i8657827 Int))
    (=> (and (sep $x8597821 $result7828)
             ($main_sum563 $x8597821 $temp8607822 $ret8617823 $ret28627824 $ret58637825 $i8647826 $i8657827))
        ($sep_pre (store (store $x8597821 0 (select $x8597821 1)) 1 (select $x8597821 0))))))

; loop entry $main_inv564
(assert
  (forall (($result7829 Int) ($i8647826 Int) ($ret28627824 Int) ($x8597821 (Array Int Int)) ($ret8617823 Int) ($ret58637825 Int) ($result7828 Int) ($temp8607822 Int) ($i8657827 Int))
    (=> (and (= $i8657827 0)
             (sep (store (store $x8597821 0 (select $x8597821 1)) 1 (select $x8597821 0)) $result7829)
             (sep $x8597821 $result7828)
             ($main_sum563 $x8597821 $temp8607822 $ret8617823 $ret28627824 $ret58637825 $i8647826 $i8657827))
        ($main_inv564 (store (store $x8597821 0 (select $x8597821 1)) 1 (select $x8597821 0)) (select (store (store $x8597821 0 (select $x8597821 1)) 1 (select $x8597821 0)) 0) $result7828 $result7829 $ret58637825 $i8647826 $i8657827))))

; loop term $main_sum564
(assert
  (forall (($ret8617832 Int) ($ret28627833 Int) ($temp8607831 Int) ($x8597830 (Array Int Int)) ($ret58637834 Int) ($i8657836 Int) ($i8647835 Int))
    (=> (and (not (< $i8657836 (- 60 1)))
             ($main_inv564 $x8597830 $temp8607831 $ret8617832 $ret28627833 $ret58637834 $i8647835 $i8657836))
        ($main_sum564 $x8597830 $temp8607831 $ret8617832 $ret28627833 $ret58637834 $i8647835 $i8657836))))

; forwards $main_inv564
(assert
  (forall (($ret8617832 Int) ($ret28627833 Int) ($temp8607831 Int) ($x8597830 (Array Int Int)) ($ret58637834 Int) ($i8657836 Int) ($i8647835 Int))
    (=> (and (< $i8657836 (- 60 1))
             ($main_inv564 $x8597830 $temp8607831 $ret8617832 $ret28627833 $ret58637834 $i8647835 $i8657836))
        ($main_inv564 (store $x8597830 $i8657836 (select $x8597830 (+ $i8657836 1))) $temp8607831 $ret8617832 $ret28627833 $ret58637834 $i8647835 (+ $i8657836 1)))))

; sep precondition
(assert
  (forall (($i8647842 Int) ($ret58637841 Int) ($temp8607838 Int) ($i8657843 Int) ($x8597837 (Array Int Int)) ($ret28627840 Int) ($ret8617839 Int))
    (=> (and ($main_sum564 $x8597837 $temp8607838 $ret8617839 $ret28627840 $ret58637841 $i8647842 $i8657843))
        ($sep_pre (store $x8597837 (- 60 1) $temp8607838)))))

; error
(assert
  (forall (($i8647842 Int) ($ret58637841 Int) ($temp8607838 Int) ($i8657843 Int) ($x8597837 (Array Int Int)) ($result7844 Int) ($ret28627840 Int) ($ret8617839 Int))
    (=> (and (or (not (= $ret8617839 $ret28627840)) (not (= $ret8617839 $result7844)))
             (sep (store $x8597837 (- 60 1) $temp8607838) $result7844)
             ($main_sum564 $x8597837 $temp8607838 $ret8617839 $ret28627840 $ret58637841 $i8647842 $i8657843))
        false)))

; if then
(assert
  (forall (($i8647842 Int) ($ret58637841 Int) ($temp8607838 Int) ($i8657843 Int) ($x8597837 (Array Int Int)) ($result7844 Int) ($ret28627840 Int) ($ret8617839 Int))
    (=> (and (or (not (= $ret8617839 $ret28627840)) (not (= $ret8617839 $result7844)))
             (sep (store $x8597837 (- 60 1) $temp8607838) $result7844)
             ($main_sum564 $x8597837 $temp8607838 $ret8617839 $ret28627840 $ret58637841 $i8647842 $i8657843))
        ($main_if412 (store $x8597837 (- 60 1) $temp8607838) $temp8607838 $ret8617839 $ret28627840 $result7844 $i8647842 $i8657843))))

; if else
(assert
  (forall (($i8647842 Int) ($ret58637841 Int) ($temp8607838 Int) ($i8657843 Int) ($x8597837 (Array Int Int)) ($result7844 Int) ($ret28627840 Int) ($ret8617839 Int))
    (=> (and (not (or (not (= $ret8617839 $ret28627840)) (not (= $ret8617839 $result7844))))
             (sep (store $x8597837 (- 60 1) $temp8607838) $result7844)
             ($main_sum564 $x8597837 $temp8607838 $ret8617839 $ret28627840 $ret58637841 $i8647842 $i8657843))
        ($main_if412 (store $x8597837 (- 60 1) $temp8607838) $temp8607838 $ret8617839 $ret28627840 $result7844 $i8647842 $i8657843))))

(check-sat)
