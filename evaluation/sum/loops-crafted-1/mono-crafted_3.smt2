(set-logic HORN)

(declare-fun __VERIFIER_assert (Int) Bool)
(declare-fun $main_sum195 (Int Int Int Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_pre (Int) Bool)
(declare-fun $main_inv194 (Int Int Int) Bool)
(declare-fun $__VERIFIER_assert_ERROR (Int Int) Bool)
(declare-fun $__VERIFIER_assert_if585 (Int Int) Bool)
(declare-fun $main_inv195 (Int Int Int) Bool)
(declare-fun $main_sum194 (Int Int Int Int Int Int) Bool)
(declare-fun $main_if586 (Int Int Int Int Int Int) Bool)

; label ERROR
(assert
  (forall ((cond Int))
    (=> (and (= cond 0)
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_ERROR cond cond))))

; error
(assert
  (forall ((cond Int) (cond14870 Int))
    (=> (and ($__VERIFIER_assert_ERROR cond cond14870))
        false)))

; if else
(assert
  (forall ((cond Int))
    (=> (and (not (= cond 0))
             ($__VERIFIER_assert_pre cond))
        ($__VERIFIER_assert_if585 cond cond))))

; post __VERIFIER_assert
(assert
  (forall ((cond14871 Int) (cond Int))
    (=> (and ($__VERIFIER_assert_if585 cond cond14871))
        (__VERIFIER_assert cond14871))))

; loop entry $main_inv194
(assert
  (forall (($y561 Int) ($z562 Int) ($x560 Int))
    (=> (and (= $z562 0)
             (= $y561 500000)
             (= $x560 0))
        ($main_inv194 0 $y561 $z562))))

; loop term $main_sum194
(assert
  (forall (($x56014872 Int) ($y56114873 Int) ($z56214874 Int))
    (=> (and (not (< $x56014872 1000000)))
        ($main_sum194 $x56014872 $y56114873 $z56214874 $x56014872 $y56114873 $z56214874))))

; if then
(assert
  (forall (($x56014872 Int) ($y56114873 Int) ($z56214874 Int))
    (=> (and (< $x56014872 500000)
             (< $x56014872 1000000)
             ($main_inv194 $x56014872 $y56114873 $z56214874))
        ($main_if586 $x56014872 $y56114873 $z56214874 (+ $x56014872 1) $y56114873 $z56214874))))

; if else
(assert
  (forall (($x56014872 Int) ($y56114873 Int) ($z56214874 Int))
    (=> (and (not (< $x56014872 500000))
             (< $x56014872 1000000)
             ($main_inv194 $x56014872 $y56114873 $z56214874))
        ($main_if586 $x56014872 $y56114873 $z56214874 (+ $x56014872 1) (+ $y56114873 1) $z56214874))))

; forwards $main_inv194
(assert
  (forall (($y56114876 Int) ($z56214874 Int) ($z56214877 Int) ($x56014875 Int) ($x56014872 Int) ($y56114873 Int))
    (=> (and ($main_if586 $x56014872 $y56114873 $z56214874 $x56014875 $y56114876 $z56214877))
        ($main_inv194 $x56014875 $y56114876 $z56214877))))

; backwards $main_sum194
(assert
  (forall (($x56014878 Int) ($y56114879 Int) ($y56114876 Int) ($z56214874 Int) ($z56214877 Int) ($z56214880 Int) ($x56014875 Int) ($x56014872 Int) ($y56114873 Int))
    (=> (and ($main_sum194 $x56014875 $y56114876 $z56214877 $x56014878 $y56114879 $z56214880)
             ($main_if586 $x56014872 $y56114873 $z56214874 $x56014875 $y56114876 $z56214877))
        ($main_sum194 $x56014872 $y56114873 $z56214874 $x56014878 $y56114879 $z56214880))))

; loop entry $main_inv195
(assert
  (forall (($z562 Int) ($x56014881 Int) ($y56114882 Int) ($x560 Int) ($y561 Int) ($z56214883 Int))
    (=> (and ($main_sum194 0 $y561 $z562 $x56014881 $y56114882 $z56214883)
             (= $z562 0)
             (= $y561 500000)
             (= $x560 0))
        ($main_inv195 $x56014881 $y56114882 $z56214883))))

; loop term $main_sum195
(assert
  (forall (($x56014884 Int) ($y56114885 Int) ($z56214886 Int))
    (=> (and (not (> $y56114885 0)))
        ($main_sum195 $x56014884 $y56114885 $z56214886 $x56014884 $y56114885 $z56214886))))

; forwards $main_inv195
(assert
  (forall (($x56014884 Int) ($y56114885 Int) ($z56214886 Int))
    (=> (and (> $y56114885 0)
             ($main_inv195 $x56014884 $y56114885 $z56214886))
        ($main_inv195 (- $x56014884 1) (- $y56114885 2) (+ $z56214886 1)))))

; backwards $main_sum195
(assert
  (forall (($z56214886 Int) ($x56014887 Int) ($y56114888 Int) ($y56114885 Int) ($x56014884 Int) ($z56214889 Int))
    (=> (and ($main_sum195 (- $x56014884 1) (- $y56114885 2) (+ $z56214886 1) $x56014887 $y56114888 $z56214889)
             (> $y56114885 0))
        ($main_sum195 $x56014884 $y56114885 $z56214886 $x56014887 $y56114888 $z56214889))))

; __VERIFIER_assert precondition
(assert
  (forall (($z562 Int) ($x56014881 Int) ($x56014890 Int) ($z56214892 Int) ($y56114882 Int) ($x560 Int) ($y56114891 Int) ($y561 Int) ($z56214883 Int))
    (=> (and ($main_sum195 $x56014881 $y56114882 $z56214883 $x56014890 $y56114891 $z56214892)
             ($main_sum194 0 $y561 $z562 $x56014881 $y56114882 $z56214883)
             (= $z562 0)
             (= $y561 500000)
             (= $x560 0))
        ($__VERIFIER_assert_pre (ite (= $x56014890 $z56214892) 1 0)))))

(check-sat)
