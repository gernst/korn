(set-logic HORN)

(declare-fun $main_sum353 ((Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv353 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $__VERIFIER_assert_if100 (Int Int) Bool)
(declare-fun $main_sum352 ((Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $main_if102 ((Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_if101 ((Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_sum354 ((Array Int Int) (Array Int Int) Int Int Int (Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv352 ((Array Int Int) (Array Int Int) Int Int Int) Bool)
(declare-fun $main_inv354 ((Array Int Int) (Array Int Int) Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond6799 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond6799))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if100 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond6800 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if100 cond cond6800))
        (__VERIFIER_assert cond6800))))

; loop entry $main_inv352
(assert
  (forall (($password416 (Array Int Int)) ($guess417 (Array Int Int)) ($result419 Int) ($x420 Int))
    (=> (and (= $result419 1))
        ($main_inv352 $password416 $guess417 0 $result419 $x420))))

; loop term $main_sum352
(assert
  (forall (($i4186803 Int) ($guess4176802 (Array Int Int)) ($x4206805 Int) ($result4196804 Int) ($password4166801 (Array Int Int)))
    (=> (and (not (< $i4186803 100000)))
        ($main_sum352 $password4166801 $guess4176802 $i4186803 $result4196804 $x4206805 $password4166801 $guess4176802 $i4186803 $result4196804 $x4206805))))

; forwards $main_inv352
(assert
  (forall (($i4186803 Int) ($x4206805 Int) ($result4196804 Int) ($int6807 Int) ($password4166801 (Array Int Int)) ($guess4176802 (Array Int Int)) ($int6806 Int))
    (=> (and (<= (- 2147483648) $int6807)
             (<= $int6807 2147483647)
             (<= (- 2147483648) $int6806)
             (<= $int6806 2147483647)
             (< $i4186803 100000)
             ($main_inv352 $password4166801 $guess4176802 $i4186803 $result4196804 $x4206805))
        ($main_inv352 (store $password4166801 $i4186803 $int6806) (store $guess4176802 $i4186803 $int6807) (+ $i4186803 1) $result4196804 $x4206805))))

; backwards $main_sum352
(assert
  (forall (($i4186803 Int) ($x4206812 Int) ($guess4176809 (Array Int Int)) ($x4206805 Int) ($int6807 Int) ($result4196811 Int) ($guess4176802 (Array Int Int)) ($int6806 Int) ($i4186810 Int) ($result4196804 Int) ($password4166801 (Array Int Int)) ($password4166808 (Array Int Int)))
    (=> (and ($main_sum352 (store $password4166801 $i4186803 $int6806) (store $guess4176802 $i4186803 $int6807) (+ $i4186803 1) $result4196804 $x4206805 $password4166808 $guess4176809 $i4186810 $result4196811 $x4206812)
             (<= (- 2147483648) $int6807)
             (<= $int6807 2147483647)
             (<= (- 2147483648) $int6806)
             (<= $int6806 2147483647)
             (< $i4186803 100000))
        ($main_sum352 $password4166801 $guess4176802 $i4186803 $result4196804 $x4206805 $password4166808 $guess4176809 $i4186810 $result4196811 $x4206812))))

; loop entry $main_inv353
(assert
  (forall (($x420 Int) ($password4166813 (Array Int Int)) ($guess417 (Array Int Int)) ($guess4176814 (Array Int Int)) ($result419 Int) ($password416 (Array Int Int)) ($x4206817 Int) ($i4186815 Int) ($result4196816 Int))
    (=> (and ($main_sum352 $password416 $guess417 0 $result419 $x420 $password4166813 $guess4176814 $i4186815 $result4196816 $x4206817)
             (= $result419 1))
        ($main_inv353 $password4166813 $guess4176814 0 $result4196816 $x4206817))))

; loop term $main_sum353
(assert
  (forall (($result4196821 Int) ($x4206822 Int) ($password4166818 (Array Int Int)) ($guess4176819 (Array Int Int)) ($i4186820 Int))
    (=> (and (not (< $i4186820 100000)))
        ($main_sum353 $password4166818 $guess4176819 $i4186820 $result4196821 $x4206822 $password4166818 $guess4176819 $i4186820 $result4196821 $x4206822))))

; if then
(assert
  (forall (($result4196821 Int) ($x4206822 Int) ($password4166818 (Array Int Int)) ($guess4176819 (Array Int Int)) ($i4186820 Int))
    (=> (and (not (= (select $password4166818 $i4186820) (select $guess4176819 $i4186820)))
             (< $i4186820 100000)
             ($main_inv353 $password4166818 $guess4176819 $i4186820 $result4196821 $x4206822))
        ($main_if101 $password4166818 $guess4176819 $i4186820 $result4196821 $x4206822 $password4166818 $guess4176819 $i4186820 0 $x4206822))))

; if else
(assert
  (forall (($result4196821 Int) ($x4206822 Int) ($password4166818 (Array Int Int)) ($guess4176819 (Array Int Int)) ($i4186820 Int))
    (=> (and (= (select $password4166818 $i4186820) (select $guess4176819 $i4186820))
             (< $i4186820 100000)
             ($main_inv353 $password4166818 $guess4176819 $i4186820 $result4196821 $x4206822))
        ($main_if101 $password4166818 $guess4176819 $i4186820 $result4196821 $x4206822 $password4166818 $guess4176819 $i4186820 $result4196821 $x4206822))))

; forwards $main_inv353
(assert
  (forall (($result4196821 Int) ($result4196826 Int) ($x4206822 Int) ($password4166818 (Array Int Int)) ($guess4176824 (Array Int Int)) ($guess4176819 (Array Int Int)) ($i4186820 Int) ($i4186825 Int) ($password4166823 (Array Int Int)) ($x4206827 Int))
    (=> (and ($main_if101 $password4166818 $guess4176819 $i4186820 $result4196821 $x4206822 $password4166823 $guess4176824 $i4186825 $result4196826 $x4206827))
        ($main_inv353 $password4166823 $guess4176824 (+ $i4186825 1) $result4196826 $x4206827))))

; backwards $main_sum353
(assert
  (forall (($password4166828 (Array Int Int)) ($i4186830 Int) ($result4196821 Int) ($result4196831 Int) ($result4196826 Int) ($x4206822 Int) ($x4206832 Int) ($guess4176824 (Array Int Int)) ($guess4176819 (Array Int Int)) ($i4186820 Int) ($i4186825 Int) ($password4166823 (Array Int Int)) ($x4206827 Int) ($password4166818 (Array Int Int)) ($guess4176829 (Array Int Int)))
    (=> (and ($main_sum353 $password4166823 $guess4176824 (+ $i4186825 1) $result4196826 $x4206827 $password4166828 $guess4176829 $i4186830 $result4196831 $x4206832)
             ($main_if101 $password4166818 $guess4176819 $i4186820 $result4196821 $x4206822 $password4166823 $guess4176824 $i4186825 $result4196826 $x4206827))
        ($main_sum353 $password4166818 $guess4176819 $i4186820 $result4196821 $x4206822 $password4166828 $guess4176829 $i4186830 $result4196831 $x4206832))))

; loop entry $main_inv354
(assert
  (forall (($x420 Int) ($password4166813 (Array Int Int)) ($guess4176814 (Array Int Int)) ($password4166833 (Array Int Int)) ($result419 Int) ($x4206817 Int) ($i4186815 Int) ($x4206837 Int) ($result4196836 Int) ($result4196816 Int) ($guess417 (Array Int Int)) ($i4186835 Int) ($password416 (Array Int Int)) ($guess4176834 (Array Int Int)))
    (=> (and (not (= $result4196836 0))
             ($main_sum353 $password4166813 $guess4176814 0 $result4196816 $x4206817 $password4166833 $guess4176834 $i4186835 $result4196836 $x4206837)
             ($main_sum352 $password416 $guess417 0 $result419 $x420 $password4166813 $guess4176814 $i4186815 $result4196816 $x4206817)
             (= $result419 1))
        ($main_inv354 $password4166833 $guess4176834 $i4186835 $result4196836 0))))

; loop term $main_sum354
(assert
  (forall (($result4196841 Int) ($x4206842 Int) ($password4166838 (Array Int Int)) ($i4186840 Int) ($guess4176839 (Array Int Int)))
    (=> (and (not (< $x4206842 100000)))
        ($main_sum354 $password4166838 $guess4176839 $i4186840 $result4196841 $x4206842 $password4166838 $guess4176839 $i4186840 $result4196841 $x4206842))))

; __VERIFIER_assert precondition
(assert
  (forall (($result4196841 Int) ($x4206842 Int) ($password4166838 (Array Int Int)) ($i4186840 Int) ($guess4176839 (Array Int Int)))
    (=> (and (< $x4206842 100000)
             ($main_inv354 $password4166838 $guess4176839 $i4186840 $result4196841 $x4206842))
        ($__VERIFIER_assert_pre (ite (= (select $password4166838 $x4206842) (select $guess4176839 $x4206842)) 1 0)))))

; forwards $main_inv354
(assert
  (forall (($result4196841 Int) ($x4206842 Int) ($password4166838 (Array Int Int)) ($i4186840 Int) ($guess4176839 (Array Int Int)))
    (=> (and (__VERIFIER_assert (ite (= (select $password4166838 $x4206842) (select $guess4176839 $x4206842)) 1 0))
             (< $x4206842 100000)
             ($main_inv354 $password4166838 $guess4176839 $i4186840 $result4196841 $x4206842))
        ($main_inv354 $password4166838 $guess4176839 $i4186840 $result4196841 (+ $x4206842 1)))))

; backwards $main_sum354
(assert
  (forall (($password4166843 (Array Int Int)) ($result4196841 Int) ($x4206847 Int) ($i4186845 Int) ($x4206842 Int) ($password4166838 (Array Int Int)) ($guess4176844 (Array Int Int)) ($result4196846 Int) ($i4186840 Int) ($guess4176839 (Array Int Int)))
    (=> (and ($main_sum354 $password4166838 $guess4176839 $i4186840 $result4196841 (+ $x4206842 1) $password4166843 $guess4176844 $i4186845 $result4196846 $x4206847)
             (__VERIFIER_assert (ite (= (select $password4166838 $x4206842) (select $guess4176839 $x4206842)) 1 0))
             (< $x4206842 100000))
        ($main_sum354 $password4166838 $guess4176839 $i4186840 $result4196841 $x4206842 $password4166843 $guess4176844 $i4186845 $result4196846 $x4206847))))

; if then
(assert
  (forall (($x420 Int) ($i4186850 Int) ($password4166813 (Array Int Int)) ($guess4176814 (Array Int Int)) ($guess4176849 (Array Int Int)) ($result419 Int) ($x4206817 Int) ($i418 Int) ($result4196851 Int) ($i4186815 Int) ($x4206852 Int) ($x4206837 Int) ($result4196836 Int) ($result4196816 Int) ($guess417 (Array Int Int)) ($i4186835 Int) ($password4166848 (Array Int Int)) ($password4166833 (Array Int Int)) ($password416 (Array Int Int)) ($guess4176834 (Array Int Int)))
    (=> (and ($main_sum354 $password4166833 $guess4176834 $i4186835 $result4196836 0 $password4166848 $guess4176849 $i4186850 $result4196851 $x4206852)
             (not (= $result4196836 0))
             ($main_sum353 $password4166813 $guess4176814 0 $result4196816 $x4206817 $password4166833 $guess4176834 $i4186835 $result4196836 $x4206837)
             ($main_sum352 $password416 $guess417 0 $result419 $x420 $password4166813 $guess4176814 $i4186815 $result4196816 $x4206817)
             (= $result419 1))
        ($main_if102 $password416 $guess417 $i418 $result419 $x420 $password4166848 $guess4176849 $i4186850 $result4196851 $x4206852))))

; if else
(assert
  (forall (($x420 Int) ($password4166813 (Array Int Int)) ($guess4176814 (Array Int Int)) ($password4166833 (Array Int Int)) ($result419 Int) ($x4206817 Int) ($i418 Int) ($i4186815 Int) ($x4206837 Int) ($result4196836 Int) ($result4196816 Int) ($guess417 (Array Int Int)) ($i4186835 Int) ($password416 (Array Int Int)) ($guess4176834 (Array Int Int)))
    (=> (and (= $result4196836 0)
             ($main_sum353 $password4166813 $guess4176814 0 $result4196816 $x4206817 $password4166833 $guess4176834 $i4186835 $result4196836 $x4206837)
             ($main_sum352 $password416 $guess417 0 $result419 $x420 $password4166813 $guess4176814 $i4186815 $result4196816 $x4206817)
             (= $result419 1))
        ($main_if102 $password416 $guess417 $i418 $result419 $x420 $password4166833 $guess4176834 $i4186835 $result4196836 $x4206837))))

(check-sat)
