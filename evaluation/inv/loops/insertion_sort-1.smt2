(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum244 (Int Int Int Int Int (Array Int Int)) Bool)
(declare-fun __VERIFIER_nondet_uint (Int) Bool)
(declare-fun $main_sum243 (Int Int Int Int Int (Array Int Int)) Bool)
(declare-fun $__VERIFIER_nondet_uint_pre () Bool)
(declare-fun $main_inv243 (Int Int Int Int Int (Array Int Int)) Bool)
(declare-fun $__VERIFIER_assert_if676 (Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_sum242 (Int Int Int Int Int (Array Int Int)) Bool)
(declare-fun $main_inv242 (Int Int Int Int Int (Array Int Int)) Bool)
(declare-fun $main_if677 (Int Int Int Int Int (Array Int Int)) Bool)
(declare-fun $main_inv241 (Int Int Int Int Int (Array Int Int)) Bool)
(declare-fun $main_inv244 (Int Int Int Int Int (Array Int Int)) Bool)
(declare-fun $main_sum241 (Int Int Int Int Int (Array Int Int)) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond))))

; error
(assert
  (forall ((cond14819 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond14819))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if676 cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14820 Int))
    (=> (and ($__VERIFIER_assert_if676 cond14820))
        (__VERIFIER_assert cond14820))))

; loop entry $main_inv241
(assert
  (forall (($SIZE691 Int) ($k694 Int) ($i692 Int) ($key695 Int) ($uint14821 Int) ($v696 (Array Int Int)))
    (=> (and (= $SIZE691 $uint14821)
             (<= 0 $uint14821)
             (<= $uint14821 4294967295))
        ($main_inv241 $SIZE691 $i692 0 $k694 $key695 $v696))))

; loop term $main_sum241
(assert
  (forall (($v69614827 (Array Int Int)) ($SIZE69114822 Int) ($i69214823 Int) ($j69314824 Int) ($key69514826 Int) ($k69414825 Int))
    (=> (and (not (< $j69314824 $SIZE69114822))
             ($main_inv241 $SIZE69114822 $i69214823 $j69314824 $k69414825 $key69514826 $v69614827))
        ($main_sum241 $SIZE69114822 $i69214823 $j69314824 $k69414825 $key69514826 $v69614827))))

; forwards $main_inv241
(assert
  (forall (($v69614827 (Array Int Int)) ($SIZE69114822 Int) ($i69214823 Int) ($j69314824 Int) ($int14828 Int) ($key69514826 Int) ($k69414825 Int))
    (=> (and (<= (- 2147483648) $int14828)
             (<= $int14828 2147483647)
             (< $j69314824 $SIZE69114822)
             ($main_inv241 $SIZE69114822 $i69214823 $j69314824 $k69414825 $key69514826 $v69614827))
        ($main_inv241 $SIZE69114822 $i69214823 (+ $j69314824 1) $k69414825 $key69514826 (store $v69614827 $j69314824 $int14828)))))

; loop entry $main_inv242
(assert
  (forall (($v69614834 (Array Int Int)) ($j69314831 Int) ($SIZE69114829 Int) ($k69414832 Int) ($i69214830 Int) ($key69514833 Int))
    (=> (and ($main_sum241 $SIZE69114829 $i69214830 $j69314831 $k69414832 $key69514833 $v69614834))
        ($main_inv242 $SIZE69114829 $i69214830 1 $k69414832 $key69514833 $v69614834))))

; loop term $main_sum242
(assert
  (forall (($k69414838 Int) ($v69614840 (Array Int Int)) ($SIZE69114835 Int) ($key69514839 Int) ($j69314837 Int) ($i69214836 Int))
    (=> (and (not (< $j69314837 $SIZE69114835))
             ($main_inv242 $SIZE69114835 $i69214836 $j69314837 $k69414838 $key69514839 $v69614840))
        ($main_sum242 $SIZE69114835 $i69214836 $j69314837 $k69414838 $key69514839 $v69614840))))

; loop entry $main_inv243
(assert
  (forall (($k69414838 Int) ($v69614840 (Array Int Int)) ($SIZE69114835 Int) ($key69514839 Int) ($j69314837 Int) ($i69214836 Int))
    (=> (and (< $j69314837 $SIZE69114835)
             ($main_inv242 $SIZE69114835 $i69214836 $j69314837 $k69414838 $key69514839 $v69614840))
        ($main_inv243 $SIZE69114835 (- $j69314837 1) $j69314837 $k69414838 (select $v69614840 $j69314837) $v69614840))))

; loop term $main_sum243
(assert
  (forall (($SIZE69114841 Int) ($key69514845 Int) ($k69414844 Int) ($v69614846 (Array Int Int)) ($i69214842 Int) ($j69314843 Int))
    (=> (and (not (and (>= $i69214842 0) (> (select $v69614846 $i69214842) $key69514845)))
             ($main_inv243 $SIZE69114841 $i69214842 $j69314843 $k69414844 $key69514845 $v69614846))
        ($main_sum243 $SIZE69114841 $i69214842 $j69314843 $k69414844 $key69514845 $v69614846))))

; if then
(assert
  (forall (($SIZE69114841 Int) ($key69514845 Int) ($k69414844 Int) ($v69614846 (Array Int Int)) ($i69214842 Int) ($j69314843 Int))
    (=> (and (< $i69214842 2)
             (>= $i69214842 0)
             (> (select $v69614846 $i69214842) $key69514845)
             ($main_inv243 $SIZE69114841 $i69214842 $j69314843 $k69414844 $key69514845 $v69614846))
        ($main_if677 $SIZE69114841 $i69214842 $j69314843 $k69414844 $key69514845 (store $v69614846 (+ $i69214842 1) (select $v69614846 $i69214842))))))

; if else
(assert
  (forall (($SIZE69114841 Int) ($key69514845 Int) ($k69414844 Int) ($v69614846 (Array Int Int)) ($i69214842 Int) ($j69314843 Int))
    (=> (and (not (< $i69214842 2))
             (>= $i69214842 0)
             (> (select $v69614846 $i69214842) $key69514845)
             ($main_inv243 $SIZE69114841 $i69214842 $j69314843 $k69414844 $key69514845 $v69614846))
        ($main_if677 $SIZE69114841 $i69214842 $j69314843 $k69414844 $key69514845 $v69614846))))

; forwards $main_inv243
(assert
  (forall (($v69614852 (Array Int Int)) ($k69414850 Int) ($key69514851 Int) ($SIZE69114847 Int) ($i69214848 Int) ($j69314849 Int))
    (=> (and ($main_if677 $SIZE69114847 $i69214848 $j69314849 $k69414850 $key69514851 $v69614852))
        ($main_inv243 $SIZE69114847 (- $i69214848 1) $j69314849 $k69414850 $key69514851 $v69614852))))

; forwards $main_inv242
(assert
  (forall (($key69514857 Int) ($k69414856 Int) ($SIZE69114853 Int) ($j69314855 Int) ($i69214854 Int) ($v69614858 (Array Int Int)))
    (=> (and ($main_sum243 $SIZE69114853 $i69214854 $j69314855 $k69414856 $key69514857 $v69614858))
        ($main_inv242 $SIZE69114853 $i69214854 (+ $j69314855 1) $k69414856 $key69514857 (store $v69614858 (+ $i69214854 1) $key69514857)))))

; loop entry $main_inv244
(assert
  (forall (($i69214860 Int) ($j69314861 Int) ($v69614864 (Array Int Int)) ($k69414862 Int) ($SIZE69114859 Int) ($key69514863 Int))
    (=> (and ($main_sum242 $SIZE69114859 $i69214860 $j69314861 $k69414862 $key69514863 $v69614864))
        ($main_inv244 $SIZE69114859 $i69214860 $j69314861 1 $key69514863 $v69614864))))

; loop term $main_sum244
(assert
  (forall (($j69314867 Int) ($SIZE69114865 Int) ($v69614870 (Array Int Int)) ($i69214866 Int) ($key69514869 Int) ($k69414868 Int))
    (=> (and (not (< $k69414868 $SIZE69114865))
             ($main_inv244 $SIZE69114865 $i69214866 $j69314867 $k69414868 $key69514869 $v69614870))
        ($main_sum244 $SIZE69114865 $i69214866 $j69314867 $k69414868 $key69514869 $v69614870))))

; __VERIFIER_assert precondition
(assert
  (forall (($j69314867 Int) ($SIZE69114865 Int) ($v69614870 (Array Int Int)) ($i69214866 Int) ($key69514869 Int) ($k69414868 Int))
    (=> (and (< $k69414868 $SIZE69114865)
             ($main_inv244 $SIZE69114865 $i69214866 $j69314867 $k69414868 $key69514869 $v69614870))
        ($__VERIFIER_assert_pre (ite (<= (select $v69614870 (- $k69414868 1)) (select $v69614870 $k69414868)) 1 0)))))

; forwards $main_inv244
(assert
  (forall (($j69314867 Int) ($SIZE69114865 Int) ($v69614870 (Array Int Int)) ($i69214866 Int) ($key69514869 Int) ($k69414868 Int))
    (=> (and (__VERIFIER_assert (ite (<= (select $v69614870 (- $k69414868 1)) (select $v69614870 $k69414868)) 1 0))
             (< $k69414868 $SIZE69114865)
             ($main_inv244 $SIZE69114865 $i69214866 $j69314867 $k69414868 $key69514869 $v69614870))
        ($main_inv244 $SIZE69114865 $i69214866 $j69314867 (+ $k69414868 1) $key69514869 $v69614870))))

(check-sat)
