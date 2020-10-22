(set-logic HORN)

(declare-fun $main_sum561 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $main_sum560 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $sep_sum559 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_inv560 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $sep_inv559 ((Array Int Int) Int Int) Bool)
(declare-fun $sep_pre ((Array Int Int)) Bool)
(declare-fun $main_if410 ((Array Int Int) Int Int Int Int Int Int (Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun $sep_if409 ((Array Int Int) Int Int (Array Int Int) Int Int) Bool)
(declare-fun $main_inv561 ((Array Int Int) Int Int Int Int Int Int) Bool)
(declare-fun sep ((Array Int Int) Int) Bool)

; loop entry $sep_inv559
(assert
  (forall ((x (Array Int Int)) ($ret848 Int) ($i849 Int))
    (=> (and (= $i849 0)
             (= $ret848 0)
             ($sep_pre x))
        ($sep_inv559 x $ret848 $i849))))

; loop term $sep_sum559
(assert
  (forall ((x10778 (Array Int Int)) ($ret84810779 Int) ($i84910780 Int))
    (=> (and (not (< $i84910780 40)))
        ($sep_sum559 x10778 $ret84810779 $i84910780 x10778 $ret84810779 $i84910780))))

; if then
(assert
  (forall ((x10778 (Array Int Int)) ($ret84810779 Int) ($i84910780 Int))
    (=> (and (= (mod (select x10778 $i84910780) 2) 0)
             (< $i84910780 40)
             ($sep_inv559 x10778 $ret84810779 $i84910780))
        ($sep_if409 x10778 $ret84810779 $i84910780 x10778 (+ $ret84810779 1) $i84910780))))

; if else
(assert
  (forall ((x10778 (Array Int Int)) ($ret84810779 Int) ($i84910780 Int))
    (=> (and (not (= (mod (select x10778 $i84910780) 2) 0))
             (< $i84910780 40)
             ($sep_inv559 x10778 $ret84810779 $i84910780))
        ($sep_if409 x10778 $ret84810779 $i84910780 x10778 (- $ret84810779 1) $i84910780))))

; forwards $sep_inv559
(assert
  (forall (($ret84810782 Int) (x10778 (Array Int Int)) ($ret84810779 Int) (x10781 (Array Int Int)) ($i84910780 Int) ($i84910783 Int))
    (=> (and ($sep_if409 x10778 $ret84810779 $i84910780 x10781 $ret84810782 $i84910783))
        ($sep_inv559 x10781 $ret84810782 (+ $i84910783 1)))))

; backwards $sep_sum559
(assert
  (forall (($i84910786 Int) ($ret84810782 Int) (x10778 (Array Int Int)) ($ret84810779 Int) (x10781 (Array Int Int)) ($ret84810785 Int) (x10784 (Array Int Int)) ($i84910780 Int) ($i84910783 Int))
    (=> (and ($sep_sum559 x10781 $ret84810782 (+ $i84910783 1) x10784 $ret84810785 $i84910786)
             ($sep_if409 x10778 $ret84810779 $i84910780 x10781 $ret84810782 $i84910783))
        ($sep_sum559 x10778 $ret84810779 $i84910780 x10784 $ret84810785 $i84910786))))

; post sep
(assert
  (forall ((x10787 (Array Int Int)) (x (Array Int Int)) ($i84910789 Int) ($i849 Int) ($ret848 Int) ($ret84810788 Int))
    (=> (and ($sep_sum559 x $ret848 $i849 x10787 $ret84810788 $i84910789)
             (= $i849 0)
             (= $ret848 0)
             ($sep_pre x))
        (sep x10787 $ret84810788))))

; loop entry $main_inv560
(assert
  (forall (($i855 Int) ($ret2853 Int) ($ret5854 Int) ($temp851 Int) ($ret852 Int) ($i856 Int) ($x850 (Array Int Int)))
    (=> (and (= $i855 0))
        ($main_inv560 $x850 $temp851 $ret852 $ret2853 $ret5854 $i855 $i856))))

; loop term $main_sum560
(assert
  (forall (($x85010790 (Array Int Int)) ($ret85210792 Int) ($i85510795 Int) ($i85610796 Int) ($ret585410794 Int) ($ret285310793 Int) ($temp85110791 Int))
    (=> (and (not (< $i85510795 40)))
        ($main_sum560 $x85010790 $temp85110791 $ret85210792 $ret285310793 $ret585410794 $i85510795 $i85610796 $x85010790 $temp85110791 $ret85210792 $ret285310793 $ret585410794 $i85510795 $i85610796))))

; forwards $main_inv560
(assert
  (forall (($int10797 Int) ($x85010790 (Array Int Int)) ($ret85210792 Int) ($i85510795 Int) ($i85610796 Int) ($ret585410794 Int) ($ret285310793 Int) ($temp85110791 Int))
    (=> (and (<= (- 2147483648) $int10797)
             (<= $int10797 2147483647)
             (< $i85510795 40)
             ($main_inv560 $x85010790 $temp85110791 $ret85210792 $ret285310793 $ret585410794 $i85510795 $i85610796))
        ($main_inv560 (store $x85010790 $i85510795 $int10797) $temp85110791 $ret85210792 $ret285310793 $ret585410794 (+ $i85510795 1) $i85610796))))

; backwards $main_sum560
(assert
  (forall (($int10797 Int) ($ret585410802 Int) ($i85510803 Int) ($temp85110799 Int) ($x85010790 (Array Int Int)) ($ret85210792 Int) ($i85510795 Int) ($i85610796 Int) ($ret585410794 Int) ($ret285310801 Int) ($x85010798 (Array Int Int)) ($i85610804 Int) ($ret85210800 Int) ($ret285310793 Int) ($temp85110791 Int))
    (=> (and ($main_sum560 (store $x85010790 $i85510795 $int10797) $temp85110791 $ret85210792 $ret285310793 $ret585410794 (+ $i85510795 1) $i85610796 $x85010798 $temp85110799 $ret85210800 $ret285310801 $ret585410802 $i85510803 $i85610804)
             (<= (- 2147483648) $int10797)
             (<= $int10797 2147483647)
             (< $i85510795 40))
        ($main_sum560 $x85010790 $temp85110791 $ret85210792 $ret285310793 $ret585410794 $i85510795 $i85610796 $x85010798 $temp85110799 $ret85210800 $ret285310801 $ret585410802 $i85510803 $i85610804))))

; sep precondition
(assert
  (forall (($i855 Int) ($ret2853 Int) ($ret5854 Int) ($x85010805 (Array Int Int)) ($i85610811 Int) ($ret85210807 Int) ($temp851 Int) ($ret585410809 Int) ($ret852 Int) ($temp85110806 Int) ($ret285310808 Int) ($i85510810 Int) ($i856 Int) ($x850 (Array Int Int)))
    (=> (and ($main_sum560 $x850 $temp851 $ret852 $ret2853 $ret5854 $i855 $i856 $x85010805 $temp85110806 $ret85210807 $ret285310808 $ret585410809 $i85510810 $i85610811)
             (= $i855 0))
        ($sep_pre $x85010805))))

; sep precondition
(assert
  (forall (($i855 Int) ($ret2853 Int) ($ret5854 Int) ($x85010805 (Array Int Int)) ($i85610811 Int) ($ret85210807 Int) ($temp851 Int) ($result10812 Int) ($ret585410809 Int) ($ret852 Int) ($temp85110806 Int) ($ret285310808 Int) ($i85510810 Int) ($i856 Int) ($x850 (Array Int Int)))
    (=> (and (sep $x85010805 $result10812)
             ($main_sum560 $x850 $temp851 $ret852 $ret2853 $ret5854 $i855 $i856 $x85010805 $temp85110806 $ret85210807 $ret285310808 $ret585410809 $i85510810 $i85610811)
             (= $i855 0))
        ($sep_pre (store (store $x85010805 0 (select $x85010805 1)) 1 (select $x85010805 0))))))

; loop entry $main_inv561
(assert
  (forall (($i855 Int) ($ret2853 Int) ($ret5854 Int) ($x85010805 (Array Int Int)) ($i85610811 Int) ($temp851 Int) ($result10812 Int) ($ret585410809 Int) ($ret852 Int) ($temp85110806 Int) ($ret85210807 Int) ($result10813 Int) ($ret285310808 Int) ($i85510810 Int) ($i856 Int) ($x850 (Array Int Int)))
    (=> (and (= $i85610811 0)
             (sep (store (store $x85010805 0 (select $x85010805 1)) 1 (select $x85010805 0)) $result10813)
             (sep $x85010805 $result10812)
             ($main_sum560 $x850 $temp851 $ret852 $ret2853 $ret5854 $i855 $i856 $x85010805 $temp85110806 $ret85210807 $ret285310808 $ret585410809 $i85510810 $i85610811)
             (= $i855 0))
        ($main_inv561 (store (store $x85010805 0 (select $x85010805 1)) 1 (select $x85010805 0)) (select (store (store $x85010805 0 (select $x85010805 1)) 1 (select $x85010805 0)) 0) $result10812 $result10813 $ret585410809 $i85510810 $i85610811))))

; loop term $main_sum561
(assert
  (forall (($x85010814 (Array Int Int)) ($ret585410818 Int) ($ret285310817 Int) ($i85610820 Int) ($temp85110815 Int) ($ret85210816 Int) ($i85510819 Int))
    (=> (and (not (< $i85610820 (- 40 1))))
        ($main_sum561 $x85010814 $temp85110815 $ret85210816 $ret285310817 $ret585410818 $i85510819 $i85610820 $x85010814 $temp85110815 $ret85210816 $ret285310817 $ret585410818 $i85510819 $i85610820))))

; forwards $main_inv561
(assert
  (forall (($x85010814 (Array Int Int)) ($ret585410818 Int) ($ret285310817 Int) ($i85610820 Int) ($temp85110815 Int) ($ret85210816 Int) ($i85510819 Int))
    (=> (and (< $i85610820 (- 40 1))
             ($main_inv561 $x85010814 $temp85110815 $ret85210816 $ret285310817 $ret585410818 $i85510819 $i85610820))
        ($main_inv561 (store $x85010814 $i85610820 (select $x85010814 (+ $i85610820 1))) $temp85110815 $ret85210816 $ret285310817 $ret585410818 $i85510819 (+ $i85610820 1)))))

; backwards $main_sum561
(assert
  (forall (($ret85210823 Int) ($temp85110822 Int) ($x85010814 (Array Int Int)) ($ret585410818 Int) ($x85010821 (Array Int Int)) ($i85510826 Int) ($i85610820 Int) ($temp85110815 Int) ($ret85210816 Int) ($i85510819 Int) ($ret285310824 Int) ($i85610827 Int) ($ret585410825 Int) ($ret285310817 Int))
    (=> (and ($main_sum561 (store $x85010814 $i85610820 (select $x85010814 (+ $i85610820 1))) $temp85110815 $ret85210816 $ret285310817 $ret585410818 $i85510819 (+ $i85610820 1) $x85010821 $temp85110822 $ret85210823 $ret285310824 $ret585410825 $i85510826 $i85610827)
             (< $i85610820 (- 40 1)))
        ($main_sum561 $x85010814 $temp85110815 $ret85210816 $ret285310817 $ret585410818 $i85510819 $i85610820 $x85010821 $temp85110822 $ret85210823 $ret285310824 $ret585410825 $i85510826 $i85610827))))

; sep precondition
(assert
  (forall (($i855 Int) ($ret2853 Int) ($ret5854 Int) ($x85010805 (Array Int Int)) ($x85010828 (Array Int Int)) ($temp85110829 Int) ($temp851 Int) ($result10812 Int) ($i85610834 Int) ($ret852 Int) ($temp85110806 Int) ($i85610811 Int) ($ret585410832 Int) ($ret85210807 Int) ($result10813 Int) ($ret85210830 Int) ($ret285310831 Int) ($ret285310808 Int) ($i85510810 Int) ($i856 Int) ($x850 (Array Int Int)) ($i85510833 Int) ($ret585410809 Int))
    (=> (and ($main_sum561 (store (store $x85010805 0 (select $x85010805 1)) 1 (select $x85010805 0)) (select (store (store $x85010805 0 (select $x85010805 1)) 1 (select $x85010805 0)) 0) $result10812 $result10813 $ret585410809 $i85510810 $i85610811 $x85010828 $temp85110829 $ret85210830 $ret285310831 $ret585410832 $i85510833 $i85610834)
             (= $i85610811 0)
             (sep (store (store $x85010805 0 (select $x85010805 1)) 1 (select $x85010805 0)) $result10813)
             (sep $x85010805 $result10812)
             ($main_sum560 $x850 $temp851 $ret852 $ret2853 $ret5854 $i855 $i856 $x85010805 $temp85110806 $ret85210807 $ret285310808 $ret585410809 $i85510810 $i85610811)
             (= $i855 0))
        ($sep_pre (store $x85010828 (- 40 1) $temp85110829)))))

; error
(assert
  (forall (($i855 Int) ($ret5854 Int) ($x85010805 (Array Int Int)) ($x85010828 (Array Int Int)) ($temp85110829 Int) ($temp851 Int) ($result10812 Int) ($i85610834 Int) ($ret852 Int) ($temp85110806 Int) ($result10835 Int) ($ret2853 Int) ($i85610811 Int) ($ret585410832 Int) ($ret85210807 Int) ($result10813 Int) ($ret85210830 Int) ($ret285310831 Int) ($ret285310808 Int) ($i85510810 Int) ($i856 Int) ($x850 (Array Int Int)) ($i85510833 Int) ($ret585410809 Int))
    (=> (and (or (not (= $ret85210830 $ret285310831)) (not (= $ret85210830 $result10835)))
             (sep (store $x85010828 (- 40 1) $temp85110829) $result10835)
             ($main_sum561 (store (store $x85010805 0 (select $x85010805 1)) 1 (select $x85010805 0)) (select (store (store $x85010805 0 (select $x85010805 1)) 1 (select $x85010805 0)) 0) $result10812 $result10813 $ret585410809 $i85510810 $i85610811 $x85010828 $temp85110829 $ret85210830 $ret285310831 $ret585410832 $i85510833 $i85610834)
             (= $i85610811 0)
             (sep (store (store $x85010805 0 (select $x85010805 1)) 1 (select $x85010805 0)) $result10813)
             (sep $x85010805 $result10812)
             ($main_sum560 $x850 $temp851 $ret852 $ret2853 $ret5854 $i855 $i856 $x85010805 $temp85110806 $ret85210807 $ret285310808 $ret585410809 $i85510810 $i85610811)
             (= $i855 0))
        false)))

; if then
(assert
  (forall (($i855 Int) ($ret5854 Int) ($x85010805 (Array Int Int)) ($x85010828 (Array Int Int)) ($temp85110829 Int) ($temp851 Int) ($result10812 Int) ($i85610834 Int) ($ret852 Int) ($temp85110806 Int) ($result10835 Int) ($ret2853 Int) ($i85610811 Int) ($ret585410832 Int) ($ret85210807 Int) ($result10813 Int) ($ret85210830 Int) ($ret285310831 Int) ($ret285310808 Int) ($i85510810 Int) ($i856 Int) ($x850 (Array Int Int)) ($i85510833 Int) ($ret585410809 Int))
    (=> (and (or (not (= $ret85210830 $ret285310831)) (not (= $ret85210830 $result10835)))
             (sep (store $x85010828 (- 40 1) $temp85110829) $result10835)
             ($main_sum561 (store (store $x85010805 0 (select $x85010805 1)) 1 (select $x85010805 0)) (select (store (store $x85010805 0 (select $x85010805 1)) 1 (select $x85010805 0)) 0) $result10812 $result10813 $ret585410809 $i85510810 $i85610811 $x85010828 $temp85110829 $ret85210830 $ret285310831 $ret585410832 $i85510833 $i85610834)
             (= $i85610811 0)
             (sep (store (store $x85010805 0 (select $x85010805 1)) 1 (select $x85010805 0)) $result10813)
             (sep $x85010805 $result10812)
             ($main_sum560 $x850 $temp851 $ret852 $ret2853 $ret5854 $i855 $i856 $x85010805 $temp85110806 $ret85210807 $ret285310808 $ret585410809 $i85510810 $i85610811)
             (= $i855 0))
        ($main_if410 $x850 $temp851 $ret852 $ret2853 $ret5854 $i855 $i856 (store $x85010828 (- 40 1) $temp85110829) $temp85110829 $ret85210830 $ret285310831 $result10835 $i85510833 $i85610834))))

; if else
(assert
  (forall (($i855 Int) ($ret5854 Int) ($x85010805 (Array Int Int)) ($x85010828 (Array Int Int)) ($temp85110829 Int) ($temp851 Int) ($result10812 Int) ($i85610834 Int) ($ret852 Int) ($temp85110806 Int) ($result10835 Int) ($ret2853 Int) ($i85610811 Int) ($ret585410832 Int) ($ret85210807 Int) ($result10813 Int) ($ret85210830 Int) ($ret285310831 Int) ($ret285310808 Int) ($i85510810 Int) ($i856 Int) ($x850 (Array Int Int)) ($i85510833 Int) ($ret585410809 Int))
    (=> (and (not (or (not (= $ret85210830 $ret285310831)) (not (= $ret85210830 $result10835))))
             (sep (store $x85010828 (- 40 1) $temp85110829) $result10835)
             ($main_sum561 (store (store $x85010805 0 (select $x85010805 1)) 1 (select $x85010805 0)) (select (store (store $x85010805 0 (select $x85010805 1)) 1 (select $x85010805 0)) 0) $result10812 $result10813 $ret585410809 $i85510810 $i85610811 $x85010828 $temp85110829 $ret85210830 $ret285310831 $ret585410832 $i85510833 $i85610834)
             (= $i85610811 0)
             (sep (store (store $x85010805 0 (select $x85010805 1)) 1 (select $x85010805 0)) $result10813)
             (sep $x85010805 $result10812)
             ($main_sum560 $x850 $temp851 $ret852 $ret2853 $ret5854 $i855 $i856 $x85010805 $temp85110806 $ret85210807 $ret285310808 $ret585410809 $i85510810 $i85610811)
             (= $i855 0))
        ($main_if410 $x850 $temp851 $ret852 $ret2853 $ret5854 $i855 $i856 (store $x85010828 (- 40 1) $temp85110829) $temp85110829 $ret85210830 $ret285310831 $result10835 $i85510833 $i85610834))))

(check-sat)
