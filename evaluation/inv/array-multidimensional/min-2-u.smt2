(set-logic HORN)

(declare-fun $main_inv61 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_sum63 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_inv63 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_inv59 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $__VERIFIER_assert_if28 (Int) Bool)
(declare-fun $main_inv64 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_inv60 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_inv62 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_sum62 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_sum64 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_if29 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $main_sum61 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $main_sum60 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum59 (Int Int Int Int (Array Int (Array Int Int)) Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond809 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond809))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if28 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond810 Int))
    (=> (and ($__VERIFIER_assert_if28 cond810))
        (__VERIFIER_assert cond810))))

; loop entry $main_inv59
(assert
  (forall (($m83 Int) ($n84 Int) ($A85 (Array Int (Array Int Int))) ($min86 Int))
    (=> (and (= $n84 1500)
             (= $m83 1000))
        ($main_inv59 0 0 $m83 $n84 $A85 $min86))))

; loop term $main_sum59
(assert
  (forall (($i81811 Int) ($min86816 Int) ($j82812 Int) ($m83813 Int) ($n84814 Int) ($A85815 (Array Int (Array Int Int))))
    (=> (and (not (< $i81811 $m83813))
             ($main_inv59 $i81811 $j82812 $m83813 $n84814 $A85815 $min86816))
        ($main_sum59 $i81811 $j82812 $m83813 $n84814 $A85815 $min86816))))

; loop entry $main_inv60
(assert
  (forall (($i81811 Int) ($min86816 Int) ($j82812 Int) ($m83813 Int) ($n84814 Int) ($A85815 (Array Int (Array Int Int))))
    (=> (and (< $i81811 $m83813)
             ($main_inv59 $i81811 $j82812 $m83813 $n84814 $A85815 $min86816))
        ($main_inv60 $i81811 0 $m83813 $n84814 $A85815 $min86816))))

; loop term $main_sum60
(assert
  (forall (($m83819 Int) ($min86822 Int) ($A85821 (Array Int (Array Int Int))) ($j82818 Int) ($i81817 Int) ($n84820 Int))
    (=> (and (not (< $j82818 $n84820))
             ($main_inv60 $i81817 $j82818 $m83819 $n84820 $A85821 $min86822))
        ($main_sum60 $i81817 $j82818 $m83819 $n84820 $A85821 $min86822))))

; forwards $main_inv60
(assert
  (forall (($int823 Int) ($m83819 Int) ($min86822 Int) ($A85821 (Array Int (Array Int Int))) ($j82818 Int) ($i81817 Int) ($n84820 Int))
    (=> (and (<= (- 2147483648) $int823)
             (<= $int823 2147483647)
             (< $j82818 $n84820)
             ($main_inv60 $i81817 $j82818 $m83819 $n84820 $A85821 $min86822))
        ($main_inv60 $i81817 (+ $j82818 1) $m83819 $n84820 (store $A85821 $i81817 (store (select $A85821 $i81817) $j82818 $int823)) $min86822))))

; forwards $main_inv59
(assert
  (forall (($min86829 Int) ($j82825 Int) ($A85828 (Array Int (Array Int Int))) ($i81824 Int) ($n84827 Int) ($m83826 Int))
    (=> (and ($main_sum60 $i81824 $j82825 $m83826 $n84827 $A85828 $min86829))
        ($main_inv59 (+ $i81824 1) $j82825 $m83826 $n84827 $A85828 $min86829))))

; loop entry $main_inv61
(assert
  (forall (($A85834 (Array Int (Array Int Int))) ($m83832 Int) ($j82831 Int) ($i81830 Int) ($n84833 Int) ($min86835 Int))
    (=> (and ($main_sum59 $i81830 $j82831 $m83832 $n84833 $A85834 $min86835))
        ($main_inv61 0 0 $m83832 $n84833 $A85834 (select (select $A85834 0) 0)))))

; loop term $main_sum61
(assert
  (forall (($min86841 Int) ($n84839 Int) ($i81836 Int) ($j82837 Int) ($m83838 Int) ($A85840 (Array Int (Array Int Int))))
    (=> (and (not (< $i81836 $n84839))
             ($main_inv61 $i81836 $j82837 $m83838 $n84839 $A85840 $min86841))
        ($main_sum61 $i81836 $j82837 $m83838 $n84839 $A85840 $min86841))))

; loop entry $main_inv62
(assert
  (forall (($min86841 Int) ($n84839 Int) ($i81836 Int) ($j82837 Int) ($m83838 Int) ($A85840 (Array Int (Array Int Int))))
    (=> (and (< $i81836 $n84839)
             ($main_inv61 $i81836 $j82837 $m83838 $n84839 $A85840 $min86841))
        ($main_inv62 $i81836 0 $m83838 $n84839 $A85840 $min86841))))

; loop term $main_sum62
(assert
  (forall (($m83844 Int) ($A85846 (Array Int (Array Int Int))) ($n84845 Int) ($i81842 Int) ($j82843 Int) ($min86847 Int))
    (=> (and (not (< $j82843 $n84845))
             ($main_inv62 $i81842 $j82843 $m83844 $n84845 $A85846 $min86847))
        ($main_sum62 $i81842 $j82843 $m83844 $n84845 $A85846 $min86847))))

; if then
(assert
  (forall (($m83844 Int) ($A85846 (Array Int (Array Int Int))) ($n84845 Int) ($i81842 Int) ($j82843 Int) ($min86847 Int))
    (=> (and (< (select (select $A85846 $i81842) $j82843) $min86847)
             (< $j82843 $n84845)
             ($main_inv62 $i81842 $j82843 $m83844 $n84845 $A85846 $min86847))
        ($main_if29 $i81842 $j82843 $m83844 $n84845 $A85846 (select (select $A85846 $i81842) $j82843)))))

; if else
(assert
  (forall (($m83844 Int) ($A85846 (Array Int (Array Int Int))) ($n84845 Int) ($i81842 Int) ($j82843 Int) ($min86847 Int))
    (=> (and (not (< (select (select $A85846 $i81842) $j82843) $min86847))
             (< $j82843 $n84845)
             ($main_inv62 $i81842 $j82843 $m83844 $n84845 $A85846 $min86847))
        ($main_if29 $i81842 $j82843 $m83844 $n84845 $A85846 $min86847))))

; forwards $main_inv62
(assert
  (forall (($m83850 Int) ($min86853 Int) ($A85852 (Array Int (Array Int Int))) ($n84851 Int) ($j82849 Int) ($i81848 Int))
    (=> (and ($main_if29 $i81848 $j82849 $m83850 $n84851 $A85852 $min86853))
        ($main_inv62 $i81848 (+ $j82849 1) $m83850 $n84851 $A85852 $min86853))))

; forwards $main_inv61
(assert
  (forall (($n84857 Int) ($j82855 Int) ($A85858 (Array Int (Array Int Int))) ($min86859 Int) ($m83856 Int) ($i81854 Int))
    (=> (and ($main_sum62 $i81854 $j82855 $m83856 $n84857 $A85858 $min86859))
        ($main_inv61 (+ $i81854 1) $j82855 $m83856 $n84857 $A85858 $min86859))))

; loop entry $main_inv63
(assert
  (forall (($j82861 Int) ($A85864 (Array Int (Array Int Int))) ($min86865 Int) ($n84863 Int) ($m83862 Int) ($i81860 Int))
    (=> (and ($main_sum61 $i81860 $j82861 $m83862 $n84863 $A85864 $min86865))
        ($main_inv63 0 0 $m83862 $n84863 $A85864 $min86865))))

; loop term $main_sum63
(assert
  (forall (($i81866 Int) ($m83868 Int) ($A85870 (Array Int (Array Int Int))) ($n84869 Int) ($min86871 Int) ($j82867 Int))
    (=> (and (not (< $i81866 $n84869))
             ($main_inv63 $i81866 $j82867 $m83868 $n84869 $A85870 $min86871))
        ($main_sum63 $i81866 $j82867 $m83868 $n84869 $A85870 $min86871))))

; loop entry $main_inv64
(assert
  (forall (($i81866 Int) ($m83868 Int) ($A85870 (Array Int (Array Int Int))) ($n84869 Int) ($min86871 Int) ($j82867 Int))
    (=> (and (< $i81866 $n84869)
             ($main_inv63 $i81866 $j82867 $m83868 $n84869 $A85870 $min86871))
        ($main_inv64 $i81866 0 $m83868 $n84869 $A85870 $min86871))))

; loop term $main_sum64
(assert
  (forall (($A85876 (Array Int (Array Int Int))) ($min86877 Int) ($j82873 Int) ($n84875 Int) ($i81872 Int) ($m83874 Int))
    (=> (and (not (< $j82873 $n84875))
             ($main_inv64 $i81872 $j82873 $m83874 $n84875 $A85876 $min86877))
        ($main_sum64 $i81872 $j82873 $m83874 $n84875 $A85876 $min86877))))

; __VERIFIER_assert precondition
(assert
  (forall (($A85876 (Array Int (Array Int Int))) ($min86877 Int) ($j82873 Int) ($n84875 Int) ($i81872 Int) ($m83874 Int))
    (=> (and (< $j82873 $n84875)
             ($main_inv64 $i81872 $j82873 $m83874 $n84875 $A85876 $min86877))
        ($__VERIFIER_assert_pre (ite (>= (select (select $A85876 $i81872) $j82873) $min86877) 1 0)))))

; forwards $main_inv64
(assert
  (forall (($A85876 (Array Int (Array Int Int))) ($min86877 Int) ($j82873 Int) ($n84875 Int) ($i81872 Int) ($m83874 Int))
    (=> (and (__VERIFIER_assert (ite (>= (select (select $A85876 $i81872) $j82873) $min86877) 1 0))
             (< $j82873 $n84875)
             ($main_inv64 $i81872 $j82873 $m83874 $n84875 $A85876 $min86877))
        ($main_inv64 $i81872 (+ $j82873 1) $m83874 $n84875 $A85876 $min86877))))

; forwards $main_inv63
(assert
  (forall (($min86883 Int) ($A85882 (Array Int (Array Int Int))) ($j82879 Int) ($i81878 Int) ($m83880 Int) ($n84881 Int))
    (=> (and ($main_sum64 $i81878 $j82879 $m83880 $n84881 $A85882 $min86883))
        ($main_inv63 (+ $i81878 1) $j82879 $m83880 $n84881 $A85882 $min86883))))

(check-sat)
