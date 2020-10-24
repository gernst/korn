(set-logic HORN)

(declare-fun $main_if661 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $student_version_sum230 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_if660 (Int Int) Bool)
(declare-fun $student_version_inv229 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $correct_version_sum225 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $student_version_sum228 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $student_version_pre (Int Int Int) Bool)
(declare-fun $correct_version_sum226 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $correct_version_pre (Int Int Int) Bool)
(declare-fun $correct_version_inv226 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun student_version (Int Int Int Int) Bool)
(declare-fun correct_version (Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $correct_version_sum227 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $correct_version_inv225 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $student_version_inv228 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $correct_version_inv227 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $student_version_sum229 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $student_version_inv230 (Int Int Int Int Int Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond15779 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond15779))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if660 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond15780 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if660 cond cond15780))
        (__VERIFIER_assert cond15780))))

; loop entry $correct_version_inv225
(assert
  (forall ((a Int) ($y657 Int) (n Int) ($j653 Int) (m Int) ($x656 Int) ($b654 Int) ($i652 Int) ($l655 Int))
    (=> (and (= $l655 0)
             (= $b654 0)
             (= $j653 0)
             (= $i652 0)
             ($correct_version_pre n m a))
        ($correct_version_inv225 n m a $i652 $j653 $b654 $l655 $x656 $y657))))

; loop term $correct_version_sum225
(assert
  (forall (($x65615788 Int) (m15782 Int) (a15783 Int) ($b65415786 Int) ($i65215784 Int) ($l65515787 Int) (n15781 Int) ($y65715789 Int) ($j65315785 Int))
    (=> (and (not (< $b65415786 n15781)))
        ($correct_version_sum225 n15781 m15782 a15783 $i65215784 $j65315785 $b65415786 $l65515787 $x65615788 $y65715789 n15781 m15782 a15783 $i65215784 $j65315785 $b65415786 $l65515787 $x65615788 $y65715789))))

; forwards $correct_version_inv225
(assert
  (forall (($x65615788 Int) (m15782 Int) (a15783 Int) ($b65415786 Int) ($i65215784 Int) ($l65515787 Int) (n15781 Int) ($y65715789 Int) ($j65315785 Int))
    (=> (and (< $b65415786 n15781)
             ($correct_version_inv225 n15781 m15782 a15783 $i65215784 $j65315785 $b65415786 $l65515787 $x65615788 $y65715789))
        ($correct_version_inv225 n15781 m15782 a15783 (+ $i65215784 1) $j65315785 (+ $b65415786 a15783) $l65515787 $x65615788 $y65715789))))

; backwards $correct_version_sum225
(assert
  (forall (($x65615788 Int) (m15782 Int) ($j65315794 Int) ($l65515796 Int) (a15792 Int) ($x65615797 Int) (m15791 Int) ($b65415786 Int) ($i65215784 Int) ($b65415795 Int) (n15781 Int) ($y65715789 Int) ($i65215793 Int) ($j65315785 Int) (n15790 Int) (a15783 Int) ($y65715798 Int) ($l65515787 Int))
    (=> (and ($correct_version_sum225 n15781 m15782 a15783 (+ $i65215784 1) $j65315785 (+ $b65415786 a15783) $l65515787 $x65615788 $y65715789 n15790 m15791 a15792 $i65215793 $j65315794 $b65415795 $l65515796 $x65615797 $y65715798)
             (< $b65415786 n15781))
        ($correct_version_sum225 n15781 m15782 a15783 $i65215784 $j65315785 $b65415786 $l65515787 $x65615788 $y65715789 n15790 m15791 a15792 $i65215793 $j65315794 $b65415795 $l65515796 $x65615797 $y65715798))))

; loop entry $correct_version_inv226
(assert
  (forall ((a Int) ($j65315803 Int) ($y657 Int) (n Int) ($x65615806 Int) (a15801 Int) ($j653 Int) ($y65715807 Int) ($i65215802 Int) ($l65515805 Int) (m Int) ($b65415804 Int) (n15799 Int) ($x656 Int) ($b654 Int) ($l655 Int) ($i652 Int) (m15800 Int))
    (=> (and ($correct_version_sum225 n m a $i652 $j653 $b654 $l655 $x656 $y657 n15799 m15800 a15801 $i65215802 $j65315803 $b65415804 $l65515805 $x65615806 $y65715807)
             (= $l655 0)
             (= $b654 0)
             (= $j653 0)
             (= $i652 0)
             ($correct_version_pre n m a))
        ($correct_version_inv226 n15799 m15800 a15801 $i65215802 $j65315803 $b65415804 $l65515805 $x65615806 $y65715807))))

; loop term $correct_version_sum226
(assert
  (forall (($i65215811 Int) ($l65515814 Int) ($y65715816 Int) ($b65415813 Int) (n15808 Int) ($j65315812 Int) (a15810 Int) ($x65615815 Int) (m15809 Int))
    (=> (and (not (< $l65515814 m15809)))
        ($correct_version_sum226 n15808 m15809 a15810 $i65215811 $j65315812 $b65415813 $l65515814 $x65615815 $y65715816 n15808 m15809 a15810 $i65215811 $j65315812 $b65415813 $l65515814 $x65615815 $y65715816))))

; forwards $correct_version_inv226
(assert
  (forall (($i65215811 Int) ($l65515814 Int) ($y65715816 Int) ($b65415813 Int) (n15808 Int) ($j65315812 Int) (a15810 Int) ($x65615815 Int) (m15809 Int))
    (=> (and (< $l65515814 m15809)
             ($correct_version_inv226 n15808 m15809 a15810 $i65215811 $j65315812 $b65415813 $l65515814 $x65615815 $y65715816))
        ($correct_version_inv226 n15808 m15809 a15810 $i65215811 (+ $j65315812 1) $b65415813 (+ $l65515814 a15810) $x65615815 $y65715816))))

; backwards $correct_version_sum226
(assert
  (forall (($j65315821 Int) ($i65215811 Int) ($b65415822 Int) ($y65715825 Int) ($l65515814 Int) ($y65715816 Int) ($b65415813 Int) (m15818 Int) ($x65615824 Int) (n15817 Int) ($l65515823 Int) (n15808 Int) ($j65315812 Int) (a15810 Int) ($x65615815 Int) (m15809 Int) (a15819 Int) ($i65215820 Int))
    (=> (and ($correct_version_sum226 n15808 m15809 a15810 $i65215811 (+ $j65315812 1) $b65415813 (+ $l65515814 a15810) $x65615815 $y65715816 n15817 m15818 a15819 $i65215820 $j65315821 $b65415822 $l65515823 $x65615824 $y65715825)
             (< $l65515814 m15809))
        ($correct_version_sum226 n15808 m15809 a15810 $i65215811 $j65315812 $b65415813 $l65515814 $x65615815 $y65715816 n15817 m15818 a15819 $i65215820 $j65315821 $b65415822 $l65515823 $x65615824 $y65715825))))

; loop entry $correct_version_inv227
(assert
  (forall (($j65315803 Int) ($y657 Int) (n Int) ($x65615806 Int) (a15801 Int) (n15826 Int) ($j653 Int) ($y65715807 Int) ($i65215802 Int) (m Int) ($j65315830 Int) (a Int) ($b65415804 Int) (n15799 Int) ($x65615833 Int) ($i65215829 Int) ($b65415831 Int) ($l65515832 Int) ($y65715834 Int) (m15827 Int) (a15828 Int) ($l65515805 Int) ($x656 Int) ($b654 Int) ($l655 Int) ($i652 Int) (m15800 Int))
    (=> (and (= $y65715834 0)
             (= $x65615833 0)
             ($correct_version_sum226 n15799 m15800 a15801 $i65215802 $j65315803 $b65415804 $l65515805 $x65615806 $y65715807 n15826 m15827 a15828 $i65215829 $j65315830 $b65415831 $l65515832 $x65615833 $y65715834)
             ($correct_version_sum225 n m a $i652 $j653 $b654 $l655 $x656 $y657 n15799 m15800 a15801 $i65215802 $j65315803 $b65415804 $l65515805 $x65615806 $y65715807)
             (= $l655 0)
             (= $b654 0)
             (= $j653 0)
             (= $i652 0)
             ($correct_version_pre n m a))
        ($correct_version_inv227 n15826 m15827 a15828 $i65215829 $j65315830 $b65415831 $l65515832 $x65615833 $y65715834))))

; loop term $correct_version_sum227
(assert
  (forall (($j65315839 Int) ($l65515841 Int) (n15835 Int) ($x65615842 Int) (a15837 Int) ($y65715843 Int) ($b65415840 Int) ($i65215838 Int) (m15836 Int))
    (=> (and (not (< $x65615842 $i65215838)))
        ($correct_version_sum227 n15835 m15836 a15837 $i65215838 $j65315839 $b65415840 $l65515841 $x65615842 $y65715843 n15835 m15836 a15837 $i65215838 $j65315839 $b65415840 $l65515841 $x65615842 $y65715843))))

; forwards $correct_version_inv227
(assert
  (forall (($j65315839 Int) ($l65515841 Int) (n15835 Int) ($x65615842 Int) (a15837 Int) ($y65715843 Int) ($b65415840 Int) ($i65215838 Int) (m15836 Int))
    (=> (and (< $x65615842 $i65215838)
             ($correct_version_inv227 n15835 m15836 a15837 $i65215838 $j65315839 $b65415840 $l65515841 $x65615842 $y65715843))
        ($correct_version_inv227 n15835 m15836 a15837 $i65215838 $j65315839 $b65415840 $l65515841 (+ $x65615842 1) (+ $y65715843 $j65315839)))))

; backwards $correct_version_sum227
(assert
  (forall (($l65515841 Int) (n15835 Int) ($b65415849 Int) (m15845 Int) ($x65615842 Int) ($x65615851 Int) ($l65515850 Int) (a15837 Int) ($j65315848 Int) ($y65715852 Int) ($b65415840 Int) ($i65215838 Int) (a15846 Int) (m15836 Int) ($j65315839 Int) (n15844 Int) ($y65715843 Int) ($i65215847 Int))
    (=> (and ($correct_version_sum227 n15835 m15836 a15837 $i65215838 $j65315839 $b65415840 $l65515841 (+ $x65615842 1) (+ $y65715843 $j65315839) n15844 m15845 a15846 $i65215847 $j65315848 $b65415849 $l65515850 $x65615851 $y65715852)
             (< $x65615842 $i65215838))
        ($correct_version_sum227 n15835 m15836 a15837 $i65215838 $j65315839 $b65415840 $l65515841 $x65615842 $y65715843 n15844 m15845 a15846 $i65215847 $j65315848 $b65415849 $l65515850 $x65615851 $y65715852))))

; post correct_version
(assert
  (forall (($b65415858 Int) ($x65615806 Int) (a15801 Int) (n15826 Int) ($j653 Int) (m15854 Int) (a15855 Int) (m Int) ($j65315857 Int) ($j65315830 Int) (a Int) (n15853 Int) ($j65315803 Int) ($i65215856 Int) ($y657 Int) ($x65615860 Int) (n Int) ($b65415804 Int) (n15799 Int) ($x65615833 Int) ($i65215829 Int) ($y65715861 Int) ($y65715807 Int) ($b65415831 Int) ($l65515832 Int) ($y65715834 Int) ($i65215802 Int) ($l65515859 Int) (m15827 Int) (a15828 Int) ($l65515805 Int) ($x656 Int) ($b654 Int) ($l655 Int) ($i652 Int) (m15800 Int))
    (=> (and ($correct_version_sum227 n15826 m15827 a15828 $i65215829 $j65315830 $b65415831 $l65515832 $x65615833 $y65715834 n15853 m15854 a15855 $i65215856 $j65315857 $b65415858 $l65515859 $x65615860 $y65715861)
             (= $y65715834 0)
             (= $x65615833 0)
             ($correct_version_sum226 n15799 m15800 a15801 $i65215802 $j65315803 $b65415804 $l65515805 $x65615806 $y65715807 n15826 m15827 a15828 $i65215829 $j65315830 $b65415831 $l65515832 $x65615833 $y65715834)
             ($correct_version_sum225 n m a $i652 $j653 $b654 $l655 $x656 $y657 n15799 m15800 a15801 $i65215802 $j65315803 $b65415804 $l65515805 $x65615806 $y65715807)
             (= $l655 0)
             (= $b654 0)
             (= $j653 0)
             (= $i652 0)
             ($correct_version_pre n m a))
        (correct_version n15853 m15854 a15855 $y65715861))))

; loop entry $student_version_inv228
(assert
  (forall (($y663 Int) (a Int) ($x662 Int) ($i658 Int) ($b660 Int) ($l661 Int) (n Int) (m Int) ($j659 Int))
    (=> (and (= $l661 0)
             (= $b660 0)
             (= $j659 0)
             (= $i658 0)
             ($student_version_pre n m a))
        ($student_version_inv228 n m a $i658 $j659 $b660 $l661 $x662 $y663))))

; loop term $student_version_sum228
(assert
  (forall (($x66215869 Int) ($j65915866 Int) ($i65815865 Int) (m15863 Int) ($b66015867 Int) (a15864 Int) ($y66315870 Int) (n15862 Int) ($l66115868 Int))
    (=> (and (not (< $b66015867 n15862)))
        ($student_version_sum228 n15862 m15863 a15864 $i65815865 $j65915866 $b66015867 $l66115868 $x66215869 $y66315870 n15862 m15863 a15864 $i65815865 $j65915866 $b66015867 $l66115868 $x66215869 $y66315870))))

; forwards $student_version_inv228
(assert
  (forall (($x66215869 Int) ($j65915866 Int) ($i65815865 Int) (m15863 Int) ($b66015867 Int) (a15864 Int) ($y66315870 Int) (n15862 Int) ($l66115868 Int))
    (=> (and (< $b66015867 n15862)
             ($student_version_inv228 n15862 m15863 a15864 $i65815865 $j65915866 $b66015867 $l66115868 $x66215869 $y66315870))
        ($student_version_inv228 n15862 m15863 a15864 (+ $i65815865 1) $j65915866 (+ $b66015867 a15864) $l66115868 $x66215869 $y66315870))))

; backwards $student_version_sum228
(assert
  (forall (($x66215869 Int) ($l66115877 Int) (m15872 Int) ($j65915866 Int) ($y66315879 Int) ($i65815865 Int) (n15871 Int) (m15863 Int) (a15864 Int) ($y66315870 Int) (n15862 Int) ($j65915875 Int) ($l66115868 Int) ($b66015876 Int) ($i65815874 Int) (a15873 Int) ($b66015867 Int) ($x66215878 Int))
    (=> (and ($student_version_sum228 n15862 m15863 a15864 (+ $i65815865 1) $j65915866 (+ $b66015867 a15864) $l66115868 $x66215869 $y66315870 n15871 m15872 a15873 $i65815874 $j65915875 $b66015876 $l66115877 $x66215878 $y66315879)
             (< $b66015867 n15862))
        ($student_version_sum228 n15862 m15863 a15864 $i65815865 $j65915866 $b66015867 $l66115868 $x66215869 $y66315870 n15871 m15872 a15873 $i65815874 $j65915875 $b66015876 $l66115877 $x66215878 $y66315879))))

; loop entry $student_version_inv229
(assert
  (forall (($y663 Int) (a15882 Int) (n15880 Int) ($j65915884 Int) ($b66015885 Int) ($x662 Int) ($i65815883 Int) (m15881 Int) ($y66315888 Int) ($i658 Int) ($b660 Int) ($l66115886 Int) ($x66215887 Int) (a Int) ($l661 Int) (n Int) (m Int) ($j659 Int))
    (=> (and ($student_version_sum228 n m a $i658 $j659 $b660 $l661 $x662 $y663 n15880 m15881 a15882 $i65815883 $j65915884 $b66015885 $l66115886 $x66215887 $y66315888)
             (= $l661 0)
             (= $b660 0)
             (= $j659 0)
             (= $i658 0)
             ($student_version_pre n m a))
        ($student_version_inv229 n15880 m15881 a15882 $i65815883 $j65915884 $b66015885 $l66115886 $x66215887 $y66315888))))

; loop term $student_version_sum229
(assert
  (forall (($x66215896 Int) ($i65815892 Int) ($y66315897 Int) ($j65915893 Int) (m15890 Int) (n15889 Int) ($b66015894 Int) (a15891 Int) ($l66115895 Int))
    (=> (and (not (< $l66115895 m15890)))
        ($student_version_sum229 n15889 m15890 a15891 $i65815892 $j65915893 $b66015894 $l66115895 $x66215896 $y66315897 n15889 m15890 a15891 $i65815892 $j65915893 $b66015894 $l66115895 $x66215896 $y66315897))))

; forwards $student_version_inv229
(assert
  (forall (($x66215896 Int) ($i65815892 Int) ($y66315897 Int) ($j65915893 Int) (m15890 Int) (n15889 Int) ($b66015894 Int) (a15891 Int) ($l66115895 Int))
    (=> (and (< $l66115895 m15890)
             ($student_version_inv229 n15889 m15890 a15891 $i65815892 $j65915893 $b66015894 $l66115895 $x66215896 $y66315897))
        ($student_version_inv229 n15889 m15890 a15891 $i65815892 (+ $j65915893 1) $b66015894 (+ $l66115895 a15891) $x66215896 $y66315897))))

; backwards $student_version_sum229
(assert
  (forall (($l66115904 Int) ($i65815892 Int) ($y66315906 Int) ($b66015903 Int) ($j65915893 Int) (m15890 Int) (a15900 Int) (n15889 Int) ($i65815901 Int) ($b66015894 Int) (a15891 Int) ($j65915902 Int) ($l66115895 Int) (n15898 Int) ($x66215896 Int) ($x66215905 Int) (m15899 Int) ($y66315897 Int))
    (=> (and ($student_version_sum229 n15889 m15890 a15891 $i65815892 (+ $j65915893 1) $b66015894 (+ $l66115895 a15891) $x66215896 $y66315897 n15898 m15899 a15900 $i65815901 $j65915902 $b66015903 $l66115904 $x66215905 $y66315906)
             (< $l66115895 m15890))
        ($student_version_sum229 n15889 m15890 a15891 $i65815892 $j65915893 $b66015894 $l66115895 $x66215896 $y66315897 n15898 m15899 a15900 $i65815901 $j65915902 $b66015903 $l66115904 $x66215905 $y66315906))))

; loop entry $student_version_inv230
(assert
  (forall (($y663 Int) (a15882 Int) (n15880 Int) ($j65915884 Int) ($l66115913 Int) (a15909 Int) (n15907 Int) ($b66015885 Int) ($i65815910 Int) ($b66015912 Int) ($x662 Int) (m15908 Int) (m15881 Int) ($j65915911 Int) ($y66315888 Int) ($i658 Int) ($b660 Int) ($l66115886 Int) ($x66215887 Int) (a Int) ($y66315915 Int) ($l661 Int) (n Int) ($x66215914 Int) ($i65815883 Int) (m Int) ($j659 Int))
    (=> (and (= $y66315915 0)
             (= $x66215914 0)
             ($student_version_sum229 n15880 m15881 a15882 $i65815883 $j65915884 $b66015885 $l66115886 $x66215887 $y66315888 n15907 m15908 a15909 $i65815910 $j65915911 $b66015912 $l66115913 $x66215914 $y66315915)
             ($student_version_sum228 n m a $i658 $j659 $b660 $l661 $x662 $y663 n15880 m15881 a15882 $i65815883 $j65915884 $b66015885 $l66115886 $x66215887 $y66315888)
             (= $l661 0)
             (= $b660 0)
             (= $j659 0)
             (= $i658 0)
             ($student_version_pre n m a))
        ($student_version_inv230 n15907 m15908 a15909 $i65815910 $j65915911 $b66015912 $l66115913 $x66215914 $y66315915))))

; loop term $student_version_sum230
(assert
  (forall (($b66015921 Int) ($y66315924 Int) (a15918 Int) ($i65815919 Int) ($l66115922 Int) ($j65915920 Int) (m15917 Int) ($x66215923 Int) (n15916 Int))
    (=> (and (not (< $x66215923 $i65815919)))
        ($student_version_sum230 n15916 m15917 a15918 $i65815919 $j65915920 $b66015921 $l66115922 $x66215923 $y66315924 n15916 m15917 a15918 $i65815919 $j65915920 $b66015921 $l66115922 $x66215923 $y66315924))))

; forwards $student_version_inv230
(assert
  (forall (($b66015921 Int) ($y66315924 Int) (a15918 Int) ($i65815919 Int) ($l66115922 Int) ($j65915920 Int) (m15917 Int) ($x66215923 Int) (n15916 Int))
    (=> (and (< $x66215923 $i65815919)
             ($student_version_inv230 n15916 m15917 a15918 $i65815919 $j65915920 $b66015921 $l66115922 $x66215923 $y66315924))
        ($student_version_inv230 n15916 m15917 a15918 $i65815919 $j65915920 $b66015921 $l66115922 (+ $x66215923 1) (+ $y66315924 $j65915920)))))

; backwards $student_version_sum230
(assert
  (forall (($b66015921 Int) ($y66315924 Int) ($x66215932 Int) ($i65815919 Int) ($l66115922 Int) ($j65915920 Int) ($j65915929 Int) ($i65815928 Int) ($x66215923 Int) (n15916 Int) (a15927 Int) ($y66315933 Int) (a15918 Int) ($l66115931 Int) (n15925 Int) (m15917 Int) (m15926 Int) ($b66015930 Int))
    (=> (and ($student_version_sum230 n15916 m15917 a15918 $i65815919 $j65915920 $b66015921 $l66115922 (+ $x66215923 1) (+ $y66315924 $j65915920) n15925 m15926 a15927 $i65815928 $j65915929 $b66015930 $l66115931 $x66215932 $y66315933)
             (< $x66215923 $i65815919))
        ($student_version_sum230 n15916 m15917 a15918 $i65815919 $j65915920 $b66015921 $l66115922 $x66215923 $y66315924 n15925 m15926 a15927 $i65815928 $j65915929 $b66015930 $l66115931 $x66215932 $y66315933))))

; post student_version
(assert
  (forall (($j65915884 Int) ($l66115913 Int) ($b66015885 Int) ($x662 Int) ($l66115940 Int) ($b66015939 Int) (m15908 Int) (m15881 Int) ($j65915911 Int) ($y66315888 Int) ($i658 Int) ($b660 Int) (a15936 Int) ($y663 Int) ($l66115886 Int) ($x66215887 Int) (a Int) ($y66315915 Int) (m15935 Int) (a15882 Int) ($y66315942 Int) (n15880 Int) ($l661 Int) (n Int) (n15934 Int) (a15909 Int) ($i65815937 Int) (n15907 Int) ($x66215941 Int) ($i65815910 Int) ($j65915938 Int) ($b66015912 Int) ($x66215914 Int) ($i65815883 Int) (m Int) ($j659 Int))
    (=> (and ($student_version_sum230 n15907 m15908 a15909 $i65815910 $j65915911 $b66015912 $l66115913 $x66215914 $y66315915 n15934 m15935 a15936 $i65815937 $j65915938 $b66015939 $l66115940 $x66215941 $y66315942)
             (= $y66315915 0)
             (= $x66215914 0)
             ($student_version_sum229 n15880 m15881 a15882 $i65815883 $j65915884 $b66015885 $l66115886 $x66215887 $y66315888 n15907 m15908 a15909 $i65815910 $j65915911 $b66015912 $l66115913 $x66215914 $y66315915)
             ($student_version_sum228 n m a $i658 $j659 $b660 $l661 $x662 $y663 n15880 m15881 a15882 $i65815883 $j65915884 $b66015885 $l66115886 $x66215887 $y66315888)
             (= $l661 0)
             (= $b660 0)
             (= $j659 0)
             (= $i658 0)
             ($student_version_pre n m a))
        (student_version n15934 m15935 a15936 $y66315942))))

; correct_version precondition
(assert
  (forall (($int15943 Int) ($m666 Int) ($int15944 Int) ($int15945 Int) ($n665 Int) ($int15946 Int) ($n_stones2668 Int) ($a664 Int))
    (=> (and (<= 1 $n665)
             (<= 1 $m666)
             (<= 1 $a664)
             (<= $n665 109)
             (<= $m666 109)
             (<= $a664 109)
             (= $n_stones2668 $int15946)
             (<= (- 2147483648) $int15946)
             (<= $int15946 2147483647)
             (= $m666 $int15945)
             (<= (- 2147483648) $int15945)
             (<= $int15945 2147483647)
             (= $n665 $int15944)
             (<= (- 2147483648) $int15944)
             (<= $int15944 2147483647)
             (= $a664 $int15943)
             (<= (- 2147483648) $int15943)
             (<= $int15943 2147483647))
        ($correct_version_pre $n665 $m666 $a664))))

; student_version precondition
(assert
  (forall (($int15943 Int) ($m666 Int) ($result15947 Int) ($int15944 Int) ($int15945 Int) ($n665 Int) ($int15946 Int) ($n_stones2668 Int) ($a664 Int))
    (=> (and (correct_version $n665 $m666 $a664 $result15947)
             (<= 1 $n665)
             (<= 1 $m666)
             (<= 1 $a664)
             (<= $n665 109)
             (<= $m666 109)
             (<= $a664 109)
             (= $n_stones2668 $int15946)
             (<= (- 2147483648) $int15946)
             (<= $int15946 2147483647)
             (= $m666 $int15945)
             (<= (- 2147483648) $int15945)
             (<= $int15945 2147483647)
             (= $n665 $int15944)
             (<= (- 2147483648) $int15944)
             (<= $int15944 2147483647)
             (= $a664 $int15943)
             (<= (- 2147483648) $int15943)
             (<= $int15943 2147483647))
        ($student_version_pre $n665 $m666 $a664))))

; if then
(assert
  (forall (($int15943 Int) ($m666 Int) ($result15947 Int) ($n_stones1667 Int) ($int15944 Int) ($int15945 Int) ($result15948 Int) ($n665 Int) ($int15946 Int) ($n_stones2668 Int) ($a664 Int))
    (=> (and (student_version $n665 $m666 $a664 $result15948)
             (correct_version $n665 $m666 $a664 $result15947)
             (<= 1 $n665)
             (<= 1 $m666)
             (<= 1 $a664)
             (<= $n665 109)
             (<= $m666 109)
             (<= $a664 109)
             (= $n_stones2668 $int15946)
             (<= (- 2147483648) $int15946)
             (<= $int15946 2147483647)
             (= $m666 $int15945)
             (<= (- 2147483648) $int15945)
             (<= $int15945 2147483647)
             (= $n665 $int15944)
             (<= (- 2147483648) $int15944)
             (<= $int15944 2147483647)
             (= $a664 $int15943)
             (<= (- 2147483648) $int15943)
             (<= $int15943 2147483647))
        ($main_if661 $a664 $n665 $m666 $n_stones1667 $n_stones2668 $a664 $n665 $m666 $result15947 $result15948))))

; if else
(assert
  (forall (($int15943 Int) ($m666 Int) ($n_stones1667 Int) ($int15944 Int) ($int15945 Int) ($n665 Int) ($int15946 Int) ($n_stones2668 Int) ($a664 Int))
    (=> (and (not (and (and (and (and (and (<= 1 $n665) (<= 1 $m666)) (<= 1 $a664)) (<= $n665 109)) (<= $m666 109)) (<= $a664 109)))
             (= $n_stones2668 $int15946)
             (<= (- 2147483648) $int15946)
             (<= $int15946 2147483647)
             (= $m666 $int15945)
             (<= (- 2147483648) $int15945)
             (<= $int15945 2147483647)
             (= $n665 $int15944)
             (<= (- 2147483648) $int15944)
             (<= $int15944 2147483647)
             (= $a664 $int15943)
             (<= (- 2147483648) $int15943)
             (<= $int15943 2147483647))
        ($main_if661 $a664 $n665 $m666 $n_stones1667 $n_stones2668 $a664 $n665 $m666 $n_stones2668 $n_stones2668))))

; __VERIFIER_assert precondition
(assert
  (forall (($m666 Int) ($a66415949 Int) ($n665 Int) ($m66615951 Int) ($n_stones266815953 Int) ($n66515950 Int) ($n_stones166715952 Int) ($n_stones1667 Int) ($n_stones2668 Int) ($a664 Int))
    (=> (and ($main_if661 $a664 $n665 $m666 $n_stones1667 $n_stones2668 $a66415949 $n66515950 $m66615951 $n_stones166715952 $n_stones266815953))
        ($__VERIFIER_assert_pre (ite (= $n_stones166715952 $n_stones266815953) 1 0)))))

(check-sat)
